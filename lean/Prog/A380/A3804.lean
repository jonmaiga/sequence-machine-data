import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
# A380401: Triangle read by rows: T(n,k) is the number of necklace permutations of a multiset whose multiplicities are given by the k-th partition of n in graded reflected lexicographic order.

The programs for A380401, there is no canonical definition to state claims against.
-/

/-! ## A380401.P7517751309594303296

`A318810(A334434(n))`
-/

namespace A380401.P7517751309594303296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (A334434 n).toNat

end

end A380401.P7517751309594303296

/-!
# A380402: Number of proper prime powers (in A246547) that do not exceed primorial A002110(n).

The programs for A380402, there is no canonical definition to state claims against.
-/

/-! ## A380402.P4196039810283119643

`A380404(n)-A000849(n)`
-/

namespace A380402.P4196039810283119643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380404 n - A000849 n

end

end A380402.P4196039810283119643

/-!
# A380403: Number of integers k that are neither squarefree nor prime powers (in A126706) and that do not exceed primorial A002110(n).

The programs for A380403, there is no canonical definition to state claims against.
-/

/-! ## A380403.P17404530836853981357

`A002110(n)-A380402(n)-A158341(n)-1`
-/

namespace A380403.P17404530836853981357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A380402 n - A158341 n - 1

end

end A380403.P17404530836853981357

/-! ## A380403.P15322958424380797630

`A379771(A002110(n))`
-/

namespace A380403.P15322958424380797630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379771 (A002110 n).toNat

end

end A380403.P15322958424380797630

/-!
# A380404: Number of prime powers that do not exceed the primorial number A002110(n).

The programs for A380404, there is no canonical definition to state claims against.
-/

/-! ## A380404.P3636572584259374954

`A000849(n)+A380402(n)`
-/

namespace A380404.P3636572584259374954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000849 n + A380402 n

end

end A380404.P3636572584259374954

/-! ## A380404.P670228951403007675

`A025528(∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A380404.P670228951403007675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A380404.P670228951403007675

/-! ## A380404.P11258561708885043148

`A025528(A002110(n))`
-/

namespace A380404.P11258561708885043148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A002110 n).toNat

end

end A380404.P11258561708885043148

/-!
# A380405: Squares k such that there are no primes between k and the nearest cube that is not k.

The programs for A380405, there is no canonical definition to state claims against.
-/

/-! ## A380405.P8978410421386021273

`ceil(sqrt(A380521(n+1)))²`
-/

namespace A380405.P8978410421386021273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A380521 (n + 1) : ℝ)⌉ ^ 2

end

end A380405.P8978410421386021273

/-!
# A380406: E.g.f. satisfies A(x) = exp( 2 * x * exp(x) * A(x)^(1/2) ).

The programs for A380406, there is no canonical definition to state claims against.
-/

/-! ## A380406.P13584608066297170315

`2^n*A273953(n)`
-/

namespace A380406.P13584608066297170315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A273953 n

end

end A380406.P13584608066297170315

/-! ## A380406.P728540059997818906

`lcm(A000079(n), A273953(n))`
-/

namespace A380406.P728540059997818906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A273953 n)

end

end A380406.P728540059997818906

/-! ## A380406.P15852034688376461335

`A273953(n)*A296188(A000040(n+1))`
-/

namespace A380406.P15852034688376461335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273953 n * A296188 (A000040 (n + 1)).toNat

end

end A380406.P15852034688376461335

/-! ## A380406.P7793555326093299660

`A273953(n)*A300653(A361751(n+1))`
-/

namespace A380406.P7793555326093299660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273953 n * A300653 (A361751 (n + 1)).toNat

end

end A380406.P7793555326093299660

/-!
# A380407: E.g.f. satisfies A(x) = exp( 3 * x * exp(x) * A(x)^(1/3) ).

The programs for A380407, there is no canonical definition to state claims against.
-/

/-! ## A380407.P5876693571211065370

`A008486(A184358(n)-A263340(n))`
-/

namespace A380407.P5876693571211065370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A184358 n - A263340 n).toNat

end

end A380407.P5876693571211065370

/-!
# A380408: a(n) = Sum_{k>=0} floor(n/(2k)!).

The programs for A380408, there is no canonical definition to state claims against.
-/

/-! ## A380408.P14083631374781442099

`floor(comp[∑[A042188(n)]]+n/2)`
-/

namespace A380408.P14083631374781442099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) + (n : ℚ) / 2⌋

end

end A380408.P14083631374781442099

/-! ## A380408.P12626900744432558549

`comp[A288105(3*n+4)]+floor(n/2)`
-/

namespace A380408.P12626900744432558549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288105 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊(n : ℚ) / 2⌋

end

end A380408.P12626900744432558549

/-! ## A380408.P3129134389904745375

`A064459(A008588(n))+n`
-/

namespace A380408.P3129134389904745375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A008588 n).toNat + (n : ℤ)

end

end A380408.P3129134389904745375

/-! ## A380408.P3716624317553062482

`A064459(A016921(n))+n`
-/

namespace A380408.P3716624317553062482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A016921 n).toNat + (n : ℤ)

end

end A380408.P3716624317553062482

/-! ## A380408.P7962314910554797906

`A064459(A016933(n))+n`
-/

namespace A380408.P7962314910554797906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A016933 n).toNat + (n : ℤ)

end

end A380408.P7962314910554797906

/-! ## A380408.P11767048458094056367

`A060832(n)-A152467(n)`
-/

namespace A380408.P11767048458094056367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060832 n - A152467 n

end

end A380408.P11767048458094056367

/-! ## A380408.P6674756778297536437

`A172270(A008619(n))+n-1`
-/

namespace A380408.P6674756778297536437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172270 (A008619 n).toNat + ((n : ℤ) - 1)

end

end A380408.P6674756778297536437

/-! ## A380408.P10639445987192696164

`A064459(A246303(3*n+1))+n`
-/

namespace A380408.P10639445987192696164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A246303 (3 * n + 1)).toNat + (n : ℤ)

end

end A380408.P10639445987192696164

/-!
# A380409: Product of prime indices plus sum of prime factors.

The programs for A380409, the canonical program `A380409.P2904522340196299969` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380409 has offset 1).

The definition of A380409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380409.P2904522340196299969

`A003963(n+1)+A001414(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A380409

/-- `A003963(n+1)+A001414(n+1)` -/
def P2904522340196299969.Spec : Prop :=
  ∀ n, P2904522340196299969.a n = A380409 (n + 1)

theorem P2904522340196299969.correct : P2904522340196299969.Spec := by
  intro n
  simp only [A380409, Nat.add_sub_cancel]

end A380409

/-! ## A380409.P4641608695391010240

`A379681(n+1)+A331415(n+1)`
-/

namespace A380409.P4641608695391010240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379681 (n + 1) + A331415 (n + 1)

end

end A380409.P4641608695391010240

namespace A380409

/-- `A379681(n+1)+A331415(n+1)` -/
def P4641608695391010240.Spec : Prop :=
  ∀ n, P4641608695391010240.a n = A380409 (n + 1)

theorem P4641608695391010240.correct : P4641608695391010240.Spec := by
  intro n
  simp only [A380409, Nat.add_sub_cancel, A380409.P4641608695391010240.a, A380409.P2904522340196299969.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A331415, A331415.P4846081659728035053.a, A379681, A379681.P11517682224062848711.a, A056239, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A161511, A161511.P16266007976091900386.a, A000120, A000120.P2816527436160941581.a, A048896, A048896.P6461019053085857547.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380409

/-! ## A380409.P534406199625112117

`A003963(n+1)+A036288(n+1)-1`
-/

namespace A380409.P534406199625112117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + (A036288 (n + 1) - 1)

end

end A380409.P534406199625112117

namespace A380409

/-- `A003963(n+1)+A036288(n+1)-1` -/
def P534406199625112117.Spec : Prop :=
  ∀ n, P534406199625112117.a n = A380409 (n + 1)

theorem P534406199625112117.correct : P534406199625112117.Spec := by
  intro n
  simp only [A380409, Nat.add_sub_cancel, A380409.P534406199625112117.a, A380409.P2904522340196299969.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380409

/-! ## A380409.P8138707213197301977

`A003963(n+1)+1-A075255(n+1)+n`
-/

namespace A380409.P8138707213197301977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + (1 - A075255 (n + 1) + (n : ℤ))

end

end A380409.P8138707213197301977

namespace A380409

/-- `A003963(n+1)+1-A075255(n+1)+n` -/
def P8138707213197301977.Spec : Prop :=
  ∀ n, P8138707213197301977.a n = A380409 (n + 1)

theorem P8138707213197301977.correct : P8138707213197301977.Spec := by
  intro n
  simp only [A380409, Nat.add_sub_cancel, A380409.P8138707213197301977.a, A380409.P2904522340196299969.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A075255, A075255.P12137973761347593222.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380409

/-! ## A380409.P15688503315279279862

`A003963(n+1)+A075254(n+1)-(n+1)`
-/

namespace A380409.P15688503315279279862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + (A075254 (n + 1) - (n + 1 : ℤ))

end

end A380409.P15688503315279279862

namespace A380409

/-- `A003963(n+1)+A075254(n+1)-(n+1)` -/
def P15688503315279279862.Spec : Prop :=
  ∀ n, P15688503315279279862.a n = A380409 (n + 1)

theorem P15688503315279279862.correct : P15688503315279279862.Spec := by
  intro n
  simp only [A380409, Nat.add_sub_cancel, A380409.P15688503315279279862.a, A380409.P2904522340196299969.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A075254, A075254.P6422447875050144596.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380409

/-! ## A380409.P1739877887525412894

`A003963(n+1)+A059975(n+1)+A001222(n+1)`
-/

namespace A380409.P1739877887525412894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + (A059975 (n + 1) + A001222 (n + 1))

end

end A380409.P1739877887525412894

namespace A380409

/-- `A003963(n+1)+A059975(n+1)+A001222(n+1)` -/
def P1739877887525412894.Spec : Prop :=
  ∀ n, P1739877887525412894.a n = A380409 (n + 1)

theorem P1739877887525412894.correct : P1739877887525412894.Spec := by
  intro n
  simp only [A380409, Nat.add_sub_cancel, A380409.P1739877887525412894.a, A380409.P2904522340196299969.a, A001222, A001222.P11318177267732088261.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A059975, A059975.P3594971538098503590.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A029837, A029837.P1050578713049589.a, A053645, A053645.P13234994043849603743.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A000120, A000120.P2816527436160941581.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380409

/-! ## A380409.P7563414012526005060

`A001414(n+1)+A380344(n+1)+A001414(n+1)`
-/

namespace A380409.P7563414012526005060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A380344 (n + 1) + A001414 (n + 1))

end

end A380409.P7563414012526005060

namespace A380409

/-- `A001414(n+1)+A380344(n+1)+A001414(n+1)` -/
def P7563414012526005060.Spec : Prop :=
  ∀ n, P7563414012526005060.a n = A380409 (n + 1)

theorem P7563414012526005060.correct : P7563414012526005060.Spec := by
  intro n
  simp only [A380409, Nat.add_sub_cancel, A380409.P7563414012526005060.a, A380409.P2904522340196299969.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A380344, A380344.P8003750175292629096.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380409

/-! ## A380409.P450674576551425395

`A331415(n+1)+A056239(n+1)+A003963(n+1)`
-/

namespace A380409.P450674576551425395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331415 (n + 1) + (A056239 (n + 1) + A003963 (n + 1))

end

end A380409.P450674576551425395

namespace A380409

/-- `A331415(n+1)+A056239(n+1)+A003963(n+1)` -/
def P450674576551425395.Spec : Prop :=
  ∀ n, P450674576551425395.a n = A380409 (n + 1)

theorem P450674576551425395.correct : P450674576551425395.Spec := by
  intro n
  simp only [A380409, Nat.add_sub_cancel, A380409.P450674576551425395.a, A380409.P2904522340196299969.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A331415, A331415.P4846081659728035053.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380409

/-! ## A380409.P5332979098013382924

`A003963(n+1)+A003963(n+1)-A380344(n+1)`
-/

namespace A380409.P5332979098013382924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + (A003963 (n + 1) - A380344 (n + 1))

end

end A380409.P5332979098013382924

namespace A380409

/-- `A003963(n+1)+A003963(n+1)-A380344(n+1)` -/
def P5332979098013382924.Spec : Prop :=
  ∀ n, P5332979098013382924.a n = A380409 (n + 1)

theorem P5332979098013382924.correct : P5332979098013382924.Spec := by
  intro n
  simp only [A380409, Nat.add_sub_cancel, A380409.P5332979098013382924.a, A380409.P2904522340196299969.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A380344, A380344.P8003750175292629096.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380409

/-! ## A380409.P14888007352931272116

`A075254(n+1)+A380344(n+1)-A075255(n+1)`
-/

namespace A380409.P14888007352931272116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) + (A380344 (n + 1) - A075255 (n + 1))

end

end A380409.P14888007352931272116

namespace A380409

/-- `A075254(n+1)+A380344(n+1)-A075255(n+1)` -/
def P14888007352931272116.Spec : Prop :=
  ∀ n, P14888007352931272116.a n = A380409 (n + 1)

theorem P14888007352931272116.correct : P14888007352931272116.Spec := by
  intro n
  simp only [A380409, Nat.add_sub_cancel, A380409.P14888007352931272116.a, A380409.P2904522340196299969.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A075254, A075254.P6422447875050144596.a, A075255, A075255.P12137973761347593222.a, A380344, A380344.P8003750175292629096.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380409

/-! ## A380409.P17265065234688066385

`A023443(A036288(n+1))+A290103(n+1)*A290104(n+1)`
-/

namespace A380409.P17265065234688066385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036288 (n + 1)).toNat + A290103 (n + 1) * A290104 (n + 1)

end

end A380409.P17265065234688066385

namespace A380409

/-- `A023443(A036288(n+1))+A290103(n+1)*A290104(n+1)` -/
def P17265065234688066385.Spec : Prop :=
  ∀ n, P17265065234688066385.a n = A380409 (n + 1)

end A380409

/-! ## A380409.P829974814511616866

`A324932(A324922(n+1)/(n+1))+A023443(A036288(n+1))`
-/

namespace A380409.P829974814511616866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (SequenceMachineLib.roundAway ((A324922 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat + A023443 (A036288 (n + 1)).toNat

end

end A380409.P829974814511616866

namespace A380409

/-- `A324932(A324922(n+1)/(n+1))+A023443(A036288(n+1))` -/
def P829974814511616866.Spec : Prop :=
  ∀ n, P829974814511616866.a n = A380409 (n + 1)

end A380409

/-!
# A380410: Numbers with greater product of prime indices than sum of prime factors.

The programs for A380410, there is no canonical definition to state claims against.
-/

/-! ## A380410.P17323352187474239144

`lt[0, A380344(n+1)]+1`
-/

namespace A380410.P17323352187474239144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380344 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A380410.P17323352187474239144

/-! ## A380410.P1629866932288414364

`lt[A001414(n+1), A003963(n+1)]+1`
-/

namespace A380410.P1629866932288414364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380410.P1629866932288414364

/-!
# A380412: First term of the n-th differences of the strict partition numbers. Inverse zero-based binomial transform of A000009.

The programs for A380412, there is no canonical definition to state claims against.
-/

/-! ## A380412.P5474428955473138416

`(-1)^n*A293467(n)`
-/

namespace A380412.P5474428955473138416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A293467 n

end

end A380412.P5474428955473138416

/-! ## A380412.P11584172350804119377

`A320591(n)-a(n-1)` with `a(0)=1`
-/

namespace A380412.P11584172350804119377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320591 n - a (n - 1)

end

end A380412.P11584172350804119377

/-! ## A380412.P7168551399916310450

`A293467(n)/A033999(n)`
-/

namespace A380412.P7168551399916310450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293467 n : ℚ) / (A033999 n : ℚ)

end

end A380412.P7168551399916310450

/-! ## A380412.P835446356848016608

`A293467(n)/∑[A280560(n)]`
-/

namespace A380412.P835446356848016608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293467 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A380412.P835446356848016608

/-! ## A380412.P13832358635182773594

`A293467(n)/A056594(2*n)`
-/

namespace A380412.P13832358635182773594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293467 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A380412.P13832358635182773594

/-!
# A380413: Terms appearing twice in A378086 (number of nonsquarefree numbers < prime(n)).

The programs for A380413, the canonical program `A380413.P10440904803708736813` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380413 has offset 1).

The definition of A380413 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068361, A378086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380413.P10440904803708736813

`A378086(A068361(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A380413

/-- `A378086(A068361(n+1))` -/
def P10440904803708736813.Spec : Prop :=
  ∀ n, P10440904803708736813.a n = A380413 (n + 1)

theorem P10440904803708736813.correct : P10440904803708736813.Spec := by
  intro n
  simp only [A380413, Nat.add_sub_cancel]

end A380413

/-! ## A380413.P12595788949061567671

`A057627(A061351(n))`
-/

namespace A380413.P12595788949061567671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A061351 n).toNat

end

end A380413.P12595788949061567671

namespace A380413

/-- `A057627(A061351(n))` -/
def P12595788949061567671.Spec : Prop :=
  ∀ n, P12595788949061567671.a n = A380413 (n + 1)

end A380413

/-! ## A380413.P7726560776612549155

`A124579(A378083(n+1))`
-/

namespace A380413.P7726560776612549155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124579 (A378083 (n + 1)).toNat

end

end A380413.P7726560776612549155

namespace A380413

/-- `A124579(A378083(n+1))` -/
def P7726560776612549155.Spec : Prop :=
  ∀ n, P7726560776612549155.a n = A380413 (n + 1)

end A380413

/-! ## A380413.P11002836071536372294

`A057627(A378083(n+1)-1)`
-/

namespace A380413.P11002836071536372294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A378083 (n + 1) - 1).toNat

end

end A380413.P11002836071536372294

namespace A380413

/-- `A057627(A378083(n+1)-1)` -/
def P11002836071536372294.Spec : Prop :=
  ∀ n, P11002836071536372294.a n = A380413 (n + 1)

end A380413

/-!
# A380416: Number of corona for a diamond of edge n with diamonds of side 1.

The programs for A380416, there is no canonical definition to state claims against.
-/

/-! ## A380416.P5666679189298726534

`2+(n+2)^4`
-/

namespace A380416.P5666679189298726534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + (n + 2) ^ 4

end

end A380416.P5666679189298726534

/-! ## A380416.P6801910977668249627

`or(2, (n+2)²²)`
-/

namespace A380416.P6801910977668249627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (((n + 2) ^ 2) ^ 2)

end

end A380416.P6801910977668249627

/-! ## A380416.P3605728222847089606

`xor(2, (n+2)²²)`
-/

namespace A380416.P3605728222847089606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (((n + 2) ^ 2) ^ 2)

end

end A380416.P3605728222847089606

/-! ## A380416.P4088508120738190360

`record[or(2, (2-n)^4)]`
-/

namespace A380416.P4088508120738190360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((2 - (n : ℤ)) ^ 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380416.P4088508120738190360

/-! ## A380416.P5608447236273155822

`record[xor(2, (2-n)^4)]`
-/

namespace A380416.P5608447236273155822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((2 - (n : ℤ)) ^ 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380416.P5608447236273155822

/-!
# A380417: Split A377091 into sublists consisting of runs of terms with the same sign. Then a(n) = 1 if terms (in absolute value) in the n-th sublist form an arithmetic progression with common difference 1, 0 otherwise.

The programs for A380417, there is no canonical definition to state claims against.
-/

/-! ## A380417.P5765046987594980458

`and(A341810(n+1), A380419(n+1))`
-/

namespace A380417.P5765046987594980458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A341810 (n + 1)) (A380419 (n + 1))

end

end A380417.P5765046987594980458

/-! ## A380417.P16120750813479048507

`and(A255686(n+1), A380419(n+1))`
-/

namespace A380417.P16120750813479048507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255686 (n + 1)) (A380419 (n + 1))

end

end A380417.P16120750813479048507

/-! ## A380417.P6011529243376971438

`and(A358067(n+1), A380419(n+1))`
-/

namespace A380417.P6011529243376971438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A358067 (n + 1)) (A380419 (n + 1))

end

end A380417.P6011529243376971438

/-! ## A380417.P10663395663208424023

`A267602(2*n+3)+A267598(n)`
-/

namespace A380417.P10663395663208424023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267602 (2 * n + 3) + A267598 n

end

end A380417.P10663395663208424023

/-! ## A380417.P18246176647274236164

`(floor(sqrt(n+2)+n)%2)^A003056(A002865(n))`
-/

namespace A380417.P18246176647274236164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ⌊Real.sqrt (n + 2 : ℝ) + (n : ℝ)⌋ 2 : ℚ) ^ (A003056 (A002865 n).toNat : ℤ)

end

end A380417.P18246176647274236164

/-!
# A380418: Split A377091 into sublists consisting of runs of terms with the same sign. Then a(n) = 1 if terms (in absolute value) in the n-th sublist form an arithmetic progression with common difference -1, 0 otherwise.

The programs for A380418, there is no canonical definition to state claims against.
-/

/-! ## A380418.P4537045256491021845

`A010054(A001175(3*n+5)*A229969(2*n+5))`
-/

namespace A380418.P4537045256491021845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A001175 (3 * n + 5) * A229969 (2 * n + 5)).toNat

end

end A380418.P4537045256491021845

/-! ## A380418.P5887181945860519593

`A010054(A065770(n+1)*A251632(n))`
-/

namespace A380418.P5887181945860519593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A065770 (n + 1) * A251632 n).toNat

end

end A380418.P5887181945860519593

/-! ## A380418.P8557717247890721907

`A129186(lcm(n, A345436(n+1)))`
-/

namespace A380418.P8557717247890721907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 (Int.lcm (n : ℤ) (A345436 (n + 1)))

end

end A380418.P8557717247890721907

/-! ## A380418.P7344147814684258409

`A053866(A369570(n)+A262545(n+1))`
-/

namespace A380418.P7344147814684258409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A369570 n + A262545 (n + 1)).toNat

end

end A380418.P7344147814684258409

/-! ## A380418.P16237454409885266730

`val(A222722(A121266(n)), A040028(n+1))`
-/

namespace A380418.P16237454409885266730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A222722 (A121266 (n + 10)).toNat).toNat (A040028 (n + 1)).toNat

end

end A380418.P16237454409885266730

/-! ## A380418.P5998481383577099931

`and(A003401(A162900(n+1)), A341540(n))`
-/

namespace A380418.P5998481383577099931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003401 (A162900 (n + 1)).toNat) (A341540 n)

end

end A380418.P5998481383577099931

/-! ## A380418.P17024941080271906577

`val(A008776(A112798(n+2)), A192519(n+1))`
-/

namespace A380418.P17024941080271906577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008776 (A112798 (n + 2)).toNat).toNat (A192519 (n + 1)).toNat

end

end A380418.P17024941080271906577

/-! ## A380418.P14389033639423946505

`val(A050420(A364350(n+3)), A050418(n+1))`
-/

namespace A380418.P14389033639423946505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050420 (A364350 (n + 3)).toNat).toNat (A050418 (n + 1)).toNat

end

end A380418.P14389033639423946505

/-! ## A380418.P7923991213352271069

`A326219(C(A000120(n+1), A379882(n+1)))`
-/

namespace A380418.P7923991213352271069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326219 (Nat.choose (A000120 (n + 1)).toNat (A379882 (n + 1)).toNat)

end

end A380418.P7923991213352271069

/-! ## A380418.P10549651950889610495

`val(A071238(3*(n+1)), A007916(A325337(n+1)))`
-/

namespace A380418.P10549651950889610495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071238 (3 * (n + 1))).toNat (A007916 (A325337 (n + 1)).toNat).toNat

end

end A380418.P10549651950889610495

/-!
# A380419: Split A377091 into sublists consisting of runs of terms with the same sign. Then a(n) = 1 if terms in the n-th sublist form an arithmetic progression with common difference 1 or -1, 0 otherwise.

The programs for A380419, there is no canonical definition to state claims against.
-/

/-! ## A380419.P12859428978757075847

`or(A380417(n+1), A380418(n+1))`
-/

namespace A380419.P12859428978757075847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A380417 (n + 1)) (A380418 (n + 1))

end

end A380419.P12859428978757075847

/-! ## A380419.P12117398855597172883

`C(A001222(A268448(n+1)), A158706(n+2))`
-/

namespace A380419.P12117398855597172883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A268448 (n + 1)).toNat).toNat (A158706 (n + 2)).toNat

end

end A380419.P12117398855597172883

/-! ## A380419.P10723905020624199455

`A010815(A240217(n+1))^A260492(n+2)`
-/

namespace A380419.P10723905020624199455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (A240217 (n + 1)).toNat : ℚ) ^ (A260492 (n + 2) : ℤ)

end

end A380419.P10723905020624199455

/-! ## A380419.P4980337274155616356

`A273129(A294877(2*n+1)+A067152(n+5))`
-/

namespace A380419.P4980337274155616356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273129 (A294877 (2 * n + 1) + A067152 (n + 5)).toNat

end

end A380419.P4980337274155616356

/-! ## A380419.P5647894311676093754

`A010054(lcm(A004173(n+3), A032766(n)))`
-/

namespace A380419.P5647894311676093754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.lcm (A004173 (n + 3)) (A032766 n))

end

end A380419.P5647894311676093754

/-!
# A380420: Positions of ones in A380417.

The programs for A380420, there is no canonical definition to state claims against.
-/

/-! ## A380420.P8784699122548192083

`lt[0, A380417(n+1)]+1`
-/

namespace A380420.P8784699122548192083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A380420.P8784699122548192083

/-! ## A380420.P18294436916965116598

`record[A000027(n+1)*A380417(n+1)]`
-/

namespace A380420.P18294436916965116598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A380417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380420.P18294436916965116598

/-! ## A380420.P8398612946929791432

`record[A038572(2*(n+1))*A380417(n+1)]`
-/

namespace A380420.P8398612946929791432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (2 * (n + 1)) * A380417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380420.P8398612946929791432

/-! ## A380420.P9221532562527065794

`lt[A062746(n+1), A325169(A337657(n+4))]`
-/

namespace A380420.P9221532562527065794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A337657 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380420.P9221532562527065794

/-!
# A380421: a(n) is the inverse of 2^3 modulo prime(n).

The programs for A380421, the canonical program `A380421.P2214143849344174104` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380421 has offset 2).

The definition of A380421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380421.P2214143849344174104

`A000326(A006254(n+1))%A000040(n+2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A380421

/-- `A000326(A006254(n+1))%A000040(n+2)` -/
def P2214143849344174104.Spec : Prop :=
  ∀ n, P2214143849344174104.a n = A380421 (n + 2)

theorem P2214143849344174104.correct : P2214143849344174104.Spec := by
  intro n
  simp only [A380421, Nat.add_sub_cancel]

end A380421

/-! ## A380421.P18223647762419153290

`A226786(p?[2*n+1])`
-/

namespace A380421.P18223647762419153290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226786 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A380421.P18223647762419153290

namespace A380421

/-- `A226786(p?[2*n+1])` -/
def P18223647762419153290.Spec : Prop :=
  ∀ n, P18223647762419153290.a n = A380421 (n + 2)

end A380421

/-! ## A380421.P13355677863622791992

`A226786(A065091(n+1))`
-/

namespace A380421.P13355677863622791992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226786 (A065091 (n + 1)).toNat

end

end A380421.P13355677863622791992

namespace A380421

/-- `A226786(A065091(n+1))` -/
def P13355677863622791992.Spec : Prop :=
  ∀ n, P13355677863622791992.a n = A380421 (n + 2)

end A380421

/-! ## A380421.P15744036213746781001

`A226786(A000040(n+2))`
-/

namespace A380421.P15744036213746781001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226786 (A000040 (n + 2)).toNat

end

end A380421.P15744036213746781001

namespace A380421

/-- `A226786(A000040(n+2))` -/
def P15744036213746781001.Spec : Prop :=
  ∀ n, P15744036213746781001.a n = A380421 (n + 2)

end A380421

/-! ## A380421.P13659821185905220264

`A226786(A006005(n+2))`
-/

namespace A380421.P13659821185905220264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226786 (A006005 (n + 2)).toNat

end

end A380421.P13659821185905220264

namespace A380421

/-- `A226786(A006005(n+2))` -/
def P13659821185905220264.Spec : Prop :=
  ∀ n, P13659821185905220264.a n = A380421 (n + 2)

end A380421

/-! ## A380421.P6802703110910871726

`A226786(A160656(n+2))`
-/

namespace A380421.P6802703110910871726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226786 (A160656 (n + 2)).toNat

end

end A380421.P6802703110910871726

namespace A380421

/-- `A226786(A160656(n+2))` -/
def P6802703110910871726.Spec : Prop :=
  ∀ n, P6802703110910871726.a n = A380421 (n + 2)

end A380421

/-!
# A380422: Positions of ones in A380418.

The programs for A380422, there is no canonical definition to state claims against.
-/

/-! ## A380422.P13062284783840683767

`lt[0, A380418(n+1)]+1`
-/

namespace A380422.P13062284783840683767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A380422.P13062284783840683767

/-! ## A380422.P16386783786001626390

`record[A000027(n+1)*A380418(n+1)]`
-/

namespace A380422.P16386783786001626390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A380418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380422.P16386783786001626390

/-! ## A380422.P14702530607973316540

`filter[A380423(n+1), A380418(#)]`
-/

namespace A380422.P14702530607973316540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380418 (f1 j).toNat = 1) n)

end

end A380422.P14702530607973316540

/-!
# A380423: Positions of ones in A380419.

The programs for A380423, there is no canonical definition to state claims against.
-/

/-! ## A380423.P15904935886288616843

`eq[1, A380419(n+1)]+1`
-/

namespace A380423.P15904935886288616843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380423.P15904935886288616843

/-! ## A380423.P17302691286655111809

`∪[A380420(n+1), A380422(n+1)]`
-/

namespace A380423.P17302691286655111809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380423.P17302691286655111809

/-! ## A380423.P11794577853844813168

`record[A000027(n+1)*A380419(n+1)]`
-/

namespace A380423.P11794577853844813168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A380419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380423.P11794577853844813168

/-! ## A380423.P1917879701145022544

`record[A036234(n+1)*A380419(A036234(n+1))]`
-/

namespace A380423.P1917879701145022544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) * A380419 (A036234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380423.P1917879701145022544

/-!
# A380425: E.g.f. A(x) satisfies A(x) = exp( 2 * x * A(x)^(1/2) * exp(x * A(x)^(1/2)) ).

The programs for A380425, there is no canonical definition to state claims against.
-/

/-! ## A380425.P8177219936313738916

`A030101(n)+A004273(A256016(n))`
-/

namespace A380425.P8177219936313738916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + A004273 (A256016 n).toNat

end

end A380425.P8177219936313738916

/-!
# A380426: E.g.f. A(x) satisfies A(x) = exp( 3 * x * A(x)^(1/3) * exp(x * A(x)^(1/3)) ).

The programs for A380426, there is no canonical definition to state claims against.
-/

/-! ## A380426.P2237286455683648152

`A020908(C(A081294(n)+2, 2))`
-/

namespace A380426.P2237286455683648152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020908 (Nat.choose (A081294 n + 2).toNat 2)

end

end A380426.P2237286455683648152

/-!
# A380427: E.g.f. A(x) satisfies A(x) = exp( -x/A(x) * exp(x/A(x)) ).

The programs for A380427, there is no canonical definition to state claims against.
-/

/-! ## A380427.P8722898703833412868

`A000038(round(∑[10^((n-1)%(n+2))]))-A000275(n)`
-/

namespace A380427.P8722898703833412868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A000275 n

end

end A380427.P8722898703833412868

/-!
# A380429: Ulam numbers sandwiched between twin prime numbers.

The programs for A380429, there is no canonical definition to state claims against.
-/

/-! ## A380429.P14251935195003258918

`∩[A014574(n+1), A382798(n+1)]`
-/

namespace A380429.P14251935195003258918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380429.P14251935195003258918

/-! ## A380429.P16351350813768725679

`∩[A056853(n+1), A382798(n+1)]`
-/

namespace A380429.P16351350813768725679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380429.P16351350813768725679

/-! ## A380429.P9674748101598275788

`∩[A217259(n+1), A382798(n+1)]`
-/

namespace A380429.P9674748101598275788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380429.P9674748101598275788

/-! ## A380429.P6882650406807531015

`∩[A002858(n+1), A014574(n+1)]`
-/

namespace A380429.P6882650406807531015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380429.P6882650406807531015

/-! ## A380429.P3707318510289732428

`∩[A002858(n+1), A217259(n+1)]`
-/

namespace A380429.P3707318510289732428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380429.P3707318510289732428

/-! ## A380429.P14291323821769739794

`∩[A242040(n+1), A382798(n+1)]`
-/

namespace A380429.P14291323821769739794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380429.P14291323821769739794

/-!
# A380430: Number of powerful numbers k that are not powers of primes (i.e., k is in A286708) that do not exceed the primorial number A002110(n).

The programs for A380430, there is no canonical definition to state claims against.
-/

/-! ## A380430.P10906569630114484608

`A137722(A148972(n))`
-/

namespace A380430.P10906569630114484608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137722 (A148972 n).toNat

end

end A380430.P10906569630114484608

/-! ## A380430.P14114533273970530961

`xor(A375590(A382367(n)), A383828(n))`
-/

namespace A380430.P14114533273970530961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A375590 (A382367 n).toNat) (A383828 n)

end

end A380430.P14114533273970530961

/-! ## A380430.P17898073420531947868

`A033987(A077365(n+1))%A353180(n)`
-/

namespace A380430.P17898073420531947868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033987 (A077365 (n + 1)).toNat) (A353180 n)

end

end A380430.P17898073420531947868

/-!
# A380433: Numbers that are a sum of both four and six consecutive prime numbers.

The programs for A380433, there is no canonical definition to state claims against.
-/

/-! ## A380433.P11274035976113755378

`∩[A034963(n+1), A127333(n+1)]`
-/

namespace A380433.P11274035976113755378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380433.P11274035976113755378

/-! ## A380433.P3997028054416066765

`∩[A127333(n+1), A007504(n+4)-A007504(n)]`
-/

namespace A380433.P3997028054416066765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 4) - A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380433.P3997028054416066765

/-! ## A380433.P4844727654958266603

`∩[A127333(n+1), A034961(n+2)+A000040(n+1)]`
-/

namespace A380433.P4844727654958266603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 2) + A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380433.P4844727654958266603

/-! ## A380433.P2806626971968800565

`∩[A034961(n+1)+A004139(n+2), A127333(n+1)]`
-/

namespace A380433.P2806626971968800565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A004139 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380433.P2806626971968800565

/-! ## A380433.P10724595254111355753

`∩[A096277(n+1)+A031131(n+2), A127333(n+1)]`
-/

namespace A380433.P10724595254111355753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096277 (n + 1) + A031131 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380433.P10724595254111355753

/-!
# A380435: Erase digit 0 from decimal expansion of n. Then repeatedly apply the number of divisor function (A000005) onto each digit until a stationary value is reached. a(n) is the final stationary value (if it is reached for all digits).

The programs for A380435, there is no canonical definition to state claims against.
-/

/-! ## A380435.P13370751995415630839

`A171818(A380375(n+1))`
-/

namespace A380435.P13370751995415630839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171818 (A380375 (n + 1)).toNat

end

end A380435.P13370751995415630839

/-! ## A380435.P10146144233785447162

`A171818(A004151(n+1))`
-/

namespace A380435.P10146144233785447162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171818 (A004151 (n + 1)).toNat

end

end A380435.P10146144233785447162

/-! ## A380435.P224286555179590350

`A171818(A004719(n+1))`
-/

namespace A380435.P224286555179590350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171818 (A004719 (n + 1)).toNat

end

end A380435.P224286555179590350

/-!
# A380438: Integers k that are the product of 3 distinct primes, the smallest of which is larger than the 5th root of k: k = p*q*r, where p, q, r are primes and k^(1/5) < p < q < r.

The programs for A380438, there is no canonical definition to state claims against.
-/

/-! ## A380438.P11032780771442765232

`∩[A143118(n+1), A164596(n+1)]`
-/

namespace A380438.P11032780771442765232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380438.P11032780771442765232

/-!
# A380439: a(n) = 1 if A003557(n)^2 > n, otherwise 0, where A003557(n) is n divided by its squarefree kernel.

The programs for A380439, the canonical program `A380439.P12920491698543119439` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380439 has offset 1).

The definition of A380439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380439.P12920491698543119439

`char[lt[∏{p}[n+1, #²], n]]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A380439

/-- `char[lt[∏{p}[n+1, #²], n]]` -/
def P12920491698543119439.Spec : Prop :=
  ∀ n, (P12920491698543119439.a n : ℤ) = A380439 (n + 1)

theorem P12920491698543119439.correct : P12920491698543119439.Spec := by
  intro n
  simp only [A380439, Nat.add_sub_cancel]

end A380439

/-! ## A380439.P14507659288982066706

`C(2, A341592(n+1)+2)`
-/

namespace A380439.P14507659288982066706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A341592 (n + 1) + 2).toNat

end

end A380439.P14507659288982066706

namespace A380439

/-- `C(2, A341592(n+1)+2)` -/
def P14507659288982066706.Spec : Prop :=
  ∀ n, (P14507659288982066706.a n : ℤ) = A380439 (n + 1)

end A380439

/-! ## A380439.P17139596522847551136

`char[lt[A007947(n+1)², n]]`
-/

namespace A380439.P17139596522847551136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A380439.P17139596522847551136

namespace A380439

/-- `char[lt[A007947(n+1)², n]]` -/
def P17139596522847551136.Spec : Prop :=
  ∀ n, (P17139596522847551136.a n : ℤ) = A380439 (n + 1)

end A380439

/-! ## A380439.P7504411979560465897

`A057428(A341592(n+1))+1`
-/

namespace A380439.P7504411979560465897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A341592 (n + 1)).toNat + 1

end

end A380439.P7504411979560465897

namespace A380439

/-- `A057428(A341592(n+1))+1` -/
def P7504411979560465897.Spec : Prop :=
  ∀ n, P7504411979560465897.a n = A380439 (n + 1)

end A380439

/-! ## A380439.P12704157427481873132

`A380440(n+1)-A227291(n+1)`
-/

namespace A380439.P12704157427481873132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380440 (n + 1) - A227291 (n + 1)

end

end A380439.P12704157427481873132

namespace A380439

/-- `A380440(n+1)-A227291(n+1)` -/
def P12704157427481873132.Spec : Prop :=
  ∀ n, P12704157427481873132.a n = A380439 (n + 1)

theorem P12704157427481873132.correct : P12704157427481873132.Spec := by
  intro n
  simp only [A380439, Nat.add_sub_cancel, A380439.P12704157427481873132.a, A380439.P12920491698543119439.f3, A380439.P12920491698543119439.f2, A380439.P12920491698543119439.f4, A380439.P12920491698543119439.f1, A380439.P12920491698543119439.a, A227291, A227291.P15541895303528652524.a, A380440, A380440.P5442109127590069685.a, A000196, A000196.P15434771586934192083.a, A008966, A008966.P884693903657889754.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380439

/-! ## A380439.P2958731626242305414

`A259387(n+1)%A053150(n+1)`
-/

namespace A380439.P2958731626242305414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259387 (n + 1)) (A053150 (n + 1))

end

end A380439.P2958731626242305414

namespace A380439

/-- `A259387(n+1)%A053150(n+1)` -/
def P2958731626242305414.Spec : Prop :=
  ∀ n, P2958731626242305414.a n = A380439 (n + 1)

end A380439

/-!
# A380440: a(n) = 1 if n has no squarefree divisor d such that d^2 > n, otherwise 0.

The programs for A380440, the canonical program `A380440.P5442109127590069685` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380440 has offset 1).

The definition of A380440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380440.P15412742202236093916

`char[lt[∏{p}[n+1, #]-1, (n+1)/∏{p}[n+1, #]]]`
-/

namespace A380440.P15412742202236093916
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f5 n), p : ℕ) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A380440.P15412742202236093916

namespace A380440

/-- `char[lt[∏{p}[n+1, #]-1, (n+1)/∏{p}[n+1, #]]]` -/
def P15412742202236093916.Spec : Prop :=
  ∀ n, (P15412742202236093916.a n : ℤ) = A380440 (n + 1)

end A380440

/-! ## A380440.P18307495490286815106

`char[A341645(n+1)-1]`
-/

namespace A380440.P18307495490286815106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380440.P18307495490286815106

namespace A380440

/-- `char[A341645(n+1)-1]` -/
def P18307495490286815106.Spec : Prop :=
  ∀ n, (P18307495490286815106.a n : ℤ) = A380440 (n + 1)

end A380440

/-! ## A380440.P1139943662188695821

`C(2, A341595(n+1)+2)`
-/

namespace A380440.P1139943662188695821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A341595 (n + 1) + 2).toNat

end

end A380440.P1139943662188695821

namespace A380440

/-- `C(2, A341595(n+1)+2)` -/
def P1139943662188695821.Spec : Prop :=
  ∀ n, (P1139943662188695821.a n : ℤ) = A380440 (n + 1)

end A380440

/-! ## A380440.P17028206510687889656

`A000007(A341595(n+1))`
-/

namespace A380440.P17028206510687889656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A341595 (n + 1)).toNat

end

end A380440.P17028206510687889656

namespace A380440

/-- `A000007(A341595(n+1))` -/
def P17028206510687889656.Spec : Prop :=
  ∀ n, P17028206510687889656.a n = A380440 (n + 1)

end A380440

/-! ## A380440.P5442109127590069685

`A380439(n+1)+A227291(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A380440

/-- `A380439(n+1)+A227291(n+1)` -/
def P5442109127590069685.Spec : Prop :=
  ∀ n, P5442109127590069685.a n = A380440 (n + 1)

theorem P5442109127590069685.correct : P5442109127590069685.Spec := by
  intro n
  simp only [A380440, Nat.add_sub_cancel]

end A380440

/-! ## A380440.P4744434271474183027

`char[n%A003557(n+1)²]`
-/

namespace A380440.P4744434271474183027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A003557 (n + 1) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380440.P4744434271474183027

namespace A380440

/-- `char[n%A003557(n+1)²]` -/
def P4744434271474183027.Spec : Prop :=
  ∀ n, (P4744434271474183027.a n : ℤ) = A380440 (n + 1)

end A380440

/-! ## A380440.P10294840821775581118

`A010054(A000430(n+4)*A341595(n+1))`
-/

namespace A380440.P10294840821775581118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000430 (n + 4) * A341595 (n + 1)).toNat

end

end A380440.P10294840821775581118

namespace A380440

/-- `A010054(A000430(n+4)*A341595(n+1))` -/
def P10294840821775581118.Spec : Prop :=
  ∀ n, P10294840821775581118.a n = A380440 (n + 1)

end A380440

/-! ## A380440.P18317428358824457750

`A341595((n+1)²)^A341595(n+1)`
-/

namespace A380440.P18317428358824457750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341595 ((n + 1) ^ 2) : ℚ) ^ (A341595 (n + 1) : ℤ)

end

end A380440.P18317428358824457750

namespace A380440

/-- `A341595((n+1)²)^A341595(n+1)` -/
def P18317428358824457750.Spec : Prop :=
  ∀ n, P18317428358824457750.a n = (A380440 (n + 1) : ℚ)

end A380440

/-! ## A380440.P4455501745469269892

`A370256(A057523(A036966(n+1))+n)`
-/

namespace A380440.P4455501745469269892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370256 (A057523 (A036966 (n + 1)).toNat + (n : ℤ)).toNat

end

end A380440.P4455501745469269892

namespace A380440

/-- `A370256(A057523(A036966(n+1))+n)` -/
def P4455501745469269892.Spec : Prop :=
  ∀ n, P4455501745469269892.a n = A380440 (n + 1)

end A380440

/-! ## A380440.P16638489962526835895

`C(A066715(A093773(n+1)), A063956(n+1))`
-/

namespace A380440.P16638489962526835895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066715 (A093773 (n + 1)).toNat).toNat (A063956 (n + 1)).toNat

end

end A380440.P16638489962526835895

namespace A380440

/-- `C(A066715(A093773(n+1)), A063956(n+1))` -/
def P16638489962526835895.Spec : Prop :=
  ∀ n, (P16638489962526835895.a n : ℤ) = A380440 (n + 1)

end A380440

/-!
# A380441: Sum of the nonprimes dividing n and the number of distinct primes dividing n.

The programs for A380441, the canonical program `A380441.P1716721751457761727` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380441 has offset 1).

The definition of A380441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A023890, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380441.P1716721751457761727

`A023890(n+1)+A001221(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A380441

/-- `A023890(n+1)+A001221(n+1)` -/
def P1716721751457761727.Spec : Prop :=
  ∀ n, P1716721751457761727.a n = A380441 (n + 1)

theorem P1716721751457761727.correct : P1716721751457761727.Spec := by
  intro n
  simp only [A380441, Nat.add_sub_cancel]

end A380441

/-! ## A380441.P7646671255673569828

`A000203(n+1)-A008472(n+1)+A001221(n+1)`
-/

namespace A380441.P7646671255673569828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008472 (n + 1) + A001221 (n + 1)

end

end A380441.P7646671255673569828

namespace A380441

/-- `A000203(n+1)-A008472(n+1)+A001221(n+1)` -/
def P7646671255673569828.Spec : Prop :=
  ∀ n, P7646671255673569828.a n = A380441 (n + 1)

end A380441

/-! ## A380441.P3409231869935299548

`∑{d}[n+1, A005451(#)]`
-/

namespace A380441.P3409231869935299548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005451 d

end

end A380441.P3409231869935299548

namespace A380441

/-- `∑{d}[n+1, A005451(#)]` -/
def P3409231869935299548.Spec : Prop :=
  ∀ n, P3409231869935299548.a n = A380441 (n + 1)

end A380441

/-! ## A380441.P1734360812131271592

`A083399(n+1)+A023891(n+1)`
-/

namespace A380441.P1734360812131271592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) + A023891 (n + 1)

end

end A380441.P1734360812131271592

namespace A380441

/-- `A083399(n+1)+A023891(n+1)` -/
def P1734360812131271592.Spec : Prop :=
  ∀ n, P1734360812131271592.a n = A380441 (n + 1)

theorem P1734360812131271592.correct : P1734360812131271592.Spec := by
  intro n
  simp only [A380441, Nat.add_sub_cancel, A380441.P1734360812131271592.a, A380441.P1716721751457761727.a, A001221, A001221.P10258181745752134128.a, A023890, A023890.P4514850295399263827.a, A023891, A023891.P8679455862173637145.a, A083399, A083399.P16148020281325742632.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055212, A055212.P14412881054625885538.a, A059841, A059841.P7264174615531153985.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380441

/-! ## A380441.P11684656346349213455

`A000203(n+1)-A055631(n+1)`
-/

namespace A380441.P11684656346349213455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A055631 (n + 1)

end

end A380441.P11684656346349213455

namespace A380441

/-- `A000203(n+1)-A055631(n+1)` -/
def P11684656346349213455.Spec : Prop :=
  ∀ n, P11684656346349213455.a n = A380441 (n + 1)

theorem P11684656346349213455.correct : P11684656346349213455.Spec := by
  intro n
  simp only [A380441, Nat.add_sub_cancel, A380441.P11684656346349213455.a, A380441.P1716721751457761727.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A023890, A023890.P4514850295399263827.a, A055631, A055631.P8885936990558110793.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380441

/-! ## A380441.P14480292657309808879

`A007503(n+1)-A349215(n+1)`
-/

namespace A380441.P14480292657309808879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A349215 (n + 1)

end

end A380441.P14480292657309808879

namespace A380441

/-- `A007503(n+1)-A349215(n+1)` -/
def P14480292657309808879.Spec : Prop :=
  ∀ n, P14480292657309808879.a n = A380441 (n + 1)

theorem P14480292657309808879.correct : P14480292657309808879.Spec := by
  intro n
  simp only [A380441, Nat.add_sub_cancel, A380441.P14480292657309808879.a, A380441.P1716721751457761727.a, A001221, A001221.P10258181745752134128.a, A007503, A007503.P13484425310514315912.a, A023890, A023890.P4514850295399263827.a, A349215, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A059841, A059841.P7264174615531153985.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380441

/-! ## A380441.P9942012786302817834

`A380457(n+1)-A008472(n+1)`
-/

namespace A380441.P9942012786302817834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380457 (n + 1) - A008472 (n + 1)

end

end A380441.P9942012786302817834

namespace A380441

/-- `A380457(n+1)-A008472(n+1)` -/
def P9942012786302817834.Spec : Prop :=
  ∀ n, P9942012786302817834.a n = A380441 (n + 1)

theorem P9942012786302817834.correct : P9942012786302817834.Spec := by
  intro n
  simp only [A380441, Nat.add_sub_cancel, A380441.P9942012786302817834.a, A380441.P1716721751457761727.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, A380457, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380441

/-! ## A380441.P5217506044771518331

`A155085(n+1)-A332775(n+1)`
-/

namespace A380441.P5217506044771518331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A332775 (n + 1)

end

end A380441.P5217506044771518331

namespace A380441

/-- `A155085(n+1)-A332775(n+1)` -/
def P5217506044771518331.Spec : Prop :=
  ∀ n, P5217506044771518331.a n = A380441 (n + 1)

theorem P5217506044771518331.correct : P5217506044771518331.Spec := by
  intro n
  simp only [A380441, Nat.add_sub_cancel, A380441.P5217506044771518331.a, A380441.P1716721751457761727.a, A001221, A001221.P10258181745752134128.a, A023890, A023890.P4514850295399263827.a, A155085, A155085.P2440965829929837208.a, A332775, A332775.P17459528584474244674.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380441

/-! ## A380441.P15453838442713521431

`A001221(n+1)+A284117(n+1)+A178637(n+1)`
-/

namespace A380441.P15453838442713521431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A284117 (n + 1) + A178637 (n + 1))

end

end A380441.P15453838442713521431

namespace A380441

/-- `A001221(n+1)+A284117(n+1)+A178637(n+1)` -/
def P15453838442713521431.Spec : Prop :=
  ∀ n, P15453838442713521431.a n = A380441 (n + 1)

end A380441

/-!
# A380443: a(n) = numerator(b(n)), where b(n) = b(n/2)/2 for n even and 1 - b((n-1)/2)/2 for n odd with b(1) = 1.

The programs for A380443, the canonical program `A380443.P17503996144246579122` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380443 has offset 1).

The definition of A380443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380443.P15252764875902762560

`or(1, A006068(A030109(n+1)))`
-/

namespace A380443.P15252764875902762560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006068 (A030109 (n + 1)).toNat)

end

end A380443.P15252764875902762560

namespace A380443

/-- `or(1, A006068(A030109(n+1)))` -/
def P15252764875902762560.Spec : Prop :=
  ∀ n, P15252764875902762560.a n = A380443 (n + 1)

end A380443

/-! ## A380443.P10104687097099657057

`A119608(A066194(n+2))`
-/

namespace A380443.P10104687097099657057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (A066194 (n + 2)).toNat

end

end A380443.P10104687097099657057

namespace A380443

/-- `A119608(A066194(n+2))` -/
def P10104687097099657057.Spec : Prop :=
  ∀ n, P10104687097099657057.a n = A380443 (n + 1)

end A380443

/-! ## A380443.P17503996144246579122

`A004525(A378299(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380443

/-- `A004525(A378299(n+1))` -/
def P17503996144246579122.Spec : Prop :=
  ∀ n, P17503996144246579122.a n = A380443 (n + 1)

theorem P17503996144246579122.correct : P17503996144246579122.Spec := by
  intro n
  simp only [A380443, Nat.add_sub_cancel]

end A380443

/-! ## A380443.P5968214672426524659

`A131271(n)-A092436(n+1)`
-/

namespace A380443.P5968214672426524659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131271 n - A092436 (n + 1)

end

end A380443.P5968214672426524659

namespace A380443

/-- `A131271(n)-A092436(n+1)` -/
def P5968214672426524659.Spec : Prop :=
  ∀ n, P5968214672426524659.a n = A380443 (n + 1)

end A380443

/-! ## A380443.P4409096826800445601

`A105670(A049773(n+1))`
-/

namespace A380443.P4409096826800445601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (A049773 (n + 1)).toNat

end

end A380443.P4409096826800445601

namespace A380443

/-- `A105670(A049773(n+1))` -/
def P4409096826800445601.Spec : Prop :=
  ∀ n, P4409096826800445601.a n = A380443 (n + 1)

end A380443

/-!
# A380444: Sum of the nonprimes dividing n and the squares of the primes dividing n.

The programs for A380444, the canonical program `A380444.P14151293279187532113` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380444 has offset 1).

The definition of A380444 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A023890, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380444.P14151293279187532113

`A023890(n+1)+A005063(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A380444

/-- `A023890(n+1)+A005063(n+1)` -/
def P14151293279187532113.Spec : Prop :=
  ∀ n, P14151293279187532113.a n = A380444 (n + 1)

theorem P14151293279187532113.correct : P14151293279187532113.Spec := by
  intro n
  simp only [A380444, Nat.add_sub_cancel]

end A380444

/-! ## A380444.P8902146313720752095

`∑{d}[n+1, #*A089026(#)]`
-/

namespace A380444.P8902146313720752095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A089026 d

end

end A380444.P8902146313720752095

namespace A380444

/-- `∑{d}[n+1, #*A089026(#)]` -/
def P8902146313720752095.Spec : Prop :=
  ∀ n, P8902146313720752095.a n = A380444 (n + 1)

end A380444

/-! ## A380444.P1963470553995519763

`A005063(n+1)+∑{d}[n+1, A191558(#)]`
-/

namespace A380444.P1963470553995519763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A191558 d

end

end A380444.P1963470553995519763

namespace A380444

/-- `A005063(n+1)+∑{d}[n+1, A191558(#)]` -/
def P1963470553995519763.Spec : Prop :=
  ∀ n, P1963470553995519763.a n = A380444 (n + 1)

end A380444

/-! ## A380444.P3922918642088738405

`A005063(n+1)+∑{d}[n+1, #]-A008475(∏{p}[n+1, #])`
-/

namespace A380444.P3922918642088738405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A008475 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A380444.P3922918642088738405

namespace A380444

/-- `A005063(n+1)+∑{d}[n+1, #]-A008475(∏{p}[n+1, #])` -/
def P3922918642088738405.Spec : Prop :=
  ∀ n, P3922918642088738405.a n = A380444 (n + 1)

end A380444

/-! ## A380444.P9737306699695516101

`A005063(n+1)+A280292(n+1)+A086665(n+1)`
-/

namespace A380444.P9737306699695516101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) + (A280292 (n + 1) + A086665 (n + 1))

end

end A380444.P9737306699695516101

namespace A380444

/-- `A005063(n+1)+A280292(n+1)+A086665(n+1)` -/
def P9737306699695516101.Spec : Prop :=
  ∀ n, P9737306699695516101.a n = A380444 (n + 1)

theorem P9737306699695516101.correct : P9737306699695516101.Spec := by
  intro n
  simp only [A380444, Nat.add_sub_cancel, A380444.P9737306699695516101.a, A380444.P14151293279187532113.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A023890, A023890.P4514850295399263827.a, A086665, A086665.P3185455482541912894.a, A280292, A280292.P17147228295463227534.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380444

/-! ## A380444.P2640443904308915086

`A005063(n+1)+A367175(n+1)+A008472(n+1)`
-/

namespace A380444.P2640443904308915086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) + (A367175 (n + 1) + A008472 (n + 1))

end

end A380444.P2640443904308915086

namespace A380444

/-- `A005063(n+1)+A367175(n+1)+A008472(n+1)` -/
def P2640443904308915086.Spec : Prop :=
  ∀ n, P2640443904308915086.a n = A380444 (n + 1)

theorem P2640443904308915086.correct : P2640443904308915086.Spec := by
  intro n
  simp only [A380444, Nat.add_sub_cancel, A380444.P2640443904308915086.a, A380444.P14151293279187532113.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, A367175, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380444

/-! ## A380444.P825041616224471712

`A005063(n+1)+A206773(n+1)+A191558(n+1)`
-/

namespace A380444.P825041616224471712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) + (A206773 (n + 1) + A191558 (n + 1))

end

end A380444.P825041616224471712

namespace A380444

/-- `A005063(n+1)+A206773(n+1)+A191558(n+1)` -/
def P825041616224471712.Spec : Prop :=
  ∀ n, P825041616224471712.a n = A380444 (n + 1)

theorem P825041616224471712.correct : P825041616224471712.Spec := by
  intro n
  simp only [A380444, Nat.add_sub_cancel, A380444.P825041616224471712.a, A380444.P14151293279187532113.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A023890, A023890.P4514850295399263827.a, A191558, A191558.P14009675995309042097.a, A206773, A206773.P1039150232301474807.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A061397, A061397.P17730824645895443051.a, A105221, A105221.P17719623874901943766.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A380444

/-! ## A380444.P441491459925488106

`A005063(n+1)+A284118(n+1)+A162296(n+1)`
-/

namespace A380444.P441491459925488106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) + (A284118 (n + 1) + A162296 (n + 1))

end

end A380444.P441491459925488106

namespace A380444

/-- `A005063(n+1)+A284118(n+1)+A162296(n+1)` -/
def P441491459925488106.Spec : Prop :=
  ∀ n, P441491459925488106.a n = A380444 (n + 1)

end A380444

/-! ## A380444.P6639548961459003223

`A005063(n+1)+A284117(n+1)+A178637(n+1)`
-/

namespace A380444.P6639548961459003223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) + (A284117 (n + 1) + A178637 (n + 1))

end

end A380444.P6639548961459003223

namespace A380444

/-- `A005063(n+1)+A284117(n+1)+A178637(n+1)` -/
def P6639548961459003223.Spec : Prop :=
  ∀ n, P6639548961459003223.a n = A380444 (n + 1)

end A380444

/-! ## A380444.P1973578692183159276

`A005063(n+1)+A000203(n+1)-A008472(n+1)`
-/

namespace A380444.P1973578692183159276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) + (A000203 (n + 1) - A008472 (n + 1))

end

end A380444.P1973578692183159276

namespace A380444

/-- `A005063(n+1)+A000203(n+1)-A008472(n+1)` -/
def P1973578692183159276.Spec : Prop :=
  ∀ n, P1973578692183159276.a n = A380444 (n + 1)

theorem P1973578692183159276.correct : P1973578692183159276.Spec := by
  intro n
  simp only [A380444, Nat.add_sub_cancel, A380444.P1973578692183159276.a, A380444.P14151293279187532113.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380444

/-! ## A380444.P17262367306577868162

`A001157(n+1)+A023890(n+1)-A189120(n+1)`
-/

namespace A380444.P17262367306577868162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + (A023890 (n + 1) - A189120 (n + 1))

end

end A380444.P17262367306577868162

namespace A380444

/-- `A001157(n+1)+A023890(n+1)-A189120(n+1)` -/
def P17262367306577868162.Spec : Prop :=
  ∀ n, P17262367306577868162.a n = A380444 (n + 1)

theorem P17262367306577868162.correct : P17262367306577868162.Spec := by
  intro n
  simp only [A380444, Nat.add_sub_cancel, A380444.P17262367306577868162.a, A380444.P14151293279187532113.a, A001157, A001157.P6892814788348726787.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A023890, A023890.P4514850295399263827.a, A189120, A189120.P13109880559421340591.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380444

/-! ## A380444.P10240605625468210909

`A005063(n+1)+A380441(n+1)-A001221(n+1)`
-/

namespace A380444.P10240605625468210909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) + (A380441 (n + 1) - A001221 (n + 1))

end

end A380444.P10240605625468210909

namespace A380444

/-- `A005063(n+1)+A380441(n+1)-A001221(n+1)` -/
def P10240605625468210909.Spec : Prop :=
  ∀ n, P10240605625468210909.a n = A380444 (n + 1)

theorem P10240605625468210909.correct : P10240605625468210909.Spec := by
  intro n
  simp only [A380444, Nat.add_sub_cancel, A380444.P10240605625468210909.a, A380444.P14151293279187532113.a, A001221, A001221.P10258181745752134128.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A023890, A023890.P4514850295399263827.a, A380441, A380441.P1716721751457761727.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380444

/-! ## A380444.P14457657101336581571

`A005063(n+1)+A351827(n+1)-A034387(n+1)`
-/

namespace A380444.P14457657101336581571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) + (A351827 (n + 1) - A034387 (n + 1))

end

end A380444.P14457657101336581571

namespace A380444

/-- `A005063(n+1)+A351827(n+1)-A034387(n+1)` -/
def P14457657101336581571.Spec : Prop :=
  ∀ n, P14457657101336581571.a n = A380444 (n + 1)

end A380444

/-! ## A380444.P6164331533070430060

`∑{d}[n+1, A103164(#)]`
-/

namespace A380444.P6164331533070430060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A103164 d

end

end A380444.P6164331533070430060

namespace A380444

/-- `∑{d}[n+1, A103164(#)]` -/
def P6164331533070430060.Spec : Prop :=
  ∀ n, P6164331533070430060.a n = A380444 (n + 1)

end A380444

/-!
# A380445: a(n) = 10*binomial(n,5) + 6*binomial(n,4) + binomial(n,3) + binomial(n,2).

The programs for A380445, the canonical program `A380445.P13803431467737927979` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380445 has offset 0).

The definition of A380445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*C(n, 5)+6*C(n, 4)+C(n, 3)+C(n, 2)` (program `A380445.P13803431467737927979`, by `A380445.P13803431467737927979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A380445.P13803431467737927979

`10*C(n, 5)+6*C(n, 4)+C(n, 3)+C(n, 2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A380445

/-- `10*C(n, 5)+6*C(n, 4)+C(n, 3)+C(n, 2)` -/
def P13803431467737927979.Spec : Prop :=
  ∀ n, (P13803431467737927979.a n : ℤ) = A380445 n

theorem P13803431467737927979.correct : P13803431467737927979.Spec := by
  intro n
  simp only [A380445]

end A380445

/-! ## A380445.P7153693712856473084

`n*(n-1)*(n*(n*(n-6)+13)-4)/12`
-/

namespace A380445.P7153693712856473084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 6) + 13) - 4) : ℚ) / 12

end

end A380445.P7153693712856473084

namespace A380445

/-- `n*(n-1)*(n*(n*(n-6)+13)-4)/12` -/
def P7153693712856473084.Spec : Prop :=
  ∀ n, P7153693712856473084.a n = (A380445 n : ℚ)

theorem P7153693712856473084.correct : P7153693712856473084.Spec := by
  intro n
  simp only [A380445, Nat.add_sub_cancel, A380445.P7153693712856473084.a, A380445.P13803431467737927979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380445

/-! ## A380445.P1693323203775039613

`A361474(n)-A007290(n)`
-/

namespace A380445.P1693323203775039613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361474 n - A007290 n

end

end A380445.P1693323203775039613

namespace A380445

/-- `A361474(n)-A007290(n)` -/
def P1693323203775039613.Spec : Prop :=
  ∀ n, P1693323203775039613.a n = A380445 n

theorem P1693323203775039613.correct : P1693323203775039613.Spec := by
  intro n
  simp only [A380445, Nat.add_sub_cancel, A380445.P1693323203775039613.a, A380445.P13803431467737927979.a, A007290, A007290.P9295456119697579818.a, A361474, A361474.P7843649290353159687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380445

/-! ## A380445.P11246707102800265922

`(A008911(n)-A326247(n))*(n-1)-A007290(n)`
-/

namespace A380445.P11246707102800265922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008911 n - A326247 n) * ((n : ℤ) - 1) - A007290 n

end

end A380445.P11246707102800265922

namespace A380445

/-- `(A008911(n)-A326247(n))*(n-1)-A007290(n)` -/
def P11246707102800265922.Spec : Prop :=
  ∀ n, P11246707102800265922.a n = A380445 n

end A380445

/-!
# A380446: Perfect powers k^m, m > 1, omega(k) > 1, such that A053669(k) > A006530(k), where omega = A001221.

The programs for A380446, there is no canonical definition to state claims against.
-/

/-! ## A380446.P18004090836273830421

`∪[A368682(n+1), A380452(n+1)]`
-/

namespace A380446.P18004090836273830421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P18004090836273830421

/-! ## A380446.P10872303733138482274

`∪[A365308(n+1), A389312(n+1)]`
-/

namespace A380446.P10872303733138482274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P10872303733138482274

/-! ## A380446.P291351076273079181

`∪[A368682(n+1), A389312(n+1)]`
-/

namespace A380446.P291351076273079181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P291351076273079181

/-! ## A380446.P1706105377134760058

`∩[A304250(n+1), A369374(n+1)]`
-/

namespace A380446.P1706105377134760058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P1706105377134760058

/-! ## A380446.P15442886912209138411

`∩[A304250(n+1), A363814(n+1)]`
-/

namespace A380446.P15442886912209138411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P15442886912209138411

/-! ## A380446.P3899242397489140472

`∩[A124143(n+1), A363814(n+1)]`
-/

namespace A380446.P3899242397489140472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P3899242397489140472

/-! ## A380446.P6378159705729231176

`∩[A124143(n+1), A369374(n+1)]`
-/

namespace A380446.P6378159705729231176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P6378159705729231176

/-! ## A380446.P924961860078975708

`∩[A055932(n+1), A353238(n+1)]`
-/

namespace A380446.P924961860078975708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P924961860078975708

/-! ## A380446.P13509919829663541643

`∩[A304250(n+1), A353238(n+1)]`
-/

namespace A380446.P13509919829663541643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P13509919829663541643

/-! ## A380446.P6399435552737297865

`∩[A353238(n+1), A363814(n+1)]`
-/

namespace A380446.P6399435552737297865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P6399435552737297865

/-! ## A380446.P12265228593975458965

`∩[A353238(n+1), A369374(n+1)]`
-/

namespace A380446.P12265228593975458965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P12265228593975458965

/-! ## A380446.P12545160615965832515

`∩[A353238(n+1), A387901(n+1)]`
-/

namespace A380446.P12545160615965832515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P12545160615965832515

/-! ## A380446.P2083879634946152589

`∩[A055932(n+1), A376119(n+1)]`
-/

namespace A380446.P2083879634946152589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P2083879634946152589

/-! ## A380446.P13205380631853351296

`∩[A304250(n+1), A376119(n+1)]`
-/

namespace A380446.P13205380631853351296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P13205380631853351296

/-! ## A380446.P11000776221019000775

`∩[A363814(n+1), A376119(n+1)]`
-/

namespace A380446.P11000776221019000775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P11000776221019000775

/-! ## A380446.P10667302694398503857

`∩[A369374(n+1), A376119(n+1)]`
-/

namespace A380446.P10667302694398503857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P10667302694398503857

/-! ## A380446.P16357927294348864805

`∩[A376119(n+1), A387901(n+1)]`
-/

namespace A380446.P16357927294348864805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P16357927294348864805

/-! ## A380446.P8001230458953731305

`∩[A075090(n+1), A363814(n+1)]`
-/

namespace A380446.P8001230458953731305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P8001230458953731305

/-! ## A380446.P5340645596533323921

`∩[A075090(n+1), A369374(n+1)]`
-/

namespace A380446.P5340645596533323921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P5340645596533323921

/-! ## A380446.P11924910409418070385

`∩[A055932(n+1), A391756(n+1)]`
-/

namespace A380446.P11924910409418070385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380446.P11924910409418070385

/-!
# A380447: Number of primes dividing n plus n times the number of nonprimes dividing n.

The programs for A380447, the canonical program `A380447.P8742501224369410159` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380447 has offset 1).

The definition of A380447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380447.P8742501224369410159

`(n+1)*A000005(n+1)-n*A001221(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A380447

/-- `(n+1)*A000005(n+1)-n*A001221(n+1)` -/
def P8742501224369410159.Spec : Prop :=
  ∀ n, P8742501224369410159.a n = A380447 (n + 1)

theorem P8742501224369410159.correct : P8742501224369410159.Spec := by
  intro n
  simp only [A380447, Nat.add_sub_cancel]

end A380447

/-! ## A380447.P2644884864337784137

`∑{d}[n+1, A385313(#)]`
-/

namespace A380447.P2644884864337784137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A385313 d

end

end A380447.P2644884864337784137

namespace A380447

/-- `∑{d}[n+1, A385313(#)]` -/
def P2644884864337784137.Spec : Prop :=
  ∀ n, P2644884864337784137.a n = A380447 (n + 1)

end A380447

/-!
# A380449: Sum of the divisors of n plus the number of nonprime divisors of n.

The programs for A380449, the canonical program `A380449.P8792025045371275510` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380449 has offset 1).

The definition of A380449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380449.P8792025045371275510

`A000203(n+1)+A033273(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A380449

/-- `A000203(n+1)+A033273(n+1)` -/
def P8792025045371275510.Spec : Prop :=
  ∀ n, P8792025045371275510.a n = A380449 (n + 1)

theorem P8792025045371275510.correct : P8792025045371275510.Spec := by
  intro n
  simp only [A380449, Nat.add_sub_cancel]

end A380449

/-! ## A380449.P16794576206237773643

`A000203(n+1)+A000005(n+1)-A001221(n+1)`
-/

namespace A380449.P16794576206237773643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000005 (n + 1) - A001221 (n + 1)

end

end A380449.P16794576206237773643

namespace A380449

/-- `A000203(n+1)+A000005(n+1)-A001221(n+1)` -/
def P16794576206237773643.Spec : Prop :=
  ∀ n, P16794576206237773643.a n = A380449 (n + 1)

theorem P16794576206237773643.correct : P16794576206237773643.Spec := by
  intro n
  simp only [A380449, Nat.add_sub_cancel, A380449.P16794576206237773643.a, A380449.P8792025045371275510.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A033273, A033273.P18420659424697249895.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380449

/-! ## A380449.P3264231263315337990

`∑{d}[n+1, A113636(#)]`
-/

namespace A380449.P3264231263315337990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113636 d

end

end A380449.P3264231263315337990

namespace A380449

/-- `∑{d}[n+1, A113636(#)]` -/
def P3264231263315337990.Spec : Prop :=
  ∀ n, P3264231263315337990.a n = A380449 (n + 1)

end A380449

/-! ## A380449.P2200934792221346372

`A088580(n+1)+A055212(n+1)`
-/

namespace A380449.P2200934792221346372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + A055212 (n + 1)

end

end A380449.P2200934792221346372

namespace A380449

/-- `A088580(n+1)+A055212(n+1)` -/
def P2200934792221346372.Spec : Prop :=
  ∀ n, P2200934792221346372.a n = A380449 (n + 1)

theorem P2200934792221346372.correct : P2200934792221346372.Spec := by
  intro n
  simp only [A380449, Nat.add_sub_cancel, A380449.P2200934792221346372.a, A380449.P8792025045371275510.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033273, A033273.P18420659424697249895.a, A055212, A055212.P14412881054625885538.a, A088580, A088580.P3089093194242277422.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380449

/-! ## A380449.P17512288876343762028

`A349215(n+1)+A023890(n+1)`
-/

namespace A380449.P17512288876343762028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349215 (n + 1) + A023890 (n + 1)

end

end A380449.P17512288876343762028

namespace A380449

/-- `A349215(n+1)+A023890(n+1)` -/
def P17512288876343762028.Spec : Prop :=
  ∀ n, P17512288876343762028.a n = A380449 (n + 1)

theorem P17512288876343762028.correct : P17512288876343762028.Spec := by
  intro n
  simp only [A380449, Nat.add_sub_cancel, A380449.P17512288876343762028.a, A380449.P8792025045371275510.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023890, A023890.P4514850295399263827.a, A033273, A033273.P18420659424697249895.a, A349215, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380449

/-! ## A380449.P12730659669511185090

`A351519(n+1)+A152991(n+1)`
-/

namespace A380449.P12730659669511185090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351519 (n + 1) + A152991 (n + 1)

end

end A380449.P12730659669511185090

namespace A380449

/-- `A351519(n+1)+A152991(n+1)` -/
def P12730659669511185090.Spec : Prop :=
  ∀ n, P12730659669511185090.a n = A380449 (n + 1)

theorem P12730659669511185090.correct : P12730659669511185090.Spec := by
  intro n
  simp only [A380449, Nat.add_sub_cancel, A380449.P12730659669511185090.a, A380449.P8792025045371275510.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033273, A033273.P18420659424697249895.a, A152991, A152991.P96755729766492902.a, A351519, A351519.P5058596728449047522.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P10258181745752134128.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380449

/-! ## A380449.P110892068594429627

`A378993(n+1)+A163163(n+1)`
-/

namespace A380449.P110892068594429627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378993 (n + 1) + A163163 (n + 1)

end

end A380449.P110892068594429627

namespace A380449

/-- `A378993(n+1)+A163163(n+1)` -/
def P110892068594429627.Spec : Prop :=
  ∀ n, P110892068594429627.a n = A380449 (n + 1)

theorem P110892068594429627.correct : P110892068594429627.Spec := by
  intro n
  simp only [A380449, Nat.add_sub_cancel, A380449.P110892068594429627.a, A380449.P8792025045371275510.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033273, A033273.P18420659424697249895.a, A163163, A163163.P5673829929796067677.a, A378993, A378993.P12473165963195423861.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380449

/-! ## A380449.P15901146141382398143

`A007503(n+1)-A001221(n+1)`
-/

namespace A380449.P15901146141382398143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A001221 (n + 1)

end

end A380449.P15901146141382398143

namespace A380449

/-- `A007503(n+1)-A001221(n+1)` -/
def P15901146141382398143.Spec : Prop :=
  ∀ n, P15901146141382398143.a n = A380449 (n + 1)

theorem P15901146141382398143.correct : P15901146141382398143.Spec := by
  intro n
  simp only [A380449, Nat.add_sub_cancel, A380449.P15901146141382398143.a, A380449.P8792025045371275510.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A007503, A007503.P13484425310514315912.a, A033273, A033273.P18420659424697249895.a, A000005, A000005.P16091521709108585461.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380449

/-! ## A380449.P14170207035711653607

`A233541(n+1)-A057859(n+1)`
-/

namespace A380449.P14170207035711653607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (n + 1) - A057859 (n + 1)

end

end A380449.P14170207035711653607

namespace A380449

/-- `A233541(n+1)-A057859(n+1)` -/
def P14170207035711653607.Spec : Prop :=
  ∀ n, P14170207035711653607.a n = A380449 (n + 1)

theorem P14170207035711653607.correct : P14170207035711653607.Spec := by
  intro n
  simp only [A380449, Nat.add_sub_cancel, A380449.P14170207035711653607.a, A380449.P8792025045371275510.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033273, A033273.P18420659424697249895.a, A057859, A057859.P5441024818850006693.a, A233541, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380449

/-! ## A380449.P17704692454161960178

`A348219(n+1)+A386438(n+1)-A001221(n+1)`
-/

namespace A380449.P17704692454161960178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348219 (n + 1) + (A386438 (n + 1) - A001221 (n + 1))

end

end A380449.P17704692454161960178

namespace A380449

/-- `A348219(n+1)+A386438(n+1)-A001221(n+1)` -/
def P17704692454161960178.Spec : Prop :=
  ∀ n, P17704692454161960178.a n = A380449 (n + 1)

theorem P17704692454161960178.correct : P17704692454161960178.Spec := by
  intro n
  simp only [A380449, Nat.add_sub_cancel, A380449.P17704692454161960178.a, A380449.P8792025045371275510.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A033273, A033273.P18420659424697249895.a, A348219, A348219.P15428353027639764716.a, A386438, A386438.P6678444631215707728.a, A000005, A000005.P16091521709108585461.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007503, A007503.P13484425310514315912.a, A059841, A059841.P7264174615531153985.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380449

/-!
# A380450: Number of integers k such that prime(n) - primorial(k) is prime.

The programs for A380450, there is no canonical definition to state claims against.
-/

/-! ## A380450.P4694639403632784601

`A175933(A000040(n+1))`
-/

namespace A380450.P4694639403632784601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (A000040 (n + 1)).toNat

end

end A380450.P4694639403632784601

/-! ## A380450.P16071104265843520318

`A175933(A006005(n+1))`
-/

namespace A380450.P16071104265843520318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (A006005 (n + 1)).toNat

end

end A380450.P16071104265843520318

/-! ## A380450.P10310911579789845484

`A175933(A008578(n+2))`
-/

namespace A380450.P10310911579789845484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (A008578 (n + 2)).toNat

end

end A380450.P10310911579789845484

/-! ## A380450.P16520681585319264729

`A175933(A075643(n+2))`
-/

namespace A380450.P16520681585319264729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (A075643 (n + 2)).toNat

end

end A380450.P16520681585319264729

/-! ## A380450.P4690840074576689138

`A175933(A182986(n+2))`
-/

namespace A380450.P4690840074576689138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (A182986 (n + 2)).toNat

end

end A380450.P4690840074576689138

/-! ## A380450.P9800037229551351883

`A175933(A330225(n+1))`
-/

namespace A380450.P9800037229551351883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (A330225 (n + 1)).toNat

end

end A380450.P9800037229551351883

/-!
# A380451: Number of disjoint-path coverings for 2 X n rectangular grids, admitting zero-length paths.

The programs for A380451, the canonical program `A380451.P1299921514057331248` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380451 has offset 1).

The definition of A380451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380451.P1299921514057331248

`7*a(n-1)-4*a(n-2)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=15, a(2)=95, a(3)=604`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A380451

/-- `7*a(n-1)-4*a(n-2)-a(n-3)+a(n-4)` -/
def P1299921514057331248.Spec : Prop :=
  ∀ n, P1299921514057331248.a n = A380451 (n + 1)

theorem P1299921514057331248.correct : P1299921514057331248.Spec := by
  intro n
  simp only [A380451, Nat.add_sub_cancel]

end A380451

/-!
# A380452: Perfect powers k^m, m > 1, omega(k) > 1, such that A053669(k) > A006530(k) that are not also products of primorials, where omega = A001221.

The programs for A380452, there is no canonical definition to state claims against.
-/

/-! ## A380452.P5723069569371891220

`∪[A389374(n+1), A389682(n+1)]`
-/

namespace A380452.P5723069569371891220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P5723069569371891220

/-! ## A380452.P18093447851188163604

`∩[A304250(n+1), A369420(n+1)]`
-/

namespace A380452.P18093447851188163604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P18093447851188163604

/-! ## A380452.P3910175726672127203

`∩[A369420(n+1), A380446(n+1)]`
-/

namespace A380452.P3910175726672127203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P3910175726672127203

/-! ## A380452.P13017802265831091288

`∩[A369420(n+1), A389312(n+1)]`
-/

namespace A380452.P13017802265831091288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P13017802265831091288

/-! ## A380452.P14916374306470636574

`∩[A056808(n+1), A304250(n+1)]`
-/

namespace A380452.P14916374306470636574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P14916374306470636574

/-! ## A380452.P6600393352780402991

`∩[A056808(n+1), A380446(n+1)]`
-/

namespace A380452.P6600393352780402991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P6600393352780402991

/-! ## A380452.P9167882738071188011

`∩[A056808(n+1), A389312(n+1)]`
-/

namespace A380452.P9167882738071188011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P9167882738071188011

/-! ## A380452.P15209373273214499476

`∩[A056808(n+1), A124143(n+1)]`
-/

namespace A380452.P15209373273214499476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P15209373273214499476

/-! ## A380452.P14286125375571221694

`∩[A124143(n+1), A369420(n+1)]`
-/

namespace A380452.P14286125375571221694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P14286125375571221694

/-! ## A380452.P6367266595815114129

`∩[A056808(n+1), A353238(n+1)]`
-/

namespace A380452.P6367266595815114129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P6367266595815114129

/-! ## A380452.P6402205885300370992

`∩[A353238(n+1), A369420(n+1)]`
-/

namespace A380452.P6402205885300370992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P6402205885300370992

/-! ## A380452.P10478727961102044007

`∩[A056808(n+1), A376119(n+1)]`
-/

namespace A380452.P10478727961102044007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P10478727961102044007

/-! ## A380452.P17140371531696754133

`∩[A369420(n+1), A376119(n+1)]`
-/

namespace A380452.P17140371531696754133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P17140371531696754133

/-! ## A380452.P2591049987441017465

`∩[A056808(n+1), A366854(n+1)]`
-/

namespace A380452.P2591049987441017465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P2591049987441017465

/-! ## A380452.P18061981273398895567

`∩[A056808(n+1), A389864(n+1)]`
-/

namespace A380452.P18061981273398895567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P18061981273398895567

/-! ## A380452.P11519439939278444968

`∩[A366854(n+1), A369420(n+1)]`
-/

namespace A380452.P11519439939278444968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P11519439939278444968

/-! ## A380452.P14106229636136270615

`∩[A369420(n+1), A389864(n+1)]`
-/

namespace A380452.P14106229636136270615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P14106229636136270615

/-! ## A380452.P6014994680591740327

`∩[A056808(n+1), A391416(n+1)]`
-/

namespace A380452.P6014994680591740327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P6014994680591740327

/-! ## A380452.P17671077541257234034

`∩[A369420(n+1), A391416(n+1)]`
-/

namespace A380452.P17671077541257234034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P17671077541257234034

/-! ## A380452.P8723510583601028844

`∩[A056808(n+1), A075090(n+1)]`
-/

namespace A380452.P8723510583601028844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380452.P8723510583601028844

/-!
# A380454: a(n) = 1 if the product of exponents in its prime factorization is greater than 3, otherwise 0.

The programs for A380454, the canonical program `A380454.P17620072490413482272` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380454 has offset 1).

The definition of A380454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359471, A359472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380454.P17620072490413482272

`1-(A359471(n+1)+A359472(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A380454

/-- `1-(A359471(n+1)+A359472(n+1))` -/
def P17620072490413482272.Spec : Prop :=
  ∀ n, P17620072490413482272.a n = A380454 (n + 1)

theorem P17620072490413482272.correct : P17620072490413482272.Spec := by
  intro n
  simp only [A380454, Nat.add_sub_cancel]

end A380454

/-! ## A380454.P15978424789240563954

`C(3%∏{e}[n+1, #], 3)`
-/

namespace A380454.P15978424789240563954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 % (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 3

end

end A380454.P15978424789240563954

namespace A380454

/-- `C(3%∏{e}[n+1, #], 3)` -/
def P15978424789240563954.Spec : Prop :=
  ∀ n, (P15978424789240563954.a n : ℤ) = A380454 (n + 1)

end A380454

/-! ## A380454.P18348446397796554617

`char[lt[2, A046951(n+1)]]`
-/

namespace A380454.P18348446397796554617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A380454.P18348446397796554617

namespace A380454

/-- `char[lt[2, A046951(n+1)]]` -/
def P18348446397796554617.Spec : Prop :=
  ∀ n, (P18348446397796554617.a n : ℤ) = A380454 (n + 1)

end A380454

/-! ## A380454.P12344483493449612526

`A244118(C(3, ∏{e}[n+1, #]))`
-/

namespace A380454.P12344483493449612526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244118 (Nat.choose 3 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A380454.P12344483493449612526

namespace A380454

/-- `A244118(C(3, ∏{e}[n+1, #]))` -/
def P12344483493449612526.Spec : Prop :=
  ∀ n, P12344483493449612526.a n = A380454 (n + 1)

end A380454

/-! ## A380454.P8567601867154294964

`A000520(A005361(n+1))`
-/

namespace A380454.P8567601867154294964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000520 (A005361 (n + 1)).toNat

end

end A380454.P8567601867154294964

namespace A380454

/-- `A000520(A005361(n+1))` -/
def P8567601867154294964.Spec : Prop :=
  ∀ n, P8567601867154294964.a n = A380454 (n + 1)

end A380454

/-! ## A380454.P10245606024186193737

`A364693(A046951(n+1)²)`
-/

namespace A380454.P10245606024186193737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 (A046951 (n + 1) ^ 2).toNat

end

end A380454.P10245606024186193737

namespace A380454

/-- `A364693(A046951(n+1)²)` -/
def P10245606024186193737.Spec : Prop :=
  ∀ n, P10245606024186193737.a n = A380454 (n + 1)

end A380454

/-! ## A380454.P15451995600750847222

`floor(log(A344417(n+1)))`
-/

namespace A380454.P15451995600750847222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A344417 (n + 1) : ℝ)⌋

end

end A380454.P15451995600750847222

namespace A380454

/-- `floor(log(A344417(n+1)))` -/
def P15451995600750847222.Spec : Prop :=
  ∀ n, P15451995600750847222.a n = A380454 (n + 1)

end A380454

/-! ## A380454.P6396496365810064894

`floor(acot(2/A327012(n+1)))`
-/

namespace A380454.P6396496365810064894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (2 / (A327012 (n + 1) : ℚ) : ℝ)⌋

end

end A380454.P6396496365810064894

namespace A380454

/-- `floor(acot(2/A327012(n+1)))` -/
def P6396496365810064894.Spec : Prop :=
  ∀ n, P6396496365810064894.a n = A380454 (n + 1)

end A380454

/-! ## A380454.P16015597608027493997

`A011676(A037291(n+1))`
-/

namespace A380454.P16015597608027493997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011676 (A037291 (n + 1)).toNat

end

end A380454.P16015597608027493997

namespace A380454

/-- `A011676(A037291(n+1))` -/
def P16015597608027493997.Spec : Prop :=
  ∀ n, P16015597608027493997.a n = A380454 (n + 1)

end A380454

/-! ## A380454.P10022190719595027963

`A259387(n+1)%A320267(n+1)`
-/

namespace A380454.P10022190719595027963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259387 (n + 1)) (A320267 (n + 1))

end

end A380454.P10022190719595027963

namespace A380454

/-- `A259387(n+1)%A320267(n+1)` -/
def P10022190719595027963.Spec : Prop :=
  ∀ n, P10022190719595027963.a n = A380454 (n + 1)

end A380454

/-!
# A380456: Perfect powers k^m, m > 1, omega(k) > 1, such that A053669(k) < A006530(k), where omega = A001221.

The programs for A380456, there is no canonical definition to state claims against.
-/

/-! ## A380456.P598174572446022909

`∪[A365745(n+1), A390180(n+1)]`
-/

namespace A380456.P598174572446022909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380456.P598174572446022909

/-! ## A380456.P9526361814898250372

`∩[A001597(n+1), A369417(n+1)]`
-/

namespace A380456.P9526361814898250372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380456.P9526361814898250372

/-! ## A380456.P13119386681444577

`∩[A131605(n+1), A369417(n+1)]`
-/

namespace A380456.P13119386681444577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380456.P13119386681444577

/-! ## A380456.P3234598332013406907

`∩[A369417(n+1), A387620(n+1)]`
-/

namespace A380456.P3234598332013406907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380456.P3234598332013406907

/-! ## A380456.P5126373560608055373

`∩[A369417(n+1), A396856(n+1)]`
-/

namespace A380456.P5126373560608055373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380456.P5126373560608055373

/-! ## A380456.P3084301062773273742

`∩[A001597(n+1), A368089(n+1)]`
-/

namespace A380456.P3084301062773273742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380456.P3084301062773273742

/-! ## A380456.P5368108390007271933

`∩[A002760(n+1), A368089(n+1)]`
-/

namespace A380456.P5368108390007271933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380456.P5368108390007271933

/-! ## A380456.P4004022559389822951

`filter[A369417(n+1), A075802(#)]`
-/

namespace A380456.P4004022559389822951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A380456.P4004022559389822951

/-!
# A380457: Sum of divisors of n plus the number of distinct prime divisors of n: a(n) = sigma(n) + omega(n).

The programs for A380457, the canonical program `A380457.P14810033455213116904` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380457 has offset 1).

The definition of A380457 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380457.P14810033455213116904

`A000203(n+1)+A001221(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A380457

/-- `A000203(n+1)+A001221(n+1)` -/
def P14810033455213116904.Spec : Prop :=
  ∀ n, P14810033455213116904.a n = A380457 (n + 1)

theorem P14810033455213116904.correct : P14810033455213116904.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel]

end A380457

/-! ## A380457.P14246501976834037998

`∑{d}[n+1, A014683(#)]`
-/

namespace A380457.P14246501976834037998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014683 d

end

end A380457.P14246501976834037998

namespace A380457

/-- `∑{d}[n+1, A014683(#)]` -/
def P14246501976834037998.Spec : Prop :=
  ∀ n, P14246501976834037998.a n = A380457 (n + 1)

end A380457

/-! ## A380457.P2241579947719343227

`A057859(n+1)+A051612(n+1)`
-/

namespace A380457.P2241579947719343227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) + A051612 (n + 1)

end

end A380457.P2241579947719343227

namespace A380457

/-- `A057859(n+1)+A051612(n+1)` -/
def P2241579947719343227.Spec : Prop :=
  ∀ n, P2241579947719343227.a n = A380457 (n + 1)

theorem P2241579947719343227.correct : P2241579947719343227.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P2241579947719343227.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A051612, A051612.P4135239823752248514.a, A057859, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P765820182972963196

`A163523(n+1)+A065608(n+1)`
-/

namespace A380457.P765820182972963196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) + A065608 (n + 1)

end

end A380457.P765820182972963196

namespace A380457

/-- `A163523(n+1)+A065608(n+1)` -/
def P765820182972963196.Spec : Prop :=
  ∀ n, P765820182972963196.a n = A380457 (n + 1)

theorem P765820182972963196.correct : P765820182972963196.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P765820182972963196.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A065608, A065608.P12445239359989980431.a, A163523, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P963039744227588582

`A229109(n+1)+A001065(n+1)`
-/

namespace A380457.P963039744227588582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1) + A001065 (n + 1)

end

end A380457.P963039744227588582

namespace A380457

/-- `A229109(n+1)+A001065(n+1)` -/
def P963039744227588582.Spec : Prop :=
  ∀ n, P963039744227588582.a n = A380457 (n + 1)

theorem P963039744227588582.correct : P963039744227588582.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P963039744227588582.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A001221, A001221.P10258181745752134128.a, A229109, A229109.P7396241872602068631.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P2951218405752544469

`A380441(n+1)+A008472(n+1)`
-/

namespace A380457.P2951218405752544469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380441 (n + 1) + A008472 (n + 1)

end

end A380457.P2951218405752544469

namespace A380457

/-- `A380441(n+1)+A008472(n+1)` -/
def P2951218405752544469.Spec : Prop :=
  ∀ n, P2951218405752544469.a n = A380457 (n + 1)

theorem P2951218405752544469.correct : P2951218405752544469.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P2951218405752544469.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A380441, A380441.P1716721751457761727.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A023890, A023890.P4514850295399263827.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P2626350691295545192

`A386438(n+1)+A069359(n+1)`
-/

namespace A380457.P2626350691295545192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386438 (n + 1) + A069359 (n + 1)

end

end A380457.P2626350691295545192

namespace A380457

/-- `A386438(n+1)+A069359(n+1)` -/
def P2626350691295545192.Spec : Prop :=
  ∀ n, P2626350691295545192.a n = A380457 (n + 1)

theorem P2626350691295545192.correct : P2626350691295545192.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P2626350691295545192.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A386438, A386438.P6678444631215707728.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007503, A007503.P13484425310514315912.a, A059841, A059841.P7264174615531153985.a, A348219, A348219.P15428353027639764716.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P13921992430115692861

`A007503(n+1)-A033273(n+1)`
-/

namespace A380457.P13921992430115692861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A033273 (n + 1)

end

end A380457.P13921992430115692861

namespace A380457

/-- `A007503(n+1)-A033273(n+1)` -/
def P13921992430115692861.Spec : Prop :=
  ∀ n, P13921992430115692861.a n = A380457 (n + 1)

theorem P13921992430115692861.correct : P13921992430115692861.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P13921992430115692861.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A007503, A007503.P13484425310514315912.a, A033273, A033273.P18420659424697249895.a, A000005, A000005.P16091521709108585461.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P3309242999773621613

`A065387(n+1)-A179179(n+1)`
-/

namespace A380457.P3309242999773621613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A179179 (n + 1)

end

end A380457.P3309242999773621613

namespace A380457

/-- `A065387(n+1)-A179179(n+1)` -/
def P3309242999773621613.Spec : Prop :=
  ∀ n, P3309242999773621613.a n = A380457 (n + 1)

theorem P3309242999773621613.correct : P3309242999773621613.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P3309242999773621613.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A065387, A065387.P11284875715279330998.a, A179179, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P11993005700216634970

`A155085(n+1)-A378993(n+1)`
-/

namespace A380457.P11993005700216634970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A378993 (n + 1)

end

end A380457.P11993005700216634970

namespace A380457

/-- `A155085(n+1)-A378993(n+1)` -/
def P11993005700216634970.Spec : Prop :=
  ∀ n, P11993005700216634970.a n = A380457 (n + 1)

theorem P11993005700216634970.correct : P11993005700216634970.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P11993005700216634970.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A155085, A155085.P2440965829929837208.a, A378993, A378993.P12473165963195423861.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P9246514675709572863

`∑{d}[n+1, A000005(#)*A140706((n+1)/#)]`
-/

namespace A380457.P9246514675709572863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A140706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A380457.P9246514675709572863

namespace A380457

/-- `∑{d}[n+1, A000005(#)*A140706((n+1)/#)]` -/
def P9246514675709572863.Spec : Prop :=
  ∀ n, P9246514675709572863.a n = A380457 (n + 1)

end A380457

/-! ## A380457.P2766519858613541883

`A001221(n+1)+A023890(n+1)+A008472(n+1)`
-/

namespace A380457.P2766519858613541883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A023890 (n + 1) + A008472 (n + 1))

end

end A380457.P2766519858613541883

namespace A380457

/-- `A001221(n+1)+A023890(n+1)+A008472(n+1)` -/
def P2766519858613541883.Spec : Prop :=
  ∀ n, P2766519858613541883.a n = A380457 (n + 1)

theorem P2766519858613541883.correct : P2766519858613541883.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P2766519858613541883.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P5835465083955606753

`A000010(n+1)+A051612(n+1)+A001221(n+1)`
-/

namespace A380457.P5835465083955606753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051612 (n + 1) + A001221 (n + 1))

end

end A380457.P5835465083955606753

namespace A380457

/-- `A000010(n+1)+A051612(n+1)+A001221(n+1)` -/
def P5835465083955606753.Spec : Prop :=
  ∀ n, P5835465083955606753.a n = A380457 (n + 1)

theorem P5835465083955606753.correct : P5835465083955606753.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P5835465083955606753.a, A380457.P14810033455213116904.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A051612, A051612.P4135239823752248514.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P17122146969056303108

`A001221(n+1)+A035321(n+1)+A023888(n+1)`
-/

namespace A380457.P17122146969056303108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A035321 (n + 1) + A023888 (n + 1))

end

end A380457.P17122146969056303108

namespace A380457

/-- `A001221(n+1)+A035321(n+1)+A023888(n+1)` -/
def P17122146969056303108.Spec : Prop :=
  ∀ n, P17122146969056303108.a n = A380457 (n + 1)

theorem P17122146969056303108.correct : P17122146969056303108.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P17122146969056303108.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A023888, A023888.P17873500436284849145.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P5185362847042580980

`A001221(n+1)+A167515(n+1)+A008475(n+1)`
-/

namespace A380457.P5185362847042580980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A167515 (n + 1) + A008475 (n + 1))

end

end A380457.P5185362847042580980

namespace A380457

/-- `A001221(n+1)+A167515(n+1)+A008475(n+1)` -/
def P5185362847042580980.Spec : Prop :=
  ∀ n, P5185362847042580980.a n = A380457 (n + 1)

theorem P5185362847042580980.correct : P5185362847042580980.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P5185362847042580980.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A167515, A167515.P2764876312369213402.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A380457

/-! ## A380457.P17776449251523751027

`A001221(n+1)+A178637(n+1)+A023889(n+1)`
-/

namespace A380457.P17776449251523751027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A178637 (n + 1) + A023889 (n + 1))

end

end A380457.P17776449251523751027

namespace A380457

/-- `A001221(n+1)+A178637(n+1)+A023889(n+1)` -/
def P17776449251523751027.Spec : Prop :=
  ∀ n, P17776449251523751027.a n = A380457 (n + 1)

theorem P17776449251523751027.correct : P17776449251523751027.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P17776449251523751027.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A023889, A023889.P17073280978498141665.a, A178637, A178637.P1570303736559003244.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A023888, A023888.P17873500436284849145.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A059841, A059841.P7264174615531153985.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P10650290401366190573

`A001221(n+1)+A326142(n+1)+A007947(n+1)`
-/

namespace A380457.P10650290401366190573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A326142 (n + 1) + A007947 (n + 1))

end

end A380457.P10650290401366190573

namespace A380457

/-- `A001221(n+1)+A326142(n+1)+A007947(n+1)` -/
def P10650290401366190573.Spec : Prop :=
  ∀ n, P10650290401366190573.a n = A380457 (n + 1)

theorem P10650290401366190573.correct : P10650290401366190573.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P10650290401366190573.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P17188419070702208818

`A001221(n+1)+A178636(n+1)+A159077(n+1)`
-/

namespace A380457.P17188419070702208818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A178636 (n + 1) + A159077 (n + 1))

end

end A380457.P17188419070702208818

namespace A380457

/-- `A001221(n+1)+A178636(n+1)+A159077(n+1)` -/
def P17188419070702208818.Spec : Prop :=
  ∀ n, P17188419070702208818.a n = A380457 (n + 1)

theorem P17188419070702208818.correct : P17188419070702208818.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P17188419070702208818.a, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A159077, A159077.P14146349899783805996.a, A178636, A178636.P5283396583048980149.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A059841, A059841.P7264174615531153985.a, A167515, A167515.P2764876312369213402.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-! ## A380457.P14711949700012617212

`A000203(n+1)+A336388(n+1)+A336387(n+1)`
-/

namespace A380457.P14711949700012617212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A336388 (n + 1) + A336387 (n + 1))

end

end A380457.P14711949700012617212

namespace A380457

/-- `A000203(n+1)+A336388(n+1)+A336387(n+1)` -/
def P14711949700012617212.Spec : Prop :=
  ∀ n, P14711949700012617212.a n = A380457 (n + 1)

end A380457

/-! ## A380457.P5300377544130609649

`A000005(n+1)+A000203(n+1)-A033273(n+1)`
-/

namespace A380457.P5300377544130609649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000203 (n + 1) - A033273 (n + 1))

end

end A380457.P5300377544130609649

namespace A380457

/-- `A000005(n+1)+A000203(n+1)-A033273(n+1)` -/
def P5300377544130609649.Spec : Prop :=
  ∀ n, P5300377544130609649.a n = A380457 (n + 1)

theorem P5300377544130609649.correct : P5300377544130609649.Spec := by
  intro n
  simp only [A380457, Nat.add_sub_cancel, A380457.P5300377544130609649.a, A380457.P14810033455213116904.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A033273, A033273.P18420659424697249895.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380457

/-!
# A380458: Characteristic function of A337533 (union of {1} with nonsquares whose square part's square root is in the sequence).

The programs for A380458, the canonical program `A380458.P7180702667062546524` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380458 has offset 1).

The definition of A380458 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A267116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380458.P7180702667062546524

`A209229(1+A267116(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A380458

/-- `A209229(1+A267116(n+1))` -/
def P7180702667062546524.Spec : Prop :=
  ∀ n, P7180702667062546524.a n = A380458 (n + 1)

theorem P7180702667062546524.correct : P7180702667062546524.Spec := by
  intro n
  simp only [A380458, Nat.add_sub_cancel]

end A380458

/-! ## A380458.P2034067587246521704

`char[A337533(n+1)-1]`
-/

namespace A380458.P2034067587246521704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337533 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380458.P2034067587246521704

namespace A380458

/-- `char[A337533(n+1)-1]` -/
def P2034067587246521704.Spec : Prop :=
  ∀ n, (P2034067587246521704.a n : ℤ) = A380458 (n + 1)

end A380458

/-! ## A380458.P16509446863977444278

`A036987(A267116(n+1))`
-/

namespace A380458.P16509446863977444278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A267116 (n + 1)).toNat

end

end A380458.P16509446863977444278

namespace A380458

/-- `A036987(A267116(n+1))` -/
def P16509446863977444278.Spec : Prop :=
  ∀ n, P16509446863977444278.a n = A380458 (n + 1)

end A380458

/-! ## A380458.P10794771268736715146

`1-A005087(A267116(n+1)+1)`
-/

namespace A380458.P10794771268736715146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005087 (A267116 (n + 1) + 1).toNat

end

end A380458.P10794771268736715146

namespace A380458

/-- `1-A005087(A267116(n+1)+1)` -/
def P10794771268736715146.Spec : Prop :=
  ∀ n, P10794771268736715146.a n = A380458 (n + 1)

end A380458

/-! ## A380458.P587895832774947884

`A008683(n+1)^A267445(A267116(n+1))`
-/

namespace A380458.P587895832774947884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) ^ (A267445 (A267116 (n + 1)).toNat : ℤ)

end

end A380458.P587895832774947884

namespace A380458

/-- `A008683(n+1)^A267445(A267116(n+1))` -/
def P587895832774947884.Spec : Prop :=
  ∀ n, P587895832774947884.a n = (A380458 (n + 1) : ℚ)

end A380458

/-! ## A380458.P17300648795458921869

`A286561(A293442(A293515(A293442(A293514(n+1)))))`
-/

namespace A380458.P17300648795458921869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 (A293442 (A293515 (A293442 (A293514 (n + 1)).toNat).toNat).toNat).toNat

end

end A380458.P17300648795458921869

namespace A380458

/-- `A286561(A293442(A293515(A293442(A293514(n+1)))))` -/
def P17300648795458921869.Spec : Prop :=
  ∀ n, P17300648795458921869.a n = A380458 (n + 1)

end A380458

/-! ## A380458.P10904247819299743208

`A195376(A111220(n+1))`
-/

namespace A380458.P10904247819299743208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195376 (A111220 (n + 1)).toNat

end

end A380458.P10904247819299743208

namespace A380458

/-- `A195376(A111220(n+1))` -/
def P10904247819299743208.Spec : Prop :=
  ∀ n, P10904247819299743208.a n = A380458 (n + 1)

end A380458

/-! ## A380458.P8122481103524932615

`A103451(A112621(n+1))`
-/

namespace A380458.P8122481103524932615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A112621 (n + 1)).toNat

end

end A380458.P8122481103524932615

namespace A380458

/-- `A103451(A112621(n+1))` -/
def P8122481103524932615.Spec : Prop :=
  ∀ n, P8122481103524932615.a n = A380458 (n + 1)

end A380458

/-! ## A380458.P14507956529315685200

`A333361(A267116(n+1))^A338530(n+1)`
-/

namespace A380458.P14507956529315685200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333361 (A267116 (n + 1)).toNat : ℚ) ^ (A338530 (n + 1) : ℤ)

end

end A380458.P14507956529315685200

namespace A380458

/-- `A333361(A267116(n+1))^A338530(n+1)` -/
def P14507956529315685200.Spec : Prop :=
  ∀ n, P14507956529315685200.a n = (A380458 (n + 1) : ℚ)

end A380458

/-! ## A380458.P10416028641789359272

`A112790(A245095(A089284(A089284(A077603(n+1)))))`
-/

namespace A380458.P10416028641789359272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112790 (A245095 (A089284 (A089284 (A077603 (n + 1)).toNat).toNat).toNat).toNat

end

end A380458.P10416028641789359272

namespace A380458

/-- `A112790(A245095(A089284(A089284(A077603(n+1)))))` -/
def P10416028641789359272.Spec : Prop :=
  ∀ n, P10416028641789359272.a n = A380458 (n + 1)

end A380458

/-!
# A380463: Partial sums of floor(n^2/13).

The programs for A380463, the canonical program `A380463.P17587869149114463108` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380463 has offset 0).

The definition of A380463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380463.P17587869149114463108

`∑[floor(n²/13)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A380463

/-- `∑[floor(n²/13)]` -/
def P17587869149114463108.Spec : Prop :=
  ∀ n, P17587869149114463108.a n = A380463 n

theorem P17587869149114463108.correct : P17587869149114463108.Spec := by
  intro n
  simp only [A380463]

end A380463

/-! ## A380463.P13600865654144464564

`∑[A011865(n)]%A158448(n+1)`
-/

namespace A380463.P13600865654144464564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A158448 (n + 1))

end

end A380463.P13600865654144464564

namespace A380463

/-- `∑[A011865(n)]%A158448(n+1)` -/
def P13600865654144464564.Spec : Prop :=
  ∀ n, P13600865654144464564.a n = A380463 n

end A380463

/-! ## A380463.P11233848568695328527

`A177116(abs(1-n))%A007358(n+5)`
-/

namespace A380463.P11233848568695328527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177116 |1 - (n : ℤ)|.toNat) (A007358 (n + 5))

end

end A380463.P11233848568695328527

namespace A380463

/-- `A177116(abs(1-n))%A007358(n+5)` -/
def P11233848568695328527.Spec : Prop :=
  ∀ n, P11233848568695328527.a n = A380463 n

end A380463

/-! ## A380463.P17550283871441145957

`A347697(A005043(n))`
-/

namespace A380463.P17550283871441145957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A005043 n).toNat

end

end A380463.P17550283871441145957

namespace A380463

/-- `A347697(A005043(n))` -/
def P17550283871441145957.Spec : Prop :=
  ∀ n, P17550283871441145957.a n = A380463 n

end A380463

/-! ## A380463.P957736052562744436

`A347697(A217420(n+1))`
-/

namespace A380463.P957736052562744436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A217420 (n + 1)).toNat

end

end A380463.P957736052562744436

namespace A380463

/-- `A347697(A217420(n+1))` -/
def P957736052562744436.Spec : Prop :=
  ∀ n, P957736052562744436.a n = A380463 n

end A380463

/-!
# A380467: a(n) = 1 if A380459(n) has no divisors of form p^p, otherwise 0.

The programs for A380467, there is no canonical definition to state claims against.
-/

/-! ## A380467.P9040408637254520369

`A008966(n+1)-A380469(n+1)`
-/

namespace A380467.P9040408637254520369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) - A380469 (n + 1)

end

end A380467.P9040408637254520369

/-! ## A380467.P4268096454648538635

`A380477(A005451(n+1))`
-/

namespace A380467.P4268096454648538635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380477 (A005451 (n + 1)).toNat

end

end A380467.P4268096454648538635

/-! ## A380467.P1234646221264085619

`A380477(A048671(n+1))`
-/

namespace A380467.P1234646221264085619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380477 (A048671 (n + 1)).toNat

end

end A380467.P1234646221264085619

/-! ## A380467.P10392676272391906775

`A380477(A380528(n+1))`
-/

namespace A380467.P10392676272391906775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380477 (A380528 (n + 1)).toNat

end

end A380467.P10392676272391906775

/-! ## A380467.P17347644180820895016

`A008966(A380528(n+1)²)`
-/

namespace A380467.P17347644180820895016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A380528 (n + 1) ^ 2).toNat

end

end A380467.P17347644180820895016

/-! ## A380467.P3963359981437830341

`2-A380528(A380528(n+1)²)`
-/

namespace A380467.P3963359981437830341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A380528 (A380528 (n + 1) ^ 2).toNat

end

end A380467.P3963359981437830341

/-! ## A380467.P4457661104912904713

`A380477(n+1)+A010051(n+1)`
-/

namespace A380467.P4457661104912904713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380477 (n + 1) + A010051 (n + 1)

end

end A380467.P4457661104912904713

/-! ## A380467.P10656356711319316998

`A380477(n+1)+A063524(A003415(n+1))`
-/

namespace A380467.P10656356711319316998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380477 (n + 1) + A063524 (A003415 (n + 1)).toNat

end

end A380467.P10656356711319316998

/-! ## A380467.P5674402122829979854

`A063524(A380477(n+1)+A349394(n+1))`
-/

namespace A380467.P5674402122829979854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A380477 (n + 1) + A349394 (n + 1)).toNat

end

end A380467.P5674402122829979854

/-! ## A380467.P1388078476959208237

`A380477(n+1)+A063524(A349619(n+1))`
-/

namespace A380467.P1388078476959208237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380477 (n + 1) + A063524 (A349619 (n + 1)).toNat

end

end A380467.P1388078476959208237

/-! ## A380467.P18249415255621401998

`A359550(A380459(A380528(n+1)²))`
-/

namespace A380467.P18249415255621401998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A380459 (A380528 (n + 1) ^ 2).toNat).toNat

end

end A380467.P18249415255621401998

/-! ## A380467.P13365573389710407641

`A359550((n+1)*A380530(A380528(n+1)))`
-/

namespace A380467.P13365573389710407641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((n + 1 : ℤ) * A380530 (A380528 (n + 1)).toNat).toNat

end

end A380467.P13365573389710407641

/-! ## A380467.P18133065617956503925

`A380477(A205959(n+1))`
-/

namespace A380467.P18133065617956503925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380477 (A205959 (n + 1)).toNat

end

end A380467.P18133065617956503925

/-!
# A380468: Numbers k such that A380459(k) has no divisors of the form p^p, for any prime p.

The programs for A380468, there is no canonical definition to state claims against.
-/

/-! ## A380468.P13189464042594714900

`filter[A005117(n+1), A380467(#)]`
-/

namespace A380468.P13189464042594714900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P13189464042594714900

/-! ## A380468.P12328326676083359622

`filter[A358673(n+1), A380467(#)]`
-/

namespace A380468.P12328326676083359622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P12328326676083359622

/-! ## A380468.P4113970586455053351

`filter[A380525(n+1), A380467(#)]`
-/

namespace A380468.P4113970586455053351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P4113970586455053351

/-! ## A380468.P182354372578033416

`∪[A000040(n+1), A380478(n+1)]`
-/

namespace A380468.P182354372578033416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380468.P182354372578033416

/-! ## A380468.P6298825376735909838

`record[(n+1)/A380528(n+1)]`
-/

namespace A380468.P6298825376735909838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A380528 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380468.P6298825376735909838

/-! ## A380468.P5724787654860568524

`record[(2-A380528(A380528(n+1)²))*A007947(n+1)]`
-/

namespace A380468.P5724787654860568524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A380528 (A380528 (n + 1) ^ 2).toNat) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380468.P5724787654860568524

/-! ## A380468.P6201287586361076108

`eq[1, A380467(n+1)]+1`
-/

namespace A380468.P6201287586361076108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380468.P6201287586361076108

/-! ## A380468.P8331567150143214203

`eq[1, A380528(n+1)]+1`
-/

namespace A380468.P8331567150143214203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380468.P8331567150143214203

/-! ## A380468.P2819030678883262777

`filter[A096157(n+1), A380467(#)]`
-/

namespace A380468.P2819030678883262777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P2819030678883262777

/-! ## A380468.P17759654794752032001

`filter[A064594(n+1), A380467(#)]`
-/

namespace A380468.P17759654794752032001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P17759654794752032001

/-! ## A380468.P18157853194426195582

`filter[A167207(n+1), A380467(#)]`
-/

namespace A380468.P18157853194426195582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P18157853194426195582

/-! ## A380468.P14157231656257541617

`filter[A072774(n+1), A380467(#)]`
-/

namespace A380468.P14157231656257541617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P14157231656257541617

/-! ## A380468.P10660102196241832854

`filter[A210490(n+1), A380467(#)]`
-/

namespace A380468.P10660102196241832854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P10660102196241832854

/-! ## A380468.P2380292932228420869

`filter[A065200(n+1), A380467(#)]`
-/

namespace A380468.P2380292932228420869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P2380292932228420869

/-! ## A380468.P15473595951307165850

`filter[A304678(n+1), A380467(#)]`
-/

namespace A380468.P15473595951307165850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P15473595951307165850

/-! ## A380468.P8243944417531706370

`filter[A193304(n+1), A380467(#)]`
-/

namespace A380468.P8243944417531706370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P8243944417531706370

/-! ## A380468.P14281221125724355861

`filter[A336223(n+1), A380467(#)]`
-/

namespace A380468.P14281221125724355861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P14281221125724355861

/-! ## A380468.P7018159782317957056

`filter[A197680(n+1), A380467(#)]`
-/

namespace A380468.P7018159782317957056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P7018159782317957056

/-! ## A380468.P4948009592383026291

`filter[A240370(n+1), A380467(#)]`
-/

namespace A380468.P4948009592383026291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380468.P4948009592383026291

/-!
# A380469: a(n) = 1 if n is squarefree, but A380459(n) has a factor of the form p^p, otherwise 0.

The programs for A380469, there is no canonical definition to state claims against.
-/

/-! ## A380469.P16761562556919160484

`A008966(n+1)*(1-A380467(n+1))`
-/

namespace A380469.P16761562556919160484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * (1 - A380467 (n + 1))

end

end A380469.P16761562556919160484

/-! ## A380469.P9690457610746351669

`char[A380470(n+1)-1]`
-/

namespace A380469.P9690457610746351669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380470 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380469.P9690457610746351669

/-! ## A380469.P503386464850782662

`A008966(n+1)-A380467(n+1)`
-/

namespace A380469.P503386464850782662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) - A380467 (n + 1)

end

end A380469.P503386464850782662

/-! ## A380469.P17486299398644823457

`A354819(n+1)-A380477(n+1)`
-/

namespace A380469.P17486299398644823457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354819 (n + 1) - A380477 (n + 1)

end

end A380469.P17486299398644823457

/-! ## A380469.P3063545381795131867

`A008683(n+1)²-A380467(n+1)`
-/

namespace A380469.P3063545381795131867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 - A380467 (n + 1)

end

end A380469.P3063545381795131867

/-! ## A380469.P228669010060517440

`A380467(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))-A380467(n+1)`
-/

namespace A380469.P228669010060517440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380467 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2))) - A380467 (n + 1)

end

end A380469.P228669010060517440

/-! ## A380469.P17269872903572614879

`A380467(A328400(n+1))-A380467(n+1)`
-/

namespace A380469.P17269872903572614879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380467 (A328400 (n + 1)).toNat - A380467 (n + 1)

end

end A380469.P17269872903572614879

/-! ## A380469.P14415680249051681085

`A000007(C(A000188(n+1), A380528(n+1)))`
-/

namespace A380469.P14415680249051681085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose (A000188 (n + 1)).toNat (A380528 (n + 1)).toNat)

end

end A380469.P14415680249051681085

/-! ## A380469.P9125922235195055398

`and(A090303(n+1), A354819(n+1))`
-/

namespace A380469.P9125922235195055398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090303 (n + 1)) (A354819 (n + 1))

end

end A380469.P9125922235195055398

/-!
# A380470: Numbers k that are squarefree, but A380459(k) is not in A048103.

The programs for A380470, there is no canonical definition to state claims against.
-/

/-! ## A380470.P7985598929395892448

`eq[1, A380469(n+1)]+1`
-/

namespace A380470.P7985598929395892448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380469 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380470.P7985598929395892448

/-! ## A380470.P3579586842815068306

`filter[A005117(n+1), A380469(#)]`
-/

namespace A380470.P3579586842815068306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P3579586842815068306

/-! ## A380470.P4674796723325459018

`filter[A344585(n+2), A380469(#)]`
-/

namespace A380470.P4674796723325459018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344585 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P4674796723325459018

/-! ## A380470.P13912543212512970138

`filter[A348506(n+2), A380469(#)]`
-/

namespace A380470.P13912543212512970138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P13912543212512970138

/-! ## A380470.P16727354503838929555

`filter[A120944(n+1), A380469(#)]`
-/

namespace A380470.P16727354503838929555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P16727354503838929555

/-! ## A380470.P573506181089316327

`filter[A000469(n+1), A380469(#)]`
-/

namespace A380470.P573506181089316327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P573506181089316327

/-! ## A380470.P5571804709269053397

`filter[A182853(n+1), A380469(#)]`
-/

namespace A380470.P5571804709269053397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P5571804709269053397

/-! ## A380470.P4628337224186250701

`filter[A388427(n+1), A380469(#)]`
-/

namespace A380470.P4628337224186250701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P4628337224186250701

/-! ## A380470.P6238343456880135367

`filter[A230766(n+1), A380469(#)]`
-/

namespace A380470.P6238343456880135367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P6238343456880135367

/-! ## A380470.P6511277950587558299

`filter[A362605(n+1), A380469(#)]`
-/

namespace A380470.P6511277950587558299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P6511277950587558299

/-! ## A380470.P12694115511448028741

`filter[A067582(n+1), A380469(#)]`
-/

namespace A380470.P12694115511448028741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P12694115511448028741

/-! ## A380470.P12455479954392354643

`filter[A080365(n+1), A380469(#)]`
-/

namespace A380470.P12455479954392354643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P12455479954392354643

/-! ## A380470.P11146788517685662848

`filter[A087249(n+1), A380469(#)]`
-/

namespace A380470.P11146788517685662848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P11146788517685662848

/-! ## A380470.P8259254883904535535

`filter[A080364(n+1), A380469(#)]`
-/

namespace A380470.P8259254883904535535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P8259254883904535535

/-! ## A380470.P3946199623906605120

`filter[A365535(n+1), A380469(#)]`
-/

namespace A380470.P3946199623906605120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P3946199623906605120

/-! ## A380470.P14565795521994138728

`filter[A069169(n+1), A380469(#)]`
-/

namespace A380470.P14565795521994138728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P14565795521994138728

/-! ## A380470.P6169230425289611216

`A144338(lt[1, A380529(n+1)])`
-/

namespace A380470.P6169230425289611216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A380470.P6169230425289611216

/-! ## A380470.P6418946319015123828

`filter[A144338(n+1), A380469(#)]`
-/

namespace A380470.P6418946319015123828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P6418946319015123828

/-! ## A380470.P14260450099677055793

`filter[A064594(n+1), A380469(#)]`
-/

namespace A380470.P14260450099677055793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P14260450099677055793

/-! ## A380470.P9039358804062553266

`filter[A167207(n+1), A380469(#)]`
-/

namespace A380470.P9039358804062553266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A380470.P9039358804062553266

/-!
# A380472: a(n) = gcd_{primes P >= prime(n+1)} Product_{i=1..n} (P^2-i^2).

The programs for A380472, the canonical program `A380472.P11181608947732336394` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380472 has offset 0).

The definition of A380472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380472.P11181608947732336394

`(2*n+2)!*(3/4-(-1)^n/4)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A380472

/-- `(2*n+2)!*(3/4-(-1)^n/4)` -/
def P11181608947732336394.Spec : Prop :=
  ∀ n, P11181608947732336394.a n = (A380472 n : ℚ)

end A380472

/-! ## A380472.P5668970417570355638

`(n+1)*(2*n+1)!*gcd(n+1, n-1)`
-/

namespace A380472.P5668970417570355638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial (2 * n + 1) * Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)

end

end A380472.P5668970417570355638

namespace A380472

/-- `(n+1)*(2*n+1)!*gcd(n+1, n-1)` -/
def P5668970417570355638.Spec : Prop :=
  ∀ n, (P5668970417570355638.a n : ℤ) = A380472 n

end A380472

/-! ## A380472.P11084104849877978837

`A077012(A139592(n+1))`
-/

namespace A380472.P11084104849877978837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (A139592 (n + 1)).toNat

end

end A380472.P11084104849877978837

namespace A380472

/-- `A077012(A139592(n+1))` -/
def P11084104849877978837.Spec : Prop :=
  ∀ n, P11084104849877978837.a n = A380472 n

end A380472

/-! ## A380472.P12616323932735767338

`A187741(A047524(n+1))`
-/

namespace A380472.P12616323932735767338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187741 (A047524 (n + 1)).toNat

end

end A380472.P12616323932735767338

namespace A380472

/-- `A187741(A047524(n+1))` -/
def P12616323932735767338.Spec : Prop :=
  ∀ n, P12616323932735767338.a n = A380472 n

end A380472

/-! ## A380472.P6680326366060133817

`A145888(A317298(n+1))`
-/

namespace A380472.P6680326366060133817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145888 (A317298 (n + 1)).toNat

end

end A380472.P6680326366060133817

namespace A380472

/-- `A145888(A317298(n+1))` -/
def P6680326366060133817.Spec : Prop :=
  ∀ n, P6680326366060133817.a n = A380472 n

end A380472

/-!
# A380473: Numbers k neither squarefree nor prime power (i.e., in A126706) such that A119288(k) <= A003557(k) < A053669(k) < A006530(k).

The programs for A380473, there is no canonical definition to state claims against.
-/

/-! ## A380473.P8308961214273637190

`∩[A364998(n+1), A386294(n+1)]`
-/

namespace A380473.P8308961214273637190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380473.P8308961214273637190

/-! ## A380473.P15854011959920890156

`∩[A364998(n+1), A368089(n+1)]`
-/

namespace A380473.P15854011959920890156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380473.P15854011959920890156

/-! ## A380473.P8175280336269393835

`∩[A073492(n+1), A364998(n+1)]`
-/

namespace A380473.P8175280336269393835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380473.P8175280336269393835

/-! ## A380473.P11805300784854997114

`∩[A080259(n+1), A364998(n+1)]`
-/

namespace A380473.P11805300784854997114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380473.P11805300784854997114

/-!
# A380474: Numbers k such that A380459(k) has no divisors of the form p^p, while A003415(k) has such a divisor or is 0.

The programs for A380474, there is no canonical definition to state claims against.
-/

/-! ## A380474.P10150497493802089629

`∩[A088686(n+1), A369007(n+1)]`
-/

namespace A380474.P10150497493802089629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380474.P10150497493802089629

/-! ## A380474.P6249072642658797060

`∩[A341031(n+1), A369007(n+1)]`
-/

namespace A380474.P6249072642658797060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380474.P6249072642658797060

/-! ## A380474.P10721189679511759101

`∩[A082003(n+1), A369007(n+1)]`
-/

namespace A380474.P10721189679511759101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380474.P10721189679511759101

/-!
# A380475: a(n) is the least term in A380468 that has exactly n prime factors.

The programs for A380475, there is no canonical definition to state claims against.
-/

/-! ## A380475.P10336034937487444

`∏{p}[A303117(A000040(n+1)), #]`
-/

namespace A380475.P10336034937487444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303117 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A380475.P10336034937487444

/-!
# A380477: a(n) = 1 if n is not a prime, and A380459(n) has no divisors of form p^p, otherwise 0.

The programs for A380477, there is no canonical definition to state claims against.
-/

/-! ## A380477.P6543176204051468637

`A380467(n+1)-A010051(n+1)`
-/

namespace A380477.P6543176204051468637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380467 (n + 1) - A010051 (n + 1)

end

end A380477.P6543176204051468637

/-! ## A380477.P11901346593211586161

`A266070(n)*A380467(n+1)`
-/

namespace A380477.P11901346593211586161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n * A380467 (n + 1)

end

end A380477.P11901346593211586161

/-! ## A380477.P5827243367137366219

`A354819(n+1)-A380469(n+1)`
-/

namespace A380477.P5827243367137366219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354819 (n + 1) - A380469 (n + 1)

end

end A380477.P5827243367137366219

/-! ## A380477.P13024988492068179984

`A005171(n+1)*A380467(n+1)`
-/

namespace A380477.P13024988492068179984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A380467 (n + 1)

end

end A380477.P13024988492068179984

/-! ## A380477.P14069574388432190681

`(1-A349394(n+1))*A380467(n+1)`
-/

namespace A380477.P14069574388432190681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A349394 (n + 1)) * A380467 (n + 1)

end

end A380477.P14069574388432190681

/-! ## A380477.P15684363526217789779

`A380467(A093007(n+1))`
-/

namespace A380477.P15684363526217789779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380467 (A093007 (n + 1)).toNat

end

end A380477.P15684363526217789779

/-! ## A380477.P10255230775343933042

`and(A343291(n), A380467(n+1))`
-/

namespace A380477.P10255230775343933042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A343291 n) (A380467 (n + 1))

end

end A380477.P10255230775343933042

/-! ## A380477.P6606842176671591318

`and(A133546(n+1), A380467(n+1))`
-/

namespace A380477.P6606842176671591318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133546 (n + 1)) (A380467 (n + 1))

end

end A380477.P6606842176671591318

/-! ## A380477.P4885017464978576634

`A380467(A103164(n+1))`
-/

namespace A380477.P4885017464978576634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380467 (A103164 (n + 1)).toNat

end

end A380477.P4885017464978576634

/-! ## A380477.P6191078837797132177

`A380467(A140580(n+1))`
-/

namespace A380477.P6191078837797132177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380467 (A140580 (n + 1)).toNat

end

end A380477.P6191078837797132177

/-! ## A380477.P2920371646259781360

`and(A026765(n), A380467(n+1))`
-/

namespace A380477.P2920371646259781360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026765 n) (A380467 (n + 1))

end

end A380477.P2920371646259781360

/-! ## A380477.P13944026706316912203

`and(A129986(n), A380467(n+1))`
-/

namespace A380477.P13944026706316912203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129986 n) (A380467 (n + 1))

end

end A380477.P13944026706316912203

/-! ## A380477.P12515728125581066658

`and(A129986(n), A380524(n+1))`
-/

namespace A380477.P12515728125581066658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129986 n) (A380524 (n + 1))

end

end A380477.P12515728125581066658

/-! ## A380477.P15291448374791716408

`and(A373392(n), A380467(n+1))`
-/

namespace A380477.P15291448374791716408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A373392 n) (A380467 (n + 1))

end

end A380477.P15291448374791716408

/-! ## A380477.P12392724044638642469

`and(A373245(n), A380467(n+1))`
-/

namespace A380477.P12392724044638642469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A373245 n) (A380467 (n + 1))

end

end A380477.P12392724044638642469

/-! ## A380477.P6747382608062707764

`and(A307557(n), A380467(n+1))`
-/

namespace A380477.P6747382608062707764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A307557 n) (A380467 (n + 1))

end

end A380477.P6747382608062707764

/-! ## A380477.P10896383419044075417

`and(A165137(n), A353629(n+1))`
-/

namespace A380477.P10896383419044075417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165137 n) (A353629 (n + 1))

end

end A380477.P10896383419044075417

/-!
# A380478: Nonprime numbers k such that A380459(k) has no divisors of form p^p.

The programs for A380478, there is no canonical definition to state claims against.
-/

/-! ## A380478.P5686229512640657621

`filter[A380468(n+1), A005171(#)]`
-/

namespace A380478.P5686229512640657621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A380478.P5686229512640657621

/-! ## A380478.P6314630400211092085

`filter[A380468(n+1), A217586(#)]`
-/

namespace A380478.P6314630400211092085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A380478.P6314630400211092085

/-! ## A380478.P17628633885944865506

`eq[1, A380477(n+1)]+1`
-/

namespace A380478.P17628633885944865506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380477 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380478.P17628633885944865506

/-! ## A380478.P3495354947692729557

`filter[A360014(n+1), A380467(#)]`
-/

namespace A380478.P3495354947692729557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380478.P3495354947692729557

/-! ## A380478.P1036029111715683961

`filter[A360014(n+1), A380477(#)]`
-/

namespace A380478.P1036029111715683961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P1036029111715683961

/-! ## A380478.P5757445521777499961

`∩[A360014(n+1), A380468(n+1)]`
-/

namespace A380478.P5757445521777499961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380478.P5757445521777499961

/-! ## A380478.P15604634887450218989

`filter[A367683(n+1), A380477(#)]`
-/

namespace A380478.P15604634887450218989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P15604634887450218989

/-! ## A380478.P4579482679225866254

`filter[A113127(n), A380477(#)]`
-/

namespace A380478.P4579482679225866254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P4579482679225866254

/-! ## A380478.P7456486481585741105

`filter[A111284(n+1), A380477(#)]`
-/

namespace A380478.P7456486481585741105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P7456486481585741105

/-! ## A380478.P13685638837926055066

`filter[A133653(n+1), A380467(#)]`
-/

namespace A380478.P13685638837926055066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A380478.P13685638837926055066

/-! ## A380478.P6003393076483995000

`filter[A133653(n+1), A380477(#)]`
-/

namespace A380478.P6003393076483995000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P6003393076483995000

/-! ## A380478.P13149545178196879103

`filter[A139544(n+1), A380477(#)]`
-/

namespace A380478.P13149545178196879103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P13149545178196879103

/-! ## A380478.P10044456573332550641

`∩[A133653(n+1), A380468(n+1)]`
-/

namespace A380478.P10044456573332550641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380478.P10044456573332550641

/-! ## A380478.P4267194979269763288

`∩[A205783(n+1), A380468(n+1)]`
-/

namespace A380478.P4267194979269763288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380478.P4267194979269763288

/-! ## A380478.P3319283543804783359

`filter[A120736(n+1), A380477(#)]`
-/

namespace A380478.P3319283543804783359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P3319283543804783359

/-! ## A380478.P10678718513809489245

`filter[A173773(n), A380477(#)]`
-/

namespace A380478.P10678718513809489245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P10678718513809489245

/-! ## A380478.P4283606606774398765

`filter[A047396(n+1), A380477(#)]`
-/

namespace A380478.P4283606606774398765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P4283606606774398765

/-! ## A380478.P3401389791650238630

`filter[A381956(n+1), A380477(#)]`
-/

namespace A380478.P3401389791650238630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P3401389791650238630

/-! ## A380478.P3643806231065526150

`filter[A080324(n+1), A380477(#)]`
-/

namespace A380478.P3643806231065526150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P3643806231065526150

/-! ## A380478.P9014698500842847411

`filter[A089269(n+1), A380477(#)]`
-/

namespace A380478.P9014698500842847411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A380478.P9014698500842847411

/-!
# A380479: Number of prime factors (with repetition) in Product_{d|n} A276086(n/d)^A349394(d).

The programs for A380479, there is no canonical definition to state claims against.
-/

/-! ## A380479.P10579483475434926179

`A001222(A380459(n+1))`
-/

namespace A380479.P10579483475434926179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A380459 (n + 1)).toNat

end

end A380479.P10579483475434926179

/-!
# A380480: The maximal exponent in the prime factorization of Product_{d|n} A276086(n/d)^A349394(d).

The programs for A380480, there is no canonical definition to state claims against.
-/

/-! ## A380480.P10186398984277170156

`A051903(A380459(n+1))`
-/

namespace A380480.P10186398984277170156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A380459 (n + 1)).toNat

end

end A380480.P10186398984277170156

/-! ## A380480.P17762908409680069205

`A088388(A380459(n+1))%A000079(n)`
-/

namespace A380480.P17762908409680069205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088388 (A380459 (n + 1)).toNat) (A000079 n)

end

end A380480.P17762908409680069205

/-! ## A380480.P13622642254696668988

`A088388(A380459(n+1)%A020464(n+1))`
-/

namespace A380480.P13622642254696668988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (Int.tmod (A380459 (n + 1)) (A020464 (n + 1))).toNat

end

end A380480.P13622642254696668988

/-! ## A380480.P3137006450845855330

`A088388(A088388(3*n+2)*A380459(n+1))`
-/

namespace A380480.P3137006450845855330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (A088388 (3 * n + 2) * A380459 (n + 1)).toNat

end

end A380480.P3137006450845855330

/-! ## A380480.P8436325333834201956

`A001822(A056189(n+1))`
-/

namespace A380480.P8436325333834201956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A056189 (n + 1)).toNat

end

end A380480.P8436325333834201956

/-!
# A380481: Number of partitions of n into distinct parts less than n and not a multiple of 3.

The programs for A380481, there is no canonical definition to state claims against.
-/

/-! ## A380481.P16263237478638353502

`A003105(n)-A011655(n)`
-/

namespace A380481.P16263237478638353502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n - A011655 n

end

end A380481.P16263237478638353502

/-! ## A380481.P965353728958681683

`A003105(n)-char[A001651(n+1)]`
-/

namespace A380481.P965353728958681683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A380481.P965353728958681683

/-! ## A380481.P1802180484182451551

`A003105(n)-A116543(3*ceil(n/3)-n)`
-/

namespace A380481.P1802180484182451551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n - A116543 (3 * ⌈(n : ℚ) / 3⌉ - (n : ℤ)).toNat

end

end A380481.P1802180484182451551

/-! ## A380481.P11514922253719167543

`A003105(n)-A088911(2*(n+2))`
-/

namespace A380481.P11514922253719167543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n - A088911 (2 * (n + 2))

end

end A380481.P11514922253719167543

/-! ## A380481.P801844116204770286

`A003105(n)-A168182(n²)`
-/

namespace A380481.P801844116204770286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n - A168182 (n ^ 2)

end

end A380481.P801844116204770286

/-!
# A380484: a(n) = 1 if n is congruent to {0, 1, 2, 3, 4, 5} mod 30, otherwise 0.

The programs for A380484, the canonical program `A380484.P430126235261906034` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380484 has offset 0).

The definition of A380484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380484.P430126235261906034

`A079998(floor(n/6))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A380484

/-- `A079998(floor(n/6))` -/
def P430126235261906034.Spec : Prop :=
  ∀ n, P430126235261906034.a n = A380484 n

theorem P430126235261906034.correct : P430126235261906034.Spec := by
  intro n
  simp only [A380484]

end A380484

/-!
# A380485: Numbers congruent to {0, 1, 2, 3, 4, 5} mod 30.

The programs for A380485, the canonical program `A380485.P5591123027622909691` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380485 has offset 1).

The definition of A380485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380485.P5591123027622909691

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=30`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A380485

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P5591123027622909691.Spec : Prop :=
  ∀ n, P5591123027622909691.a n = A380485 (n + 1)

theorem P5591123027622909691.correct : P5591123027622909691.Spec := by
  intro n
  simp only [A380485, Nat.add_sub_cancel]

end A380485

/-! ## A380485.P14252702180912010881

`record[n*A380484(n)]`
-/

namespace A380485.P14252702180912010881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A380484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380485.P14252702180912010881

namespace A380485

/-- `record[n*A380484(n)]` -/
def P14252702180912010881.Spec : Prop :=
  ∀ n, P14252702180912010881.a n = A380485 (n + 1)

end A380485

/-! ## A380485.P778603901092455585

`filter[A391164(n), A380484(#)]`
-/

namespace A380485.P778603901092455585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380484 (f1 j).toNat = 1) n)

end

end A380485.P778603901092455585

namespace A380485

/-- `filter[A391164(n), A380484(#)]` -/
def P778603901092455585.Spec : Prop :=
  ∀ n, P778603901092455585.a n = A380485 (n + 1)

end A380485

/-! ## A380485.P13496026552502349170

`comp[A380486(n+1)]`
-/

namespace A380485.P13496026552502349170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A380485.P13496026552502349170

namespace A380485

/-- `comp[A380486(n+1)]` -/
def P13496026552502349170.Spec : Prop :=
  ∀ n, (P13496026552502349170.a n : ℤ) = A380485 (n + 1)

end A380485

/-! ## A380485.P15798362861701017770

`filter[A272576(n), A380484(#)]`
-/

namespace A380485.P15798362861701017770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380484 (f1 j).toNat = 1) n)

end

end A380485.P15798362861701017770

namespace A380485

/-- `filter[A272576(n), A380484(#)]` -/
def P15798362861701017770.Spec : Prop :=
  ∀ n, P15798362861701017770.a n = A380485 (n + 1)

end A380485

/-! ## A380485.P12413447620320676332

`eq[A010885(n), A274206(n+1)]`
-/

namespace A380485.P12413447620320676332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380485.P12413447620320676332

namespace A380485

/-- `eq[A010885(n), A274206(n+1)]` -/
def P12413447620320676332.Spec : Prop :=
  ∀ n, (P12413447620320676332.a n : ℤ) = A380485 (n + 1)

end A380485

/-! ## A380485.P7773189881808004877

`eq[A065186(n+1), A131793(n+1)]`
-/

namespace A380485.P7773189881808004877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380485.P7773189881808004877

namespace A380485

/-- `eq[A065186(n+1), A131793(n+1)]` -/
def P7773189881808004877.Spec : Prop :=
  ∀ n, (P7773189881808004877.a n : ℤ) = A380485 (n + 1)

end A380485

/-! ## A380485.P10649383912080225903

`eq[A119788(n+1), A380484(n)]`
-/

namespace A380485.P10649383912080225903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380485.P10649383912080225903

namespace A380485

/-- `eq[A119788(n+1), A380484(n)]` -/
def P10649383912080225903.Spec : Prop :=
  ∀ n, (P10649383912080225903.a n : ℤ) = A380485 (n + 1)

end A380485

/-!
# A380486: Numbers not congruent to {0, 1, 2, 3, 4, 5} mod 30.

The programs for A380486, the canonical program `A380486.P15577961548286210421` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380486 has offset 1).

The definition of A380486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380486.P15577961548286210421

`6*∑[char[24*n]]+n`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A380486

/-- `6*∑[char[24*n]]+n` -/
def P15577961548286210421.Spec : Prop :=
  ∀ n, (P15577961548286210421.a n : ℤ) = A380486 (n + 1)

theorem P15577961548286210421.correct : P15577961548286210421.Spec := by
  intro n
  simp only [A380486, Nat.add_sub_cancel]

end A380486

/-! ## A380486.P17234093828460032389

`comp[A380485(n+1)]`
-/

namespace A380486.P17234093828460032389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A380486.P17234093828460032389

namespace A380486

/-- `comp[A380485(n+1)]` -/
def P17234093828460032389.Spec : Prop :=
  ∀ n, (P17234093828460032389.a n : ℤ) = A380486 (n + 1)

end A380486

/-! ## A380486.P11386795618838687720

`comp[n*A380484(n)]`
-/

namespace A380486.P11386795618838687720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A380484 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A380486.P11386795618838687720

namespace A380486

/-- `comp[n*A380484(n)]` -/
def P11386795618838687720.Spec : Prop :=
  ∀ n, (P11386795618838687720.a n : ℤ) = A380486 (n + 1)

end A380486

/-! ## A380486.P15634514638541359504

`eq[A167858(n), A380484(n)]`
-/

namespace A380486.P15634514638541359504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380486.P15634514638541359504

namespace A380486

/-- `eq[A167858(n), A380484(n)]` -/
def P15634514638541359504.Spec : Prop :=
  ∀ n, (P15634514638541359504.a n : ℤ) = A380486 (n + 1)

end A380486

/-! ## A380486.P3025461313034100707

`eq[A181405(n+1), A380484(n)]`
-/

namespace A380486.P3025461313034100707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380486.P3025461313034100707

namespace A380486

/-- `eq[A181405(n+1), A380484(n)]` -/
def P3025461313034100707.Spec : Prop :=
  ∀ n, (P3025461313034100707.a n : ℤ) = A380486 (n + 1)

end A380486

/-! ## A380486.P1577728294684616243

`eq[A186681(n+1), A380484(n)]`
-/

namespace A380486.P1577728294684616243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380486.P1577728294684616243

namespace A380486

/-- `eq[A186681(n+1), A380484(n)]` -/
def P1577728294684616243.Spec : Prop :=
  ∀ n, (P1577728294684616243.a n : ℤ) = A380486 (n + 1)

end A380486

/-! ## A380486.P4796184460114104810

`eq[A186683(n+1), A380484(n)]`
-/

namespace A380486.P4796184460114104810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380486.P4796184460114104810

namespace A380486

/-- `eq[A186683(n+1), A380484(n)]` -/
def P4796184460114104810.Spec : Prop :=
  ∀ n, (P4796184460114104810.a n : ℤ) = A380486 (n + 1)

end A380486

/-! ## A380486.P11200935627659124418

`eq[A226797(n+1), A380484(n)]`
-/

namespace A380486.P11200935627659124418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380486.P11200935627659124418

namespace A380486

/-- `eq[A226797(n+1), A380484(n)]` -/
def P11200935627659124418.Spec : Prop :=
  ∀ n, (P11200935627659124418.a n : ℤ) = A380486 (n + 1)

end A380486

/-! ## A380486.P14815408744634139631

`eq[A242765(n+1), A380484(n)]`
-/

namespace A380486.P14815408744634139631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380486.P14815408744634139631

namespace A380486

/-- `eq[A242765(n+1), A380484(n)]` -/
def P14815408744634139631.Spec : Prop :=
  ∀ n, (P14815408744634139631.a n : ℤ) = A380486 (n + 1)

end A380486

/-! ## A380486.P2791456815746101464

`eq[A299529(n+1), A380484(n)]`
-/

namespace A380486.P2791456815746101464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380486.P2791456815746101464

namespace A380486

/-- `eq[A299529(n+1), A380484(n)]` -/
def P2791456815746101464.Spec : Prop :=
  ∀ n, (P2791456815746101464.a n : ℤ) = A380486 (n + 1)

end A380486

/-! ## A380486.P2778671845791964008

`eq[A299530(n+1), A380484(n)]`
-/

namespace A380486.P2778671845791964008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380486.P2778671845791964008

namespace A380486

/-- `eq[A299530(n+1), A380484(n)]` -/
def P2778671845791964008.Spec : Prop :=
  ∀ n, (P2778671845791964008.a n : ℤ) = A380486 (n + 1)

end A380486

/-!
# A380487: Numbers such that the sum of prime factors without repetition divides the product of prime factors without repetition and each division yields a greater quotient.

The programs for A380487, there is no canonical definition to state claims against.
-/

/-! ## A380487.P8999012008558735675

`eq[n, A019565(A069004(n+1))]`
-/

namespace A380487.P8999012008558735675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A069004 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380487.P8999012008558735675

/-!
# A380488: Array read by descending antidiagonals where row n holds the lexicographically earliest sequence of distinct positive integers such that T(n,k) is a multiple of the sum of base n digits of T(n,k-1), starting from T(n,1) = 1.

The programs for A380488, there is no canonical definition to state claims against.
-/

/-! ## A380488.P5800805303096725145

`A344880(A022176(n))+A208727(n+1)`
-/

namespace A380488.P5800805303096725145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (A022176 n).toNat + A208727 (n + 1)

end

end A380488.P5800805303096725145

/-!
# A380490: Replace prime digits of n by 0's.

The programs for A380490, there is no canonical definition to state claims against.
-/

/-! ## A380490.P2399126724340395625

`A038548(A038549(n+1))-A085563(n+1)`
-/

namespace A380490.P2399126724340395625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A038549 (n + 1)).toNat - A085563 (n + 1)

end

end A380490.P2399126724340395625

/-! ## A380490.P9616433250110916956

`A243347(A243347(n+1))-A085563(n+1)`
-/

namespace A380490.P9616433250110916956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243347 (A243347 (n + 1)).toNat - A085563 (n + 1)

end

end A380490.P9616433250110916956

/-! ## A380490.P14258491172242378333

`A001222(A020714(n))-∑{digits}[n+1, A211396(#)]`
-/

namespace A380490.P14258491172242378333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020714 n).toNat - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A211396 x).sum

end

end A380490.P14258491172242378333

/-!
# A380491: a(n) = n! * Sum_{k=0..n} binomial(2*n-3,k)/(n-k)!.

The programs for A380491, there is no canonical definition to state claims against.
-/

/-! ## A380491.P1607282697777848218

`A175856(A244820(n))-n`
-/

namespace A380491.P1607282697777848218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175856 (A244820 n).toNat - (n : ℤ)

end

end A380491.P1607282697777848218

/-!
# A380492: a(n) = n! * Sum_{k=0..n} binomial(2*n-2,k)/(n-k)!.

The programs for A380492, there is no canonical definition to state claims against.
-/

/-! ## A380492.P10653936534122108472

`A293985(2*n²)`
-/

namespace A380492.P10653936534122108472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (2 * n ^ 2)

end

end A380492.P10653936534122108472

/-! ## A380492.P12006093898155163248

`A176120(A051890(n)-1)`
-/

namespace A380492.P12006093898155163248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A051890 n - 1).toNat

end

end A380492.P12006093898155163248

/-! ## A380492.P1102267513935931271

`A293985(A001105(n))+A000035(2*(n+1))`
-/

namespace A380492.P1102267513935931271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A001105 n).toNat + A000035 (2 * (n + 1))

end

end A380492.P1102267513935931271

/-! ## A380492.P18193787578461205123

`A088699(A117625(n))`
-/

namespace A380492.P18193787578461205123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A117625 n).toNat

end

end A380492.P18193787578461205123

/-! ## A380492.P8616458075634530832

`A088699(A051682(n)+1)`
-/

namespace A380492.P8616458075634530832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A051682 n + 1).toNat

end

end A380492.P8616458075634530832

/-!
# A380493: a(n) = n! * Sum_{k=0..n} binomial(2*n+3,k)/(n-k)!.

The programs for A380493, there is no canonical definition to state claims against.
-/

/-! ## A380493.P12671986242922612428

`A293985(A090288(n+1))`
-/

namespace A380493.P12671986242922612428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A090288 (n + 1)).toNat

end

end A380493.P12671986242922612428

/-! ## A380493.P8542927875837423527

`A176120(A054000(n+2))`
-/

namespace A380493.P8542927875837423527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A054000 (n + 2)).toNat

end

end A380493.P8542927875837423527

/-! ## A380493.P5994134495724424498

`A176120(A001105(n+2)-2)`
-/

namespace A380493.P5994134495724424498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A001105 (n + 2) - 2).toNat

end

end A380493.P5994134495724424498

/-! ## A380493.P2450495973289974300

`A088699(A081267(n+1))`
-/

namespace A380493.P2450495973289974300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A081267 (n + 1)).toNat

end

end A380493.P2450495973289974300

/-! ## A380493.P6375507658711970974

`A088699(A062728(n+1)+1)`
-/

namespace A380493.P6375507658711970974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A062728 (n + 1) + 1).toNat

end

end A380493.P6375507658711970974

/-!
# A380495: Lexicographically earliest infinite sequence of positive integers such that consecutive occurrences of k are separated by k distinct values and each subsequence enclosed by consecutive equal values is distinct.

The programs for A380495, there is no canonical definition to state claims against.
-/

/-! ## A380495.P8642722140454385861

`A001222(A378963(3*n+4)-A156254(n+5))`
-/

namespace A380495.P8642722140454385861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A378963 (3 * n + 4) - A156254 (n + 5)).toNat

end

end A380495.P8642722140454385861

/-!
# A380496: Lenstra excess of the n-th odd prime.

The programs for A380496, there is no canonical definition to state claims against.
-/

/-! ## A380496.P4967775135668776768

`A000290(A000073(n))%A119704(n+3)`
-/

namespace A380496.P4967775135668776768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A000073 n).toNat) (A119704 (n + 3))

end

end A380496.P4967775135668776768

/-!
# A380497: Euler transform of primorial numbers.

The programs for A380497, there is no canonical definition to state claims against.
-/

/-! ## A380497.P6330092064843243584

`A349095(A150728(n))`
-/

namespace A380497.P6330092064843243584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349095 (A150728 n).toNat

end

end A380497.P6330092064843243584

/-!
# A380498: Inverse Euler transform of primorial numbers.

The programs for A380498, there is no canonical definition to state claims against.
-/

/-! ## A380498.P7307679880880870040

`A086719(n+1)+A062610(A006080(2*n+3))`
-/

namespace A380498.P7307679880880870040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086719 (n + 1) + A062610 (A006080 (2 * n + 3)).toNat

end

end A380498.P7307679880880870040

