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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A176500: a(n) = 2*Farey(Fibonacci(n + 1)) - 3.

The programs for A176500, the canonical program `A176500.P10455789036156632366` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176500 has offset 1).

The definition of A176500 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A176499, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176500.P10455789036156632366

`2*A176499(n+1)-3`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A176500

/-- `2*A176499(n+1)-3` -/
def P10455789036156632366.Spec : Prop :=
  ∀ n, P10455789036156632366.a n = A176500 (n + 1)

theorem P10455789036156632366.correct : P10455789036156632366.Spec := by
  intro n
  simp only [A176500, Nat.add_sub_cancel]

end A176500

/-! ## A176500.P16475187585713506262

`A115634(A025487(n+2))+2*A176499(n+1)`
-/

namespace A176500.P16475187585713506262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 (A025487 (n + 2)).toNat + 2 * A176499 (n + 1)

end

end A176500.P16475187585713506262

namespace A176500

/-- `A115634(A025487(n+2))+2*A176499(n+1)` -/
def P16475187585713506262.Spec : Prop :=
  ∀ n, P16475187585713506262.a n = A176500 (n + 1)

end A176500

/-! ## A176500.P7843505891428360556

`3*A307420(A300334(n+1))+2*A176499(n+1)`
-/

namespace A176500.P7843505891428360556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A307420 (A300334 (n + 1)).toNat + 2 * A176499 (n + 1)

end

end A176500.P7843505891428360556

namespace A176500

/-- `3*A307420(A300334(n+1))+2*A176499(n+1)` -/
def P7843505891428360556.Spec : Prop :=
  ∀ n, P7843505891428360556.a n = A176500 (n + 1)

end A176500

/-! ## A176500.P3903416510193547880

`A176499(n+1)+A176499(n+1)-3%A001836(n+1)`
-/

namespace A176500.P3903416510193547880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176499 (n + 1) + (A176499 (n + 1) - Int.tmod 3 (A001836 (n + 1)))

end

end A176500.P3903416510193547880

namespace A176500

/-- `A176499(n+1)+A176499(n+1)-3%A001836(n+1)` -/
def P3903416510193547880.Spec : Prop :=
  ∀ n, P3903416510193547880.a n = A176500 (n + 1)

end A176500

/-!
# A176501: a(n) = Farey(m; I) where m = Fibonacci(n + 1) and I = [1/n, 1].

The programs for A176501, there is no canonical definition to state claims against.
-/

/-! ## A176501.P10653669125685171478

`ceil(A176502(n+1)/2)`
-/

namespace A176501.P10653669125685171478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176502 (n + 1) : ℚ) / 2⌉

end

end A176501.P10653669125685171478

/-! ## A176501.P7939736736181903057

`(A177849(n)+A176502(n+1))/2`
-/

namespace A176501.P7939736736181903057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177849 n + A176502 (n + 1) : ℚ) / 2

end

end A176501.P7939736736181903057

/-! ## A176501.P18395977251406139022

`(A176502(n+1)+1)/A020639(2*(n+2))`
-/

namespace A176501.P18395977251406139022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176502 (n + 1) + 1 : ℚ) / (A020639 (2 * (n + 2)) : ℚ)

end

end A176501.P18395977251406139022

/-! ## A176501.P2530230239376282985

`(A176502(n+1)+A000041(C(2, n+2)))/2`
-/

namespace A176501.P2530230239376282985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176502 (n + 1) + A000041 (Nat.choose 2 (n + 2)) : ℚ) / 2

end

end A176501.P2530230239376282985

/-!
# A176502: a(n) = 2*Farey(m; I) - 1 where m = Fibonacci (n + 1) and I = [1/n, 1].

The programs for A176502, there is no canonical definition to state claims against.
-/

/-! ## A176502.P16944372404610479479

`2*A176501(n+1)-1`
-/

namespace A176502.P16944372404610479479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176501 (n + 1) - 1

end

end A176502.P16944372404610479479

/-! ## A176502.P15187175557623696849

`A008683(A002144(n+1))+2*A176501(n+1)`
-/

namespace A176502.P15187175557623696849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002144 (n + 1)).toNat + 2 * A176501 (n + 1)

end

end A176502.P15187175557623696849

/-! ## A176502.P5179709836433510485

`A103115(A133707(n+1))+2*A176501(n+1)`
-/

namespace A176502.P5179709836433510485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (A133707 (n + 1)).toNat + 2 * A176501 (n + 1)

end

end A176502.P5179709836433510485

/-! ## A176502.P184793278966630503

`A008683(A269728(n+1))+2*A176501(n+1)`
-/

namespace A176502.P184793278966630503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A269728 (n + 1)).toNat + 2 * A176501 (n + 1)

end

end A176502.P184793278966630503

/-! ## A176502.P1628426169833062557

`A004273(A176501(n+1))`
-/

namespace A176502.P1628426169833062557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A176501 (n + 1)).toNat

end

end A176502.P1628426169833062557

/-!
# A176503: Leading column of triangle in A176463.

The programs for A176503, there is no canonical definition to state claims against.
-/

/-! ## A176503.P9398599469996557875

`A294775(∑[n+4]+2)`
-/

namespace A176503.P9398599469996557875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A176503.P9398599469996557875

/-! ## A176503.P4092009030080765448

`A294775(A046691(n+2))/gcd(n, n+1)`
-/

namespace A176503.P4092009030080765448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A046691 (n + 2)).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A176503.P4092009030080765448

/-! ## A176503.P10785323871638274632

`A294775(A046691(n+2))%A081808(n+2)`
-/

namespace A176503.P10785323871638274632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294775 (A046691 (n + 2)).toNat) (A081808 (n + 2))

end

end A176503.P10785323871638274632

/-! ## A176503.P1564551257413948642

`lcm(A033999(n), A294775(A055999(n+1)+2))`
-/

namespace A176503.P1564551257413948642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A294775 (A055999 (n + 1) + 2).toNat)

end

end A176503.P1564551257413948642

/-! ## A176503.P11631776801254446842

`A294775(A055999(n+1)+2)^-A057428(n)`
-/

namespace A176503.P11631776801254446842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A055999 (n + 1) + 2).toNat : ℚ) ^ (-A057428 n : ℤ)

end

end A176503.P11631776801254446842

/-! ## A176503.P3010039193073083100

`A294775(A055999(n+1)+2)+A000035(2*n)`
-/

namespace A176503.P3010039193073083100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A055999 (n + 1) + 2).toNat + A000035 (2 * n)

end

end A176503.P3010039193073083100

/-! ## A176503.P17262164338861317887

`(A028242(2*n)-n)*A294775(A055999(n+1)+2)`
-/

namespace A176503.P17262164338861317887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) - (n : ℤ)) * A294775 (A055999 (n + 1) + 2).toNat

end

end A176503.P17262164338861317887

/-! ## A176503.P9864758728990789193

`A000045((-1)^(2*n))*A294775(A055999(n+1)+2)`
-/

namespace A176503.P9864758728990789193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ (2 * n)).toNat * A294775 (A055999 (n + 1) + 2).toNat

end

end A176503.P9864758728990789193

/-! ## A176503.P10726099142941648078

`A014963(A008588(n+1))*A294775(A055999(n+1)+2)`
-/

namespace A176503.P10726099142941648078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008588 (n + 1)).toNat * A294775 (A055999 (n + 1) + 2).toNat

end

end A176503.P10726099142941648078

/-! ## A176503.P5568691239635535174

`A001222(A258992(n+1))*A294775(A055999(n+1)+2)`
-/

namespace A176503.P5568691239635535174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A258992 (n + 1)).toNat * A294775 (A055999 (n + 1) + 2).toNat

end

end A176503.P5568691239635535174

/-!
# A176504: a(n) = m + k where prime(m)*prime(k) = semiprime(n).

The programs for A176504, the canonical program `A176504.P7149096578735921133` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176504 has offset 1).

The definition of A176504 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338912, A338913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176504.P7149096578735921133

`A338912(n+1)+A338913(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A176504

/-- `A338912(n+1)+A338913(n+1)` -/
def P7149096578735921133.Spec : Prop :=
  ∀ n, P7149096578735921133.a n = A176504 (n + 1)

theorem P7149096578735921133.correct : P7149096578735921133.Spec := by
  intro n
  simp only [A176504, Nat.add_sub_cancel]

end A176504

/-! ## A176504.P57004562563682732

`A056239(A001358(n+1))`
-/

namespace A176504.P57004562563682732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A001358 (n + 1)).toNat

end

end A176504.P57004562563682732

namespace A176504

/-- `A056239(A001358(n+1))` -/
def P57004562563682732.Spec : Prop :=
  ∀ n, P57004562563682732.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P13016540285831953711

`A304739(A140570(n+1))`
-/

namespace A176504.P13016540285831953711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A140570 (n + 1)).toNat

end

end A176504.P13016540285831953711

namespace A176504

/-- `A304739(A140570(n+1))` -/
def P13016540285831953711.Spec : Prop :=
  ∀ n, P13016540285831953711.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P14937686164202520675

`A001358(n+1)-A178611(n+1)`
-/

namespace A176504.P14937686164202520675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A178611 (n + 1)

end

end A176504.P14937686164202520675

namespace A176504

/-- `A001358(n+1)-A178611(n+1)` -/
def P14937686164202520675.Spec : Prop :=
  ∀ n, P14937686164202520675.a n = A176504 (n + 1)

theorem P14937686164202520675.correct : P14937686164202520675.Spec := by
  intro n
  simp only [A176504, Nat.add_sub_cancel, A176504.P14937686164202520675.a, A176504.P7149096578735921133.a, A001358, A001358.P632087320844056370.a, A178611, A178611.P10185603375269794879.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A088707, A088707.P7291141647877559993.a, A006530, A006530.P13372528560459906635.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A070229, A070229.P5792893597916963980.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176504

/-! ## A176504.P1271095474808789914

`A176506(n+1)+2*A338912(n+1)`
-/

namespace A176504.P1271095474808789914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (n + 1) + 2 * A338912 (n + 1)

end

end A176504.P1271095474808789914

namespace A176504

/-- `A176506(n+1)+2*A338912(n+1)` -/
def P1271095474808789914.Spec : Prop :=
  ∀ n, P1271095474808789914.a n = A176504 (n + 1)

theorem P1271095474808789914.correct : P1271095474808789914.Spec := by
  intro n
  simp only [A176504, Nat.add_sub_cancel, A176504.P1271095474808789914.a, A176504.P7149096578735921133.a, A176506, A176506.P10839499400759222980.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A001358, A001358.P632087320844056370.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A088707, A088707.P7291141647877559993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176504

/-! ## A176504.P894270737743410884

`2*A338913(n+1)-A176506(n+1)`
-/

namespace A176504.P894270737743410884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338913 (n + 1) - A176506 (n + 1)

end

end A176504.P894270737743410884

namespace A176504

/-- `2*A338913(n+1)-A176506(n+1)` -/
def P894270737743410884.Spec : Prop :=
  ∀ n, P894270737743410884.a n = A176504 (n + 1)

theorem P894270737743410884.correct : P894270737743410884.Spec := by
  intro n
  simp only [A176504, Nat.add_sub_cancel, A176504.P894270737743410884.a, A176504.P7149096578735921133.a, A176506, A176506.P10839499400759222980.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A001358, A001358.P632087320844056370.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A088707, A088707.P7291141647877559993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176504

/-! ## A176504.P243890946168426770

`A338912(n+1)+A087794(n+1)/A338912(n+1)`
-/

namespace A176504.P243890946168426770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338912 (n + 1) : ℚ) + (A087794 (n + 1) : ℚ) / (A338912 (n + 1) : ℚ)

end

end A176504.P243890946168426770

namespace A176504

/-- `A338912(n+1)+A087794(n+1)/A338912(n+1)` -/
def P243890946168426770.Spec : Prop :=
  ∀ n, P243890946168426770.a n = (A176504 (n + 1) : ℚ)

end A176504

/-! ## A176504.P8553971131509055881

`A338913(n+1)+A087794(n+1)/A338913(n+1)`
-/

namespace A176504.P8553971131509055881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338913 (n + 1) : ℚ) + (A087794 (n + 1) : ℚ) / (A338913 (n + 1) : ℚ)

end

end A176504.P8553971131509055881

namespace A176504

/-- `A338913(n+1)+A087794(n+1)/A338913(n+1)` -/
def P8553971131509055881.Spec : Prop :=
  ∀ n, P8553971131509055881.a n = (A176504 (n + 1) : ℚ)

end A176504

/-! ## A176504.P6566164269012648601

`A000720(A084126(n+1))+A000720(A084127(n+1))`
-/

namespace A176504.P6566164269012648601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084126 (n + 1)).toNat + A000720 (A084127 (n + 1)).toNat

end

end A176504.P6566164269012648601

namespace A176504

/-- `A000720(A084126(n+1))+A000720(A084127(n+1))` -/
def P6566164269012648601.Spec : Prop :=
  ∀ n, P6566164269012648601.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P14899497868687584195

`A056239(eq[2, ∑{e}[n, #]])`
-/

namespace A176504.P14899497868687584195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176504.P14899497868687584195

namespace A176504

/-- `A056239(eq[2, ∑{e}[n, #]])` -/
def P14899497868687584195.Spec : Prop :=
  ∀ n, P14899497868687584195.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P12863530620467061371

`A056239(A176540(n+2))`
-/

namespace A176504.P12863530620467061371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A176540 (n + 2)).toNat

end

end A176504.P12863530620467061371

namespace A176504

/-- `A056239(A176540(n+2))` -/
def P12863530620467061371.Spec : Prop :=
  ∀ n, P12863530620467061371.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P6708509518708850676

`A056239(lt[1, A105700(n)])`
-/

namespace A176504.P6708509518708850676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A176504.P6708509518708850676

namespace A176504

/-- `A056239(lt[1, A105700(n)])` -/
def P6708509518708850676.Spec : Prop :=
  ∀ n, P6708509518708850676.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P4815094134999303994

`A056239(eq[2, A105700(n)])`
-/

namespace A176504.P4815094134999303994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176504.P4815094134999303994

namespace A176504

/-- `A056239(eq[2, A105700(n)])` -/
def P4815094134999303994.Spec : Prop :=
  ∀ n, P4815094134999303994.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P9956151479859245384

`A056239(sqrt(A074985(n+1)))`
-/

namespace A176504.P9956151479859245384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A176504.P9956151479859245384

namespace A176504

/-- `A056239(sqrt(A074985(n+1)))` -/
def P9956151479859245384.Spec : Prop :=
  ∀ n, P9956151479859245384.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P13800262795849646296

`A056239(A186621(n+1)+1)`
-/

namespace A176504.P13800262795849646296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A186621 (n + 1) + 1).toNat

end

end A176504.P13800262795849646296

namespace A176504

/-- `A056239(A186621(n+1)+1)` -/
def P13800262795849646296.Spec : Prop :=
  ∀ n, P13800262795849646296.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P16337856258532991537

`A056239(A075818(n+1)/2)`
-/

namespace A176504.P16337856258532991537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A176504.P16337856258532991537

namespace A176504

/-- `A056239(A075818(n+1)/2)` -/
def P16337856258532991537.Spec : Prop :=
  ∀ n, P16337856258532991537.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P14262514480287739913

`A338912(n+1)+A338898(2*(n+1))`
-/

namespace A176504.P14262514480287739913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338912 (n + 1) + A338898 (2 * (n + 1))

end

end A176504.P14262514480287739913

namespace A176504

/-- `A338912(n+1)+A338898(2*(n+1))` -/
def P14262514480287739913.Spec : Prop :=
  ∀ n, P14262514480287739913.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P8132101957453116222

`A338913(n+1)+A338898(2*n+1)`
-/

namespace A176504.P8132101957453116222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338913 (n + 1) + A338898 (2 * n + 1)

end

end A176504.P8132101957453116222

namespace A176504

/-- `A338913(n+1)+A338898(2*n+1)` -/
def P8132101957453116222.Spec : Prop :=
  ∀ n, P8132101957453116222.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P1611758744217001636

`A338898(2*n+1)+A338898(2*(n+1))`
-/

namespace A176504.P1611758744217001636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338898 (2 * n + 1) + A338898 (2 * (n + 1))

end

end A176504.P1611758744217001636

namespace A176504

/-- `A338898(2*n+1)+A338898(2*(n+1))` -/
def P1611758744217001636.Spec : Prop :=
  ∀ n, P1611758744217001636.a n = A176504 (n + 1)

end A176504

/-! ## A176504.P12158506886183165196

`A325033(A106349(n+1))`
-/

namespace A176504.P12158506886183165196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325033 (A106349 (n + 1)).toNat

end

end A176504.P12158506886183165196

namespace A176504

/-- `A325033(A106349(n+1))` -/
def P12158506886183165196.Spec : Prop :=
  ∀ n, P12158506886183165196.a n = A176504 (n + 1)

end A176504

/-!
# A176505: Triangle T(n,m) read by rows: T(n,m) = a(n) - a(m) - a(n-m) + 1, where a(n) = A000931(n+4).

The programs for A176505, there is no canonical definition to state claims against.
-/

/-! ## A176505.P6798061007110050931

`A368734(A212954(n+1))`
-/

namespace A176505.P6798061007110050931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368734 (A212954 (n + 1)).toNat

end

end A176505.P6798061007110050931

/-! ## A176505.P11727704975873274355

`A102669(A334596(A007318(n)))`
-/

namespace A176505.P11727704975873274355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A334596 (A007318 n).toNat).toNat

end

end A176505.P11727704975873274355

/-! ## A176505.P4585674283616869112

`A048571(n)+A008683(A099927(n))`
-/

namespace A176505.P4585674283616869112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 n + A008683 (A099927 n).toNat

end

end A176505.P4585674283616869112

/-! ## A176505.P818455012367533600

`A007423(xor(13, A296963(n+1)))`
-/

namespace A176505.P818455012367533600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (Int.xor 13 (A296963 (n + 1))).toNat

end

end A176505.P818455012367533600

/-! ## A176505.P3489042527630358329

`A357722(A226545(n))`
-/

namespace A176505.P3489042527630358329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357722 ((A226545 n).toNat + 11)

end

end A176505.P3489042527630358329

/-!
# A176506: Difference between the prime indices of the two factors of the n-th semiprime.

The programs for A176506, the canonical program `A176506.P10839499400759222980` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176506 has offset 1).

The definition of A176506 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338912, A338913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176506.P10839499400759222980

`A338913(n+1)-A338912(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A176506

/-- `A338913(n+1)-A338912(n+1)` -/
def P10839499400759222980.Spec : Prop :=
  ∀ n, P10839499400759222980.a n = A176506 (n + 1)

theorem P10839499400759222980.correct : P10839499400759222980.Spec := by
  intro n
  simp only [A176506, Nat.add_sub_cancel]

end A176506

/-! ## A176506.P14041656020476662624

`A049084(A084127(n+1))-A049084(A084126(n+1))`
-/

namespace A176506.P14041656020476662624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A084127 (n + 1)).toNat - A049084 (A084126 (n + 1)).toNat

end

end A176506.P14041656020476662624

namespace A176506

/-- `A049084(A084127(n+1))-A049084(A084126(n+1))` -/
def P14041656020476662624.Spec : Prop :=
  ∀ n, P14041656020476662624.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P16022407861015124230

`A297173(A001358(n+1))`
-/

namespace A176506.P16022407861015124230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A001358 (n + 1)).toNat

end

end A176506.P16022407861015124230

namespace A176506

/-- `A297173(A001358(n+1))` -/
def P16022407861015124230.Spec : Prop :=
  ∀ n, P16022407861015124230.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P3021041090398299615

`A297173(sqrt(A074985(n+1)))`
-/

namespace A176506.P3021041090398299615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A176506.P3021041090398299615

namespace A176506

/-- `A297173(sqrt(A074985(n+1)))` -/
def P3021041090398299615.Spec : Prop :=
  ∀ n, P3021041090398299615.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P10085783269518927848

`A297173(eq[2, A001222(n+1)]+1)`
-/

namespace A176506.P10085783269518927848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A176506.P10085783269518927848

namespace A176506

/-- `A297173(eq[2, A001222(n+1)]+1)` -/
def P10085783269518927848.Spec : Prop :=
  ∀ n, P10085783269518927848.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P11851351023937218646

`A089994(n+1)+A072165(n+1)`
-/

namespace A176506.P11851351023937218646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089994 (n + 1) + A072165 (n + 1)

end

end A176506.P11851351023937218646

namespace A176506

/-- `A089994(n+1)+A072165(n+1)` -/
def P11851351023937218646.Spec : Prop :=
  ∀ n, P11851351023937218646.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P7630617537031652125

`A001358(n+1)-A178610(n+1)`
-/

namespace A176506.P7630617537031652125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A178610 (n + 1)

end

end A176506.P7630617537031652125

namespace A176506

/-- `A001358(n+1)-A178610(n+1)` -/
def P7630617537031652125.Spec : Prop :=
  ∀ n, P7630617537031652125.a n = A176506 (n + 1)

theorem P7630617537031652125.correct : P7630617537031652125.Spec := by
  intro n
  simp only [A176506, Nat.add_sub_cancel, A176506.P7630617537031652125.a, A176506.P10839499400759222980.a, A001358, A001358.P632087320844056370.a, A178610, A178610.P3507936517445186257.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A088707, A088707.P7291141647877559993.a, A006530, A006530.P13372528560459906635.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A070229, A070229.P5792893597916963980.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176506

/-! ## A176506.P17444817956224911883

`2*A338913(n+1)-A176504(n+1)`
-/

namespace A176506.P17444817956224911883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338913 (n + 1) - A176504 (n + 1)

end

end A176506.P17444817956224911883

namespace A176506

/-- `2*A338913(n+1)-A176504(n+1)` -/
def P17444817956224911883.Spec : Prop :=
  ∀ n, P17444817956224911883.a n = A176506 (n + 1)

theorem P17444817956224911883.correct : P17444817956224911883.Spec := by
  intro n
  simp only [A176506, Nat.add_sub_cancel, A176506.P17444817956224911883.a, A176506.P10839499400759222980.a, A176504, A176504.P7149096578735921133.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A001358, A001358.P632087320844056370.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A088707, A088707.P7291141647877559993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176506

/-! ## A176506.P609675868688143472

`A176504(n+1)-2*A338912(n+1)`
-/

namespace A176506.P609675868688143472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176504 (n + 1) - 2 * A338912 (n + 1)

end

end A176506.P609675868688143472

namespace A176506

/-- `A176504(n+1)-2*A338912(n+1)` -/
def P609675868688143472.Spec : Prop :=
  ∀ n, P609675868688143472.a n = A176506 (n + 1)

theorem P609675868688143472.correct : P609675868688143472.Spec := by
  intro n
  simp only [A176506, Nat.add_sub_cancel, A176506.P609675868688143472.a, A176506.P10839499400759222980.a, A176504, A176504.P7149096578735921133.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A001358, A001358.P632087320844056370.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A088707, A088707.P7291141647877559993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176506

/-! ## A176506.P3774497098465591025

`A326844(A001358(n+1)+A000007(n))`
-/

namespace A176506.P3774497098465591025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (A001358 (n + 1) + A000007 n).toNat

end

end A176506.P3774497098465591025

namespace A176506

/-- `A326844(A001358(n+1)+A000007(n))` -/
def P3774497098465591025.Spec : Prop :=
  ∀ n, P3774497098465591025.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P12401170285182740086

`A326844(A001358(n+1)%A002997(n+1))`
-/

namespace A176506.P12401170285182740086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (Int.tmod (A001358 (n + 1)) (A002997 (n + 1))).toNat

end

end A176506.P12401170285182740086

namespace A176506

/-- `A326844(A001358(n+1)%A002997(n+1))` -/
def P12401170285182740086.Spec : Prop :=
  ∀ n, P12401170285182740086.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P6131777262353295288

`A326844(A036987(3*n+2)+A001358(n+1))`
-/

namespace A176506.P6131777262353295288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (A036987 (3 * n + 2) + A001358 (n + 1)).toNat

end

end A176506.P6131777262353295288

namespace A176506

/-- `A326844(A036987(3*n+2)+A001358(n+1))` -/
def P6131777262353295288.Spec : Prop :=
  ∀ n, P6131777262353295288.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P3473683545281267387

`A087794(n+1)/A338912(n+1)-A338912(n+1)`
-/

namespace A176506.P3473683545281267387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087794 (n + 1) : ℚ) / (A338912 (n + 1) : ℚ) - (A338912 (n + 1) : ℚ)

end

end A176506.P3473683545281267387

namespace A176506

/-- `A087794(n+1)/A338912(n+1)-A338912(n+1)` -/
def P3473683545281267387.Spec : Prop :=
  ∀ n, P3473683545281267387.a n = (A176506 (n + 1) : ℚ)

end A176506

/-! ## A176506.P17286072791380045344

`A338913(n+1)-A087794(n+1)/A338913(n+1)`
-/

namespace A176506.P17286072791380045344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338913 (n + 1) : ℚ) - (A087794 (n + 1) : ℚ) / (A338913 (n + 1) : ℚ)

end

end A176506.P17286072791380045344

namespace A176506

/-- `A338913(n+1)-A087794(n+1)/A338913(n+1)` -/
def P17286072791380045344.Spec : Prop :=
  ∀ n, P17286072791380045344.a n = (A176506 (n + 1) : ℚ)

end A176506

/-! ## A176506.P10677039979204660043

`A344616(eq[2, A001222(n+1)]+1)`
-/

namespace A176506.P10677039979204660043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A176506.P10677039979204660043

namespace A176506

/-- `A344616(eq[2, A001222(n+1)]+1)` -/
def P10677039979204660043.Spec : Prop :=
  ∀ n, P10677039979204660043.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P14557867751825720773

`A297173(eq[2, ∑{e}[n, #]])`
-/

namespace A176506.P14557867751825720773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176506.P14557867751825720773

namespace A176506

/-- `A297173(eq[2, ∑{e}[n, #]])` -/
def P14557867751825720773.Spec : Prop :=
  ∀ n, P14557867751825720773.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P10112382879423812793

`A241917(A176540(n+2))`
-/

namespace A176506.P10112382879423812793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A176540 (n + 2)).toNat

end

end A176506.P10112382879423812793

namespace A176506

/-- `A241917(A176540(n+2))` -/
def P10112382879423812793.Spec : Prop :=
  ∀ n, P10112382879423812793.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P8460945858257723278

`A253556(p?[A246277(n+1)])`
-/

namespace A176506.P8460945858257723278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253556 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176506.P8460945858257723278

namespace A176506

/-- `A253556(p?[A246277(n+1)])` -/
def P8460945858257723278.Spec : Prop :=
  ∀ n, P8460945858257723278.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P13260300417984242254

`A241917(A186621(n+1)+1)`
-/

namespace A176506.P13260300417984242254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A186621 (n + 1) + 1).toNat

end

end A176506.P13260300417984242254

namespace A176506

/-- `A241917(A186621(n+1)+1)` -/
def P13260300417984242254.Spec : Prop :=
  ∀ n, P13260300417984242254.a n = A176506 (n + 1)

end A176506

/-! ## A176506.P8785091243982895104

`A242411(A186621(n+1)+1)`
-/

namespace A176506.P8785091243982895104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (A186621 (n + 1) + 1).toNat

end

end A176506.P8785091243982895104

namespace A176506

/-- `A242411(A186621(n+1)+1)` -/
def P8785091243982895104.Spec : Prop :=
  ∀ n, P8785091243982895104.a n = A176506 (n + 1)

end A176506

/-!
# A176507: Indices of products of 2 single (or isolated or non-twin) primes in the composites.

The programs for A176507, there is no canonical definition to state claims against.
-/

/-! ## A176507.P11318260468378303305

`A026238(A176312(n+1))`
-/

namespace A176507.P11318260468378303305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A176312 (n + 1)).toNat

end

end A176507.P11318260468378303305

/-! ## A176507.P11797871066584027261

`A176193(A176512(n+1))`
-/

namespace A176507.P11797871066584027261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176193 (A176512 (n + 1)).toNat

end

end A176507.P11797871066584027261

/-! ## A176507.P14638629725446489660

`A062298(A176312(n+1)-1)`
-/

namespace A176507.P14638629725446489660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A176312 (n + 1) - 1).toNat

end

end A176507.P14638629725446489660

/-! ## A176507.P2035343679755473513

`∑{d}[A176312(n+1), A066246(#)]`
-/

namespace A176507.P2035343679755473513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066246 d

end

end A176507.P2035343679755473513

/-! ## A176507.P17975081474422451969

`A000720(p?[A026239(A176312(n+1))])`
-/

namespace A176507.P17975081474422451969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A176312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176507.P17975081474422451969

/-! ## A176507.P17819291063806944976

`∑{d}[A065855(A176312(n+1)), A000010(#)]`
-/

namespace A176507.P17819291063806944976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A176312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A176507.P17819291063806944976

/-! ## A176507.P5195366592039369392

`A007318(∑[n])*A065855(A176312(n+1))`
-/

namespace A176507.P5195366592039369392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A065855 (A176312 (n + 1)).toNat

end

end A176507.P5195366592039369392

/-! ## A176507.P2640236897997691189

`A066246(2*A176312(n+1)-A176312(n+1))`
-/

namespace A176507.P2640236897997691189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (2 * A176312 (n + 1) - A176312 (n + 1)).toNat

end

end A176507.P2640236897997691189

/-! ## A176507.P14368748164644493216

`A065855(A176312(n+1))+A008683(8*(n+1))`
-/

namespace A176507.P14368748164644493216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A176312 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A176507.P14368748164644493216

/-! ## A176507.P15817137568496673531

`A026233(A176312(n+1))-A014963(10*(n+1))`
-/

namespace A176507.P15817137568496673531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A176312 (n + 1)).toNat - A014963 (10 * (n + 1))

end

end A176507.P15817137568496673531

/-!
# A176508: Triangle, read by rows, defined by T(n, k) = b(n) - b(k) - b(n-k) + 1, b(n) = A003269(n).

The programs for A176508, there is no canonical definition to state claims against.
-/

/-! ## A176508.P1780563887919402207

`A135523(A056940(n))`
-/

namespace A176508.P1780563887919402207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A056940 n).toNat

end

end A176508.P1780563887919402207

/-! ## A176508.P8478320213552128467

`A089263(2*A056940(n))`
-/

namespace A176508.P8478320213552128467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (2 * A056940 n).toNat

end

end A176508.P8478320213552128467

/-! ## A176508.P18244016199279780290

`A097795(or(2, A054110(n)))`
-/

namespace A176508.P18244016199279780290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (Int.lor 2 (A054110 n)).toNat

end

end A176508.P18244016199279780290

/-! ## A176508.P12525256974175009717

`A037870(or(5, A230899(n+1)))`
-/

namespace A176508.P12525256974175009717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (Int.lor 5 (A230899 (n + 1))).toNat

end

end A176508.P12525256974175009717

/-!
# A176509: Composite numbers m for which A064380(m) = A000010(m).

The programs for A176509, there is no canonical definition to state claims against.
-/

/-! ## A176509.P14946551046317408302

`∩[A056824(n+1), A175050(n+1)]`
-/

namespace A176509.P14946551046317408302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176509.P14946551046317408302

/-! ## A176509.P3271416278482966919

`∩[A175050(n+1), A301482(n+1)]`
-/

namespace A176509.P3271416278482966919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176509.P3271416278482966919

/-! ## A176509.P14018025913481104180

`∩[A175050(n+1), A304291(n+1)]`
-/

namespace A176509.P14018025913481104180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176509.P14018025913481104180

/-! ## A176509.P907657681167914041

`∩[A175050(n+1), A187101(n+1)]`
-/

namespace A176509.P907657681167914041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176509.P907657681167914041

/-! ## A176509.P4369083061391349696

`∩[A025475(n+1), A066681(n+1)]`
-/

namespace A176509.P4369083061391349696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176509.P4369083061391349696

/-!
# A176510: Triangle, read by rows, defined by T(n, m) = b(n) - b(m) - b(n-m) + 1, where b(n) = b(n-1) + b(n-2) - b(n-3) + b(n-5), with b(0) = 0, b(1) = 1, b(2) = 1, b(3) = 2, b(4) = 2.

The programs for A176510, there is no canonical definition to state claims against.
-/

/-! ## A176510.P727239747775986233

`val(A000141(A022166(n)), 3)`
-/

namespace A176510.P727239747775986233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000141 (A022166 n).toNat).toNat 3

end

end A176510.P727239747775986233

/-! ## A176510.P13694671381989166731

`A037821(xor(7, A008292(n+1)))`
-/

namespace A176510.P13694671381989166731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (Int.xor 7 (A008292 (n + 1))).toNat

end

end A176510.P13694671381989166731

/-! ## A176510.P17625731739565441625

`∑{e}[∑{e}[A091623(A007318(n))+1, #]+1, #]`
-/

namespace A176510.P17625731739565441625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091623 (A007318 n).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A176510.P17625731739565441625

/-! ## A176510.P3411234645397734694

`A065363(A329689(A007318(n)))`
-/

namespace A176510.P3411234645397734694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A329689 (A007318 n).toNat).toNat

end

end A176510.P3411234645397734694

/-! ## A176510.P9808125499055739156

`A393579(A174639(n))`
-/

namespace A176510.P9808125499055739156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393579 (A174639 n).toNat

end

end A176510.P9808125499055739156

/-!
# A176511: From Bernoulli twin numbers to Catalan numbers arrays (*).First part.We consider array, from Bernoulli twin numbers A051716/A051717 mixed with their companion A172083/A051717 BTC(n)=1,1,-1/2,-3/2,-1/3,2/3,-1/6,-1/6, and successive differences ,named BTC1. a(n) are numerators of BTC(n).Denominators are (double A051717)=1,1,2,2,3,3,6,6,30,30,30,30,.

The programs for A176511, there is no canonical definition to state claims against.
-/

/-! ## A176511.P13222944605362653374

`A176784(xor(1, n))`
-/

namespace A176511.P13222944605362653374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176784 (Nat.xor 1 n)

end

end A176511.P13222944605362653374

/-! ## A176511.P3191851052278648355

`A176784((-1)^n+n)`
-/

namespace A176511.P3191851052278648355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176784 ((-1) ^ n + (n : ℤ)).toNat

end

end A176511.P3191851052278648355

/-!
# A176512: Indices of products of 2 single (or isolated or non-twin) primes in the semiprimes.

The programs for A176512, the canonical program `A176512.P7875887244355727252` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176512 has offset 1).

The definition of A176512 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174956, A176312, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176512.P7875887244355727252

`A174956(A176312(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176512

/-- `A174956(A176312(n+1))` -/
def P7875887244355727252.Spec : Prop :=
  ∀ n, P7875887244355727252.a n = A176512 (n + 1)

theorem P7875887244355727252.correct : P7875887244355727252.Spec := by
  intro n
  simp only [A176512, Nat.add_sub_cancel]

end A176512

/-! ## A176512.P17976468168446805595

`record[(n+1)/A072963(A001358(n+1))]`
-/

namespace A176512.P17976468168446805595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072963 (A001358 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176512.P17976468168446805595

namespace A176512

/-- `record[(n+1)/A072963(A001358(n+1))]` -/
def P17976468168446805595.Spec : Prop :=
  ∀ n, P17976468168446805595.a n = (A176512 (n + 1) : ℚ)

end A176512

/-! ## A176512.P6819010725553757189

`A072000(A176312(A000027(n+1)))`
-/

namespace A176512.P6819010725553757189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A176312 (A000027 (n + 1)).toNat).toNat

end

end A176512.P6819010725553757189

namespace A176512

/-- `A072000(A176312(A000027(n+1)))` -/
def P6819010725553757189.Spec : Prop :=
  ∀ n, P6819010725553757189.a n = A176512 (n + 1)

end A176512

/-! ## A176512.P1910699175288164361

`A072000(or(A028590(n), A176312(n+1)))`
-/

namespace A176512.P1910699175288164361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (Int.lor (A028590 n) (A176312 (n + 1))).toNat

end

end A176512.P1910699175288164361

namespace A176512

/-- `A072000(or(A028590(n), A176312(n+1)))` -/
def P1910699175288164361.Spec : Prop :=
  ∀ n, P1910699175288164361.a n = A176512 (n + 1)

end A176512

/-! ## A176512.P6940920738865781254

`A174956(A002808(A176507(n+1)))`
-/

namespace A176512.P6940920738865781254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A002808 (A176507 (n + 1)).toNat).toNat

end

end A176512.P6940920738865781254

namespace A176512

/-- `A174956(A002808(A176507(n+1)))` -/
def P6940920738865781254.Spec : Prop :=
  ∀ n, P6940920738865781254.a n = A176512 (n + 1)

end A176512

/-!
# A176513: a(n+5) = a(n+3) + a(n+2) + a(n), with a(1) = a(2) = a(3) = a(4) = a(5) = 1.

The programs for A176513, the canonical program `A176513.P3930565845232458741` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176513 has offset 1).

The definition of A176513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176513.P3930565845232458741

`a(n-2)+a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176513

/-- `a(n-2)+a(n-3)+a(n-5)` -/
def P3930565845232458741.Spec : Prop :=
  ∀ n, (P3930565845232458741.a n : ℤ) = A176513 (n + 1)

theorem P3930565845232458741.correct : P3930565845232458741.Spec := by
  intro n
  simp only [A176513, Nat.add_sub_cancel]

end A176513

/-! ## A176513.P17538822446141604844

`A012265(or(1, A181314(n+1)))`
-/

namespace A176513.P17538822446141604844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (Int.lor 1 (A181314 (n + 1))).toNat

end

end A176513.P17538822446141604844

namespace A176513

/-- `A012265(or(1, A181314(n+1)))` -/
def P17538822446141604844.Spec : Prop :=
  ∀ n, P17538822446141604844.a n = A176513 (n + 1)

end A176513

/-! ## A176513.P4933082418904931629

`or(A078012(n+1), A280506(A077168(n)))`
-/

namespace A176513.P4933082418904931629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078012 (n + 1)) (A280506 (A077168 n).toNat)

end

end A176513.P4933082418904931629

namespace A176513

/-- `or(A078012(n+1), A280506(A077168(n)))` -/
def P4933082418904931629.Spec : Prop :=
  ∀ n, P4933082418904931629.a n = A176513 (n + 1)

end A176513

/-!
# A176514: Period 6: repeat [3, 1, 1, 3, 2, 1].

The programs for A176514, the canonical program `A176514.P8872346145119008743` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176514 has offset 1).

The definition of A176514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176514.P8872346145119008743

`a(n-6)` with `a(0)=3, a(1)=1, a(2)=1, a(3)=3, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176514

/-- `a(n-6)` -/
def P8872346145119008743.Spec : Prop :=
  ∀ n, (P8872346145119008743.a n : ℤ) = A176514 (n + 1)

theorem P8872346145119008743.correct : P8872346145119008743.Spec := by
  intro n
  simp only [A176514, Nat.add_sub_cancel]

end A176514

/-!
# A176522: Decimal expansion of (9+sqrt(85))/2.

The programs for A176522, there is no canonical definition to state claims against.
-/

/-! ## A176522.P13970202090399692356

`A333345(n+1)+A000007(n)*A147841(n+1)`
-/

namespace A176522.P13970202090399692356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333345 (n + 1 + 2) + A000007 n * A147841 (n + 1)

end

end A176522.P13970202090399692356

/-!
# A176525: Fermi-Dirac semiprimes: products of two distinct terms of A050376.

The programs for A176525, the canonical program `A176525.P2039042550219139335` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176525 has offset 1).

The definition of A176525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176525.P2039042550219139335

`eq[2, A064547(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176525

/-- `eq[2, A064547(n+1)]+1` -/
def P2039042550219139335.Spec : Prop :=
  ∀ n, (P2039042550219139335.a n : ℤ) = A176525 (n + 1)

theorem P2039042550219139335.correct : P2039042550219139335.Spec := by
  intro n
  simp only [A176525, Nat.add_sub_cancel]

end A176525

/-! ## A176525.P2620489051314042222

`eq[2, A001222(A293442(n+1))]+1`
-/

namespace A176525.P2620489051314042222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293442 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176525.P2620489051314042222

namespace A176525

/-- `eq[2, A001222(A293442(n+1))]+1` -/
def P2620489051314042222.Spec : Prop :=
  ∀ n, (P2620489051314042222.a n : ℤ) = A176525 (n + 1)

end A176525

/-! ## A176525.P6750573391371768204

`eq[2, A088461(A293444(n+1)+1)]+1`
-/

namespace A176525.P6750573391371768204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088461 (A293444 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176525.P6750573391371768204

namespace A176525

/-- `eq[2, A088461(A293444(n+1)+1)]+1` -/
def P6750573391371768204.Spec : Prop :=
  ∀ n, (P6750573391371768204.a n : ℤ) = A176525 (n + 1)

end A176525

/-! ## A176525.P4376403608002233740

`A020725(eq[2, A064547(n+1)])`
-/

namespace A176525.P4376403608002233740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176525.P4376403608002233740

namespace A176525

/-- `A020725(eq[2, A064547(n+1)])` -/
def P4376403608002233740.Spec : Prop :=
  ∀ n, P4376403608002233740.a n = A176525 (n + 1)

end A176525

/-! ## A176525.P16349459207442115606

`eq[4, A037445(n+1)]+1`
-/

namespace A176525.P16349459207442115606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176525.P16349459207442115606

namespace A176525

/-- `eq[4, A037445(n+1)]+1` -/
def P16349459207442115606.Spec : Prop :=
  ∀ n, (P16349459207442115606.a n : ℤ) = A176525 (n + 1)

end A176525

/-! ## A176525.P13125862400629211080

`eq[4, A037445(A028310(n))]`
-/

namespace A176525.P13125862400629211080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176525.P13125862400629211080

namespace A176525

/-- `eq[4, A037445(A028310(n))]` -/
def P13125862400629211080.Spec : Prop :=
  ∀ n, (P13125862400629211080.a n : ℤ) = A176525 (n + 1)

end A176525

/-! ## A176525.P9593273995391422697

`eq[2, A064547(A000038(n)+n)]`
-/

namespace A176525.P9593273995391422697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176525.P9593273995391422697

namespace A176525

/-- `eq[2, A064547(A000038(n)+n)]` -/
def P9593273995391422697.Spec : Prop :=
  ∀ n, (P9593273995391422697.a n : ℤ) = A176525 (n + 1)

end A176525

/-! ## A176525.P2900536554375007841

`eq[2, A001222(A074848(n+1))]+1`
-/

namespace A176525.P2900536554375007841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074848 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176525.P2900536554375007841

namespace A176525

/-- `eq[2, A001222(A074848(n+1))]+1` -/
def P2900536554375007841.Spec : Prop :=
  ∀ n, (P2900536554375007841.a n : ℤ) = A176525 (n + 1)

end A176525

/-! ## A176525.P1829758167214847151

`eq[2, A001222(A160102(n+1))]+1`
-/

namespace A176525.P1829758167214847151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A160102 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176525.P1829758167214847151

namespace A176525

/-- `eq[2, A001222(A160102(n+1))]+1` -/
def P1829758167214847151.Spec : Prop :=
  ∀ n, (P1829758167214847151.a n : ℤ) = A176525 (n + 1)

end A176525

/-! ## A176525.P2824570074728197999

`eq[2, A302790((n+1)²)]+1`
-/

namespace A176525.P2824570074728197999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302790 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176525.P2824570074728197999

namespace A176525

/-- `eq[2, A302790((n+1)²)]+1` -/
def P2824570074728197999.Spec : Prop :=
  ∀ n, (P2824570074728197999.a n : ℤ) = A176525 (n + 1)

end A176525

/-!
# A176526: Arises in cyclotomic integers, fusion categories and subfactors.

The programs for A176526, there is no canonical definition to state claims against.
-/

/-! ## A176526.P14313416430083535015

`record[A178863(n+1)%A338733(A340847(n+1))]`
-/

namespace A176526.P14313416430083535015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178863 (n + 1)) (A338733 (A340847 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176526.P14313416430083535015

/-! ## A176526.P7303891936468713882

`∩[A178863(n+1), A252474(n+1)]`
-/

namespace A176526.P7303891936468713882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176526.P7303891936468713882

/-!
# A176527: Partial sums of A006058.

The programs for A176527, there is no canonical definition to state claims against.
-/

/-! ## A176527.P3235701850219791156

`∑[A006058(n)]`
-/

namespace A176527.P3235701850219791156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176527.P3235701850219791156

/-! ## A176527.P4940010249599772418

`a(n-1)+char[A340615(n)]*A006058(n)` with `a(0)=1`
-/

namespace A176527.P4940010249599772418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340615 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006058 n

end

end A176527.P4940010249599772418

/-! ## A176527.P3025357573848209228

`a(n-1)+and(1, A000040(n+1))*A006058(n)` with `a(0)=1`
-/

namespace A176527.P3025357573848209228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land 1 (A000040 (n + 1)) * A006058 n

end

end A176527.P3025357573848209228

/-! ## A176527.P5160420634947831702

`a(n-1)+A001222(A053674(n+1))*A006058(n)` with `a(0)=1`
-/

namespace A176527.P5160420634947831702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001222 (A053674 (n + 1)).toNat * A006058 n

end

end A176527.P5160420634947831702

/-! ## A176527.P11853248271662262346

`∑[A326909(n)-A000798(n)]`
-/

namespace A176527.P11853248271662262346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - A000798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176527.P11853248271662262346

/-!
# A176532: Decimal expansion of 5+3*sqrt(3).

The programs for A176532, there is no canonical definition to state claims against.
-/

/-! ## A176532.P7534611315828341330

`A178809(n)-char[1]`
-/

namespace A176532.P7534611315828341330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178809 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A176532.P7534611315828341330

/-! ## A176532.P7819726223950977126

`xor(A159075(n)², A178809(n))`
-/

namespace A176532.P7819726223950977126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A159075 n ^ 2) (A178809 (n + 2))

end

end A176532.P7819726223950977126

/-! ## A176532.P4154575131190058638

`C(A178809(n), A004442(C(2, n)))`
-/

namespace A176532.P4154575131190058638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A178809 (n + 2)).toNat (A004442 (Nat.choose 2 n)).toNat

end

end A176532.P4154575131190058638

/-! ## A176532.P2957314799661949040

`C(A178809(n), A159627(C(2, n)))`
-/

namespace A176532.P2957314799661949040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A178809 (n + 2)).toNat (A159627 (Nat.choose 2 n + 1)).toNat

end

end A176532.P2957314799661949040

/-! ## A176532.P4463347733796396636

`A005171(A008706(n))*A178809(n)`
-/

namespace A176532.P4463347733796396636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A008706 n).toNat * A178809 (n + 2)

end

end A176532.P4463347733796396636

/-! ## A176532.P12174584025538420929

`xor(A036987(A348511(n+1)), A178809(n))`
-/

namespace A176532.P12174584025538420929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036987 (A348511 (n + 1)).toNat) (A178809 (n + 2))

end

end A176532.P12174584025538420929

/-! ## A176532.P8991270423522171537

`xor(A036987(n²+2), A178809(n))`
-/

namespace A176532.P8991270423522171537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036987 (n ^ 2 + 2)) (A178809 (n + 2))

end

end A176532.P8991270423522171537

/-!
# A176538: Partial sums of A018891.

The programs for A176538, there is no canonical definition to state claims against.
-/

/-! ## A176538.P14027398298694932191

`∑[A018891(n+1)]`
-/

namespace A176538.P14027398298694932191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176538.P14027398298694932191

/-! ## A176538.P3076293178303309759

`A018891(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A176538.P3076293178303309759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A018891 (n + 1) + a (A023443 n).toNat

end

end A176538.P3076293178303309759

/-!
# A176539: Indices of nonprime numbers in the products of two noncomposite numbers.

The programs for A176539, there is no canonical definition to state claims against.
-/

/-! ## A176539.P2839196331410156291

`a(n-1)+A176451(n)+1` with `a(0)=1`
-/

namespace A176539.P2839196331410156291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A176451 n + 1)

end

end A176539.P2839196331410156291

/-! ## A176539.P17254985815160871690

`∑[A176451(abs(1-n)+1)]+n`
-/

namespace A176539.P17254985815160871690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A176539.P17254985815160871690

/-! ## A176539.P2078363721859120051

`comp[A111457(n+1)+1+n]+1`
-/

namespace A176539.P2078363721859120051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111457 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176539.P2078363721859120051

/-! ## A176539.P14959620156029179056

`∑[A176451(floor(acot(n)+n))]-1+n`
-/

namespace A176539.P14959620156029179056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 + (n : ℤ)

end

end A176539.P14959620156029179056

/-! ## A176539.P2270725251411917815

`A101041(A176540(n+1))`
-/

namespace A176539.P2270725251411917815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101041 (A176540 (n + 1)).toNat

end

end A176539.P2270725251411917815

/-! ## A176539.P10633806157489262066

`eq[1, A008836(A037143(n+1))]+1`
-/

namespace A176539.P10633806157489262066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A037143 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176539.P10633806157489262066

/-! ## A176539.P13097059316441251309

`A230980(record[A210615(n+1)])+1+n`
-/

namespace A176539.P13097059316441251309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1 + (n : ℤ)

end

end A176539.P13097059316441251309

/-! ## A176539.P10991992058178123189

`∑[A176451(n+1)+1]-A176451(n+1)`
-/

namespace A176539.P10991992058178123189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A176451 (n + 1)

end

end A176539.P10991992058178123189

/-! ## A176539.P1145546579165321637

`comp[A072000(A000040(n+1))+1+n]+1`
-/

namespace A176539.P1145546579165321637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000040 (n + 1)).toNat + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176539.P1145546579165321637

/-! ## A176539.P7736555468484727349

`eq[2, A001222(A037143(n+1))]-A176451(n+1)`
-/

namespace A176539.P7736555468484727349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A176451 (n + 1)

end

end A176539.P7736555468484727349

/-!
# A176540: 1 together with the semiprimes.

The programs for A176540, the canonical program `A176540.P1782465785153805427` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176540 has offset 1).

The definition of A176540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176540.P16636508927312280188

`eq[1, A216677(n+1)]+1`
-/

namespace A176540.P16636508927312280188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176540.P16636508927312280188

namespace A176540

/-- `eq[1, A216677(n+1)]+1` -/
def P16636508927312280188.Spec : Prop :=
  ∀ n, (P16636508927312280188.a n : ℤ) = A176540 (n + 1)

end A176540

/-! ## A176540.P15779664673020698620

`eq[1, A353337(n+1)]+1`
-/

namespace A176540.P15779664673020698620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176540.P15779664673020698620

namespace A176540

/-- `eq[1, A353337(n+1)]+1` -/
def P15779664673020698620.Spec : Prop :=
  ∀ n, (P15779664673020698620.a n : ℤ) = A176540 (n + 1)

end A176540

/-! ## A176540.P1782465785153805427

`∑[A065516(abs(2-n)+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176540

/-- `∑[A065516(abs(2-n)+1)]` -/
def P1782465785153805427.Spec : Prop :=
  ∀ n, P1782465785153805427.a n = A176540 (n + 1)

theorem P1782465785153805427.correct : P1782465785153805427.Spec := by
  intro n
  simp only [A176540, Nat.add_sub_cancel]

end A176540

/-! ## A176540.P14336289741352200779

`∪[A022525(n), A001358(n+1)]`
-/

namespace A176540.P14336289741352200779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176540.P14336289741352200779

namespace A176540

/-- `∪[A022525(n), A001358(n+1)]` -/
def P14336289741352200779.Spec : Prop :=
  ∀ n, (P14336289741352200779.a n : ℤ) = A176540 (n + 1)

end A176540

/-! ## A176540.P3020181944123138039

`∪[A006881(n+1), A008578(n+1)²]`
-/

namespace A176540.P3020181944123138039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176540.P3020181944123138039

namespace A176540

/-- `∪[A006881(n+1), A008578(n+1)²]` -/
def P3020181944123138039.Spec : Prop :=
  ∀ n, (P3020181944123138039.a n : ℤ) = A176540 (n + 1)

end A176540

/-! ## A176540.P15303006839656694093

`eq[A001221(n+1), A307409(n+1)]+1`
-/

namespace A176540.P15303006839656694093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176540.P15303006839656694093

namespace A176540

/-- `eq[A001221(n+1), A307409(n+1)]+1` -/
def P15303006839656694093.Spec : Prop :=
  ∀ n, (P15303006839656694093.a n : ℤ) = A176540 (n + 1)

end A176540

/-! ## A176540.P11183785059337262764

`filter[A085155(n+1), A340369(#)]`
-/

namespace A176540.P11183785059337262764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A176540.P11183785059337262764

namespace A176540

/-- `filter[A085155(n+1), A340369(#)]` -/
def P11183785059337262764.Spec : Prop :=
  ∀ n, P11183785059337262764.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P6350518384517185548

`filter[A085155(n+1), A353799(#)]`
-/

namespace A176540.P6350518384517185548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A176540.P6350518384517185548

namespace A176540

/-- `filter[A085155(n+1), A353799(#)]` -/
def P6350518384517185548.Spec : Prop :=
  ∀ n, P6350518384517185548.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P7932026151278577668

`filter[A085155(n+1), A359471(#)]`
-/

namespace A176540.P7932026151278577668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A176540.P7932026151278577668

namespace A176540

/-- `filter[A085155(n+1), A359471(#)]` -/
def P7932026151278577668.Spec : Prop :=
  ∀ n, P7932026151278577668.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P3696338710533251503

`filter[A085155(n+1), A359764(#)]`
-/

namespace A176540.P3696338710533251503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A176540.P3696338710533251503

namespace A176540

/-- `filter[A085155(n+1), A359764(#)]` -/
def P3696338710533251503.Spec : Prop :=
  ∀ n, P3696338710533251503.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P240612479468362813

`filter[A037143(n+1), A005171(#)]`
-/

namespace A176540.P240612479468362813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A176540.P240612479468362813

namespace A176540

/-- `filter[A037143(n+1), A005171(#)]` -/
def P240612479468362813.Spec : Prop :=
  ∀ n, P240612479468362813.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P10455601111855070118

`filter[A037143(n+1), A065043(#)]`
-/

namespace A176540.P10455601111855070118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A176540.P10455601111855070118

namespace A176540

/-- `filter[A037143(n+1), A065043(#)]` -/
def P10455601111855070118.Spec : Prop :=
  ∀ n, P10455601111855070118.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P14473441002472271006

`filter[A037143(n+1), A359764(#)]`
-/

namespace A176540.P14473441002472271006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A176540.P14473441002472271006

namespace A176540

/-- `filter[A037143(n+1), A359764(#)]` -/
def P14473441002472271006.Spec : Prop :=
  ∀ n, P14473441002472271006.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P13398887849239732923

`filter[A037143(n+1), A373481(#)]`
-/

namespace A176540.P13398887849239732923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A176540.P13398887849239732923

namespace A176540

/-- `filter[A037143(n+1), A373481(#)]` -/
def P13398887849239732923.Spec : Prop :=
  ∀ n, P13398887849239732923.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P4111702403487546934

`filter[A007964(n+1), A065043(#)]`
-/

namespace A176540.P4111702403487546934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A176540.P4111702403487546934

namespace A176540

/-- `filter[A007964(n+1), A065043(#)]` -/
def P4111702403487546934.Spec : Prop :=
  ∀ n, P4111702403487546934.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P977660517246267886

`filter[A007964(n+1), A359764(#)]`
-/

namespace A176540.P977660517246267886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A176540.P977660517246267886

namespace A176540

/-- `filter[A007964(n+1), A359764(#)]` -/
def P977660517246267886.Spec : Prop :=
  ∀ n, P977660517246267886.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P1519840784768171873

`filter[A354144(n+1), A359764(#)]`
-/

namespace A176540.P1519840784768171873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A176540.P1519840784768171873

namespace A176540

/-- `filter[A354144(n+1), A359764(#)]` -/
def P1519840784768171873.Spec : Prop :=
  ∀ n, P1519840784768171873.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P9293251374153743290

`filter[A085156(n+1), A359764(#)]`
-/

namespace A176540.P9293251374153743290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A176540.P9293251374153743290

namespace A176540

/-- `filter[A085156(n+1), A359764(#)]` -/
def P9293251374153743290.Spec : Prop :=
  ∀ n, P9293251374153743290.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P407825976242578868

`filter[A119885(n+1), A359764(#)]`
-/

namespace A176540.P407825976242578868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A176540.P407825976242578868

namespace A176540

/-- `filter[A119885(n+1), A359764(#)]` -/
def P407825976242578868.Spec : Prop :=
  ∀ n, P407825976242578868.a n = A176540 (n + 1)

end A176540

/-! ## A176540.P6785683750251807817

`filter[A328028(n+1), A353799(#)]`
-/

namespace A176540.P6785683750251807817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A176540.P6785683750251807817

namespace A176540

/-- `filter[A328028(n+1), A353799(#)]` -/
def P6785683750251807817.Spec : Prop :=
  ∀ n, P6785683750251807817.a n = A176540 (n + 1)

end A176540

/-!
# A176542: Numbers k such that there are only a finite nonzero number of sets of k consecutive triangular numbers that sum to a square.

The programs for A176542, the canonical program `A176542.P17557656147909876047` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176542 has offset 1).

The definition of A176542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176542.P10217717650137380315

`2*(∑[gcd(2, n)]+2)²`
-/

namespace A176542.P10217717650137380315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A176542.P10217717650137380315

namespace A176542

/-- `2*(∑[gcd(2, n)]+2)²` -/
def P10217717650137380315.Spec : Prop :=
  ∀ n, (P10217717650137380315.a n : ℤ) = A176542 (n + 1)

end A176542

/-! ## A176542.P3109859131073379165

`2*(comp[3*n]+3)²`
-/

namespace A176542.P3109859131073379165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3) ^ 2

end

end A176542.P3109859131073379165

namespace A176542

/-- `2*(comp[3*n]+3)²` -/
def P3109859131073379165.Spec : Prop :=
  ∀ n, (P3109859131073379165.a n : ℤ) = A176542 (n + 1)

end A176542

/-! ## A176542.P12835110834566453397

`∑[6-a(n-1)]²/2` with `a(0)=8, a(1)=2`
-/

namespace A176542.P12835110834566453397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A176542.P12835110834566453397

namespace A176542

/-- `∑[6-a(n-1)]²/2` -/
def P12835110834566453397.Spec : Prop :=
  ∀ n, P12835110834566453397.a n = (A176542 (n + 1) : ℚ)

end A176542

/-! ## A176542.P8618967331327606438

`(or(1, n)+n+7+n)²/2`
-/

namespace A176542.P8618967331327606438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n + n + 7 + n) ^ 2 : ℚ) / 2

end

end A176542.P8618967331327606438

namespace A176542

/-- `(or(1, n)+n+7+n)²/2` -/
def P8618967331327606438.Spec : Prop :=
  ∀ n, P8618967331327606438.a n = (A176542 (n + 1) : ℚ)

end A176542

/-! ## A176542.P17557656147909876047

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=32, a(1)=50, a(2)=98, a(3)=128, a(4)=200`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176542

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P17557656147909876047.Spec : Prop :=
  ∀ n, P17557656147909876047.a n = A176542 (n + 1)

theorem P17557656147909876047.correct : P17557656147909876047.Spec := by
  intro n
  simp only [A176542, Nat.add_sub_cancel]

end A176542

/-! ## A176542.P7189103291537987654

`A298039(n+2)+1`
-/

namespace A176542.P7189103291537987654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 (n + 2) + 1

end

end A176542.P7189103291537987654

namespace A176542

/-- `A298039(n+2)+1` -/
def P7189103291537987654.Spec : Prop :=
  ∀ n, P7189103291537987654.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P13555671124428262757

`A047235(n+3)²/2`
-/

namespace A176542.P13555671124428262757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047235 (n + 3) ^ 2 : ℚ) / 2

end

end A176542.P13555671124428262757

namespace A176542

/-- `A047235(n+3)²/2` -/
def P13555671124428262757.Spec : Prop :=
  ∀ n, P13555671124428262757.a n = (A176542 (n + 1) : ℚ)

end A176542

/-! ## A176542.P10749472871855065691

`2*A057780(n+3)+2`
-/

namespace A176542.P10749472871855065691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057780 (n + 3) + 2

end

end A176542.P10749472871855065691

namespace A176542

/-- `2*A057780(n+3)+2` -/
def P10749472871855065691.Spec : Prop :=
  ∀ n, P10749472871855065691.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P6834453687273659250

`3*A186424(n+2)-1`
-/

namespace A176542.P6834453687273659250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A186424 (n + 2) - 1

end

end A176542.P6834453687273659250

namespace A176542

/-- `3*A186424(n+2)-1` -/
def P6834453687273659250.Spec : Prop :=
  ∀ n, P6834453687273659250.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P5655057123511428161

`A274682(n+3)+A000217(n+2)`
-/

namespace A176542.P5655057123511428161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274682 (n + 3) + A000217 (n + 2)

end

end A176542.P5655057123511428161

namespace A176542

/-- `A274682(n+3)+A000217(n+2)` -/
def P5655057123511428161.Spec : Prop :=
  ∀ n, P5655057123511428161.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P12317919718114657915

`A135556(n+3)+A135556(n+3)`
-/

namespace A176542.P12317919718114657915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135556 (n + 3) + A135556 (n + 3)

end

end A176542.P12317919718114657915

namespace A176542

/-- `A135556(n+3)+A135556(n+3)` -/
def P12317919718114657915.Spec : Prop :=
  ∀ n, P12317919718114657915.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P3979562011303883502

`Δ[A238410(n+3)]²/2`
-/

namespace A176542.P3979562011303883502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A176542.P3979562011303883502

namespace A176542

/-- `Δ[A238410(n+3)]²/2` -/
def P3979562011303883502.Spec : Prop :=
  ∀ n, P3979562011303883502.a n = (A176542 (n + 1) : ℚ)

end A176542

/-! ## A176542.P9111832492794717589

`A093907(A005843(A032766(n+2)))`
-/

namespace A176542.P9111832492794717589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (A005843 (A032766 (n + 2)).toNat).toNat

end

end A176542.P9111832492794717589

namespace A176542

/-- `A093907(A005843(A032766(n+2)))` -/
def P9111832492794717589.Spec : Prop :=
  ∀ n, P9111832492794717589.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P8883778999004037979

`A093907(3*(n+2))`
-/

namespace A176542.P8883778999004037979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (3 * (n + 2))

end

end A176542.P8883778999004037979

namespace A176542

/-- `A093907(3*(n+2))` -/
def P8883778999004037979.Spec : Prop :=
  ∀ n, P8883778999004037979.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P15391964454123576232

`A001105(A032766(n)+4)`
-/

namespace A176542.P15391964454123576232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A032766 n + 4).toNat

end

end A176542.P15391964454123576232

namespace A176542

/-- `A001105(A032766(n)+4)` -/
def P15391964454123576232.Spec : Prop :=
  ∀ n, P15391964454123576232.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P9181860974140428962

`A001105(A008619(n)+n+3)`
-/

namespace A176542.P9181860974140428962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A008619 n + (n + 3 : ℤ)).toNat

end

end A176542.P9181860974140428962

namespace A176542

/-- `A001105(A008619(n)+n+3)` -/
def P9181860974140428962.Spec : Prop :=
  ∀ n, P9181860974140428962.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P12218870185319591091

`A001105(n+2+A080513(n+1))`
-/

namespace A176542.P12218870185319591091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 ((n + 2 : ℤ) + A080513 (n + 1)).toNat

end

end A176542.P12218870185319591091

namespace A176542

/-- `A001105(n+2+A080513(n+1))` -/
def P12218870185319591091.Spec : Prop :=
  ∀ n, P12218870185319591091.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P2447762565834228759

`A001105(A004526(n+2)+n+3)`
-/

namespace A176542.P2447762565834228759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A004526 (n + 2) + (n + 3 : ℤ)).toNat

end

end A176542.P2447762565834228759

namespace A176542

/-- `A001105(A004526(n+2)+n+3)` -/
def P2447762565834228759.Spec : Prop :=
  ∀ n, P2447762565834228759.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P18379680503351714841

`record[2*A001651(A183041(n))²]`
-/

namespace A176542.P18379680503351714841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001651 (A183041 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176542.P18379680503351714841

namespace A176542

/-- `record[2*A001651(A183041(n))²]` -/
def P18379680503351714841.Spec : Prop :=
  ∀ n, P18379680503351714841.a n = A176542 (n + 1)

end A176542

/-! ## A176542.P13903624396190276233

`A099392(A047270(n+3))-1`
-/

namespace A176542.P13903624396190276233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A047270 (n + 3)).toNat - 1

end

end A176542.P13903624396190276233

namespace A176542

/-- `A099392(A047270(n+3))-1` -/
def P13903624396190276233.Spec : Prop :=
  ∀ n, P13903624396190276233.a n = A176542 (n + 1)

end A176542

/-!
# A176543: Numbers k such that semiprime(k)/sum of digits of semiprime(k) is prime.

The programs for A176543, there is no canonical definition to state claims against.
-/

/-! ## A176543.P13194979996563488748

`lt[4, n*A188641(A001358(n+1))]+1`
-/

namespace A176543.P13194979996563488748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188641 (A001358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A176543.P13194979996563488748

/-!
# A176544: Primes of the form semiprime(k)/sum of digits of semiprime(k).

The programs for A176544, there is no canonical definition to state claims against.
-/

/-! ## A176544.P15321007501437282363

`A001358(A176543(n+1))/A175013(A176543(n+1))`
-/

namespace A176544.P15321007501437282363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (A176543 (n + 1)).toNat : ℚ) / (A175013 (A176543 (n + 1)).toNat : ℚ)

end

end A176544.P15321007501437282363

/-! ## A176544.P14498188601916837282

`A006530(A118693(n+5))`
-/

namespace A176544.P14498188601916837282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A118693 (n + 5)).toNat

end

end A176544.P14498188601916837282

/-!
# A176545: Numbers k>0 such that 2*k^2+14*k+5 is prime.

The programs for A176545, there is no canonical definition to state claims against.
-/

/-! ## A176545.P3278742713671017764

`eq[1, A001222(A154576(n+1))]+1`
-/

namespace A176545.P3278742713671017764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A154576 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176545.P3278742713671017764

/-! ## A176545.P10338939359790229791

`lt[A000005(4*A052905(n+2)+1), 3]+2`
-/

namespace A176545.P10338939359790229791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * A052905 (n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A176545.P10338939359790229791

/-! ## A176545.P16124406652515080476

`eq[2, A001222(A153644(n+1))]+1`
-/

namespace A176545.P16124406652515080476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A153644 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176545.P16124406652515080476

/-! ## A176545.P14906700394779853328

`eq[2, A016014(A052905(n))]`
-/

namespace A176545.P14906700394779853328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A052905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176545.P14906700394779853328

/-! ## A176545.P1153010005407267846

`eq[2, A016014(A000124(n+3)-6)]`
-/

namespace A176545.P1153010005407267846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A000124 (n + 3) - 6).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176545.P1153010005407267846

/-!
# A176546: Bernoulli numerators A000367 with an additional 1 inserted to represent B_1.

The programs for A176546, there is no canonical definition to state claims against.
-/

/-! ## A176546.P14764172726153741089

`A071020(C(n, 2))`
-/

namespace A176546.P14764172726153741089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071020 (Nat.choose n 2)

end

end A176546.P14764172726153741089

/-! ## A176546.P9452286566211821844

`A000367(abs(1-n))`
-/

namespace A176546.P9452286566211821844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 |1 - (n : ℤ)|.toNat

end

end A176546.P9452286566211821844

/-! ## A176546.P10290425324582863417

`A071020(∑[n]+1)`
-/

namespace A176546.P10290425324582863417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071020 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A176546.P10290425324582863417

/-! ## A176546.P7609619171626736894

`A027641(abs(2*(1-n)))`
-/

namespace A176546.P7609619171626736894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 |2 * (1 - (n : ℤ))|.toNat

end

end A176546.P7609619171626736894

/-! ## A176546.P1044641137211276181

`A164555(abs(2*(1-n)))`
-/

namespace A176546.P1044641137211276181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 |2 * (1 - (n : ℤ))|.toNat

end

end A176546.P1044641137211276181

/-!
# A176547: Numbers n such that 2*n^2 + 6*n + 1 is prime.

The programs for A176547, there is no canonical definition to state claims against.
-/

/-! ## A176547.P2162572044845402382

`eq[4, A305901(A028387(n))]`
-/

namespace A176547.P2162572044845402382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (A028387 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176547.P2162572044845402382

/-! ## A176547.P7494555163758448011

`eq[2, A305973(n*(n+3)+1)]`
-/

namespace A176547.P7494555163758448011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n * (n + 3) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176547.P7494555163758448011

/-! ## A176547.P10113016750995152335

`eq[1, A101264(n*(n+3))]`
-/

namespace A176547.P10113016750995152335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n * (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176547.P10113016750995152335

/-! ## A176547.P11765149926716784021

`eq[1, A001222((n+3)*2*n+1)]`
-/

namespace A176547.P11765149926716784021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 3) * (2 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176547.P11765149926716784021

/-! ## A176547.P11460146501347010275

`eq[2, A000005((n+3)*2*n+1)]`
-/

namespace A176547.P11460146501347010275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 3) * (2 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176547.P11460146501347010275

/-!
# A176548: Non-semiprimes whose reversal is a prime.

The programs for A176548, there is no canonical definition to state claims against.
-/

/-! ## A176548.P10633143785834841082

`∩[A095179(n+1), A100959(n+1)]`
-/

namespace A176548.P10633143785834841082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176548.P10633143785834841082

/-! ## A176548.P14674973448126236201

`∩[A095179(n+1), A246716(n+1)]`
-/

namespace A176548.P14674973448126236201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176548.P14674973448126236201

/-! ## A176548.P2466538953894208752

`∩[A095179(n+1), A362618(n+1)]`
-/

namespace A176548.P2466538953894208752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176548.P2466538953894208752

/-! ## A176548.P4411812285947972363

`∩[A097312(n+1), A362618(n+1)]`
-/

namespace A176548.P4411812285947972363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176548.P4411812285947972363

/-! ## A176548.P2167652512215494686

`∩[A095179(n+1), A390278(n+1)]`
-/

namespace A176548.P2167652512215494686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176548.P2167652512215494686

/-!
# A176549: Primes of the form 2*n^2+6*n+1.

The programs for A176549, there is no canonical definition to state claims against.
-/

/-! ## A176549.P1174205086084450978

`A059993(A176547(n+1))`
-/

namespace A176549.P1174205086084450978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 (A176547 (n + 1)).toNat

end

end A176549.P1174205086084450978

/-! ## A176549.P11150535350985613450

`A090288(A176547(n+1))-char[A001057(n)]`
-/

namespace A176549.P11150535350985613450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A176549.P11150535350985613450

/-! ## A176549.P11106898920882222284

`A090288(A176547(n+1))-char[A001281(n)]`
-/

namespace A176549.P11106898920882222284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A176549.P11106898920882222284

/-! ## A176549.P2702290046824473810

`A090288(A176547(n+1))-char[A002251(n)]`
-/

namespace A176549.P2702290046824473810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A176549.P2702290046824473810

/-! ## A176549.P13008046369010570903

`A090288(A176547(n+1))-char[A004442(n)]`
-/

namespace A176549.P13008046369010570903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A176549.P13008046369010570903

/-! ## A176549.P16464112504726902293

`A090288(A176547(n+1))-char[A004473(n)]`
-/

namespace A176549.P16464112504726902293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004473 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A176549.P16464112504726902293

/-! ## A176549.P1007933467465120222

`A090288(A176547(n+1))-A000034(2*n)`
-/

namespace A176549.P1007933467465120222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat - A000034 (2 * n)

end

end A176549.P1007933467465120222

/-! ## A176549.P16645757349139234437

`A090288(A176547(n+1))+∑[n]-A000124(n)`
-/

namespace A176549.P16645757349139234437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000124 n)

end

end A176549.P16645757349139234437

/-! ## A176549.P1075520411308963312

`A090288(A176547(n+1))-A000035(2*n+1)`
-/

namespace A176549.P1075520411308963312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat - A000035 (2 * n + 1)

end

end A176549.P1075520411308963312

/-! ## A176549.P7190631760089474619

`A090288(A176547(n+1))-A000041(gcd(n, n+1))`
-/

namespace A176549.P7190631760089474619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat - A000041 (Nat.gcd n (n + 1))

end

end A176549.P7190631760089474619

/-! ## A176549.P4896233228155344229

`A090288(A176547(n+1))-A001221(A007918(n))`
-/

namespace A176549.P4896233228155344229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat - A001221 (A007918 n).toNat

end

end A176549.P4896233228155344229

/-! ## A176549.P18403764340693795907

`A090288(A176547(n+1))-A014963(52*(n+1))`
-/

namespace A176549.P18403764340693795907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A176547 (n + 1)).toNat - A014963 (52 * (n + 1))

end

end A176549.P18403764340693795907

/-! ## A176549.P18162074164087262111

`∩[A093838(n+1), A059993(n)]`
-/

namespace A176549.P18162074164087262111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176549.P18162074164087262111

/-! ## A176549.P7063377828486515889

`∩[A093838(n+1), A195147(n)]`
-/

namespace A176549.P7063377828486515889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176549.P7063377828486515889

/-! ## A176549.P15452826410093202072

`∩[A093838(n+1), A266793(n)]`
-/

namespace A176549.P15452826410093202072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266793 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176549.P15452826410093202072

/-! ## A176549.P14049066166642407266

`∩[A093838(n+1), A348228(n)]`
-/

namespace A176549.P14049066166642407266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348228 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176549.P14049066166642407266

/-! ## A176549.P7509291046864362035

`∩[A093838(n+1), A195316(n+1)]`
-/

namespace A176549.P7509291046864362035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176549.P7509291046864362035

/-!
# A176551: Products of 2 primes of the form 3*k-+1.

The programs for A176551, there is no canonical definition to state claims against.
-/

/-! ## A176551.P793950967511899285

`eq[4, ∏{e}[3*n², #]]`
-/

namespace A176551.P793950967511899285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176551.P793950967511899285

/-! ## A176551.P17610756164247057270

`lt[gcd(3, n), A105700(n)]`
-/

namespace A176551.P17610756164247057270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176551.P17610756164247057270

/-! ## A176551.P4583657977383545215

`eq[2, A105700(n*n²%3)]`
-/

namespace A176551.P4583657977383545215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (n * (n ^ 2 % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176551.P4583657977383545215

/-! ## A176551.P12326279949781628238

`eq[2, A001222(n^floor(sqrt(n%3)))]`
-/

namespace A176551.P12326279949781628238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ Nat.sqrt (n % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176551.P12326279949781628238

/-! ## A176551.P1734795858536283113

`∩[ceil((3*n+1)/2), A001358(n+1)]`
-/

namespace A176551.P1734795858536283113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * n + 1 : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176551.P1734795858536283113

/-! ## A176551.P6181608131303474549

`eq[3^val(n+1, 3), A064911(n+1)]+1`
-/

namespace A176551.P6181608131303474549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176551.P6181608131303474549

/-! ## A176551.P1409678952788181139

`eq[2, A001222(n*(n+1)²%3+1)]+1`
-/

namespace A176551.P1409678952788181139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * ((n + 1) ^ 2 % 3) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176551.P1409678952788181139

/-! ## A176551.P8734224635563967537

`eq[A010133(n), A105700(n)]`
-/

namespace A176551.P8734224635563967537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010133 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176551.P8734224635563967537

/-! ## A176551.P857429357279520333

`eq[A040118(n), A105700(n)]`
-/

namespace A176551.P857429357279520333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176551.P857429357279520333

/-! ## A176551.P13870507794739520604

`eq[A040252(n), A105700(n)]`
-/

namespace A176551.P13870507794739520604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176551.P13870507794739520604

/-!
# A176552: Complement of A174894, where A174894 = numbers such that both arithmetic means of distinct and all prime factors are integers.

The programs for A176552, there is no canonical definition to state claims against.
-/

/-! ## A176552.P9626406679149161341

`eq[char[A174894(n+1)], A151933(n)]`
-/

namespace A176552.P9626406679149161341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174894 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A176552.P9626406679149161341

/-! ## A176552.P1622994748566163865

`A176587(n+1)-A103675(A011992(n+7))`
-/

namespace A176552.P1622994748566163865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176587 (n + 1) - A103675 (A011992 (n + 7)).toNat

end

end A176552.P1622994748566163865

/-! ## A176552.P1464233855397056221

`A176587(n+1)-A188300(A267644(2*(n+2)))`
-/

namespace A176552.P1464233855397056221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176587 (n + 1) - A188300 (A267644 (2 * (n + 2))).toNat

end

end A176552.P1464233855397056221

/-! ## A176552.P13703422166279942037

`A176587(n+1)-A056978(A240614(A004248(n)))`
-/

namespace A176552.P13703422166279942037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176587 (n + 1) - A056978 (A240614 (A004248 n).toNat).toNat

end

end A176552.P13703422166279942037

/-!
# A176553: Numbers m such that concatenations of divisors of m are noncomposites.

The programs for A176553, there is no canonical definition to state claims against.
-/

/-! ## A176553.P2507685475069067980

`∩[A043772(n+1), A124695(n+1)]`
-/

namespace A176553.P2507685475069067980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176553.P2507685475069067980

/-! ## A176553.P4173219809821797920

`∩[A118643(n+1), A124695(n+1)]`
-/

namespace A176553.P4173219809821797920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176553.P4173219809821797920

/-! ## A176553.P14814465658276632421

`record[A043772(n+1)/A295224(A023426(n))]`
-/

namespace A176553.P14814465658276632421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043772 (n + 1) : ℚ) / (A295224 (A023426 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176553.P14814465658276632421

/-! ## A176553.P7407455183513358485

`∩[A043772(n+1), A050723(n+1)]`
-/

namespace A176553.P7407455183513358485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176553.P7407455183513358485

/-! ## A176553.P7479332670798714746

`∩[A050723(n+1), A118643(n+1)]`
-/

namespace A176553.P7479332670798714746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176553.P7479332670798714746

/-!
# A176554: Numbers n such that concatenations of divisors of n are nonprime.

The programs for A176554, there is no canonical definition to state claims against.
-/

/-! ## A176554.P13190871074251371228

`eq[0, char[A176553(n+1)]]%(n+1)+n+1`
-/

namespace A176554.P13190871074251371228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % (n + 1) + (n + 1)

end

end A176554.P13190871074251371228

/-! ## A176554.P3870035112093494677

`A028310(eq[0, char[A176553(n+1)]])`
-/

namespace A176554.P3870035112093494677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176554.P3870035112093494677

/-! ## A176554.P8360862121683694405

`A000007(n)+comp[A176553(n+1)]`
-/

namespace A176554.P8360862121683694405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A176554.P8360862121683694405

/-! ## A176554.P14985949917610338992

`eq[char[A176553(n+2)], A000007(n)]`
-/

namespace A176554.P14985949917610338992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A176554.P14985949917610338992

/-! ## A176554.P1064045727063152776

`record[A028310(n)-char[A176553(n+1)]]`
-/

namespace A176554.P1064045727063152776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176554.P1064045727063152776

/-! ## A176554.P347984328548515805

`eq[0, char[A176553(n+1)]]^(A000040(n+1)%2)`
-/

namespace A176554.P347984328548515805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A176554.P347984328548515805

/-! ## A176554.P2707594093532878921

`eq[0, char[A176553(n+1)]]^(A005665(n)%2)`
-/

namespace A176554.P2707594093532878921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) ^ (Int.tmod (A005665 n) 2 : ℤ)

end

end A176554.P2707594093532878921

/-!
# A176555: Noncomposite concatenations of divisors of some k, ordered by k.

The programs for A176555, there is no canonical definition to state claims against.
-/

/-! ## A176555.P2326959843545663068

`A037278(A176553(n+1))`
-/

namespace A176555.P2326959843545663068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (A176553 (n + 1)).toNat

end

end A176555.P2326959843545663068

/-! ## A176555.P5898416007123809086

`filter[A037286(n), A174897(#)]`
-/

namespace A176555.P5898416007123809086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A176555.P5898416007123809086

/-! ## A176555.P14874552584985487820

`filter[A037286(n), A323152(#)]`
-/

namespace A176555.P14874552584985487820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A176555.P14874552584985487820

/-!
# A176556: Nonprime concatenations of divisors of some k, ordered by k.

The programs for A176556, there is no canonical definition to state claims against.
-/

/-! ## A176556.P7975864816050205155

`A037278(A176554(n+1))`
-/

namespace A176556.P7975864816050205155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (A176554 (n + 1)).toNat

end

end A176556.P7975864816050205155

/-! ## A176556.P7084067347736208900

`A037278(comp[A176553(n+1)%((n+1)*Δ[n^3])])`
-/

namespace A176556.P7084067347736208900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176553 (n + 1)) ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A176556.P7084067347736208900

/-! ## A176556.P2196068907943835526

`A037278(eq[0, char[A176553(n+1)]]%(n+1)+n+1)`
-/

namespace A176556.P2196068907943835526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n % (n + 1) + (n + 1))

end

end A176556.P2196068907943835526

/-! ## A176556.P18072980210377540583

`A037278(A000007(n)+comp[A176553(n+1)])`
-/

namespace A176556.P18072980210377540583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A176556.P18072980210377540583

/-! ## A176556.P9107758156290088945

`A037278(record[A028310(n)-char[A176553(n+1)]])`
-/

namespace A176556.P9107758156290088945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176556.P9107758156290088945

/-!
# A176557: Primes of the form 7*x^2 - 5*y^2, where x and y are successive natural numbers.

The programs for A176557, the canonical program `A176557.P16679016870021033870` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176557 has offset 1).

The definition of A176557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176557.P16679016870021033870

`p?[4*C(n, 2)-17]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176557

/-- `p?[4*C(n, 2)-17]` -/
def P16679016870021033870.Spec : Prop :=
  ∀ n, P16679016870021033870.a n = A176557 (n + 1)

theorem P16679016870021033870.correct : P16679016870021033870.Spec := by
  intro n
  simp only [A176557, Nat.add_sub_cancel]

end A176557

/-! ## A176557.P16875391783918620624

`p?[ceil(n²/2)-18]`
-/

namespace A176557.P16875391783918620624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176557.P16875391783918620624

namespace A176557

/-- `p?[ceil(n²/2)-18]` -/
def P16875391783918620624.Spec : Prop :=
  ∀ n, P16875391783918620624.a n = A176557 (n + 1)

end A176557

/-! ## A176557.P17106737783326654300

`or(1, p?[n*2*(n+1)-17])`
-/

namespace A176557.P17106737783326654300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * (n + 1)) : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176557.P17106737783326654300

namespace A176557

/-- `or(1, p?[n*2*(n+1)-17])` -/
def P17106737783326654300.Spec : Prop :=
  ∀ n, P17106737783326654300.a n = A176557 (n + 1)

end A176557

/-! ## A176557.P10515980477293421144

`∩[∑[4*n]-17, A000040(n+1)]`
-/

namespace A176557.P10515980477293421144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 17

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A176557.P10515980477293421144

namespace A176557

/-- `∩[∑[4*n]-17, A000040(n+1)]` -/
def P10515980477293421144.Spec : Prop :=
  ∀ n, (P10515980477293421144.a n : ℤ) = A176557 (n + 1)

end A176557

/-! ## A176557.P12337756890088825207

`record[A020639((n+7)*2*n+7)]`
-/

namespace A176557.P12337756890088825207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 7) * (2 * n) + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176557.P12337756890088825207

namespace A176557

/-- `record[A020639((n+7)*2*n+7)]` -/
def P12337756890088825207.Spec : Prop :=
  ∀ n, P12337756890088825207.a n = A176557 (n + 1)

end A176557

/-!
# A176558: a(n) is the reverse concatenation of divisors of n.

The programs for A176558, there is no canonical definition to state claims against.
-/

/-! ## A176558.P7598349103402121582

`A127668(A275700(n+1))`
-/

namespace A176558.P7598349103402121582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127668 (A275700 (n + 1)).toNat

end

end A176558.P7598349103402121582

/-! ## A176558.P12684910981927170156

`A256824(11*(n+1))`
-/

namespace A176558.P12684910981927170156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (11 * (n + 1))

end

end A176558.P12684910981927170156

/-! ## A176558.P17053508819339989596

`A243360(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A176558.P17053508819339989596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A176558.P17053508819339989596

/-! ## A176558.P11831367202118284595

`A243360(∑[A287377(n)])`
-/

namespace A176558.P11831367202118284595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176558.P11831367202118284595

/-! ## A176558.P15197242782944439308

`A243360(∑[A287378(n)])`
-/

namespace A176558.P15197242782944439308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176558.P15197242782944439308

/-!
# A176559: The number of primes between two consecutive Mersenne primes.

The programs for A176559, there is no canonical definition to state claims against.
-/

/-! ## A176559.P3942666075523812441

`A059305(n+2)-A059305(n+1)-1`
-/

namespace A176559.P3942666075523812441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059305 (n + 2) - A059305 (n + 1) - 1

end

end A176559.P3942666075523812441

/-! ## A176559.P17054655164305451783

`Δ[A059305(n+1)]-1`
-/

namespace A176559.P17054655164305451783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A176559.P17054655164305451783

/-! ## A176559.P2693697024806156618

`Δ[A007053(A000043(n+1))]-1`
-/

namespace A176559.P2693697024806156618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A000043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A176559.P2693697024806156618

/-! ## A176559.P13196108484396332024

`Δ[A007053(eq[1, A046800(n)])]-1`
-/

namespace A176559.P13196108484396332024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A176559.P13196108484396332024

/-! ## A176559.P246126975782795897

`Δ[A059305(n+1)+A001489(n)]`
-/

namespace A176559.P246126975782795897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059305 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176559.P246126975782795897

/-!
# A176560: A symmetrical triangle recursion:q=5;t(n,m,0)=Binomial[n,m];t(n,m,1)=Narayana(n,m);t(n,m,2)=Eulerian(n+1,m);t(n,m,q)=t(n,m,g-2)+t(n,m,q-3).

The programs for A176560, there is no canonical definition to state claims against.
-/

/-! ## A176560.P8808454560919637461

`A176561(n)-A014473(n)`
-/

namespace A176560.P8808454560919637461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176561 n - A014473 n

end

end A176560.P8808454560919637461

/-! ## A176560.P880552172977173305

`A176561(n)+1-A007318(n)`
-/

namespace A176560.P880552172977173305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176561 n + (1 - A007318 n)

end

end A176560.P880552172977173305

/-! ## A176560.P5446767101343889862

`A176200(n)-A356116(n+1)`
-/

namespace A176560.P5446767101343889862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n - A356116 (n + 1)

end

end A176560.P5446767101343889862

/-! ## A176560.P17702111169324406529

`A356116(n+1)+A132787(n+1)`
-/

namespace A176560.P17702111169324406529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356116 (n + 1) + A132787 (n + 1)

end

end A176560.P17702111169324406529

/-! ## A176560.P5883202452661505013

`(A176200(n)+A132787(n+1))/2`
-/

namespace A176560.P5883202452661505013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176200 n + A132787 (n + 1) : ℚ) / 2

end

end A176560.P5883202452661505013

/-! ## A176560.P11225918132456522582

`A001263(n+1)+A008292(n+1)-1`
-/

namespace A176560.P11225918132456522582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A008292 (n + 1) - 1)

end

end A176560.P11225918132456522582

/-! ## A176560.P13838269456645256477

`floor(A008292(n+1)+A132787(n+1)/2)`
-/

namespace A176560.P13838269456645256477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008292 (n + 1) : ℚ) + (A132787 (n + 1) : ℚ) / 2⌋

end

end A176560.P13838269456645256477

/-! ## A176560.P4713483573207396947

`A176561(n)+A024000(A007318(n))`
-/

namespace A176560.P4713483573207396947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176561 n + A024000 (A007318 n).toNat

end

end A176560.P4713483573207396947

/-! ## A176560.P13408056922752781445

`A007318(∑[n])-(A007318(n)-A176561(n))`
-/

namespace A176560.P13408056922752781445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - (A007318 n - A176561 n)

end

end A176560.P13408056922752781445

/-! ## A176560.P11111326310996263288

`A001222(A007918(n))-(A007318(n)-A176561(n))`
-/

namespace A176560.P11111326310996263288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat - (A007318 n - A176561 n)

end

end A176560.P11111326310996263288

/-!
# A176561: A symmetrical triangle recursion:q=6;t(n,m,0)=Binomial[n,m];t(n,m,1)=Narayana(n,m);t(n,m,2)=Eulerian(n+1,m);t(n,m,q)=t(n,m,g-2)+t(n,m,q-3).

The programs for A176561, there is no canonical definition to state claims against.
-/

/-! ## A176561.P3805418369242950929

`A176560(n)+A014473(n)`
-/

namespace A176561.P3805418369242950929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176560 n + A014473 n

end

end A176561.P3805418369242950929

/-! ## A176561.P9181534130697636660

`A007318(n)+A176560(n)-1`
-/

namespace A176561.P9181534130697636660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A176560 n - 1)

end

end A176561.P9181534130697636660

/-! ## A176561.P15832957981616639216

`sqrt(A008459(n))+A176560(n)-1`
-/

namespace A176561.P15832957981616639216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) + (A176560 n - 1 : ℝ)

end

end A176561.P15832957981616639216

/-! ## A176561.P12717827738983585340

`A001263(n+1)+A176487(n)-1`
-/

namespace A176561.P12717827738983585340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A176487 n - 1)

end

end A176561.P12717827738983585340

/-! ## A176561.P10653484048281493996

`A028326(n)/2+A176560(n)-1`
-/

namespace A176561.P10653484048281493996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 + (A176560 n - 1 : ℚ)

end

end A176561.P10653484048281493996

/-! ## A176561.P4772051367160918282

`A008292(n+1)+A132789(n+1)-1`
-/

namespace A176561.P4772051367160918282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A132789 (n + 1) - 1)

end

end A176561.P4772051367160918282

/-! ## A176561.P16801725345039523322

`A176560(n)+A004524(A109128(n))`
-/

namespace A176561.P16801725345039523322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176560 n + A004524 (A109128 n).toNat

end

end A176561.P16801725345039523322

/-! ## A176561.P6985140151818107023

`A176560(n)+A002264(A131060(n))`
-/

namespace A176561.P6985140151818107023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176560 n + A002264 (A131060 n).toNat

end

end A176561.P6985140151818107023

/-! ## A176561.P7665480692392741958

`A176560(n)+A004526(A132731(n))`
-/

namespace A176561.P7665480692392741958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176560 n + A004526 (A132731 n).toNat

end

end A176561.P7665480692392741958

/-! ## A176561.P2290324056038702612

`A176560(n)-A024000(A007318(n))`
-/

namespace A176561.P2290324056038702612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176560 n - A024000 (A007318 n).toNat

end

end A176561.P2290324056038702612

/-!
# A176562: a(n) = A175341(n)/4.

The programs for A176562, the canonical program `A176562.P7798059674671749075` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176562 has offset 0).

The definition of A176562 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176562.P16284252894907292889

`A175341(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176562.P16284252894907292889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175341 n : ℚ) / 4

end

end A176562.P16284252894907292889

namespace A176562

/-- `A175341(n)/4` -/
def P16284252894907292889.Spec : Prop :=
  ∀ n, P16284252894907292889.a n = (A176562 n : ℚ)

end A176562

/-! ## A176562.P7798059674671749075

`A305117(n²)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176562

/-- `A305117(n²)` -/
def P7798059674671749075.Spec : Prop :=
  ∀ n, P7798059674671749075.a n = A176562 n

theorem P7798059674671749075.correct : P7798059674671749075.Spec := by
  intro n
  simp only [A176562]

end A176562

/-! ## A176562.P17039979552001468568

`floor(A059743(n)/4)`
-/

namespace A176562.P17039979552001468568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059743 n : ℚ) / 4⌋

end

end A176562.P17039979552001468568

namespace A176562

/-- `floor(A059743(n)/4)` -/
def P17039979552001468568.Spec : Prop :=
  ∀ n, P17039979552001468568.a n = A176562 n

end A176562

/-! ## A176562.P6313332171467355998

`xor(1, A059743(A004526(2*n)))/4`
-/

namespace A176562.P6313332171467355998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A059743 (A004526 (2 * n)).toNat) : ℚ) / 4

end

end A176562.P6313332171467355998

namespace A176562

/-- `xor(1, A059743(A004526(2*n)))/4` -/
def P6313332171467355998.Spec : Prop :=
  ∀ n, P6313332171467355998.a n = (A176562 n : ℚ)

end A176562

/-! ## A176562.P10800199474694659770

`floor(sqrt(A049715(n)²-n))`
-/

namespace A176562.P10800199474694659770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A049715 n ^ 2 - (n : ℤ))

end

end A176562.P10800199474694659770

namespace A176562

/-- `floor(sqrt(A049715(n)²-n))` -/
def P10800199474694659770.Spec : Prop :=
  ∀ n, P10800199474694659770.a n = A176562 n

end A176562

/-! ## A176562.P12440463827837299506

`A057428(n)+A049715(n)`
-/

namespace A176562.P12440463827837299506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A049715 n

end

end A176562.P12440463827837299506

namespace A176562

/-- `A057428(n)+A049715(n)` -/
def P12440463827837299506.Spec : Prop :=
  ∀ n, P12440463827837299506.a n = A176562 n

theorem P12440463827837299506.correct : P12440463827837299506.Spec := by
  intro n
  simp only [A176562, Nat.add_sub_cancel, A176562.P12440463827837299506.a, A176562.P7798059674671749075.a, A049715, A049715.P11687973096568825329.a, A057428, A057428.P2999489532230392221.a, A305117, A305117.P17948678590562359132.a, A000089, A000089.P6732950680245443794.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176562

/-! ## A176562.P11652454693808761811

`A049715(n)-A057427(n)`
-/

namespace A176562.P11652454693808761811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049715 n - A057427 n

end

end A176562.P11652454693808761811

namespace A176562

/-- `A049715(n)-A057427(n)` -/
def P11652454693808761811.Spec : Prop :=
  ∀ n, P11652454693808761811.a n = A176562 n

theorem P11652454693808761811.correct : P11652454693808761811.Spec := by
  intro n
  simp only [A176562, Nat.add_sub_cancel, A176562.P11652454693808761811.a, A176562.P7798059674671749075.a, A049715, A049715.P11687973096568825329.a, A057427, A057427.P3058147525557661423.a, A305117, A305117.P17948678590562359132.a, A000007, A000007.P6599383543502402472.a, A000089, A000089.P6732950680245443794.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176562

/-! ## A176562.P7234416687140044225

`and(A014131(n), A059743(n))/4`
-/

namespace A176562.P7234416687140044225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A014131 n) (A059743 n) : ℚ) / 4

end

end A176562.P7234416687140044225

namespace A176562

/-- `and(A014131(n), A059743(n))/4` -/
def P7234416687140044225.Spec : Prop :=
  ∀ n, P7234416687140044225.a n = (A176562 n : ℚ)

end A176562

/-! ## A176562.P10085510700252905698

`A029578(A049715(n))`
-/

namespace A176562.P10085510700252905698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A049715 n).toNat

end

end A176562.P10085510700252905698

namespace A176562

/-- `A029578(A049715(n))` -/
def P10085510700252905698.Spec : Prop :=
  ∀ n, P10085510700252905698.a n = A176562 n

end A176562

/-! ## A176562.P14091909792262243409

`A028310(A049747(∑[n]))-1`
-/

namespace A176562.P14091909792262243409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A049747 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A176562.P14091909792262243409

namespace A176562

/-- `A028310(A049747(∑[n]))-1` -/
def P14091909792262243409.Spec : Prop :=
  ∀ n, P14091909792262243409.a n = A176562 n

end A176562

/-! ## A176562.P7611139803915578274

`A004526((A059743(n)+1)/2)`
-/

namespace A176562.P7611139803915578274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A059743 n + 1 : ℚ) / 2)).toNat

end

end A176562.P7611139803915578274

namespace A176562

/-- `A004526((A059743(n)+1)/2)` -/
def P7611139803915578274.Spec : Prop :=
  ∀ n, P7611139803915578274.a n = A176562 n

end A176562

/-! ## A176562.P15629133970817811139

`A304651(n²)/4`
-/

namespace A176562.P15629133970817811139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304651 (n ^ 2) : ℚ) / 4

end

end A176562.P15629133970817811139

namespace A176562

/-- `A304651(n²)/4` -/
def P15629133970817811139.Spec : Prop :=
  ∀ n, P15629133970817811139.a n = (A176562 n : ℚ)

end A176562

/-! ## A176562.P4643706134525140018

`A178334(n)*A305117(A000290(n))`
-/

namespace A176562.P4643706134525140018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A305117 (A000290 n).toNat

end

end A176562.P4643706134525140018

namespace A176562

/-- `A178334(n)*A305117(A000290(n))` -/
def P4643706134525140018.Spec : Prop :=
  ∀ n, P4643706134525140018.a n = A176562 n

end A176562

/-!
# A176563: Period 4: repeat [1, -3, 1, 1].

The programs for A176563, the canonical program `A176563.P16707671445304833839` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176563 has offset 0).

The definition of A176563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176563.P16707671445304833839

`a(n-4)` with `a(0)=1, a(1)=-3, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176563

/-- `a(n-4)` -/
def P16707671445304833839.Spec : Prop :=
  ∀ n, P16707671445304833839.a n = A176563 n

theorem P16707671445304833839.correct : P16707671445304833839.Spec := by
  intro n
  simp only [A176563]

end A176563

/-!
# A176564: Triangle T(n,m)= binomial(2*n,m) + binomial(2*n,n-m) -binomial(2*n,n) read by rows.

The programs for A176564, there is no canonical definition to state claims against.
-/

/-! ## A176564.P7359870812939053297

`A050165(n)-(A039599(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A176564.P7359870812939053297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050165 n - (A039599 (n - 1) - a (n - 1))

end

end A176564.P7359870812939053297

/-!
# A176565: Triangle read by rows: T(n,k) = binomial(P(n)+k,k) + binomial(P(n)+n-k,n-k) - binomial(P(n)+n,n) where P(n) = A000041(n) is the number of partitions of n.

The programs for A176565, there is no canonical definition to state claims against.
-/

/-! ## A176565.P6580545946274139446

`1-A051056(A008459(n))`
-/

namespace A176565.P6580545946274139446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051056 (A008459 n).toNat

end

end A176565.P6580545946274139446

/-! ## A176565.P924330255631125221

`1-A000375(A099927(n))`
-/

namespace A176565.P924330255631125221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000375 (A099927 n).toNat

end

end A176565.P924330255631125221

/-! ## A176565.P11275785822657518593

`2-A241061(A056941(n))`
-/

namespace A176565.P11275785822657518593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A241061 (A056941 n).toNat

end

end A176565.P11275785822657518593

/-! ## A176565.P7244203298761790666

`A007318(n)-A374759(A045912(n))`
-/

namespace A176565.P7244203298761790666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A374759 (A045912 n).toNat

end

end A176565.P7244203298761790666

/-!
# A176566: Triangle T(n, k) = binomial(n*(n+1)/2 + k, k), read by rows.

The programs for A176566, the canonical program `A176566.P2593220659547258647` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176566 has offset 0).

The definition of A176566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176566.P2593220659547258647

`C(A083920(n), A002262(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A176566

/-- `C(A083920(n), A002262(n))` -/
def P2593220659547258647.Spec : Prop :=
  ∀ n, (P2593220659547258647.a n : ℤ) = A176566 n

theorem P2593220659547258647.correct : P2593220659547258647.Spec := by
  intro n
  simp only [A176566]

end A176566

/-! ## A176566.P17736187374073444895

`C(A271439(n), A002262(n))`
-/

namespace A176566.P17736187374073444895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A271439 n).toNat (A002262 n).toNat

end

end A176566.P17736187374073444895

namespace A176566

/-- `C(A271439(n), A002262(n))` -/
def P17736187374073444895.Spec : Prop :=
  ∀ n, (P17736187374073444895.a n : ℤ) = A176566 n

end A176566

/-! ## A176566.P14991834030745779636

`C(n-A003056(n), A002262(n))`
-/

namespace A176566.P14991834030745779636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A003056 n).toNat (A002262 n).toNat

end

end A176566.P14991834030745779636

namespace A176566

/-- `C(n-A003056(n), A002262(n))` -/
def P14991834030745779636.Spec : Prop :=
  ∀ n, (P14991834030745779636.a n : ℤ) = A176566 n

end A176566

/-! ## A176566.P10183735673663385005

`C(A133280(n)-n, A002262(n))`
-/

namespace A176566.P10183735673663385005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133280 n - (n : ℤ)).toNat (A002262 n).toNat

end

end A176566.P10183735673663385005

namespace A176566

/-- `C(A133280(n)-n, A002262(n))` -/
def P10183735673663385005.Spec : Prop :=
  ∀ n, (P10183735673663385005.a n : ℤ) = A176566 n

end A176566

/-! ## A176566.P7065209317215364328

`C(∑[1-A010054(n)], A002262(n))`
-/

namespace A176566.P7065209317215364328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A002262 n).toNat

end

end A176566.P7065209317215364328

namespace A176566

/-- `C(∑[1-A010054(n)], A002262(n))` -/
def P7065209317215364328.Spec : Prop :=
  ∀ n, (P7065209317215364328.a n : ℤ) = A176566 n

end A176566

/-! ## A176566.P17289161760611173969

`C(n-A003056(n), log2(A059268(n)))`
-/

namespace A176566.P17289161760611173969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A003056 n).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A176566.P17289161760611173969

namespace A176566

/-- `C(n-A003056(n), log2(A059268(n)))` -/
def P17289161760611173969.Spec : Prop :=
  ∀ n, (P17289161760611173969.a n : ℤ) = A176566 n

end A176566

/-! ## A176566.P2081375669332193831

`C(n+1-A002024(n+1), A002262(n))`
-/

namespace A176566.P2081375669332193831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - A002024 (n + 1)).toNat (A002262 n).toNat

end

end A176566.P2081375669332193831

namespace A176566

/-- `C(n+1-A002024(n+1), A002262(n))` -/
def P2081375669332193831.Spec : Prop :=
  ∀ n, (P2081375669332193831.a n : ℤ) = A176566 n

end A176566

/-! ## A176566.P9716001546018436222

`C(A083920(n), A025581(A061579(n)))`
-/

namespace A176566.P9716001546018436222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083920 n).toNat (A025581 (A061579 n).toNat).toNat

end

end A176566.P9716001546018436222

namespace A176566

/-- `C(A083920(n), A025581(A061579(n)))` -/
def P9716001546018436222.Spec : Prop :=
  ∀ n, (P9716001546018436222.a n : ℤ) = A176566 n

end A176566

/-! ## A176566.P18342702913605567232

`C(n-A330709(2*n), A330709(2*n+1))`
-/

namespace A176566.P18342702913605567232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A330709 (2 * n)).toNat (A330709 (2 * n + 1)).toNat

end

end A176566.P18342702913605567232

namespace A176566

/-- `C(n-A330709(2*n), A330709(2*n+1))` -/
def P18342702913605567232.Spec : Prop :=
  ∀ n, (P18342702913605567232.a n : ℤ) = A176566 n

end A176566

/-! ## A176566.P13255378902339579861

`A074909(∑[n]-n*A003056(n))`
-/

namespace A176566.P13255378902339579861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * A003056 n).toNat

end

end A176566.P13255378902339579861

namespace A176566

/-- `A074909(∑[n]-n*A003056(n))` -/
def P13255378902339579861.Spec : Prop :=
  ∀ n, P13255378902339579861.a n = A176566 n

end A176566

/-! ## A176566.P2353197358889078405

`A074909(A000096(n)-n*A002024(n+1))`
-/

namespace A176566.P2353197358889078405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A000096 n - (n : ℤ) * A002024 (n + 1)).toNat

end

end A176566.P2353197358889078405

namespace A176566

/-- `A074909(A000096(n)-n*A002024(n+1))` -/
def P2353197358889078405.Spec : Prop :=
  ∀ n, P2353197358889078405.a n = A176566 n

end A176566

/-! ## A176566.P12019157976343127589

`A007318(A000096(n)-(n+1)*A003056(n))`
-/

namespace A176566.P12019157976343127589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n - (n + 1 : ℤ) * A003056 n).toNat

end

end A176566.P12019157976343127589

namespace A176566

/-- `A007318(A000096(n)-(n+1)*A003056(n))` -/
def P12019157976343127589.Spec : Prop :=
  ∀ n, P12019157976343127589.a n = A176566 n

end A176566

/-!
# A176567: Triangle T(n, k) = binomial(binomial(n, 2) + k, k) + binomial(binomial(n, 2) + n-k, n-k) - binomial(binomial(n, 2) + n, n), read by rows.

The programs for A176567, there is no canonical definition to state claims against.
-/

/-! ## A176567.P4608036860022221549

`1-A323844(A141596(n))`
-/

namespace A176567.P4608036860022221549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323844 (A141596 n).toNat

end

end A176567.P4608036860022221549

/-! ## A176567.P17078366198604400515

`1-A238544(A360207(n))`
-/

namespace A176567.P17078366198604400515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A238544 (A360207 n).toNat

end

end A176567.P17078366198604400515

/-! ## A176567.P2530983554565273467

`4-A175079(A010048(n))`
-/

namespace A176567.P2530983554565273467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A175079 (A010048 n).toNat

end

end A176567.P2530983554565273467

/-! ## A176567.P10363933557135123006

`1-A025443(A220430(n+1)²)`
-/

namespace A176567.P10363933557135123006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A025443 (A220430 (n + 1) ^ 2).toNat

end

end A176567.P10363933557135123006

/-! ## A176567.P14112205765164768617

`A157153(n)-A191925(A157153(n))`
-/

namespace A176567.P14112205765164768617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157153 n - A191925 (A157153 n).toNat

end

end A176567.P14112205765164768617

/-!
# A176569: a(n) = (-1)^n + (n-th prime of the form 3k-+1).

The programs for A176569, the canonical program `A176569.P11201890178761962617` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176569 has offset 1).

The definition of A176569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176569.P11201890178761962617

`(-1)^(n+1)+A045344(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A176569

/-- `(-1)^(n+1)+A045344(n+1)` -/
def P11201890178761962617.Spec : Prop :=
  ∀ n, P11201890178761962617.a n = A176569 (n + 1)

theorem P11201890178761962617.correct : P11201890178761962617.Spec := by
  intro n
  simp only [A176569, Nat.add_sub_cancel]

end A176569

/-! ## A176569.P747314880062129788

`A045344(n+1)-(-1)^n`
-/

namespace A176569.P747314880062129788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) - (-1) ^ n

end

end A176569.P747314880062129788

namespace A176569

/-- `A045344(n+1)-(-1)^n` -/
def P747314880062129788.Spec : Prop :=
  ∀ n, P747314880062129788.a n = A176569 (n + 1)

theorem P747314880062129788.correct : P747314880062129788.Spec := by
  intro n
  simp only [A176569, Nat.add_sub_cancel, A176569.P747314880062129788.a, A176569.P11201890178761962617.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A176569

/-! ## A176569.P9905880736036494897

`A001043(n+1)-a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A176569.P9905880736036494897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A001043 (n + 1) - a (n - 1)

end

end A176569.P9905880736036494897

namespace A176569

/-- `A001043(n+1)-a(n-1)` -/
def P9905880736036494897.Spec : Prop :=
  ∀ n, P9905880736036494897.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P7174408798579605776

`A165972(n+1)+A010673(n)`
-/

namespace A176569.P7174408798579605776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1) + A010673 n

end

end A176569.P7174408798579605776

namespace A176569

/-- `A165972(n+1)+A010673(n)` -/
def P7174408798579605776.Spec : Prop :=
  ∀ n, P7174408798579605776.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P7885041356193096892

`A140475(n+1)+A062157(n)`
-/

namespace A176569.P7885041356193096892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1) + A062157 n

end

end A176569.P7885041356193096892

namespace A176569

/-- `A140475(n+1)+A062157(n)` -/
def P7885041356193096892.Spec : Prop :=
  ∀ n, P7885041356193096892.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P15174824759350285763

`A382713(n)+A154115(n+1)`
-/

namespace A176569.P15174824759350285763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382713 n + A154115 (n + 1)

end

end A176569.P15174824759350285763

namespace A176569

/-- `A382713(n)+A154115(n+1)` -/
def P15174824759350285763.Spec : Prop :=
  ∀ n, P15174824759350285763.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P16885222994548073233

`A000040(n+1)+A045344(n+1)-A014686(n+1)`
-/

namespace A176569.P16885222994548073233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A045344 (n + 1) - A014686 (n + 1))

end

end A176569.P16885222994548073233

namespace A176569

/-- `A000040(n+1)+A045344(n+1)-A014686(n+1)` -/
def P16885222994548073233.Spec : Prop :=
  ∀ n, P16885222994548073233.a n = A176569 (n + 1)

theorem P16885222994548073233.correct : P16885222994548073233.Spec := by
  intro n
  simp only [A176569, Nat.add_sub_cancel, A176569.P16885222994548073233.a, A176569.P11201890178761962617.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014686, A014686.P15303943369373504388.a, A045344, A045344.P8697885089310436463.a, A033999, A033999.P17703899380244199787.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176569

/-! ## A176569.P6108279900746334490

`A156037(n+2)+2*A059841(n+1)`
-/

namespace A176569.P6108279900746334490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 2) + 2 * A059841 (n + 1)

end

end A176569.P6108279900746334490

namespace A176569

/-- `A156037(n+2)+2*A059841(n+1)` -/
def P6108279900746334490.Spec : Prop :=
  ∀ n, P6108279900746334490.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P12224486831397468184

`A000040(A065475(n+1))-A033999(n)`
-/

namespace A176569.P12224486831397468184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065475 (n + 1)).toNat - A033999 n

end

end A176569.P12224486831397468184

namespace A176569

/-- `A000040(A065475(n+1))-A033999(n)` -/
def P12224486831397468184.Spec : Prop :=
  ∀ n, P12224486831397468184.a n = A176569 (n + 1)

theorem P12224486831397468184.correct : P12224486831397468184.Spec := by
  intro n
  simp only [A176569, Nat.add_sub_cancel, A176569.P12224486831397468184.a, A176569.P11201890178761962617.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033999, A033999.P17703899380244199787.a, A045344, A045344.P8697885089310436463.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176569

/-! ## A176569.P9687413196160984260

`A014686(n+2)-A178225(A046523(n+1))`
-/

namespace A176569.P9687413196160984260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 2) - A178225 (A046523 (n + 1)).toNat

end

end A176569.P9687413196160984260

namespace A176569

/-- `A014686(n+2)-A178225(A046523(n+1))` -/
def P9687413196160984260.Spec : Prop :=
  ∀ n, P9687413196160984260.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P6874562458311937480

`A014686(n+1)+A045344(n+1)-A082455(n+1)`
-/

namespace A176569.P6874562458311937480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 1) + (A045344 (n + 1) - A082455 (n + 1))

end

end A176569.P6874562458311937480

namespace A176569

/-- `A014686(n+1)+A045344(n+1)-A082455(n+1)` -/
def P6874562458311937480.Spec : Prop :=
  ∀ n, P6874562458311937480.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P14812884427464256769

`record[A008472(n+4)]-A033999(n)`
-/

namespace A176569.P14812884427464256769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A033999 n

end

end A176569.P14812884427464256769

namespace A176569

/-- `record[A008472(n+4)]-A033999(n)` -/
def P14812884427464256769.Spec : Prop :=
  ∀ n, P14812884427464256769.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P1172752690245952710

`A062157(n+2)+record[A008472(n+4)]`
-/

namespace A176569.P1172752690245952710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176569.P1172752690245952710

namespace A176569

/-- `A062157(n+2)+record[A008472(n+4)]` -/
def P1172752690245952710.Spec : Prop :=
  ∀ n, P1172752690245952710.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P14677925153192627890

`A014686(n+2)-A178225(2*n)`
-/

namespace A176569.P14677925153192627890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 2) - A178225 (2 * n)

end

end A176569.P14677925153192627890

namespace A176569

/-- `A014686(n+2)-A178225(2*n)` -/
def P14677925153192627890.Spec : Prop :=
  ∀ n, P14677925153192627890.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P11891323862858129393

`A164358(2*n)+A000040(n+2)-3`
-/

namespace A176569.P11891323862858129393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164358 (2 * n) + (A000040 (n + 2) - 3)

end

end A176569.P11891323862858129393

namespace A176569

/-- `A164358(2*n)+A000040(n+2)-3` -/
def P11891323862858129393.Spec : Prop :=
  ∀ n, P11891323862858129393.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P15193983306495092872

`A000040(n+2)-2/A228936(2*n)`
-/

namespace A176569.P15193983306495092872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) - 2 / (A228936 (2 * n) : ℚ)

end

end A176569.P15193983306495092872

namespace A176569

/-- `A000040(n+2)-2/A228936(2*n)` -/
def P15193983306495092872.Spec : Prop :=
  ∀ n, P15193983306495092872.a n = (A176569 (n + 1) : ℚ)

end A176569

/-! ## A176569.P3199346200554546471

`A000040(n+2)+A280560(n+1)/A280560(2*n)`
-/

namespace A176569.P3199346200554546471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) + (A280560 (n + 1) : ℚ) / (A280560 (2 * n) : ℚ)

end

end A176569.P3199346200554546471

namespace A176569

/-- `A000040(n+2)+A280560(n+1)/A280560(2*n)` -/
def P3199346200554546471.Spec : Prop :=
  ∀ n, P3199346200554546471.a n = (A176569 (n + 1) : ℚ)

end A176569

/-! ## A176569.P4987820776538416454

`A163805(2*n+1)+A000040(n+2)-A163805(2*n)`
-/

namespace A176569.P4987820776538416454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (2 * n + 1) + (A000040 (n + 2) - A163805 (2 * n))

end

end A176569.P4987820776538416454

namespace A176569

/-- `A163805(2*n+1)+A000040(n+2)-A163805(2*n)` -/
def P4987820776538416454.Spec : Prop :=
  ∀ n, P4987820776538416454.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P8621796145526285094

`A018252(or(1, A014689(n+2)))`
-/

namespace A176569.P8621796145526285094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Int.lor 1 (A014689 (n + 2))).toNat

end

end A176569.P8621796145526285094

namespace A176569

/-- `A018252(or(1, A014689(n+2)))` -/
def P8621796145526285094.Spec : Prop :=
  ∀ n, P8621796145526285094.a n = A176569 (n + 1)

end A176569

/-! ## A176569.P15593104305998842309

`A018252(A014689(n+2)-gcd(2, n)+2)`
-/

namespace A176569.P15593104305998842309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014689 (n + 2) - (Nat.gcd 2 n : ℤ) + 2).toNat

end

end A176569.P15593104305998842309

namespace A176569

/-- `A018252(A014689(n+2)-gcd(2, n)+2)` -/
def P15593104305998842309.Spec : Prop :=
  ∀ n, P15593104305998842309.a n = A176569 (n + 1)

end A176569

/-!
# A176570: a(n)=n-th semiprime if n-th semiprime odd and n-th semiprime/2 if n-th semiprime even.

The programs for A176570, the canonical program `A176570.P4009191812961714339` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176570 has offset 1).

The definition of A176570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176570.P4009191812961714339

`A026741(eq[2, ∑{e}[n, #]])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A176570

/-- `A026741(eq[2, ∑{e}[n, #]])` -/
def P4009191812961714339.Spec : Prop :=
  ∀ n, P4009191812961714339.a n = A176570 (n + 1)

theorem P4009191812961714339.correct : P4009191812961714339.Spec := by
  intro n
  simp only [A176570, Nat.add_sub_cancel]

end A176570

/-! ## A176570.P385641772959249408

`lcm(2, A001358(n+1))/2`
-/

namespace A176570.P385641772959249408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A001358 (n + 1)) : ℚ) / 2

end

end A176570.P385641772959249408

namespace A176570

/-- `lcm(2, A001358(n+1))/2` -/
def P385641772959249408.Spec : Prop :=
  ∀ n, P385641772959249408.a n = (A176570 (n + 1) : ℚ)

end A176570

/-! ## A176570.P8166346903967097218

`A026741(A001358(n+1))`
-/

namespace A176570.P8166346903967097218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A001358 (n + 1)).toNat

end

end A176570.P8166346903967097218

namespace A176570

/-- `A026741(A001358(n+1))` -/
def P8166346903967097218.Spec : Prop :=
  ∀ n, P8166346903967097218.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P5640026641112715752

`A030065(A075818(n+1))`
-/

namespace A176570.P5640026641112715752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A075818 (n + 1)).toNat

end

end A176570.P5640026641112715752

namespace A176570

/-- `A030065(A075818(n+1))` -/
def P5640026641112715752.Spec : Prop :=
  ∀ n, P5640026641112715752.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P12158439176302108312

`A145051(A186621(n+1))`
-/

namespace A176570.P12158439176302108312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (A186621 (n + 1)).toNat

end

end A176570.P12158439176302108312

namespace A176570

/-- `A145051(A186621(n+1))` -/
def P12158439176302108312.Spec : Prop :=
  ∀ n, P12158439176302108312.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P3911601441738725565

`A026741(A176540(n+2))`
-/

namespace A176570.P3911601441738725565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A176540 (n + 2)).toNat

end

end A176570.P3911601441738725565

namespace A176570

/-- `A026741(A176540(n+2))` -/
def P3911601441738725565.Spec : Prop :=
  ∀ n, P3911601441738725565.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P7587709642534917411

`A082928(A186621(n+1)+1)`
-/

namespace A176570.P7587709642534917411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (A186621 (n + 1) + 1).toNat

end

end A176570.P7587709642534917411

namespace A176570

/-- `A082928(A186621(n+1)+1)` -/
def P7587709642534917411.Spec : Prop :=
  ∀ n, P7587709642534917411.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P11882266300209770727

`A060819(2*A001358(n+1))`
-/

namespace A176570.P11882266300209770727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A001358 (n + 1)).toNat

end

end A176570.P11882266300209770727

namespace A176570

/-- `A060819(2*A001358(n+1))` -/
def P11882266300209770727.Spec : Prop :=
  ∀ n, P11882266300209770727.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P1494165002458968872

`A004526(lcm(2, A001358(n+1)))`
-/

namespace A176570.P1494165002458968872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A001358 (n + 1)))

end

end A176570.P1494165002458968872

namespace A176570

/-- `A004526(lcm(2, A001358(n+1)))` -/
def P1494165002458968872.Spec : Prop :=
  ∀ n, P1494165002458968872.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P42528897601661019

`A026741(eq[2, A001222(n+1)]+1)`
-/

namespace A176570.P42528897601661019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A176570.P42528897601661019

namespace A176570

/-- `A026741(eq[2, A001222(n+1)]+1)` -/
def P42528897601661019.Spec : Prop :=
  ∀ n, P42528897601661019.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P11091596699837128700

`gcd(A001358(n+1), A122963(n+1))`
-/

namespace A176570.P11091596699837128700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001358 (n + 1)) (A122963 (n + 1))

end

end A176570.P11091596699837128700

namespace A176570

/-- `gcd(A001358(n+1), A122963(n+1))` -/
def P11091596699837128700.Spec : Prop :=
  ∀ n, (P11091596699837128700.a n : ℤ) = A176570 (n + 1)

end A176570

/-! ## A176570.P2151862816023244678

`A029578(eq[2, A001222(n+1)]+3)-1`
-/

namespace A176570.P2151862816023244678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3) - 1

end

end A176570.P2151862816023244678

namespace A176570

/-- `A029578(eq[2, A001222(n+1)]+3)-1` -/
def P2151862816023244678.Spec : Prop :=
  ∀ n, P2151862816023244678.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P8642300129739668918

`eq[2, ∑{e}[n, #]]/A000034(A088707(n+1))`
-/

namespace A176570.P8642300129739668918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / (A000034 (A088707 (n + 1)).toNat : ℚ)

end

end A176570.P8642300129739668918

namespace A176570

/-- `eq[2, ∑{e}[n, #]]/A000034(A088707(n+1))` -/
def P8642300129739668918.Spec : Prop :=
  ∀ n, P8642300129739668918.a n = (A176570 (n + 1) : ℚ)

end A176570

/-! ## A176570.P3116871816092562376

`A176629(n+1)-A057979(A176629(n+1))`
-/

namespace A176570.P3116871816092562376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176629 (n + 1) - A057979 (A176629 (n + 1)).toNat

end

end A176570.P3116871816092562376

namespace A176570

/-- `A176629(n+1)-A057979(A176629(n+1))` -/
def P3116871816092562376.Spec : Prop :=
  ∀ n, P3116871816092562376.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P3406347942101101181

`eq[2, A284289(n)]/A000034(A088707(n+1))`
-/

namespace A176570.P3406347942101101181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A000034 (A088707 (n + 1)).toNat : ℚ)

end

end A176570.P3406347942101101181

namespace A176570

/-- `eq[2, A284289(n)]/A000034(A088707(n+1))` -/
def P3406347942101101181.Spec : Prop :=
  ∀ n, P3406347942101101181.a n = (A176570 (n + 1) : ℚ)

end A176570

/-! ## A176570.P15336473350279349914

`A001358(n+1)/A000034(A001358(n+1)+1)`
-/

namespace A176570.P15336473350279349914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) / (A000034 (A001358 (n + 1) + 1).toNat : ℚ)

end

end A176570.P15336473350279349914

namespace A176570

/-- `A001358(n+1)/A000034(A001358(n+1)+1)` -/
def P15336473350279349914.Spec : Prop :=
  ∀ n, P15336473350279349914.a n = (A176570 (n + 1) : ℚ)

end A176570

/-! ## A176570.P17112420128993349536

`A001358(n+1)/A040001(A001358(n+1)+2)`
-/

namespace A176570.P17112420128993349536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) / (A040001 (A001358 (n + 1) + 2).toNat : ℚ)

end

end A176570.P17112420128993349536

namespace A176570

/-- `A001358(n+1)/A040001(A001358(n+1)+2)` -/
def P17112420128993349536.Spec : Prop :=
  ∀ n, P17112420128993349536.a n = (A176570 (n + 1) : ℚ)

end A176570

/-! ## A176570.P14156666901796731082

`A251561(2*A001358(n+1)-A001358(n+1))`
-/

namespace A176570.P14156666901796731082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251561 (2 * A001358 (n + 1) - A001358 (n + 1)).toNat

end

end A176570.P14156666901796731082

namespace A176570

/-- `A251561(2*A001358(n+1)-A001358(n+1))` -/
def P14156666901796731082.Spec : Prop :=
  ∀ n, P14156666901796731082.a n = A176570 (n + 1)

end A176570

/-! ## A176570.P18252142353457237596

`gcd(A088707(n+1)-1, A064680(A088707(n+1)-1))`
-/

namespace A176570.P18252142353457237596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088707 (n + 1) - 1) (A064680 (A088707 (n + 1) - 1).toNat)

end

end A176570.P18252142353457237596

namespace A176570

/-- `gcd(A088707(n+1)-1, A064680(A088707(n+1)-1))` -/
def P18252142353457237596.Spec : Prop :=
  ∀ n, (P18252142353457237596.a n : ℤ) = A176570 (n + 1)

end A176570

/-! ## A176570.P7473787964376321230

`(eq[1, A064911(n+1)]+1)/A000034(A088707(n+1))`
-/

namespace A176570.P7473787964376321230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (A000034 (A088707 (n + 1)).toNat : ℚ)

end

end A176570.P7473787964376321230

namespace A176570

/-- `(eq[1, A064911(n+1)]+1)/A000034(A088707(n+1))` -/
def P7473787964376321230.Spec : Prop :=
  ∀ n, P7473787964376321230.a n = (A176570 (n + 1) : ℚ)

end A176570

/-!
# A176572: Count the ones in the binary representation of the partitions of n; then add vertically yielding a triangular array T(n,k).

The programs for A176572, there is no canonical definition to state claims against.
-/

/-! ## A176572.P156390698274445032

`A225597(A066182(n+1))`
-/

namespace A176572.P156390698274445032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225597 (A066182 (n + 1)).toNat

end

end A176572.P156390698274445032

/-! ## A176572.P6101637760201705590

`A225597(1-A167407(n)+n)`
-/

namespace A176572.P6101637760201705590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225597 (1 - A167407 n + (n : ℤ)).toNat

end

end A176572.P6101637760201705590

/-! ## A176572.P17938478134462385806

`A225597(1-(A167407(n)-n))`
-/

namespace A176572.P17938478134462385806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225597 (1 - (A167407 n - (n : ℤ))).toNat

end

end A176572.P17938478134462385806

/-! ## A176572.P17016319612891590518

`A385887(A048486(n+2))`
-/

namespace A176572.P17016319612891590518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385887 (A048486 (n + 2)).toNat

end

end A176572.P17016319612891590518

/-! ## A176572.P13678857001665942944

`A006530(A284785(n+1)^A266861(n+1))`
-/

namespace A176572.P13678857001665942944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A284785 (n + 1) : ℚ) ^ (A266861 (n + 1) : ℤ))).toNat

end

end A176572.P13678857001665942944

/-!
# A176573: Hilbert series related to measurement of quantum entanglement - see Hero and Willenbring for precise definition.

The programs for A176573, there is no canonical definition to state claims against.
-/

/-! ## A176573.P1747033167960971113

`A290912(n)+∑[∪[2*(n+1)², (n+1)²]]`
-/

namespace A176573.P1747033167960971113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290912 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A176573.P1747033167960971113

/-!
# A176574: Hilbert series related to measurement of quantum entanglement - see Hero and Willenbring for precise definition.

The programs for A176574, there is no canonical definition to state claims against.
-/

/-! ## A176574.P8524405669504312062

`A303601(n+1)+A059819(A124419(n+2))`
-/

namespace A176574.P8524405669504312062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303601 (n + 1) + A059819 (A124419 (n + 2)).toNat

end

end A176574.P8524405669504312062

/-!
# A176575: Second edge diagonal of table A176577. (The first edge diagonal is A099627).

The programs for A176575, there is no canonical definition to state claims against.
-/

/-! ## A176575.P9038776011815805701

`A176577(∑[n+1])`
-/

namespace A176575.P9038776011815805701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176577 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176575.P9038776011815805701

/-! ## A176575.P12682934811836092016

`record[A176577(A138881(n+1))]`
-/

namespace A176575.P12682934811836092016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176577 (A138881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176575.P12682934811836092016

/-! ## A176575.P7242165100264090134

`record[A176577(n+1)/A027465(n)]`
-/

namespace A176575.P7242165100264090134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176577 (n + 1) : ℚ) / (A027465 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176575.P7242165100264090134

/-! ## A176575.P2544667508481669545

`record[A176577(n+1)/A029653(n)]`
-/

namespace A176575.P2544667508481669545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176577 (n + 1) : ℚ) / (A029653 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176575.P2544667508481669545

/-! ## A176575.P13489836629799500810

`record[A176577(n+1)/A038207(n)]`
-/

namespace A176575.P13489836629799500810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176577 (n + 1) : ℚ) / (A038207 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176575.P13489836629799500810

/-!
# A176576: Hilbert series related to measurement of quantum entanglement - see Hero and Willenbring for precise definition.

The programs for A176576, there is no canonical definition to state claims against.
-/

/-! ## A176576.P16102261115725140548

`A310946(A122676(n+1)+n)`
-/

namespace A176576.P16102261115725140548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310946 (A122676 (n + 1) + (n : ℤ)).toNat

end

end A176576.P16102261115725140548

/-!
# A176578: Slowest increasing sequence of odd primes such that the partial sums of the sequence from the second on are perfect powers.

The programs for A176578, there is no canonical definition to state claims against.
-/

/-! ## A176578.P6940131194472008577

`p?[∑[A069208(A132842(n))]]`
-/

namespace A176578.P6940131194472008577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (A132842 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176578.P6940131194472008577

/-!
# A176579: Primes p that exactly one of 2p-1, 2p+1 is semiprime.

The programs for A176579, there is no canonical definition to state claims against.
-/

/-! ## A176579.P18239561949420773641

`p?[A289182(n+1)-A020639(A339003(n+1))]`
-/

namespace A176579.P18239561949420773641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289182 (n + 1) - A020639 (A339003 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176579.P18239561949420773641

/-!
# A176580: n^3+Largest square, (Largest square <= n^3).

The programs for A176580, the canonical program `A176580.P16864400630766180112` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176580 has offset 1).

The definition of A176580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176580.P16864400630766180112

`n^3+floor(sqrt(n^3))²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176580

/-- `n^3+floor(sqrt(n^3))²` -/
def P16864400630766180112.Spec : Prop :=
  ∀ n, (P16864400630766180112.a n : ℤ) = A176580 (n + 1)

theorem P16864400630766180112.correct : P16864400630766180112.Spec := by
  intro n
  simp only [A176580, Nat.add_sub_cancel]

end A176580

/-! ## A176580.P4432473956112638413

`abs(floor(n^(3/2))²%((n+1)*Δ[n^3])+n^3)`
-/

namespace A176580.P4432473956112638413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ ^ 2) ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) + (n ^ 3 : ℤ)|

end

end A176580.P4432473956112638413

namespace A176580

/-- `abs(floor(n^(3/2))²%((n+1)*Δ[n^3])+n^3)` -/
def P4432473956112638413.Spec : Prop :=
  ∀ n, P4432473956112638413.a n = A176580 (n + 1)

end A176580

/-! ## A176580.P183861414607465544

`abs(n^3+n^3-A077116(n))`
-/

namespace A176580.P183861414607465544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 3 : ℤ) + ((n ^ 3 : ℤ) - A077116 n)|

end

end A176580.P183861414607465544

namespace A176580

/-- `abs(n^3+n^3-A077116(n))` -/
def P183861414607465544.Spec : Prop :=
  ∀ n, P183861414607465544.a n = A176580 (n + 1)

end A176580

/-! ## A176580.P17365523023739334328

`abs(n^3+(A349993(n)-1+n)*floor(sqrt(n^3)))`
-/

namespace A176580.P17365523023739334328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 3 : ℤ) + (A349993 n - 1 + (n : ℤ)) * (Nat.sqrt (n ^ 3) : ℤ)|

end

end A176580.P17365523023739334328

namespace A176580

/-- `abs(n^3+(A349993(n)-1+n)*floor(sqrt(n^3)))` -/
def P17365523023739334328.Spec : Prop :=
  ∀ n, P17365523023739334328.a n = A176580 (n + 1)

end A176580

/-! ## A176580.P4136606117005955504

`ceil(sqrt(A033430(n))*A000093(n))`
-/

namespace A176580.P4136606117005955504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A033430 n : ℝ) * (A000093 n : ℝ)⌉

end

end A176580.P4136606117005955504

namespace A176580

/-- `ceil(sqrt(A033430(n))*A000093(n))` -/
def P4136606117005955504.Spec : Prop :=
  ∀ n, P4136606117005955504.a n = A176580 (n + 1)

end A176580

/-!
# A176581: n^3+Smallest square, (Smallest square >= n^3).

The programs for A176581, the canonical program `A176581.P1163712265648664244` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176581 has offset 0).

The definition of A176581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176581.P1163712265648664244

`n^3+ceil(sqrt(n^3))²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176581

/-- `n^3+ceil(sqrt(n^3))²` -/
def P1163712265648664244.Spec : Prop :=
  ∀ n, P1163712265648664244.a n = A176581 n

theorem P1163712265648664244.correct : P1163712265648664244.Spec := by
  intro n
  simp only [A176581]

end A176581

/-! ## A176581.P11869478657356686519

`ceil(sqrt(A033430(n))*A185549(n))`
-/

namespace A176581.P11869478657356686519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A033430 n : ℝ) * (A185549 n : ℝ)⌉

end

end A176581.P11869478657356686519

namespace A176581

/-- `ceil(sqrt(A033430(n))*A185549(n))` -/
def P11869478657356686519.Spec : Prop :=
  ∀ n, P11869478657356686519.a n = A176581 n

end A176581

/-! ## A176581.P13895739293275226849

`or(A077115(n)+A000578(n), char[2])`
-/

namespace A176581.P13895739293275226849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077115 n + A000578 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A176581.P13895739293275226849

namespace A176581

/-- `or(A077115(n)+A000578(n), char[2])` -/
def P13895739293275226849.Spec : Prop :=
  ∀ n, P13895739293275226849.a n = A176581 n

end A176581

/-! ## A176581.P10989006246401145006

`(A077115(n)+A000578(n))*A007318(C(2, n))`
-/

namespace A176581.P10989006246401145006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077115 n + A000578 n) * A007318 (Nat.choose 2 n)

end

end A176581.P10989006246401145006

namespace A176581

/-- `(A077115(n)+A000578(n))*A007318(C(2, n))` -/
def P10989006246401145006.Spec : Prop :=
  ∀ n, P10989006246401145006.a n = A176581 n

end A176581

/-! ## A176581.P10855940720036750014

`(A077115(n)+A000578(n))*∏{d}[n, A001221(#)]!`
-/

namespace A176581.P10855940720036750014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077115 n + A000578 n) * (Nat.factorial (∏ d ∈ Nat.divisors (f1 n), A001221 d).toNat : ℤ)

end

end A176581.P10855940720036750014

namespace A176581

/-- `(A077115(n)+A000578(n))*∏{d}[n, A001221(#)]!` -/
def P10855940720036750014.Spec : Prop :=
  ∀ n, P10855940720036750014.a n = A176581 n

end A176581

/-!
# A176582: n^2+Largest cube, (Largest cube <= n^2).

The programs for A176582, there is no canonical definition to state claims against.
-/

/-! ## A176582.P11031958152520946917

`floor((n^(1/3))²)^3+n²`
-/

namespace A176582.P11031958152520946917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)) ^ 2⌋ ^ 3 + (n ^ 2 : ℤ)

end

end A176582.P11031958152520946917

/-! ## A176582.P6427972616370302255

`or(A077106(n)+n², char[2])`
-/

namespace A176582.P6427972616370302255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077106 n + (n ^ 2 : ℤ)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A176582.P6427972616370302255

/-! ## A176582.P11861843296458252221

`abs(2*n²-(n²-A100196(n)^3))`
-/

namespace A176582.P11861843296458252221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n ^ 2 : ℤ) - ((n ^ 2 : ℤ) - A100196 n ^ 3)|

end

end A176582.P11861843296458252221

/-! ## A176582.P18190332770687371456

`abs(A001105(n)-A075847(n))`
-/

namespace A176582.P18190332770687371456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001105 n - A075847 n|

end

end A176582.P18190332770687371456

/-! ## A176582.P9966377826315730376

`A254667(A077106(n)+n²)`
-/

namespace A176582.P9966377826315730376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A077106 n + (n ^ 2 : ℤ)).toNat

end

end A176582.P9966377826315730376

/-!
# A176583: n^2+smallest cube >= n^2.

The programs for A176583, there is no canonical definition to state claims against.
-/

/-! ## A176583.P10841925129904073126

`∑[char[floor(n*sqrt(n))+1]]^3+n²`
-/

namespace A176583.P10841925129904073126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋ + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 + n ^ 2

end

end A176583.P10841925129904073126

/-! ## A176583.P16513273286080278411

`(A077107(n)+n²)/ceil(acot(n))`
-/

namespace A176583.P16513273286080278411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077107 n + (n ^ 2 : ℤ) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A176583.P16513273286080278411

/-! ## A176583.P10878349593747540912

`A254667(A077107(n)+n²)`
-/

namespace A176583.P10878349593747540912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A077107 n + (n ^ 2 : ℤ)).toNat

end

end A176583.P10878349593747540912

/-! ## A176583.P17827797993551306852

`A254667(A048763(n²)+n²)`
-/

namespace A176583.P17827797993551306852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A048763 (n ^ 2) + (n ^ 2 : ℤ)).toNat

end

end A176583.P17827797993551306852

/-! ## A176583.P3165690248531831398

`A254667(n²+A070923(n)+n²)`
-/

namespace A176583.P3165690248531831398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 ((n ^ 2 : ℤ) + (A070923 n + (n ^ 2 : ℤ))).toNat

end

end A176583.P3165690248531831398

/-!
# A176587: Numbers such that arithmetic mean of distinct prime factors is not an integer.

The programs for A176587, the canonical program `A176587.P16048929400543809882` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176587 has offset 1).

The definition of A176587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176587.P16048929400543809882

`comp[A078174(n+1)-1]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A176587

/-- `comp[A078174(n+1)-1]+1` -/
def P16048929400543809882.Spec : Prop :=
  ∀ n, (P16048929400543809882.a n : ℤ) = A176587 (n + 1)

theorem P16048929400543809882.correct : P16048929400543809882.Spec := by
  intro n
  simp only [A176587, Nat.add_sub_cancel]

end A176587

/-! ## A176587.P5829066613990277935

`A176552(n+1)+A157687(A364071(n))`
-/

namespace A176587.P5829066613990277935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176552 (n + 1) + A157687 (A364071 n).toNat

end

end A176587.P5829066613990277935

namespace A176587

/-- `A176552(n+1)+A157687(A364071(n))` -/
def P5829066613990277935.Spec : Prop :=
  ∀ n, P5829066613990277935.a n = A176587 (n + 1)

end A176587

/-! ## A176587.P8076917009364816677

`A176552(n+1)/A001222(A370851(n+1))`
-/

namespace A176587.P8076917009364816677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176552 (n + 1) : ℚ) / (A001222 (A370851 (n + 1)).toNat : ℚ)

end

end A176587.P8076917009364816677

namespace A176587

/-- `A176552(n+1)/A001222(A370851(n+1))` -/
def P8076917009364816677.Spec : Prop :=
  ∀ n, P8076917009364816677.a n = (A176587 (n + 1) : ℚ)

end A176587

/-! ## A176587.P13939251653028802872

`A176552(n+1)%A236860(A025515(n+1))`
-/

namespace A176587.P13939251653028802872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176552 (n + 1)) (A236860 (A025515 (n + 1)).toNat)

end

end A176587.P13939251653028802872

namespace A176587

/-- `A176552(n+1)%A236860(A025515(n+1))` -/
def P13939251653028802872.Spec : Prop :=
  ∀ n, P13939251653028802872.a n = A176587 (n + 1)

end A176587

/-! ## A176587.P17592693871446744366

`A176552(n+1)+A121373(A227073(3*n+5))`
-/

namespace A176587.P17592693871446744366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176552 (n + 1) + A121373 (A227073 (3 * n + 5)).toNat

end

end A176587.P17592693871446744366

namespace A176587

/-- `A176552(n+1)+A121373(A227073(3*n+5))` -/
def P17592693871446744366.Spec : Prop :=
  ∀ n, P17592693871446744366.a n = A176587 (n + 1)

end A176587

/-!
# A176588: a(n) = A176558(A175354(n)) = numbers m as reverse concatenations of divisors of numbers from A175354, where A175354 = numbers k such that reverse concatenations of divisors of k are nonprimes.

The programs for A176588, there is no canonical definition to state claims against.
-/

/-! ## A176588.P18295891016819861554

`A176558(A175354(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176588.P18295891016819861554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (A175354 (n + 1)).toNat

end

end A176588.P18295891016819861554

/-! ## A176588.P15782738983320801744

`A176558(comp[A089374(n+1)%(4^n)])`
-/

namespace A176588.P15782738983320801744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089374 (n + 1)) (4 ^ n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A176588.P15782738983320801744

/-! ## A176588.P12066805393959106687

`A176558(A000007(n)+comp[A089374(n+1)])`
-/

namespace A176588.P12066805393959106687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A176588.P12066805393959106687

/-! ## A176588.P2541188988042437248

`A176558(comp[A057428(n)²*A089374(n+1)])`
-/

namespace A176588.P2541188988042437248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A089374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A176588.P2541188988042437248

/-! ## A176588.P7565147678466220492

`A176558(comp[A089374(n+1)]+(A000040(n+1)+1)%2)`
-/

namespace A176588.P7565147678466220492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + Int.tmod (A000040 (n + 1) + 1) 2).toNat

end

end A176588.P7565147678466220492

/-!
# A176589: Numbers k such that both concatenation of divisors of k and reverse concatenation of divisors of k are noncomposite.

The programs for A176589, there is no canonical definition to state claims against.
-/

/-! ## A176589.P11839258640262213630

`∩[A089374(n+1), A176553(n+1)]`
-/

namespace A176589.P11839258640262213630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176589.P11839258640262213630

/-! ## A176589.P6415871193986521115

`eq[A171435(n+1), A243374(n+1)]+1`
-/

namespace A176589.P6415871193986521115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176589.P6415871193986521115

/-! ## A176589.P343241634680451047

`record[A020639(n+1)/(2-A243374(n+1))]`
-/

namespace A176589.P343241634680451047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) / (2 - A243374 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176589.P343241634680451047

/-! ## A176589.P3710907864196652245

`A004442(eq[A171435(n+1), A243374(n+1)])`
-/

namespace A176589.P3710907864196652245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176589.P3710907864196652245

/-! ## A176589.P14319761663253720522

`∩[A068673(n+1), A138980(n)]`
-/

namespace A176589.P14319761663253720522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176589.P14319761663253720522

/-!
# A176590: Numbers k such that both concatenation of divisors of k and reverse concatenation of divisors of k are nonprime.

The programs for A176590, there is no canonical definition to state claims against.
-/

/-! ## A176590.P592106065625624964

`∩[A175354(n+1), A176554(n+1)]`
-/

namespace A176590.P592106065625624964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176590.P592106065625624964

/-! ## A176590.P5876168530822425508

`∩[A175354(n+1), comp[A176553(n+4)]]`
-/

namespace A176590.P5876168530822425508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175354 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 4)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A176590.P5876168530822425508

/-! ## A176590.P17112346275417922394

`eq[A055668(n), A202394(A218146(n+1))]`
-/

namespace A176590.P17112346275417922394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202394 (A218146 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176590.P17112346275417922394

/-! ## A176590.P7082164965887988463

`lt[A218146(n+1), A106402(A050129(n+1))]`
-/

namespace A176590.P7082164965887988463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106402 (A050129 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176590.P7082164965887988463

/-! ## A176590.P11543228250708018648

`eq[A111972(n+1), A134193(A050350(n+1))]`
-/

namespace A176590.P11543228250708018648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134193 (A050350 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176590.P11543228250708018648

/-!
# A176591: Bernoulli denominators A141056(n), with the exception a(1)=1.

The programs for A176591, the canonical program `A176591.P1285427356219146765` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176591 has offset 0).

The definition of A176591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176591.P12138829047925134174

`A141056(n-char[1])`
-/

namespace A176591.P12138829047925134174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A176591.P12138829047925134174

namespace A176591

/-- `A141056(n-char[1])` -/
def P12138829047925134174.Spec : Prop :=
  ∀ n, P12138829047925134174.a n = A176591 n

end A176591

/-! ## A176591.P6995075833250581716

`∏{d}[n, A089026(#+1)]-char[1]`
-/

namespace A176591.P6995075833250581716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A089026 (d + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A176591.P6995075833250581716

namespace A176591

/-- `∏{d}[n, A089026(#+1)]-char[1]` -/
def P6995075833250581716.Spec : Prop :=
  ∀ n, P6995075833250581716.a n = A176591 n

end A176591

/-! ## A176591.P1285427356219146765

`A159075(n)+A141056(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A176591

/-- `A159075(n)+A141056(n)` -/
def P1285427356219146765.Spec : Prop :=
  ∀ n, P1285427356219146765.a n = A176591 n

theorem P1285427356219146765.correct : P1285427356219146765.Spec := by
  intro n
  simp only [A176591]

end A176591

/-! ## A176591.P9896836249759471969

`A141056(n)-A063524(n)`
-/

namespace A176591.P9896836249759471969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n - A063524 n

end

end A176591.P9896836249759471969

namespace A176591

/-- `A141056(n)-A063524(n)` -/
def P9896836249759471969.Spec : Prop :=
  ∀ n, P9896836249759471969.a n = A176591 n

end A176591

/-! ## A176591.P12056033257645019403

`A141056(n)/A373565(n)`
-/

namespace A176591.P12056033257645019403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A373565 n : ℚ)

end

end A176591.P12056033257645019403

namespace A176591

/-- `A141056(n)/A373565(n)` -/
def P12056033257645019403.Spec : Prop :=
  ∀ n, P12056033257645019403.a n = (A176591 n : ℚ)

end A176591

/-! ## A176591.P4102954151214167334

`lcm(A084100(n), A141459(n))`
-/

namespace A176591.P4102954151214167334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084100 n) (A141459 n)

end

end A176591.P4102954151214167334

namespace A176591

/-- `lcm(A084100(n), A141459(n))` -/
def P4102954151214167334.Spec : Prop :=
  ∀ n, (P4102954151214167334.a n : ℤ) = A176591 n

end A176591

/-! ## A176591.P13234577712422845640

`xor(A010674(n), A027642(n))`
-/

namespace A176591.P13234577712422845640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A027642 n)

end

end A176591.P13234577712422845640

namespace A176591

/-- `xor(A010674(n), A027642(n))` -/
def P13234577712422845640.Spec : Prop :=
  ∀ n, P13234577712422845640.a n = A176591 n

end A176591

/-! ## A176591.P12220422213367797395

`round(A141056(n)/A141044(n))`
-/

namespace A176591.P12220422213367797395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141056 n : ℚ) / (A141044 n : ℚ))

end

end A176591.P12220422213367797395

namespace A176591

/-- `round(A141056(n)/A141044(n))` -/
def P12220422213367797395.Spec : Prop :=
  ∀ n, P12220422213367797395.a n = A176591 n

end A176591

/-! ## A176591.P3223981621294524933

`(3-A141044(n))*A141459(n)`
-/

namespace A176591.P3223981621294524933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A141044 n) * A141459 n

end

end A176591.P3223981621294524933

namespace A176591

/-- `(3-A141044(n))*A141459(n)` -/
def P3223981621294524933.Spec : Prop :=
  ∀ n, P3223981621294524933.a n = A176591 n

end A176591

/-! ## A176591.P16875197564679440465

`gcd(A033322(n+1), A141056(n))`
-/

namespace A176591.P16875197564679440465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 1)) (A141056 n)

end

end A176591.P16875197564679440465

namespace A176591

/-- `gcd(A033322(n+1), A141056(n))` -/
def P16875197564679440465.Spec : Prop :=
  ∀ n, (P16875197564679440465.a n : ℤ) = A176591 n

end A176591

/-! ## A176591.P11903963898717924446

`(2-char[A088705(n)])*A141459(n)`
-/

namespace A176591.P11903963898717924446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A141459 n

end

end A176591.P11903963898717924446

namespace A176591

/-- `(2-char[A088705(n)])*A141459(n)` -/
def P11903963898717924446.Spec : Prop :=
  ∀ n, P11903963898717924446.a n = A176591 n

end A176591

/-! ## A176591.P11259752710508214078

`2*A141459(n)-char[A151909(n)]`
-/

namespace A176591.P11259752710508214078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141459 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A176591.P11259752710508214078

namespace A176591

/-- `2*A141459(n)-char[A151909(n)]` -/
def P11259752710508214078.Spec : Prop :=
  ∀ n, P11259752710508214078.a n = A176591 n

end A176591

/-! ## A176591.P2829975725574919189

`2*A141459(n)-char[A151934(n)]`
-/

namespace A176591.P2829975725574919189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141459 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A176591.P2829975725574919189

namespace A176591

/-- `2*A141459(n)-char[A151934(n)]` -/
def P2829975725574919189.Spec : Prop :=
  ∀ n, P2829975725574919189.a n = A176591 n

end A176591

/-! ## A176591.P14270530567253816020

`(2-A019590(n+1))*A141459(n)`
-/

namespace A176591.P14270530567253816020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A019590 (n + 1)) * A141459 n

end

end A176591.P14270530567253816020

namespace A176591

/-- `(2-A019590(n+1))*A141459(n)` -/
def P14270530567253816020.Spec : Prop :=
  ∀ n, P14270530567253816020.a n = A176591 n

end A176591

/-! ## A176591.P17954914803091862831

`(2-A000007(A004526(n)))*A141459(n)`
-/

namespace A176591.P17954914803091862831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 (A004526 n).toNat) * A141459 n

end

end A176591.P17954914803091862831

namespace A176591

/-- `(2-A000007(A004526(n)))*A141459(n)` -/
def P17954914803091862831.Spec : Prop :=
  ∀ n, P17954914803091862831.a n = A176591 n

end A176591

/-! ## A176591.P12685786021789070893

`(2-A000007(A011371(n)))*A141459(n)`
-/

namespace A176591.P12685786021789070893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 (A011371 n).toNat) * A141459 n

end

end A176591.P12685786021789070893

namespace A176591

/-- `(2-A000007(A011371(n)))*A141459(n)` -/
def P12685786021789070893.Spec : Prop :=
  ∀ n, P12685786021789070893.a n = A176591 n

end A176591

/-! ## A176591.P6693312839309156049

`A141056(A004277(n)-n)/A141044(n)`
-/

namespace A176591.P6693312839309156049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 (A004277 n - (n : ℤ)).toNat : ℚ) / (A141044 n : ℚ)

end

end A176591.P6693312839309156049

namespace A176591

/-- `A141056(A004277(n)-n)/A141044(n)` -/
def P6693312839309156049.Spec : Prop :=
  ∀ n, P6693312839309156049.a n = (A176591 n : ℚ)

end A176591

/-! ## A176591.P2558477668542681517

`lcm(A176289(n), A329683(n))`
-/

namespace A176591.P2558477668542681517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A176289 n) (A329683 n)

end

end A176591.P2558477668542681517

namespace A176591

/-- `lcm(A176289(n), A329683(n))` -/
def P2558477668542681517.Spec : Prop :=
  ∀ n, (P2558477668542681517.a n : ℤ) = A176591 n

end A176591

/-! ## A176591.P6279329145944004816

`A000034(char[1]+n)*A176289(n)`
-/

namespace A176591.P6279329145944004816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((if ∃ j, f1 j = n then 1 else 0) + n) * A176289 n

end

end A176591.P6279329145944004816

namespace A176591

/-- `A000034(char[1]+n)*A176289(n)` -/
def P6279329145944004816.Spec : Prop :=
  ∀ n, P6279329145944004816.a n = A176591 n

end A176591

/-! ## A176591.P14416043068545193533

`(A000034(n)-char[1])*A176289(n)`
-/

namespace A176591.P14416043068545193533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A176289 n

end

end A176591.P14416043068545193533

namespace A176591

/-- `(A000034(n)-char[1])*A176289(n)` -/
def P14416043068545193533.Spec : Prop :=
  ∀ n, P14416043068545193533.a n = A176591 n

end A176591

/-!
# A176592: List of pairs n, 11*n.

The programs for A176592, the canonical program `A176592.P16896987726349869867` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176592 has offset 1).

The definition of A176592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176592.P16896987726349869867

`1/4*(12*(n+1)+10*(n+1)*(-1)^(n+1)+1+(-1)^n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176592

/-- `1/4*(12*(n+1)+10*(n+1)*(-1)^(n+1)+1+(-1)^n)` -/
def P16896987726349869867.Spec : Prop :=
  ∀ n, P16896987726349869867.a n = (A176592 (n + 1) : ℚ)

end A176592

/-! ## A176592.P1124419582987717407

`a(n-2)+a(n%2)` with `a(0)=1, a(1)=11`
-/

namespace A176592.P1124419582987717407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  a (n - 2) + a (n % 2)

end

end A176592.P1124419582987717407

namespace A176592

/-- `a(n-2)+a(n%2)` -/
def P1124419582987717407.Spec : Prop :=
  ∀ n, (P1124419582987717407.a n : ℤ) = A176592 (n + 1)

end A176592

/-! ## A176592.P3998419265918823391

`a(n-2)+a(and(1, n))` with `a(0)=1, a(1)=11`
-/

namespace A176592.P3998419265918823391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  a (n - 2) + a (Nat.land 1 n)

end

end A176592.P3998419265918823391

namespace A176592

/-- `a(n-2)+a(and(1, n))` -/
def P3998419265918823391.Spec : Prop :=
  ∀ n, (P3998419265918823391.a n : ℤ) = A176592 (n + 1)

end A176592

/-! ## A176592.P6155921541260579809

`∑[10*(n+1)]%(10*n+9)`
-/

namespace A176592.P6155921541260579809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (10 * n + 9)

end

end A176592.P6155921541260579809

namespace A176592

/-- `∑[10*(n+1)]%(10*n+9)` -/
def P6155921541260579809.Spec : Prop :=
  ∀ n, (P6155921541260579809.a n : ℤ) = A176592 (n + 1)

end A176592

/-! ## A176592.P1620544513093994021

`∑[12-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A176592.P1620544513093994021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A176592.P1620544513093994021

namespace A176592

/-- `∑[12-a(n-1)]-a(n-1)` -/
def P1620544513093994021.Spec : Prop :=
  ∀ n, P1620544513093994021.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P14641851420948668887

`A266327(n)+a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A176592.P14641851420948668887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A266327 n + a (n - 2)

end

end A176592.P14641851420948668887

namespace A176592

/-- `A266327(n)+a(n-2)` -/
def P14641851420948668887.Spec : Prop :=
  ∀ n, P14641851420948668887.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P9216531219760880931

`A113801(n+1)-n-a(n-1)` with `a(0)=1`
-/

namespace A176592.P9216531219760880931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113801 (n + 1) - (n : ℤ) - a (n - 1)

end

end A176592.P9216531219760880931

namespace A176592

/-- `A113801(n+1)-n-a(n-1)` -/
def P9216531219760880931.Spec : Prop :=
  ∀ n, P9216531219760880931.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P258483353756521820

`A175886(n+1)-A317312(n)`
-/

namespace A176592.P258483353756521820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (n + 1) - A317312 n

end

end A176592.P258483353756521820

namespace A176592

/-- `A175886(n+1)-A317312(n)` -/
def P258483353756521820.Spec : Prop :=
  ∀ n, P258483353756521820.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P4127330202360298546

`2*A195159(n+1)-A032766(n+1)`
-/

namespace A176592.P4127330202360298546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195159 (n + 1) - A032766 (n + 1)

end

end A176592.P4127330202360298546

namespace A176592

/-- `2*A195159(n+1)-A032766(n+1)` -/
def P4127330202360298546.Spec : Prop :=
  ∀ n, P4127330202360298546.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P14848531168332018031

`ceil(Δ[A316724(n)/2])`
-/

namespace A176592.P14848531168332018031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316724 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A176592.P14848531168332018031

namespace A176592

/-- `ceil(Δ[A316724(n)/2])` -/
def P14848531168332018031.Spec : Prop :=
  ∀ n, P14848531168332018031.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P12141412286528855178

`3*n+5-Δ[A006370(n)]`
-/

namespace A176592.P12141412286528855178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 5 : ℤ) - (f1 (n + 1) - f1 n)

end

end A176592.P12141412286528855178

namespace A176592

/-- `3*n+5-Δ[A006370(n)]` -/
def P12141412286528855178.Spec : Prop :=
  ∀ n, P12141412286528855178.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P16972397567501618704

`Δ[A303813(n)]-A271478(n)`
-/

namespace A176592.P16972397567501618704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271478 n

end

end A176592.P16972397567501618704

namespace A176592

/-- `Δ[A303813(n)]-A271478(n)` -/
def P16972397567501618704.Spec : Prop :=
  ∀ n, P16972397567501618704.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P2776432663877940154

`A317311(n+1)-A142150(n)`
-/

namespace A176592.P2776432663877940154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 (n + 1) - A142150 n

end

end A176592.P2776432663877940154

namespace A176592

/-- `A317311(n+1)-A142150(n)` -/
def P2776432663877940154.Spec : Prop :=
  ∀ n, P2776432663877940154.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P12823372767598714608

`A322462(n+1)-A195818(n)`
-/

namespace A176592.P12823372767598714608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 (n + 1) - A195818 n

end

end A176592.P12823372767598714608

namespace A176592

/-- `A322462(n+1)-A195818(n)` -/
def P12823372767598714608.Spec : Prop :=
  ∀ n, P12823372767598714608.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P2422134415382298018

`A317312(n+1)-A004526(n+1)`
-/

namespace A176592.P2422134415382298018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 (n + 1) - A004526 (n + 1)

end

end A176592.P2422134415382298018

namespace A176592

/-- `A317312(n+1)-A004526(n+1)` -/
def P2422134415382298018.Spec : Prop :=
  ∀ n, P2422134415382298018.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P15408149024682945712

`A317312(n+1)+1-A008619(n+1)`
-/

namespace A176592.P15408149024682945712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 (n + 1) + (1 - A008619 (n + 1))

end

end A176592.P15408149024682945712

namespace A176592

/-- `A317312(n+1)+1-A008619(n+1)` -/
def P15408149024682945712.Spec : Prop :=
  ∀ n, P15408149024682945712.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P5984938399191225145

`A317311(n+1)+A022998(n)-A195140(n)`
-/

namespace A176592.P5984938399191225145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 (n + 1) + (A022998 n - A195140 n)

end

end A176592.P5984938399191225145

namespace A176592

/-- `A317311(n+1)+A022998(n)-A195140(n)` -/
def P5984938399191225145.Spec : Prop :=
  ∀ n, P5984938399191225145.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P17600493142578866986

`A016789(n+1)+A006370(n)-A006370(n+1)`
-/

namespace A176592.P17600493142578866986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (n + 1) + (A006370 n - A006370 (n + 1))

end

end A176592.P17600493142578866986

namespace A176592

/-- `A016789(n+1)+A006370(n)-A006370(n+1)` -/
def P17600493142578866986.Spec : Prop :=
  ∀ n, P17600493142578866986.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P5070622479398320774

`A065033(A317322(n+1))`
-/

namespace A176592.P5070622479398320774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A317322 (n + 1)).toNat

end

end A176592.P5070622479398320774

namespace A176592

/-- `A065033(A317322(n+1))` -/
def P5070622479398320774.Spec : Prop :=
  ∀ n, P5070622479398320774.a n = A176592 (n + 1)

end A176592

/-! ## A176592.P2932191547378930669

`A008619(A317322(n+1)-1)`
-/

namespace A176592.P2932191547378930669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A317322 (n + 1) - 1).toNat

end

end A176592.P2932191547378930669

namespace A176592

/-- `A008619(A317322(n+1)-1)` -/
def P2932191547378930669.Spec : Prop :=
  ∀ n, P2932191547378930669.a n = A176592 (n + 1)

end A176592

/-!
# A176593: List of pairs n,13*n.

The programs for A176593, the canonical program `A176593.P3905427531951186568` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176593 has offset 1).

The definition of A176593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176593.P3905427531951186568

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=13, a(2)=2, a(3)=26`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176593

/-- `2*a(n-2)-a(n-4)` -/
def P3905427531951186568.Spec : Prop :=
  ∀ n, P3905427531951186568.a n = A176593 (n + 1)

theorem P3905427531951186568.correct : P3905427531951186568.Spec := by
  intro n
  simp only [A176593, Nat.add_sub_cancel]

end A176593

/-! ## A176593.P8302645367260127008

`(14*(n+1)+12*(n+1)*(-1)^(n+1)+1+(-1)^n)/4`
-/

namespace A176593.P8302645367260127008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * (n + 1) : ℤ) + (12 * (n + 1) : ℤ) * (-1) ^ (n + 1) + 1 + (-1) ^ n : ℚ) / 4

end

end A176593.P8302645367260127008

namespace A176593

/-- `(14*(n+1)+12*(n+1)*(-1)^(n+1)+1+(-1)^n)/4` -/
def P8302645367260127008.Spec : Prop :=
  ∀ n, P8302645367260127008.a n = (A176593 (n + 1) : ℚ)

theorem P8302645367260127008.correct : P8302645367260127008.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A176593, Nat.add_sub_cancel, A176593.P8302645367260127008.a, A176593.P3905427531951186568.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A176593, Nat.add_sub_cancel, A176593.P8302645367260127008.a, A176593.P3905427531951186568.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176593

/-! ## A176593.P10046230623813011291

`a(n%2)+a(n-2)` with `a(0)=1, a(1)=13`
-/

namespace A176593.P10046230623813011291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  a (n % 2) + a (n - 2)

end

end A176593.P10046230623813011291

namespace A176593

/-- `a(n%2)+a(n-2)` -/
def P10046230623813011291.Spec : Prop :=
  ∀ n, (P10046230623813011291.a n : ℤ) = A176593 (n + 1)

end A176593

/-! ## A176593.P9009221914069625397

`∑[14-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A176593.P9009221914069625397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A176593.P9009221914069625397

namespace A176593

/-- `∑[14-a(n-1)]-a(n-1)` -/
def P9009221914069625397.Spec : Prop :=
  ∀ n, P9009221914069625397.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P15024327487284036958

`a(n%2)*A008619(n)` with `a(0)=1, a(1)=13`
-/

namespace A176593.P15024327487284036958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13] fun n a =>
  a (n % 2) * A008619 n

end

end A176593.P15024327487284036958

namespace A176593

/-- `a(n%2)*A008619(n)` -/
def P15024327487284036958.Spec : Prop :=
  ∀ n, P15024327487284036958.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P9865198615331333118

`A003154(n+1)%(12*n+11)`
-/

namespace A176593.P9865198615331333118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003154 (n + 1)) (12 * n + 11 : ℤ)

end

end A176593.P9865198615331333118

namespace A176593

/-- `A003154(n+1)%(12*n+11)` -/
def P9865198615331333118.Spec : Prop :=
  ∀ n, P9865198615331333118.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P7215965406815498176

`(∑[12*n]+1)%Δ[A033570(n)]`
-/

namespace A176593.P7215965406815498176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (f2 (n + 1) - f2 n)

end

end A176593.P7215965406815498176

namespace A176593

/-- `(∑[12*n]+1)%Δ[A033570(n)]` -/
def P7215965406815498176.Spec : Prop :=
  ∀ n, P7215965406815498176.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P8172433544216991428

`A175887(n+1)-A317314(n)`
-/

namespace A176593.P8172433544216991428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) - A317314 n

end

end A176593.P8172433544216991428

namespace A176593

/-- `A175887(n+1)-A317314(n)` -/
def P8172433544216991428.Spec : Prop :=
  ∀ n, P8172433544216991428.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P8222057740768396144

`gcd(A027656(n), A166545(n+1))`
-/

namespace A176593.P8222057740768396144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n) (A166545 (n + 1))

end

end A176593.P8222057740768396144

namespace A176593

/-- `gcd(A027656(n), A166545(n+1))` -/
def P8222057740768396144.Spec : Prop :=
  ∀ n, (P8222057740768396144.a n : ℤ) = A176593 (n + 1)

end A176593

/-! ## A176593.P7228093444381689879

`∑[A008594(n+1)]%A017653(n)`
-/

namespace A176593.P7228093444381689879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017653 n)

end

end A176593.P7228093444381689879

namespace A176593

/-- `∑[A008594(n+1)]%A017653(n)` -/
def P7228093444381689879.Spec : Prop :=
  ∀ n, P7228093444381689879.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P16742864415778903628

`ceil(A317326(n+1)/2)`
-/

namespace A176593.P16742864415778903628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317326 (n + 1) : ℚ) / 2⌉

end

end A176593.P16742864415778903628

namespace A176593

/-- `ceil(A317326(n+1)/2)` -/
def P16742864415778903628.Spec : Prop :=
  ∀ n, P16742864415778903628.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P8086993787711710732

`A317312(n)+Δ[A317313(n)]`
-/

namespace A176593.P8086993787711710732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 n + (f1 (n + 1) - f1 n)

end

end A176593.P8086993787711710732

namespace A176593

/-- `A317312(n)+Δ[A317313(n)]` -/
def P8086993787711710732.Spec : Prop :=
  ∀ n, P8086993787711710732.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P9996386166111390968

`A317313(n+1)-A142150(n)`
-/

namespace A176593.P9996386166111390968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 (n + 1) - A142150 n

end

end A176593.P9996386166111390968

namespace A176593

/-- `A317313(n+1)-A142150(n)` -/
def P9996386166111390968.Spec : Prop :=
  ∀ n, P9996386166111390968.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P12681699968861929065

`A065033(n+1)/(n+1)*A317326(n+1)`
-/

namespace A176593.P12681699968861929065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (n + 1) : ℚ) / (n + 1 : ℚ) * (A317326 (n + 1) : ℚ)

end

end A176593.P12681699968861929065

namespace A176593

/-- `A065033(n+1)/(n+1)*A317326(n+1)` -/
def P12681699968861929065.Spec : Prop :=
  ∀ n, P12681699968861929065.a n = (A176593 (n + 1) : ℚ)

end A176593

/-! ## A176593.P5985966652561867206

`A317313(n+1)+A022998(n)-A195140(n)`
-/

namespace A176593.P5985966652561867206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 (n + 1) + (A022998 n - A195140 n)

end

end A176593.P5985966652561867206

namespace A176593

/-- `A317313(n+1)+A022998(n)-A195140(n)` -/
def P5985966652561867206.Spec : Prop :=
  ∀ n, P5985966652561867206.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P6440340609825128802

`A317313(n+1)+A195817(n)-A317311(n)`
-/

namespace A176593.P6440340609825128802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 (n + 1) + (A195817 n - A317311 n)

end

end A176593.P6440340609825128802

namespace A176593

/-- `A317313(n+1)+A195817(n)-A317311(n)` -/
def P6440340609825128802.Spec : Prop :=
  ∀ n, P6440340609825128802.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P8471206185215755065

`A317313(n+1)+A317311(n)-A317312(n)`
-/

namespace A176593.P8471206185215755065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 (n + 1) + (A317311 n - A317312 n)

end

end A176593.P8471206185215755065

namespace A176593

/-- `A317313(n+1)+A317311(n)-A317312(n)` -/
def P8471206185215755065.Spec : Prop :=
  ∀ n, P8471206185215755065.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P9355415073326456538

`A317313(n+1)+A317312(n)-A317313(n)`
-/

namespace A176593.P9355415073326456538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 (n + 1) + (A317312 n - A317313 n)

end

end A176593.P9355415073326456538

namespace A176593

/-- `A317313(n+1)+A317312(n)-A317313(n)` -/
def P9355415073326456538.Spec : Prop :=
  ∀ n, P9355415073326456538.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P7669534586619438358

`A317313(n+1)+A317313(n)-A317314(n)`
-/

namespace A176593.P7669534586619438358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 (n + 1) + (A317313 n - A317314 n)

end

end A176593.P7669534586619438358

namespace A176593

/-- `A317313(n+1)+A317313(n)-A317314(n)` -/
def P7669534586619438358.Spec : Prop :=
  ∀ n, P7669534586619438358.a n = A176593 (n + 1)

end A176593

/-! ## A176593.P5165207041526499540

`A274978(n+2)+A118277(n)-A303303(n)`
-/

namespace A176593.P5165207041526499540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274978 (n + 2) + (A118277 n - A303303 n)

end

end A176593.P5165207041526499540

namespace A176593

/-- `A274978(n+2)+A118277(n)-A303303(n)` -/
def P5165207041526499540.Spec : Prop :=
  ∀ n, P5165207041526499540.a n = A176593 (n + 1)

end A176593

/-!
# A176594: a(n) = 5^(2^n).

The programs for A176594, the canonical program `A176594.P3735639712356198430` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176594 has offset 0).

The definition of A176594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^2^n` (program `A176594.P3735639712356198430`, by `A176594.P3735639712356198430.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176594.P3735639712356198430

`5^2^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176594

/-- `5^2^n` -/
def P3735639712356198430.Spec : Prop :=
  ∀ n, (P3735639712356198430.a n : ℤ) = A176594 n

theorem P3735639712356198430.correct : P3735639712356198430.Spec := by
  intro n
  simp only [A176594]

end A176594

/-!
# A176595: 

The programs for A176595, there is no canonical definition to state claims against.
-/

/-! ## A176595.P10436231663836691114

`11^2^n`
-/

namespace A176595.P10436231663836691114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ 2 ^ n

end

end A176595.P10436231663836691114

/-!
# A176596: 

The programs for A176596, there is no canonical definition to state claims against.
-/

/-! ## A176596.P846083098056088214

`13^2^n`
-/

namespace A176596.P846083098056088214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ 2 ^ n

end

end A176596.P846083098056088214

/-!
# A176597: Double primes: concatenation of the n-th prime with itself.

The programs for A176597, the canonical program `A176597.P3154790645961376923` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176597 has offset 1).

The definition of A176597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176597.P13171110428368442776

`A020338(p?[comp[n²]])`
-/

namespace A176597.P13171110428368442776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A176597.P13171110428368442776

namespace A176597

/-- `A020338(p?[comp[n²]])` -/
def P13171110428368442776.Spec : Prop :=
  ∀ n, P13171110428368442776.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P3154790645961376923

`A020338(record[p?[∏{p}[n+1, #]]])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A176597

/-- `A020338(record[p?[∏{p}[n+1, #]]])` -/
def P3154790645961376923.Spec : Prop :=
  ∀ n, P3154790645961376923.a n = A176597 (n + 1)

theorem P3154790645961376923.correct : P3154790645961376923.Spec := by
  intro n
  simp only [A176597, Nat.add_sub_cancel]

end A176597

/-! ## A176597.P11220865697956116231

`A020338(Δ[A007504(n)])`
-/

namespace A176597.P11220865697956116231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (f1 (n + 1) - f1 n).toNat

end

end A176597.P11220865697956116231

namespace A176597

/-- `A020338(Δ[A007504(n)])` -/
def P11220865697956116231.Spec : Prop :=
  ∀ n, P11220865697956116231.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P1021538247044946909

`A109958(Δ[A007504(n)])`
-/

namespace A176597.P1021538247044946909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109958 (f1 (n + 1) - f1 n).toNat

end

end A176597.P1021538247044946909

namespace A176597

/-- `A109958(Δ[A007504(n)])` -/
def P1021538247044946909.Spec : Prop :=
  ∀ n, P1021538247044946909.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P14288468724604999683

`A020338(A000040(n+1))`
-/

namespace A176597.P14288468724604999683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A000040 (n + 1)).toNat

end

end A176597.P14288468724604999683

namespace A176597

/-- `A020338(A000040(n+1))` -/
def P14288468724604999683.Spec : Prop :=
  ∀ n, P14288468724604999683.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P4042700750644558642

`A020338(A008578(n+2))`
-/

namespace A176597.P4042700750644558642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A008578 (n + 2)).toNat

end

end A176597.P4042700750644558642

namespace A176597

/-- `A020338(A008578(n+2))` -/
def P4042700750644558642.Spec : Prop :=
  ∀ n, P4042700750644558642.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P9840170142200328708

`A020338(A182986(n+2))`
-/

namespace A176597.P9840170142200328708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A182986 (n + 2)).toNat

end

end A176597.P9840170142200328708

namespace A176597

/-- `A020338(A182986(n+2))` -/
def P9840170142200328708.Spec : Prop :=
  ∀ n, P9840170142200328708.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P1045971356742229192

`A020338(record[A006530(n+2)])`
-/

namespace A176597.P1045971356742229192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176597.P1045971356742229192

namespace A176597

/-- `A020338(record[A006530(n+2)])` -/
def P1045971356742229192.Spec : Prop :=
  ∀ n, P1045971356742229192.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P7436571719129213642

`A020338(record[A014963(n+2)])`
-/

namespace A176597.P7436571719129213642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176597.P7436571719129213642

namespace A176597

/-- `A020338(record[A014963(n+2)])` -/
def P7436571719129213642.Spec : Prop :=
  ∀ n, P7436571719129213642.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P12010824552392712349

`A020338(record[A020639(n+2)])`
-/

namespace A176597.P12010824552392712349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176597.P12010824552392712349

namespace A176597

/-- `A020338(record[A020639(n+2)])` -/
def P12010824552392712349.Spec : Prop :=
  ∀ n, P12010824552392712349.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P7187322604760708739

`A109958(record[A006530(n+2)])`
-/

namespace A176597.P7187322604760708739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176597.P7187322604760708739

namespace A176597

/-- `A109958(record[A006530(n+2)])` -/
def P7187322604760708739.Spec : Prop :=
  ∀ n, P7187322604760708739.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P3777680353497533672

`A109958(record[A014963(n+2)])`
-/

namespace A176597.P3777680353497533672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176597.P3777680353497533672

namespace A176597

/-- `A109958(record[A014963(n+2)])` -/
def P3777680353497533672.Spec : Prop :=
  ∀ n, P3777680353497533672.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P8467102417334031549

`A109958(record[A020639(n+2)])`
-/

namespace A176597.P8467102417334031549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176597.P8467102417334031549

namespace A176597

/-- `A109958(record[A020639(n+2)])` -/
def P8467102417334031549.Spec : Prop :=
  ∀ n, P8467102417334031549.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P7324132166460530497

`A020338(record[A000010(n+1)+1])`
-/

namespace A176597.P7324132166460530497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176597.P7324132166460530497

namespace A176597

/-- `A020338(record[A000010(n+1)+1])` -/
def P7324132166460530497.Spec : Prop :=
  ∀ n, P7324132166460530497.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P8691120781124298899

`A127423(p?[A000040(n+1)])+1`
-/

namespace A176597.P8691120781124298899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A176597.P8691120781124298899

namespace A176597

/-- `A127423(p?[A000040(n+1)])+1` -/
def P8691120781124298899.Spec : Prop :=
  ∀ n, P8691120781124298899.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P12054209237783668192

`A001704(p?[A000040(n+1)])-1`
-/

namespace A176597.P12054209237783668192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A176597.P12054209237783668192

namespace A176597

/-- `A001704(p?[A000040(n+1)])-1` -/
def P12054209237783668192.Spec : Prop :=
  ∀ n, P12054209237783668192.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P7710018098411278569

`A001704(record[A020639(n+2)])-1`
-/

namespace A176597.P7710018098411278569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A176597.P7710018098411278569

namespace A176597

/-- `A001704(record[A020639(n+2)])-1` -/
def P7710018098411278569.Spec : Prop :=
  ∀ n, P7710018098411278569.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P14028171831529126043

`A049851(A000040(n+1)+1)-1`
-/

namespace A176597.P14028171831529126043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A000040 (n + 1) + 1).toNat - 1

end

end A176597.P14028171831529126043

namespace A176597

/-- `A049851(A000040(n+1)+1)-1` -/
def P14028171831529126043.Spec : Prop :=
  ∀ n, P14028171831529126043.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P3342808585866309009

`A127421(A000040(n+1)+1)-1`
-/

namespace A176597.P3342808585866309009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A000040 (n + 1) + 1).toNat - 1

end

end A176597.P3342808585866309009

namespace A176597

/-- `A127421(A000040(n+1)+1)-1` -/
def P3342808585866309009.Spec : Prop :=
  ∀ n, P3342808585866309009.a n = A176597 (n + 1)

end A176597

/-! ## A176597.P8610585738574525768

`A020338(eq[1, A001222(n+1)]+1)`
-/

namespace A176597.P8610585738574525768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A176597.P8610585738574525768

namespace A176597

/-- `A020338(eq[1, A001222(n+1)]+1)` -/
def P8610585738574525768.Spec : Prop :=
  ∀ n, P8610585738574525768.a n = A176597 (n + 1)

end A176597

/-!
# A176598: Numbers n such that phi(n)/n = 16/41.

The programs for A176598, there is no canonical definition to state claims against.
-/

/-! ## A176598.P17573977705088163730

`A028310(41*A033846(n+1))`
-/

namespace A176598.P17573977705088163730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (41 * A033846 (n + 1)).toNat

end

end A176598.P17573977705088163730

/-! ## A176598.P2332277141345659810

`A028310(lcm(41, A033846(n+1)))`
-/

namespace A176598.P2332277141345659810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm 41 (A033846 (n + 1)))

end

end A176598.P2332277141345659810

/-! ## A176598.P10139801347199440874

`A003592(n+1)*A179129(A241601(n))`
-/

namespace A176598.P10139801347199440874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1) * A179129 (A241601 n).toNat

end

end A176598.P10139801347199440874

/-!
# A176599: Numerators of the first column of a table with top row the nonnegative integers and successive rows defined by a reverted Akiyama-Tanigawa procedure.

The programs for A176599, there is no canonical definition to state claims against.
-/

/-! ## A176599.P7375800991876675639

`A368514(A001157(n+1))-A135385(2*n+1)`
-/

namespace A176599.P7375800991876675639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368514 (A001157 (n + 1)).toNat - A135385 (2 * n + 1)

end

end A176599.P7375800991876675639

