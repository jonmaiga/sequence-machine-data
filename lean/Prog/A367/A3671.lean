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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A367100: a(n) = Sum_{k=0..n} A000108(k) * A000041(k).

The programs for A367100, there is no canonical definition to state claims against.
-/

/-! ## A367100.P2451173967103743384

`∑[∑{#}[n, C(n, #)²]/(n+1)*A000041(n)]`
-/

namespace A367100.P2451173967103743384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f2 n + 1), Nat.choose n k ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ) * (A000041 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P2451173967103743384

/-! ## A367100.P10573640865216953460

`∑[A000041(n)*A000108(n)]`
-/

namespace A367100.P10573640865216953460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P10573640865216953460

/-! ## A367100.P7604482825601288003

`∑[abs(A000041(n)*A168491(n))]`
-/

namespace A367100.P7604482825601288003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000041 n * A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P7604482825601288003

/-! ## A367100.P16052387410608170925

`∑[sqrt(A001255(n))*A000108(n)]`
-/

namespace A367100.P16052387410608170925
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) * (A000108 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P16052387410608170925

/-! ## A367100.P14383391172868477552

`∑[∑[A002865(n)]*A000108(n)]`
-/

namespace A367100.P14383391172868477552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P14383391172868477552

/-! ## A367100.P17033578377384937823

`∑[(1+A000065(n))*A000108(n)]`
-/

namespace A367100.P17033578377384937823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + A000065 n) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P17033578377384937823

/-! ## A367100.P6836525151407436165

`∑[A000041(n)*A120588(n+1)]`
-/

namespace A367100.P6836525151407436165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P6836525151407436165

/-! ## A367100.P7721704706556714158

`∑[(A120304(n)+2)*A000041(n)]`
-/

namespace A367100.P7721704706556714158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P7721704706556714158

/-! ## A367100.P7085170898649242130

`∑[A000041(n)*A028303(2*n)]`
-/

namespace A367100.P7085170898649242130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A028303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P7085170898649242130

/-! ## A367100.P3875945385664998708

`∑[A000041(n)*A028304(2*n)]`
-/

namespace A367100.P3875945385664998708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P3875945385664998708

/-! ## A367100.P9770613053189934188

`∑[A000108(n)*A035363(2*n)]`
-/

namespace A367100.P9770613053189934188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367100.P9770613053189934188

/-!
# A367101: a(n) = Sum_{k=0..n} A000108(k) * A000009(k).

The programs for A367101, there is no canonical definition to state claims against.
-/

/-! ## A367101.P15281285289630371082

`∑[∑{#}[n, C(n, #)²]/(n+1)*A000009(n)]`
-/

namespace A367101.P15281285289630371082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f2 n + 1), Nat.choose n k ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ) * (A000009 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367101.P15281285289630371082

/-! ## A367101.P13746910344155948175

`∑[A000009(n)*A000108(n)]`
-/

namespace A367101.P13746910344155948175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367101.P13746910344155948175

/-! ## A367101.P18324578273565486521

`∑[abs(A000108(n)*A081360(n))]`
-/

namespace A367101.P18324578273565486521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 n * A081360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367101.P18324578273565486521

/-! ## A367101.P7369943715035286246

`∑[abs(A000009(n)*A168491(n))]`
-/

namespace A367101.P7369943715035286246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000009 n * A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367101.P7369943715035286246

/-! ## A367101.P13299591871714695416

`∑[A000108(n)*∑[A087897(n)]]`
-/

namespace A367101.P13299591871714695416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367101.P13299591871714695416

/-! ## A367101.P13315824781716158795

`∑[A000108(n)*(A111133(n)+1)]`
-/

namespace A367101.P13315824781716158795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (A111133 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367101.P13315824781716158795

/-! ## A367101.P13674072205071056791

`∑[A054242(∑[n])*A000108(n)]`
-/

namespace A367101.P13674072205071056791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f2 j) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367101.P13674072205071056791

/-!
# A367103: Composite numbers c such that pi(c) is the product of pi applied to the distinct prime factors of c.

The programs for A367103, there is no canonical definition to state claims against.
-/

/-! ## A367103.P4306866894512726568

`A128907(A026448(n+1))`
-/

namespace A367103.P4306866894512726568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128907 (A026448 (n + 1)).toNat

end

end A367103.P4306866894512726568

/-! ## A367103.P7369472605886470471

`filter[A341158(3*n), A353481(#)]`
-/

namespace A367103.P7369472605886470471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341158 (3 * n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A367103.P7369472605886470471

/-! ## A367103.P3294812907896700188

`filter[A341158(3*n), A353676(#)]`
-/

namespace A367103.P3294812907896700188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341158 (3 * n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A367103.P3294812907896700188

/-!
# A367105: Least positive integer with n more divisors than distinct subset-sums of prime indices.

The programs for A367105, there is no canonical definition to state claims against.
-/

/-! ## A367105.P6201390470633988989

`fo[A325801(n+1)]+1`
-/

namespace A367105.P6201390470633988989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A367105.P6201390470633988989

/-! ## A367105.P7140609583649230036

`fo[A325794(n+1)-1]+1`
-/

namespace A367105.P7140609583649230036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A367105.P7140609583649230036

/-! ## A367105.P9377991534537055049

`A005179(A379722(n+2)%A105764(3*n+2))`
-/

namespace A367105.P9377991534537055049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (Int.tmod (A379722 (n + 2)) (A105764 (3 * n + 2))).toNat

end

end A367105.P9377991534537055049

/-!
# A367106: Triangle read by rows where T(n,k) is the number of complete length-k integer partitions of n.

The programs for A367106, there is no canonical definition to state claims against.
-/

/-! ## A367106.P3600482063342628278

`A000120(A171871(n)^A106351(n+1))`
-/

namespace A367106.P3600482063342628278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A171871 n : ℚ) ^ (A106351 (n + 1) : ℤ))).toNat

end

end A367106.P3600482063342628278

/-! ## A367106.P8097286339651372962

`A386585(n-A333382(A386635(n+1)))`
-/

namespace A367106.P8097286339651372962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386585 ((n : ℤ) - A333382 (A386635 (n + 1)).toNat).toNat

end

end A367106.P8097286339651372962

/-! ## A367106.P11469207938949474643

`A124769(A325189(n)^A333768(3*n+1))`
-/

namespace A367106.P11469207938949474643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (SequenceMachineLib.roundAway ((A325189 n : ℚ) ^ (A333768 (3 * n + 1) : ℤ))).toNat

end

end A367106.P11469207938949474643

/-! ## A367106.P1820057336455705112

`A059607(n)*A334302((row(n)-col(n))!)`
-/

namespace A367106.P1820057336455705112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 n * A334302 (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat)

end

end A367106.P1820057336455705112

/-! ## A367106.P16779883495391573961

`A053383(4^(row(n)-col(n)))*A059607(n)`
-/

namespace A367106.P16779883495391573961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))).toNat * A059607 n

end

end A367106.P16779883495391573961

/-!
# A367107: Numbers m not divisible by prime(bigomega(m)). Heinz numbers of integer partitions whose length is not a part (counted by A229816).

The programs for A367107, there is no canonical definition to state claims against.
-/

/-! ## A367107.P11505527376619822820

`comp[A325761(1+n)-1]+1`
-/

namespace A367107.P11505527376619822820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325761 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A367107.P11505527376619822820

/-!
# A367108: Triangle read by rows where T(n,k) is the number of integer partitions of n with a unique submultiset summing to k.

The programs for A367108, there is no canonical definition to state claims against.
-/

/-! ## A367108.P14584998428019491989

`A365543(n)-A007814(A157154(n))`
-/

namespace A367108.P14584998428019491989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 n - A007814 (A157154 n).toNat

end

end A367108.P14584998428019491989

/-! ## A367108.P11315048524014065399

`A387704(A098361(n))`
-/

namespace A367108.P11315048524014065399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387704 (A098361 n).toNat

end

end A367108.P11315048524014065399

/-! ## A367108.P2241714158034806561

`A226029(A160708(n+1))`
-/

namespace A367108.P2241714158034806561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A160708 (n + 1)).toNat

end

end A367108.P2241714158034806561

/-! ## A367108.P1988225275093310268

`A366605(A098361(n)+1)`
-/

namespace A367108.P1988225275093310268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366605 (A098361 n + 1).toNat

end

end A367108.P1988225275093310268

/-! ## A367108.P7240254075091357283

`A366605(xor(1, A098361(n)))`
-/

namespace A367108.P7240254075091357283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366605 (Int.xor 1 (A098361 n)).toNat

end

end A367108.P7240254075091357283

/-!
# A367109: Triangle of number of interval-closed sets T(m,n) in the product of two chains [m]x[n], for m <= n, read by rows.

The programs for A367109, there is no canonical definition to state claims against.
-/

/-! ## A367109.P17392338781623368614

`A139491(A169779(n))-A246378(n+1)`
-/

namespace A367109.P17392338781623368614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139491 (A169779 n).toNat - A246378 (n + 1)

end

end A367109.P17392338781623368614

/-!
# A367111: G.f. satisfies A(x) = 1 + x*A(x) + 2*x^3*A(x)^3.

The programs for A367111, the canonical program `A367111.P1543140048882677912` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367111 has offset 0).

The definition of A367111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367111.P1543140048882677912

`∑{#}[floor(n/3), 2^#*C(n, 3*#)*A001764(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367111

/-- `∑{#}[floor(n/3), 2^#*C(n, 3*#)*A001764(#)]` -/
def P1543140048882677912.Spec : Prop :=
  ∀ n, P1543140048882677912.a n = A367111 n

theorem P1543140048882677912.correct : P1543140048882677912.Spec := by
  intro n
  simp only [A367111]

end A367111

/-! ## A367111.P7041247646457810142

`∑{#}[n, (-1)^(n-#)*C(n, #)*A367113(#)]`
-/

namespace A367111.P7041247646457810142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A367113 k : ℚ)

end

end A367111.P7041247646457810142

namespace A367111

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A367113(#)]` -/
def P7041247646457810142.Spec : Prop :=
  ∀ n, P7041247646457810142.a n = (A367111 n : ℚ)

end A367111

/-! ## A367111.P3306957743105379509

`A225055(A376804(n))`
-/

namespace A367111.P3306957743105379509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (A376804 n).toNat

end

end A367111.P3306957743105379509

namespace A367111

/-- `A225055(A376804(n))` -/
def P3306957743105379509.Spec : Prop :=
  ∀ n, P3306957743105379509.a n = A367111 n

end A367111

/-! ## A367111.P1153888655613055461

`A023692(A261017(a(n-1))+1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A367111.P1153888655613055461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A023692 (A261017 (a (n - 1)).toNat + 1).toNat

end

end A367111.P1153888655613055461

namespace A367111

/-- `A023692(A261017(a(n-1))+1)` -/
def P1153888655613055461.Spec : Prop :=
  ∀ n, P1153888655613055461.a n = A367111 n

end A367111

/-!
# A367112: G.f. satisfies A(x) = 1 + 2*x*A(x) + x^3*A(x)^3.

The programs for A367112, the canonical program `A367112.P1177535428976408541` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367112 has offset 0).

The definition of A367112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367112.P1177535428976408541

`∑{#}[floor(n/3), 2^(n-3*#)*C(n, 3*#)*A001764(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367112

/-- `∑{#}[floor(n/3), 2^(n-3*#)*C(n, 3*#)*A001764(#)]` -/
def P1177535428976408541.Spec : Prop :=
  ∀ n, P1177535428976408541.a n = (A367112 n : ℚ)

end A367112

/-! ## A367112.P2752223177126644234

`∑{#}[n, C(n, #)*A071879(#)]`
-/

namespace A367112.P2752223177126644234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A071879 k

end

end A367112.P2752223177126644234

namespace A367112

/-- `∑{#}[n, C(n, #)*A071879(#)]` -/
def P2752223177126644234.Spec : Prop :=
  ∀ n, P2752223177126644234.a n = A367112 n

end A367112

/-! ## A367112.P10692482756219783028

`∑{#}[n, (-1)^(n-#)*C(n, #)*A120985(#)]`
-/

namespace A367112.P10692482756219783028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A120985 k : ℚ)

end

end A367112.P10692482756219783028

namespace A367112

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A120985(#)]` -/
def P10692482756219783028.Spec : Prop :=
  ∀ n, P10692482756219783028.a n = (A367112 n : ℚ)

end A367112

/-!
# A367113: G.f. satisfies A(x) = 1 + 2*x*A(x) + 2*x^3*A(x)^3.

The programs for A367113, the canonical program `A367113.P18288955922143650528` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367113 has offset 0).

The definition of A367113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367113.P18288955922143650528

`∑{#}[floor(n/3), 2^(n-2*#)*C(n, 3*#)*A001764(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367113

/-- `∑{#}[floor(n/3), 2^(n-2*#)*C(n, 3*#)*A001764(#)]` -/
def P18288955922143650528.Spec : Prop :=
  ∀ n, P18288955922143650528.a n = (A367113 n : ℚ)

end A367113

/-! ## A367113.P12144564583574850778

`∑{#}[n, C(n, #)*A367111(#)]`
-/

namespace A367113.P12144564583574850778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A367111 k

end

end A367113.P12144564583574850778

namespace A367113

/-- `∑{#}[n, C(n, #)*A367111(#)]` -/
def P12144564583574850778.Spec : Prop :=
  ∀ n, P12144564583574850778.a n = A367113 n

end A367113

/-! ## A367113.P12097048641181865684

`A233970(A329356(n))+1`
-/

namespace A367113.P12097048641181865684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A329356 n).toNat + 1

end

end A367113.P12097048641181865684

namespace A367113

/-- `A233970(A329356(n))+1` -/
def P12097048641181865684.Spec : Prop :=
  ∀ n, P12097048641181865684.a n = A367113 n

end A367113

/-!
# A367114: G.f. satisfies A(x) = 1 + 2*x*A(x) + x^4*A(x)^4.

The programs for A367114, the canonical program `A367114.P12307501775675068254` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367114 has offset 0).

The definition of A367114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367114.P12307501775675068254

`∑{#}[floor(n/4), 2^(n-4*#)*C(n, 4*#)*A002293(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A367114

/-- `∑{#}[floor(n/4), 2^(n-4*#)*C(n, 4*#)*A002293(#)]` -/
def P12307501775675068254.Spec : Prop :=
  ∀ n, P12307501775675068254.a n = (A367114 n : ℚ)

end A367114

/-! ## A367114.P1367318900217588298

`∑{#}[n, C(n, #)*A127902(#+1)]`
-/

namespace A367114.P1367318900217588298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A127902 (k + 1)

end

end A367114.P1367318900217588298

namespace A367114

/-- `∑{#}[n, C(n, #)*A127902(#+1)]` -/
def P1367318900217588298.Spec : Prop :=
  ∀ n, P1367318900217588298.a n = A367114 n

end A367114

/-! ## A367114.P790713489634528125

`A334965(a(n-1)+n+1)-1` with `a(0)=1`
-/

namespace A367114.P790713489634528125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334965 (a (n - 1) + (n : ℤ) + 1).toNat - 1

end

end A367114.P790713489634528125

namespace A367114

/-- `A334965(a(n-1)+n+1)-1` -/
def P790713489634528125.Spec : Prop :=
  ∀ n, P790713489634528125.a n = A367114 n

end A367114

/-!
# A367115: G.f. satisfies A(x) = 1 + 2*x*A(x) + 2*x^4*A(x)^4.

The programs for A367115, the canonical program `A367115.P6748874283581440746` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367115 has offset 0).

The definition of A367115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367115.P6748874283581440746

`∑{#}[floor(n/4), 2^(n-3*#)*C(n, 4*#)*A002293(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A367115

/-- `∑{#}[floor(n/4), 2^(n-3*#)*C(n, 4*#)*A002293(#)]` -/
def P6748874283581440746.Spec : Prop :=
  ∀ n, P6748874283581440746.a n = (A367115 n : ℚ)

end A367115

/-! ## A367115.P3664881386294468503

`∑{#}[n, C(n, #)*A190590(#+1)]`
-/

namespace A367115.P3664881386294468503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A190590 (k + 1)

end

end A367115.P3664881386294468503

namespace A367115

/-- `∑{#}[n, C(n, #)*A190590(#+1)]` -/
def P3664881386294468503.Spec : Prop :=
  ∀ n, P3664881386294468503.a n = A367115 n

end A367115

/-! ## A367115.P16581156443296934986

`∪[A166952(n), A289431(A168152(n+1))]`
-/

namespace A367115.P16581156443296934986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289431 (A168152 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367115.P16581156443296934986

namespace A367115

/-- `∪[A166952(n), A289431(A168152(n+1))]` -/
def P16581156443296934986.Spec : Prop :=
  ∀ n, (P16581156443296934986.a n : ℤ) = A367115 n

end A367115

/-! ## A367115.P15383091322796664609

`A166952(n)-A332671(A169808(2*(n+1)))`
-/

namespace A367115.P15383091322796664609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166952 n - A332671 (A169808 (2 * (n + 1))).toNat

end

end A367115.P15383091322796664609

namespace A367115

/-- `A166952(n)-A332671(A169808(2*(n+1)))` -/
def P15383091322796664609.Spec : Prop :=
  ∀ n, P15383091322796664609.a n = A367115 n

end A367115

/-! ## A367115.P14433770460036311705

`A166952(n)-A083894(A384621(3*n+4))`
-/

namespace A367115.P14433770460036311705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166952 n - A083894 (A384621 (3 * n + 4)).toNat

end

end A367115.P14433770460036311705

namespace A367115

/-- `A166952(n)-A083894(A384621(3*n+4))` -/
def P14433770460036311705.Spec : Prop :=
  ∀ n, P14433770460036311705.a n = A367115 n

end A367115

/-!
# A367116: a(0) = 1; for n >= 1, a(n) is the largest number m = Product_{j=1..k} (b(j)-1) where {b(1), ..., b(k)} is a vector of positive integers such that Sum_{i=1..k} b(i)^2 = n.

The programs for A367116, there is no canonical definition to state claims against.
-/

/-! ## A367116.P6228121262758803772

`and(A062756(A066983(n+1)), A101120(n+1))`
-/

namespace A367116.P6228121262758803772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062756 (A066983 (n + 1)).toNat) (A101120 (n + 1))

end

end A367116.P6228121262758803772

/-! ## A367116.P9948535747933293901

`A033183(n)*A066099(A360859(3*(n+1)))`
-/

namespace A367116.P9948535747933293901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 n * A066099 (A360859 (3 * (n + 1))).toNat

end

end A367116.P9948535747933293901

/-! ## A367116.P9447100132298680465

`A003188(n+2)%(A249615(A283666(n+1)²)+A137676(n)+1)`
-/

namespace A367116.P9447100132298680465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (n + 2)) (A249615 (A283666 (n + 1) ^ 2).toNat + A137676 n + 1)

end

end A367116.P9447100132298680465

/-! ## A367116.P8296163658737477024

`and(-(n+1), A126043(3*n+5))`
-/

namespace A367116.P8296163658737477024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 1 : ℤ)) (A126043 (3 * n + 5))

end

end A367116.P8296163658737477024

/-! ## A367116.P4253009119024447928

`A229764(A265831(n))`
-/

namespace A367116.P4253009119024447928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229764 (A265831 n).toNat

end

end A367116.P4253009119024447928

/-!
# A367117: Place n points in general position on each side of an equilateral triangle, and join every pair of the 3*n+3 boundary points by a chord; sequence gives number of vertices in the resulting planar graph.

The programs for A367117, the canonical program `A367117.P5781427818143851539` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367117 has offset 0).

The definition of A367117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367117.P6115980089907441353

`ogf((3-3x+42x^2+12x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A367117.P6115980089907441353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 42, 12] [1, -5, 10, -10, 5, -1] n

end

end A367117.P6115980089907441353

namespace A367117

/-- `ogf((3-3x+42x^2+12x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6115980089907441353.Spec : Prop :=
  ∀ n, P6115980089907441353.a n = A367117 n

end A367117

/-! ## A367117.P7187467879781058584

`3/4*(n+1)*(3*n^3+n²+4)`
-/

namespace A367117.P7187467879781058584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (n + 1 : ℚ) * (3 * n ^ 3 + n ^ 2 + 4 : ℚ)

end

end A367117.P7187467879781058584

namespace A367117

/-- `3/4*(n+1)*(3*n^3+n²+4)` -/
def P7187467879781058584.Spec : Prop :=
  ∀ n, P7187467879781058584.a n = (A367117 n : ℚ)

theorem P7187467879781058584.correct : P7187467879781058584.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A367117, Nat.add_sub_cancel, A367117.P7187467879781058584.a, A367117.P5781427818143851539.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A367117, Nat.add_sub_cancel, A367117.P7187467879781058584.a, A367117.P5781427818143851539.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A367117

/-! ## A367117.P5781427818143851539

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=12, a(2)=72, a(3)=282, a(4)=795`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367117

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5781427818143851539.Spec : Prop :=
  ∀ n, P5781427818143851539.a n = A367117 n

theorem P5781427818143851539.correct : P5781427818143851539.Spec := by
  intro n
  simp only [A367117]

end A367117

/-! ## A367117.P11948334607225892285

`A367119(n)-A367118(n)+1`
-/

namespace A367117.P11948334607225892285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367119 n - A367118 n + 1

end

end A367117.P11948334607225892285

namespace A367117

/-- `A367119(n)-A367118(n)+1` -/
def P11948334607225892285.Spec : Prop :=
  ∀ n, P11948334607225892285.a n = A367117 n

end A367117

/-! ## A367117.P3581363725152595984

`A000217(n)*A000217(3*n)+3*(n+1)`
-/

namespace A367117.P3581363725152595984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000217 (3 * n) + (3 * (n + 1) : ℤ)

end

end A367117.P3581363725152595984

namespace A367117

/-- `A000217(n)*A000217(3*n)+3*(n+1)` -/
def P3581363725152595984.Spec : Prop :=
  ∀ n, P3581363725152595984.a n = A367117 n

end A367117

/-!
# A367118: Place n points in general position on each side of an equilateral triangle, and join every pair of the 3*n+3 boundary points by a chord; sequence gives number of regions in the resulting planar graph.

The programs for A367118, there is no canonical definition to state claims against.
-/

/-! ## A367118.P3313133388050426787

`A367119(n)-A367117(n)+1`
-/

namespace A367118.P3313133388050426787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367119 n - A367117 n + 1

end

end A367118.P3313133388050426787

/-! ## A367118.P17420089041419974385

`∑[∑[(3*n)²+1]]+C(3*n², 2)/3`
-/

namespace A367118.P17420089041419974385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (3 * n ^ 2) 2 : ℚ) / 3

end

end A367118.P17420089041419974385

/-! ## A367118.P11174585523444137570

`(∑[n]+n²)²+n*(3*n²+7*n+6)/2+1`
-/

namespace A367118.P11174585523444137570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2) ^ 2 : ℕ) : ℚ) + ((n : ℚ) * ((3 * n ^ 2 + 7 * n + 6 : ℚ) / 2) + 1)

end

end A367118.P11174585523444137570

/-! ## A367118.P1140539724987718452

`A366253(∑[n]+3)`
-/

namespace A367118.P1140539724987718452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366253 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A367118.P1140539724987718452

/-! ## A367118.P18337116506956987604

`record[A366253(n+3)/A118180(n)]`
-/

namespace A367118.P18337116506956987604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366253 (n + 3) : ℚ) / (A118180 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367118.P18337116506956987604

/-!
# A367119: Place n points in general position on each side of an equilateral triangle, and join every pair of the 3*n+3 boundary points by a chord; sequence gives number of edges in the resulting planar graph.

The programs for A367119, there is no canonical definition to state claims against.
-/

/-! ## A367119.P5412624991986520825

`A367117(n)+A367118(n)-1`
-/

namespace A367119.P5412624991986520825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367117 n + A367118 n - 1

end

end A367119.P5412624991986520825

/-! ## A367119.P11464454567894759819

`3/2*(3*n^4+4*n^3+3*n²+4*n+2)`
-/

namespace A367119.P11464454567894759819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (3 * n ^ 4 + 4 * n ^ 3 + 3 * n ^ 2 + 4 * n + 2 : ℚ)

end

end A367119.P11464454567894759819

/-! ## A367119.P17939456382978694083

`A367190(∑[n]+3)`
-/

namespace A367119.P17939456382978694083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367190 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A367119.P17939456382978694083

/-! ## A367119.P1763295092957826039

`record[A367190(n+3)/A001263(n+1)]`
-/

namespace A367119.P1763295092957826039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367190 (n + 3) : ℚ) / (A001263 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367119.P1763295092957826039

/-! ## A367119.P16055517054683057873

`record[A367190(n+3)/A130152(n+1)]`
-/

namespace A367119.P16055517054683057873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367190 (n + 3) : ℚ) / (A130152 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367119.P16055517054683057873

/-!
# A367121: Place n points in general position on each side of a square, and join every pair of the 4*n+4 boundary points by a chord; sequence gives number of regions in the resulting planar graph.

The programs for A367121, there is no canonical definition to state claims against.
-/

/-! ## A367121.P14009869862073275364

`A367122(n)-A334698(n+1)+1`
-/

namespace A367121.P14009869862073275364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367122 n - A334698 (n + 1) + 1

end

end A367121.P14009869862073275364

/-! ## A367121.P6700252422742330566

`17/2*n^4+19*n^3+43/2*n²+14*n+4`
-/

namespace A367121.P6700252422742330566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) / 2 * (n ^ 4 : ℚ) + (19 * n ^ 3 : ℚ) + (43 : ℚ) / 2 * (n ^ 2 : ℚ) + (14 * n : ℚ) + 4

end

end A367121.P6700252422742330566

/-! ## A367121.P16879882094784449587

`A366253(∑[n+1]+4)`
-/

namespace A367121.P16879882094784449587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366253 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A367121.P16879882094784449587

/-!
# A367122: Place n points in general position on each side of a square, and join every pair of the 4*n+4 boundary points by a chord; sequence gives number of edges in the resulting planar graph.

The programs for A367122, there is no canonical definition to state claims against.
-/

/-! ## A367122.P8340891781133088815

`A334698(n+1)+A367121(n)-1`
-/

namespace A367122.P8340891781133088815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334698 (n + 1) + A367121 n - 1

end

end A367122.P8340891781133088815

/-! ## A367122.P8968284302113699611

`17*n^4+38*n^3+37*n²+24*n+8`
-/

namespace A367122.P8968284302113699611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n ^ 4 + 38 * n ^ 3 + 37 * n ^ 2 + 24 * n + 8

end

end A367122.P8968284302113699611

/-! ## A367122.P2319395925966107060

`A367190(∑[n+1]+4)`
-/

namespace A367122.P2319395925966107060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367190 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A367122.P2319395925966107060

/-!
# A367123: Number of Hamiltonian cycles in the n-omino graph defined in A098891.

The programs for A367123, there is no canonical definition to state claims against.
-/

/-! ## A367123.P797451876869624033

`A131689(floor(C(3*n, n)/15))`
-/

namespace A367123.P797451876869624033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 ⌊(Nat.choose (3 * n) n : ℚ) / 15⌋.toNat

end

end A367123.P797451876869624033

/-!
# A367124: Maximum degree of the n-omino graph defined in A098891.

The programs for A367124, there is no canonical definition to state claims against.
-/

/-! ## A367124.P706408216488833776

`A367437(n+1)+A111892(n+2)%A010343(n+1)`
-/

namespace A367124.P706408216488833776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367437 (n + 1) + Int.tmod (A111892 (n + 2)) (A010343 (n + 1))

end

end A367124.P706408216488833776

/-! ## A367124.P15378462772030664893

`A367437(n+1)+A103674(A003462(n))`
-/

namespace A367124.P15378462772030664893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367437 (n + 1) + A103674 (A003462 n).toNat

end

end A367124.P15378462772030664893

/-! ## A367124.P2508151657576342706

`A367437(n+1)+A103674(A135335(n))`
-/

namespace A367124.P2508151657576342706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367437 (n + 1) + A103674 (A135335 n).toNat

end

end A367124.P2508151657576342706

/-! ## A367124.P16338348695493597228

`A367437(n+1)+A268310(A000108(n))`
-/

namespace A367124.P16338348695493597228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367437 (n + 1) + A268310 (A000108 n).toNat

end

end A367124.P16338348695493597228

/-! ## A367124.P3751615706096592802

`A367437(n+1)+A293881(A060828(n))`
-/

namespace A367124.P3751615706096592802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367437 (n + 1) + A293881 (A060828 n).toNat

end

end A367124.P3751615706096592802

/-!
# A367131: a(n) is the sum of the divisors of A000058(n) (Sylvester's sequence).

The programs for A367131, the canonical program `A367131.P12722315536028894090` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367131 has offset 0).

The definition of A367131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367131.P12722315536028894090

`A000203(A000058(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367131

/-- `A000203(A000058(n))` -/
def P12722315536028894090.Spec : Prop :=
  ∀ n, P12722315536028894090.a n = A367131 n

theorem P12722315536028894090.correct : P12722315536028894090.Spec := by
  intro n
  simp only [A367131]

end A367131

/-!
# A367132: a(n) = phi(A000058(n)) where phi is the Euler totient function and A000058 is Sylvester's sequence.

The programs for A367132, the canonical program `A367132.P13460630829077045525` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367132 has offset 0).

The definition of A367132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367132.P13460630829077045525

`A000010(A000058(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A367132

/-- `A000010(A000058(n))` -/
def P13460630829077045525.Spec : Prop :=
  ∀ n, P13460630829077045525.a n = A367132 n

theorem P13460630829077045525.correct : P13460630829077045525.Spec := by
  intro n
  simp only [A367132]

end A367132

/-!
# A367133: Rank of the n X n matrix whose terms are the n^2 values of isprime(x) from 1 to n^2.

The programs for A367133, there is no canonical definition to state claims against.
-/

/-! ## A367133.P10747518918104000971

`A097807(A014375(n))+A000010(n+1)`
-/

namespace A367133.P10747518918104000971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A014375 n).toNat + A000010 (n + 1)

end

end A367133.P10747518918104000971

/-! ## A367133.P8030751178290171007

`A106400(A068314(n+1))+A000010(n+1)`
-/

namespace A367133.P8030751178290171007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A068314 (n + 1)).toNat + A000010 (n + 1)

end

end A367133.P8030751178290171007

/-! ## A367133.P5399235140454033475

`A374385(A013929(2*n+5))+A000010(n+1)`
-/

namespace A367133.P5399235140454033475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374385 (A013929 (2 * n + 5)).toNat + A000010 (n + 1)

end

end A367133.P5399235140454033475

/-! ## A367133.P824060567985444003

`A033999(A055712(n+1))+A000010(n+1)`
-/

namespace A367133.P824060567985444003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A055712 (n + 1)).toNat + A000010 (n + 1)

end

end A367133.P824060567985444003

/-! ## A367133.P7958057494985116599

`A033999(A090037(n+1))+A000010(n+1)`
-/

namespace A367133.P7958057494985116599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A090037 (n + 1)).toNat + A000010 (n + 1)

end

end A367133.P7958057494985116599

/-!
# A367134: E.g.f. satisfies A(x) = 1/(2 - exp(x*A(x)^2)).

The programs for A367134, there is no canonical definition to state claims against.
-/

/-! ## A367134.P16374665303164605718

`A361093(n)+A124027(A000108(n))`
-/

namespace A367134.P16374665303164605718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361093 n + A124027 (A000108 n).toNat

end

end A367134.P16374665303164605718

/-!
# A367135: E.g.f. satisfies A(x) = 1/(2 - exp(x*A(x)^3)).

The programs for A367135, there is no canonical definition to state claims against.
-/

/-! ## A367135.P7323729196709576148

`A080036(A219645(6*a(n-1)-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=9`
-/

namespace A367135.P7323729196709576148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 9] fun n a =>
  A080036 (A219645 (6 * a (n - 1) - a (n - 2)).toNat).toNat

end

end A367135.P7323729196709576148

/-!
# A367136: E.g.f. satisfies A(x) = 1/(1 - log(1 + x*A(x)^2)).

The programs for A367136, there is no canonical definition to state claims against.
-/

/-! ## A367136.P447987051350677293

`A249340(A148751(n))`
-/

namespace A367136.P447987051350677293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249340 (A148751 n).toNat

end

end A367136.P447987051350677293

/-!
# A367137: E.g.f. satisfies A(x) = 1/(1 - log(1 + x*A(x)^3)).

The programs for A367137, there is no canonical definition to state claims against.
-/

/-! ## A367137.P3766478191005447771

`A014681(A367152(n))-1`
-/

namespace A367137.P3766478191005447771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A367152 n).toNat - 1

end

end A367137.P3766478191005447771

/-!
# A367138: E.g.f. satisfies A(x) = 1/(1 + log(1 - x*A(x)^2)).

The programs for A367138, there is no canonical definition to state claims against.
-/

/-! ## A367138.P11238299307795265159

`A005100(A081066(n))`
-/

namespace A367138.P11238299307795265159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A081066 n).toNat

end

end A367138.P11238299307795265159

/-!
# A367140: a(n) = Sum_{prime p|n} p^A001222(n).

The programs for A367140, the canonical program `A367140.P12237919558071202463` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367140 has offset 1).

The definition of A367140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367140.P12237919558071202463

`∑{p}[n+1, #^A001222(n+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367140

/-- `∑{p}[n+1, #^A001222(n+1)]` -/
def P12237919558071202463.Spec : Prop :=
  ∀ n, P12237919558071202463.a n = (A367140 (n + 1) : ℚ)

end A367140

/-! ## A367140.P11536355626918918248

`A369741(A253560(1+n))`
-/

namespace A367140.P11536355626918918248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369741 (A253560 (1 + n)).toNat

end

end A367140.P11536355626918918248

namespace A367140

/-- `A369741(A253560(1+n))` -/
def P11536355626918918248.Spec : Prop :=
  ∀ n, P11536355626918918248.a n = A367140 (n + 1)

end A367140

/-! ## A367140.P5514206778615554130

`A369741(A285109(1+n))`
-/

namespace A367140.P5514206778615554130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369741 (A285109 (1 + n)).toNat

end

end A367140.P5514206778615554130

namespace A367140

/-- `A369741(A285109(1+n))` -/
def P5514206778615554130.Spec : Prop :=
  ∀ n, P5514206778615554130.a n = A367140 (n + 1)

end A367140

/-! ## A367140.P11018301563013128719

`A369741((n+1)*A006530(n+1))`
-/

namespace A367140.P11018301563013128719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369741 ((n + 1 : ℤ) * A006530 (n + 1)).toNat

end

end A367140.P11018301563013128719

namespace A367140

/-- `A369741((n+1)*A006530(n+1))` -/
def P11018301563013128719.Spec : Prop :=
  ∀ n, P11018301563013128719.a n = A367140 (n + 1)

end A367140

/-! ## A367140.P10091645352776807786

`A369741((n+1)*A020639(n+1))`
-/

namespace A367140.P10091645352776807786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369741 ((n + 1 : ℤ) * A020639 (n + 1)).toNat

end

end A367140.P10091645352776807786

namespace A367140

/-- `A369741((n+1)*A020639(n+1))` -/
def P10091645352776807786.Spec : Prop :=
  ∀ n, P10091645352776807786.a n = A367140 (n + 1)

end A367140

/-! ## A367140.P5044330047978376112

`A008475(∏{p}[n+1, #]^∑{e}[n+1, #])`
-/

namespace A367140.P5044330047978376112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A367140.P5044330047978376112

namespace A367140

/-- `A008475(∏{p}[n+1, #]^∑{e}[n+1, #])` -/
def P5044330047978376112.Spec : Prop :=
  ∀ n, P5044330047978376112.a n = A367140 (n + 1)

end A367140

/-! ## A367140.P16917798719035330077

`A008475(A306329(n+1))`
-/

namespace A367140.P16917798719035330077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A306329 (n + 1)).toNat

end

end A367140.P16917798719035330077

namespace A367140

/-- `A008475(A306329(n+1))` -/
def P16917798719035330077.Spec : Prop :=
  ∀ n, P16917798719035330077.a n = A367140 (n + 1)

end A367140

/-!
# A367141: The orders, without repetition, of elements of the Monster simple group.

The programs for A367141, there is no canonical definition to state claims against.
-/

/-! ## A367141.P8908607128184027718

`lt[1, A028982(A366481(n+1)+1)]+1`
-/

namespace A367141.P8908607128184027718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A366481 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A367141.P8908607128184027718

/-! ## A367141.P1033592895543388589

`lt[A262898(A015750(n)), A160173(3*(n+1))]`
-/

namespace A367141.P1033592895543388589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262898 (A015750 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160173 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367141.P1033592895543388589

/-! ## A367141.P11852237685730023288

`lt[A117910(A029189(2*(n+2))), A122260(n+1)]`
-/

namespace A367141.P11852237685730023288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A029189 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367141.P11852237685730023288

/-! ## A367141.P1611185316131647699

`lt[A181878(A014682(n)), 4*n]`
-/

namespace A367141.P1611185316131647699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181878 (A014682 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A367141.P1611185316131647699

/-! ## A367141.P2657242296797607921

`lt[A333123(A196108(n+1)), A195863(n+1)]`
-/

namespace A367141.P2657242296797607921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333123 (A196108 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367141.P2657242296797607921

/-! ## A367141.P2632931858139864482

`lt[A276480(A319854(n+1)), A328671(n+1)]`
-/

namespace A367141.P2632931858139864482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276480 (A319854 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367141.P2632931858139864482

/-! ## A367141.P5679663663880312630

`lt[A115268(A271689(n)), A115295(n)]`
-/

namespace A367141.P5679663663880312630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115268 (A271689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367141.P5679663663880312630

/-! ## A367141.P1245998617866942039

`lt[A113291(A289437(n+2)), A113293(n+1)]`
-/

namespace A367141.P1245998617866942039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113291 (A289437 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113293 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367141.P1245998617866942039

/-!
# A367142: Number of connected simple graphs on n unlabeled vertices without universal vertices.

The programs for A367142, there is no canonical definition to state claims against.
-/

/-! ## A367142.P15944811888506921074

`A002494(n)-A000719(n)`
-/

namespace A367142.P15944811888506921074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n - A000719 n

end

end A367142.P15944811888506921074

/-! ## A367142.P13381579893753037768

`A217653(∑[n])-A000719(n)`
-/

namespace A367142.P13381579893753037768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217653 (∑ j ∈ Finset.range (n + 1), f1 j) - A000719 n

end

end A367142.P13381579893753037768

/-! ## A367142.P11097574775398001463

`A001349(n)+A002494(n)-A000088(n)`
-/

namespace A367142.P11097574775398001463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n + (A002494 n - A000088 n)

end

end A367142.P11097574775398001463

/-! ## A367142.P10234875618395685104

`A368834(n)+A369202(n)-A000719(n)`
-/

namespace A367142.P10234875618395685104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368834 n + (A369202 n - A000719 n)

end

end A367142.P10234875618395685104

/-! ## A367142.P16100064379701468137

`A002494(n)-(A000088(n)-A304311(∑[n]))`
-/

namespace A367142.P16100064379701468137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n - (A000088 n - A304311 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A367142.P16100064379701468137

/-!
# A367143: Number of simple graphs on n unlabeled vertices without isolated or universal vertices.

The programs for A367143, there is no canonical definition to state claims against.
-/

/-! ## A367143.P15814924836216764827

`A367142(A028310(n))+A327075(n)`
-/

namespace A367143.P15814924836216764827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367142 (A028310 n).toNat + A327075 n

end

end A367143.P15814924836216764827

/-!
# A367144: Number of simplical-free simple graphs on n unlabeled vertices.

The programs for A367144, there is no canonical definition to state claims against.
-/

/-! ## A367144.P8683020288843854946

`A367145(∑[n])`
-/

namespace A367144.P8683020288843854946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367145 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367144.P8683020288843854946

/-! ## A367144.P6788226585499038470

`A367145(C(n+1, 2))+A000007(n+1)`
-/

namespace A367144.P6788226585499038470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367145 (Nat.choose (n + 1) 2) + A000007 (n + 1)

end

end A367144.P6788226585499038470

/-! ## A367144.P499707221047646284

`A367145(C(n+1, 2))+A076142(n+1)`
-/

namespace A367144.P499707221047646284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367145 (Nat.choose (n + 1) 2) + A076142 (n + 1)

end

end A367144.P499707221047646284

/-! ## A367144.P11649206153136760565

`A367145(C(n+1, 2))%A006879(n+1)`
-/

namespace A367144.P11649206153136760565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367145 (Nat.choose (n + 1) 2)) (A006879 (n + 1))

end

end A367144.P11649206153136760565

/-! ## A367144.P15465820268260527610

`A367145(A000217(n))+A076142(n+1)`
-/

namespace A367144.P15465820268260527610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367145 (A000217 n).toNat + A076142 (n + 1)

end

end A367144.P15465820268260527610

/-!
# A367145: Triangle read by rows: T(n,k) is the number of simple graphs on n unlabeled nodes with k simplical vertices, 0 <= k <= n.

The programs for A367145, there is no canonical definition to state claims against.
-/

/-! ## A367145.P10951574422098749980

`A144595(A282488(n))+A056885(n)`
-/

namespace A367145.P10951574422098749980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144595 (A282488 n).toNat + A056885 n

end

end A367145.P10951574422098749980

/-! ## A367145.P6813218520673167711

`A188172(A122539(n)+1)+A056885(n)`
-/

namespace A367145.P6813218520673167711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (A122539 n + 1).toNat + A056885 n

end

end A367145.P6813218520673167711

/-! ## A367145.P4375717996946719545

`A124762(A049525(n+3)+3)`
-/

namespace A367145.P4375717996946719545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A049525 (n + 3) + 3).toNat

end

end A367145.P4375717996946719545

/-! ## A367145.P1462331151152472655

`and(-A348891(n), A010027(n+1))`
-/

namespace A367145.P1462331151152472655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A348891 n) (A010027 (n + 1))

end

end A367145.P1462331151152472655

/-! ## A367145.P3984215248871750976

`val(A034055(A016116(2*(n+1))), 2)`
-/

namespace A367145.P3984215248871750976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034055 (A016116 (2 * (n + 1))).toNat).toNat 2

end

end A367145.P3984215248871750976

/-!
# A367149: Length of cycles obtained by repeated application of the strip bijection for the triangular lattice (A367147), sorted by increasing minimum radius visited by any cycle of this length.

The programs for A367149, there is no canonical definition to state claims against.
-/

/-! ## A367149.P2068165483324161906

`(n+1)*A351257(C(2*n, n)*C(3*n, n))`
-/

namespace A367149.P2068165483324161906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351257 (Nat.choose (2 * n) n * Nat.choose (3 * n) n)

end

end A367149.P2068165483324161906

/-!
# A367150: Results of the strip bijection as described in A307110 with subsequent reassignment of the pair connections at all locations, in which 4 points of a unit square in one grid are mapped to a unit square in the other (rotated by Pi/4) grid in such a way that the maximum distance of the two points in the 4 assigned pairs is minimized.

The programs for A367150, there is no canonical definition to state claims against.
-/

/-! ## A367150.P4017002483190691401

`A368121(n)%Δ[A278981(n+2)]`
-/

namespace A367150.P4017002483190691401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278981 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368121 n) (f1 (n + 1) - f1 n)

end

end A367150.P4017002483190691401

/-! ## A367150.P6966756085282376842

`A368121(n)%Δ[A160664(A014105(n))]`
-/

namespace A367150.P6966756085282376842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A014105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368121 n) (f1 (n + 1) - f1 n)

end

end A367150.P6966756085282376842

/-! ## A367150.P11814671220105538857

`A368121(n)+A049084(A020137(n+1))`
-/

namespace A367150.P11814671220105538857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368121 n + A049084 (A020137 (n + 1)).toNat

end

end A367150.P11814671220105538857

/-! ## A367150.P7923015784013305012

`A368121(n)+A063524(A002717(n+3))`
-/

namespace A367150.P7923015784013305012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368121 n + A063524 (A002717 (n + 3)).toNat

end

end A367150.P7923015784013305012

/-! ## A367150.P163770677582322583

`A368121(n)/A000034(A054000(n+1))`
-/

namespace A367150.P163770677582322583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368121 n : ℚ) / (A000034 (A054000 (n + 1)).toNat : ℚ)

end

end A367150.P163770677582322583

/-! ## A367150.P6402536102367105637

`A368121(n)+A000007(A000217(2*(n+1)))`
-/

namespace A367150.P6402536102367105637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368121 n + A000007 (A000217 (2 * (n + 1))).toNat

end

end A367150.P6402536102367105637

/-! ## A367150.P8022265770218484683

`A368121(n)+A351254(A328137(2*n+5))`
-/

namespace A367150.P8022265770218484683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368121 n + A351254 (A328137 (2 * n + 5)).toNat

end

end A367150.P8022265770218484683

/-! ## A367150.P6117921580390772813

`A368121(n)^A003983(A000217(2*n+1))`
-/

namespace A367150.P6117921580390772813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368121 n : ℚ) ^ (A003983 (A000217 (2 * n + 1)).toNat : ℤ)

end

end A367150.P6117921580390772813

/-! ## A367150.P9765030236909132210

`A368126(n)%A135412(n+1)`
-/

namespace A367150.P9765030236909132210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368126 n) (A135412 (n + 1))

end

end A367150.P9765030236909132210

/-! ## A367150.P982853167672123784

`A368126(n)+A007814(A117089(n+1))`
-/

namespace A367150.P982853167672123784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368126 n + A007814 (A117089 (n + 1)).toNat

end

end A367150.P982853167672123784

/-!
# A367151: Primes whose reversals are triprimes.

The programs for A367151, there is no canonical definition to state claims against.
-/

/-! ## A367151.P13521327211737905256

`A322394(A162693(n+1)+4)`
-/

namespace A367151.P13521327211737905256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (A162693 (n + 1) + 4).toNat

end

end A367151.P13521327211737905256

/-!
# A367152: E.g.f. satisfies A(x) = 1 - log(1 - x*A(x)^3).

The programs for A367152, there is no canonical definition to state claims against.
-/

/-! ## A367152.P6086203201542922750

`A111273(∑[n+1]^(n-1))`
-/

namespace A367152.P6086203201542922750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A367152.P6086203201542922750

/-!
# A367154: E.g.f. satisfies A(x) = 2 - exp(-x*A(x)^3).

The programs for A367154, there is no canonical definition to state claims against.
-/

/-! ## A367154.P15430517973981972916

`A001600(A006149(n))`
-/

namespace A367154.P15430517973981972916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001600 (A006149 n).toNat

end

end A367154.P15430517973981972916

/-!
# A367155: E.g.f. satisfies A(x) = 1 + A(x)^3 * log(1 + x).

The programs for A367155, there is no canonical definition to state claims against.
-/

/-! ## A367155.P16730627923893433903

`A028310(A395840(n))`
-/

namespace A367155.P16730627923893433903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A395840 n).toNat

end

end A367155.P16730627923893433903

/-!
# A367156: E.g.f. satisfies A(x) = 1 + A(x)^2 * log(1 + x*A(x)).

The programs for A367156, there is no canonical definition to state claims against.
-/

/-! ## A367156.P1808599178702321984

`A004128(n!²)`
-/

namespace A367156.P1808599178702321984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (Nat.factorial n ^ 2)

end

end A367156.P1808599178702321984

/-!
# A367157: E.g.f. satisfies A(x) = 1 + A(x)^3 * log(1 + x*A(x)).

The programs for A367157, there is no canonical definition to state claims against.
-/

/-! ## A367157.P3796900399570219383

`∑{d}[A135867(n), A007094(#)]`
-/

namespace A367157.P3796900399570219383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007094 d

end

end A367157.P3796900399570219383

/-!
# A367158: E.g.f. satisfies A(x) = 1 - A(x)^3 * log(1 - x).

The programs for A367158, there is no canonical definition to state claims against.
-/

/-! ## A367158.P4202693086486251395

`A390355(A379703(n+1))`
-/

namespace A367158.P4202693086486251395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390355 (A379703 (n + 1)).toNat

end

end A367158.P4202693086486251395

/-!
# A367159: E.g.f. satisfies A(x) = 1 - A(x)^2 * log(1 - x*A(x)).

The programs for A367159, there is no canonical definition to state claims against.
-/

/-! ## A367159.P11599176396640850924

`A000463(∑[A000041(C(2*n, 2))])`
-/

namespace A367159.P11599176396640850924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose (2 * n) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367159.P11599176396640850924

/-!
# A367160: E.g.f. satisfies A(x) = 1 - A(x)^3 * log(1 - x*A(x)).

The programs for A367160, there is no canonical definition to state claims against.
-/

/-! ## A367160.P14516901072628764435

`A354515(A373754(n))+A004526(n)`
-/

namespace A367160.P14516901072628764435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354515 (A373754 n).toNat + A004526 n

end

end A367160.P14516901072628764435

/-!
# A367161: E.g.f. satisfies A(x) = 1 + A(x)^3 * (exp(x) - 1).

The programs for A367161, there is no canonical definition to state claims against.
-/

/-! ## A367161.P8115460978972172121

`A304116((n+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A367161.P8115460978972172121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A304116 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A367161.P8115460978972172121

/-!
# A367162: E.g.f. satisfies A(x) = 1 + A(x)^2 * (exp(x*A(x)) - 1).

The programs for A367162, there is no canonical definition to state claims against.
-/

/-! ## A367162.P4836713843730072242

`A035311(A274230(∑[n]))`
-/

namespace A367162.P4836713843730072242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035311 (A274230 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A367162.P4836713843730072242

/-!
# A367163: E.g.f. satisfies A(x) = 1 + A(x)^3 * (exp(x*A(x)) - 1).

The programs for A367163, there is no canonical definition to state claims against.
-/

/-! ## A367163.P13077732732120255922

`A185603(A001970(∑[n]))`
-/

namespace A367163.P13077732732120255922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185603 (A001970 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A367163.P13077732732120255922

/-!
# A367164: E.g.f. satisfies A(x) = 1 + A(x)^3 * (1 - exp(-x)).

The programs for A367164, there is no canonical definition to state claims against.
-/

/-! ## A367164.P3695091821227742518

`A289105(n!²)`
-/

namespace A367164.P3695091821227742518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289105 (Nat.factorial n ^ 2)

end

end A367164.P3695091821227742518

/-!
# A367165: E.g.f. satisfies A(x) = 1 + A(x)^2 * (1 - exp(-x*A(x))).

The programs for A367165, there is no canonical definition to state claims against.
-/

/-! ## A367165.P18428457468749214008

`A325130(n!²)`
-/

namespace A367165.P18428457468749214008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (Nat.factorial n ^ 2)

end

end A367165.P18428457468749214008

/-!
# A367166: E.g.f. satisfies A(x) = 1 + A(x)^3 * (1 - exp(-x*A(x))).

The programs for A367166, there is no canonical definition to state claims against.
-/

/-! ## A367166.P14345157768157221880

`A269399(A353739(n))-2`
-/

namespace A367166.P14345157768157221880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269399 (A353739 n).toNat - 2

end

end A367166.P14345157768157221880

/-!
# A367167: Let Product_{i = 1..omega(n)} p_i^e_i be the prime factorization of n. Then a(n) = Sum_{i = 1..omega(n)} Product_{j = 1..n} p_i^(e_((i+j-1) mod omega(n) + 1)).

The programs for A367167, there is no canonical definition to state claims against.
-/

/-! ## A367167.P1688864249315806107

`abs(A075802(A287781(n))-A327670(n+1))+n`
-/

namespace A367167.P1688864249315806107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075802 (A287781 n).toNat - A327670 (n + 1)| + (n : ℤ)

end

end A367167.P1688864249315806107

/-!
# A367168: The largest unitary divisor of n that is a term of A138302.

The programs for A367168, there is no canonical definition to state claims against.
-/

/-! ## A367168.P8703995069784713766

`(1+n)/A368540(1+n)`
-/

namespace A367168.P8703995069784713766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A368540 (1 + n) : ℚ)

end

end A367168.P8703995069784713766

/-! ## A367168.P5720667330816555172

`A353897(1+n)²/A356194(n+1)`
-/

namespace A367168.P5720667330816555172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353897 (1 + n) ^ 2 : ℚ) / (A356194 (n + 1) : ℚ)

end

end A367168.P5720667330816555172

/-! ## A367168.P11088845200187107588

`A372329(n+1)/A372329((n+1)/∏{p}[n+1, #])`
-/

namespace A367168.P11088845200187107588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372329 (n + 1) : ℚ) / (A372329 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A367168.P11088845200187107588

/-! ## A367168.P15179947304479330674

`A365296(n+1)/A365296(A365297(n+1))`
-/

namespace A367168.P15179947304479330674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365296 (n + 1) : ℚ) / (A365296 (A365297 (n + 1)).toNat : ℚ)

end

end A367168.P15179947304479330674

/-! ## A367168.P4194664077427569742

`A367514(n+1)/A368167(A367514(n+1))`
-/

namespace A367168.P4194664077427569742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367514 (n + 1) : ℚ) / (A368167 (A367514 (n + 1)).toNat : ℚ)

end

end A367168.P4194664077427569742

/-! ## A367168.P14670849014374522446

`A353897(n+1)²/A353897(A102631(n+1))`
-/

namespace A367168.P14670849014374522446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353897 (n + 1) ^ 2 : ℚ) / (A353897 (A102631 (n + 1)).toNat : ℚ)

end

end A367168.P14670849014374522446

/-! ## A367168.P15901547630157136596

`gcd(A061452(n+1), A367514(n+1))`
-/

namespace A367168.P15901547630157136596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061452 (n + 1)) (A367514 (n + 1))

end

end A367168.P15901547630157136596

/-! ## A367168.P18274854255788465338

`A367514(n+1)+A000007(A143146(n+1))`
-/

namespace A367168.P18274854255788465338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 (n + 1) + A000007 (A143146 (n + 1)).toNat

end

end A367168.P18274854255788465338

/-! ## A367168.P13944256107137878657

`A367514(A367514(n+1)*A368167(n+1))`
-/

namespace A367168.P13944256107137878657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 (A367514 (n + 1) * A368167 (n + 1)).toNat

end

end A367168.P13944256107137878657

/-! ## A367168.P12898864785309420345

`A367514(n+1)+A000007(A372329(2*(n+1)))`
-/

namespace A367168.P12898864785309420345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 (n + 1) + A000007 (A372329 (2 * (n + 1))).toNat

end

end A367168.P12898864785309420345

/-! ## A367168.P5884277460056199190

`and(A270418(n+1), A381707(n+1))`
-/

namespace A367168.P5884277460056199190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270418 (n + 1)) (A381707 (n + 1))

end

end A367168.P5884277460056199190

/-! ## A367168.P5564046422671672733

`and(A367514(n+1), A381707(n+1))`
-/

namespace A367168.P5564046422671672733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A367514 (n + 1)) (A381707 (n + 1))

end

end A367168.P5564046422671672733

/-! ## A367168.P1705698703033353778

`A270418((n+1)*A367513(n+1))`
-/

namespace A367168.P1705698703033353778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 ((n + 1 : ℤ) * A367513 (n + 1)).toNat

end

end A367168.P1705698703033353778

/-! ## A367168.P6608244110853928240

`A270418((n+1)*A368540(n+1))`
-/

namespace A367168.P6608244110853928240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 ((n + 1 : ℤ) * A368540 (n + 1)).toNat

end

end A367168.P6608244110853928240

/-! ## A367168.P17363093876563889865

`A367514((n+1)*A367513(n+1))`
-/

namespace A367168.P17363093876563889865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 ((n + 1 : ℤ) * A367513 (n + 1)).toNat

end

end A367168.P17363093876563889865

/-! ## A367168.P14412246322959004236

`A367514((n+1)*A368167(n+1))`
-/

namespace A367168.P14412246322959004236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 ((n + 1 : ℤ) * A368167 (n + 1)).toNat

end

end A367168.P14412246322959004236

/-! ## A367168.P10725671610945410889

`A367514((n+1)*A368540(n+1))`
-/

namespace A367168.P10725671610945410889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 ((n + 1 : ℤ) * A368540 (n + 1)).toNat

end

end A367168.P10725671610945410889

/-! ## A367168.P8763820846231674586

`A071975(A059479(n+1)/A268385(n+1))`
-/

namespace A367168.P8763820846231674586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (SequenceMachineLib.roundAway ((A059479 (n + 1) : ℚ) / (A268385 (n + 1) : ℚ))).toNat

end

end A367168.P8763820846231674586

/-! ## A367168.P10475784696875141540

`A270418((n+1)*A056191(n+2))`
-/

namespace A367168.P10475784696875141540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 ((n + 1 : ℤ) * A056191 (n + 2)).toNat

end

end A367168.P10475784696875141540

/-! ## A367168.P15197106364033989697

`A367514((n+1)*A056191(n+2))`
-/

namespace A367168.P15197106364033989697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 ((n + 1 : ℤ) * A056191 (n + 2)).toNat

end

end A367168.P15197106364033989697

/-!
# A367169: a(n) is the sum of the exponents in the prime factorization of n that are powers of 2.

The programs for A367169, the canonical program `A367169.P14838254704020202933` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367169 has offset 1).

The definition of A367169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367169.P16284324643910890837

`A001222(A367168(n+1))`
-/

namespace A367169.P16284324643910890837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A367168 (n + 1)).toNat

end

end A367169.P16284324643910890837

namespace A367169

/-- `A001222(A367168(n+1))` -/
def P16284324643910890837.Spec : Prop :=
  ∀ n, P16284324643910890837.a n = A367169 (n + 1)

end A367169

/-! ## A367169.P14838254704020202933

`∑{e}[1+n, A048298(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A367169

/-- `∑{e}[1+n, A048298(#)]` -/
def P14838254704020202933.Spec : Prop :=
  ∀ n, P14838254704020202933.a n = A367169 (n + 1)

theorem P14838254704020202933.correct : P14838254704020202933.Spec := by
  intro n
  simp only [A367169, Nat.add_sub_cancel]

end A367169

/-! ## A367169.P11658587112600260927

`∑{e}[1+n, A087263(#)]`
-/

namespace A367169.P11658587112600260927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A087263 (Nat.factorization (f1 n) p)

end

end A367169.P11658587112600260927

namespace A367169

/-- `∑{e}[1+n, A087263(#)]` -/
def P11658587112600260927.Spec : Prop :=
  ∀ n, P11658587112600260927.a n = A367169 (n + 1)

end A367169

/-! ## A367169.P6920941002406046699

`∑{e}[A367168(n+1), #]`
-/

namespace A367169.P6920941002406046699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A367169.P6920941002406046699

namespace A367169

/-- `∑{e}[A367168(n+1), #]` -/
def P6920941002406046699.Spec : Prop :=
  ∀ n, (P6920941002406046699.a n : ℤ) = A367169 (n + 1)

end A367169

/-! ## A367169.P1800805051161250632

`∑{e}[n+1, A099894(#-1)]`
-/

namespace A367169.P1800805051161250632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A099894 (Nat.factorization (f1 n) p - 1)

end

end A367169.P1800805051161250632

namespace A367169

/-- `∑{e}[n+1, A099894(#-1)]` -/
def P1800805051161250632.Spec : Prop :=
  ∀ n, P1800805051161250632.a n = A367169 (n + 1)

end A367169

/-! ## A367169.P16944733984677286603

`A001222(A270418(n+1))%A223227(n+1)`
-/

namespace A367169.P16944733984677286603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A270418 (n + 1)).toNat) (A223227 (n + 1))

end

end A367169.P16944733984677286603

namespace A367169

/-- `A001222(A270418(n+1))%A223227(n+1)` -/
def P16944733984677286603.Spec : Prop :=
  ∀ n, P16944733984677286603.a n = A367169 (n + 1)

end A367169

/-!
# A367170: The number of divisors of the largest unitary divisor of n that is a term of A138302.

The programs for A367170, the canonical program `A367170.P943996065894934376` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367170 has offset 1).

The definition of A367170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367170.P13045363582687585842

`A000005(A367168(n+1))`
-/

namespace A367170.P13045363582687585842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A367168 (n + 1)).toNat

end

end A367170.P13045363582687585842

namespace A367170

/-- `A000005(A367168(n+1))` -/
def P13045363582687585842.Spec : Prop :=
  ∀ n, P13045363582687585842.a n = A367170 (n + 1)

end A367170

/-! ## A367170.P943996065894934376

`∏{e}[1+n, A048298(#)+1]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A367170

/-- `∏{e}[1+n, A048298(#)+1]` -/
def P943996065894934376.Spec : Prop :=
  ∀ n, P943996065894934376.a n = A367170 (n + 1)

theorem P943996065894934376.correct : P943996065894934376.Spec := by
  intro n
  simp only [A367170, Nat.add_sub_cancel]

end A367170

/-! ## A367170.P9671632281902212414

`∏{e}[A367168(n+1), #+1]`
-/

namespace A367170.P9671632281902212414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A367170.P9671632281902212414

namespace A367170

/-- `∏{e}[A367168(n+1), #+1]` -/
def P9671632281902212414.Spec : Prop :=
  ∀ n, (P9671632281902212414.a n : ℤ) = A367170 (n + 1)

end A367170

/-! ## A367170.P14261437407888646958

`A320111(2*A367168(1+n))`
-/

namespace A367170.P14261437407888646958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A367168 (1 + n)).toNat

end

end A367170.P14261437407888646958

namespace A367170

/-- `A320111(2*A367168(1+n))` -/
def P14261437407888646958.Spec : Prop :=
  ∀ n, P14261437407888646958.a n = A367170 (n + 1)

end A367170

/-! ## A367170.P9732549739066804415

`A000005((n+1)/A368540(n+1))`
-/

namespace A367170.P9732549739066804415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368540 (n + 1) : ℚ))).toNat

end

end A367170.P9732549739066804415

namespace A367170

/-- `A000005((n+1)/A368540(n+1))` -/
def P9732549739066804415.Spec : Prop :=
  ∀ n, P9732549739066804415.a n = A367170 (n + 1)

end A367170

/-! ## A367170.P14788035878170884532

`A366742((n+1)/A368540(n+1))`
-/

namespace A367170.P14788035878170884532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368540 (n + 1) : ℚ))).toNat

end

end A367170.P14788035878170884532

namespace A367170

/-- `A366742((n+1)/A368540(n+1))` -/
def P14788035878170884532.Spec : Prop :=
  ∀ n, P14788035878170884532.a n = A367170 (n + 1)

end A367170

/-! ## A367170.P303424793036354386

`A366742(A367168(2*n+1-n))`
-/

namespace A367170.P303424793036354386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366742 (A367168 (2 * n + 1 - n)).toNat

end

end A367170.P303424793036354386

namespace A367170

/-- `A366742(A367168(2*n+1-n))` -/
def P303424793036354386.Spec : Prop :=
  ∀ n, P303424793036354386.a n = A367170 (n + 1)

end A367170

/-! ## A367170.P13809703885541920750

`∑{d}[A367168(n+1), A071222(2*n)^#]`
-/

namespace A367170.P13809703885541920750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A071222 (2 * n) ^ d

end

end A367170.P13809703885541920750

namespace A367170

/-- `∑{d}[A367168(n+1), A071222(2*n)^#]` -/
def P13809703885541920750.Spec : Prop :=
  ∀ n, P13809703885541920750.a n = A367170 (n + 1)

end A367170

/-! ## A367170.P6712490818899698110

`A000005(A270418(n+1)%A114440(2*(n+1)))`
-/

namespace A367170.P6712490818899698110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A270418 (n + 1)) (A114440 (2 * (n + 1)))).toNat

end

end A367170.P6712490818899698110

namespace A367170

/-- `A000005(A270418(n+1)%A114440(2*(n+1)))` -/
def P6712490818899698110.Spec : Prop :=
  ∀ n, P6712490818899698110.a n = A367170 (n + 1)

end A367170

/-! ## A367170.P12060312140042005183

`A368470(A350390(A367168((n+1)²)))`
-/

namespace A367170.P12060312140042005183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368470 (A350390 (A367168 ((n + 1) ^ 2)).toNat).toNat

end

end A367170.P12060312140042005183

namespace A367170

/-- `A368470(A350390(A367168((n+1)²)))` -/
def P12060312140042005183.Spec : Prop :=
  ∀ n, P12060312140042005183.a n = A367170 (n + 1)

end A367170

/-!
# A367171: The sum of divisors of the largest unitary divisor of n that is a term of A138302.

The programs for A367171, there is no canonical definition to state claims against.
-/

/-! ## A367171.P11720372722595894882

`A000203(A367168(n+1))`
-/

namespace A367171.P11720372722595894882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A367168 (n + 1)).toNat

end

end A367171.P11720372722595894882

/-! ## A367171.P14930899954321378703

`∑{d}[A367168(1+n), #]`
-/

namespace A367171.P14930899954321378703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A367171.P14930899954321378703

/-! ## A367171.P13760185901047212876

`A000203((1+n)/A368540(1+n))`
-/

namespace A367171.P13760185901047212876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((1 + n : ℚ) / (A368540 (1 + n) : ℚ))).toNat

end

end A367171.P13760185901047212876

/-! ## A367171.P9617623091096910065

`A366744((n+1)/A368540(n+1))`
-/

namespace A367171.P9617623091096910065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366744 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368540 (n + 1) : ℚ))).toNat

end

end A367171.P9617623091096910065

/-! ## A367171.P2140951746621491096

`A366744(A367168(2*n+1-n))`
-/

namespace A367171.P2140951746621491096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366744 (A367168 (2 * n + 1 - n)).toNat

end

end A367171.P2140951746621491096

/-! ## A367171.P13844147888681529397

`A366744(n+1)/A366744(A365297(n+1))`
-/

namespace A367171.P13844147888681529397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366744 (n + 1) : ℚ) / (A366744 (A365297 (n + 1)).toNat : ℚ)

end

end A367171.P13844147888681529397

/-! ## A367171.P14039856668681757403

`A369761(A353897(n+1)²/A356194(n+1))`
-/

namespace A367171.P14039856668681757403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369761 (SequenceMachineLib.roundAway ((A353897 (n + 1) ^ 2 : ℚ) / (A356194 (n + 1) : ℚ))).toNat

end

end A367171.P14039856668681757403

/-! ## A367171.P8038766780038077583

`A069290(A270418((n+1)²))`
-/

namespace A367171.P8038766780038077583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A270418 ((n + 1) ^ 2)).toNat

end

end A367171.P8038766780038077583

/-! ## A367171.P830011004086954469

`A069290(A367168((n+1)²))`
-/

namespace A367171.P830011004086954469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A367168 ((n + 1) ^ 2)).toNat

end

end A367171.P830011004086954469

/-! ## A367171.P15216016472517940146

`A069290(A367514((n+1)²))`
-/

namespace A367171.P15216016472517940146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A367514 ((n + 1) ^ 2)).toNat

end

end A367171.P15216016472517940146

/-! ## A367171.P10116517739691188181

`A369761(A353897((n+1)²)/A356194(n+1))`
-/

namespace A367171.P10116517739691188181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369761 (SequenceMachineLib.roundAway ((A353897 ((n + 1) ^ 2) : ℚ) / (A356194 (n + 1) : ℚ))).toNat

end

end A367171.P10116517739691188181

/-!
# A367172: a(n) = the maximum number of distinct tilings of a polyiamond of size n using any combination of polyiamond tiles of sizes 1 through n.

The programs for A367172, there is no canonical definition to state claims against.
-/

/-! ## A367172.P12889107405632940111

`A018469(∑[A276781(n+1)])`
-/

namespace A367172.P12889107405632940111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018469 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367172.P12889107405632940111

/-! ## A367172.P8069986946522398829

`A018469(A059325(n+1)+1)`
-/

namespace A367172.P8069986946522398829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018469 (A059325 (n + 1) + 1).toNat

end

end A367172.P8069986946522398829

/-! ## A367172.P3898454091773815380

`A018469(∑[A080577(3*n+1)])`
-/

namespace A367172.P3898454091773815380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018469 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367172.P3898454091773815380

/-! ## A367172.P4187841101374866225

`∩[A165741(n+1), A177917(n+1)]`
-/

namespace A367172.P4187841101374866225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367172.P4187841101374866225

/-! ## A367172.P14411442514354353841

`∩[A177917(n+1), A262978(n+1)]`
-/

namespace A367172.P14411442514354353841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367172.P14411442514354353841

/-!
# A367173: a(n) = the maximum number of distinct tilings of a polyomino of size n using any combination of polyomino tiles of sizes 1 through n.

The programs for A367173, there is no canonical definition to state claims against.
-/

/-! ## A367173.P5996703761749768599

`A285055(A014626(n+1))`
-/

namespace A367173.P5996703761749768599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285055 (A014626 (n + 1)).toNat

end

end A367173.P5996703761749768599

/-! ## A367173.P7450649952508003652

`A375110(A288138(n)+A018218(n))`
-/

namespace A367173.P7450649952508003652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375110 (A288138 n + A018218 n).toNat

end

end A367173.P7450649952508003652

/-! ## A367173.P14121382337212265264

`A026522(n+2)-A001221(A368597(n))`
-/

namespace A367173.P14121382337212265264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026522 (n + 2) - A001221 (A368597 n).toNat

end

end A367173.P14121382337212265264

/-!
# A367174: a(n) = the maximum number of distinct tilings of a polyhex of size n using any combination of polyhex tiles of sizes 1 through n.

The programs for A367174, there is no canonical definition to state claims against.
-/

/-! ## A367174.P5779428206919166043

`A112778(A007047(n)+A000700(n))`
-/

namespace A367174.P5779428206919166043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112778 (A007047 n + A000700 n).toNat

end

end A367174.P5779428206919166043

/-! ## A367174.P9817804073992032986

`A326688(A001088(n))+A001519(n+1)`
-/

namespace A367174.P9817804073992032986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 (A001088 n).toNat + A001519 (n + 1)

end

end A367174.P9817804073992032986

/-! ## A367174.P18334257870670989307

`A320809(n+1)-A178105(A049623(2*n))`
-/

namespace A367174.P18334257870670989307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320809 (n + 1) - A178105 (A049623 (2 * n)).toNat

end

end A367174.P18334257870670989307

/-!
# A367175: a(n) = Sum_{d|n} (-1)^[d is prime] * d, where [] denotes the Iverson bracket.

The programs for A367175, the canonical program `A367175.P9934287224977358039` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367175 has offset 1).

The definition of A367175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367175.P9934287224977358039

`A000203(n+1)-2*A008472(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367175

/-- `A000203(n+1)-2*A008472(n+1)` -/
def P9934287224977358039.Spec : Prop :=
  ∀ n, P9934287224977358039.a n = A367175 (n + 1)

theorem P9934287224977358039.correct : P9934287224977358039.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel]

end A367175

/-! ## A367175.P16471292803610810711

`∑{d}[n+1, #]-∑{p}[1+n, #]-∑{p}[1+n, #]`
-/

namespace A367175.P16471292803610810711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ)

end

end A367175.P16471292803610810711

namespace A367175

/-- `∑{d}[n+1, #]-∑{p}[1+n, #]-∑{p}[1+n, #]` -/
def P16471292803610810711.Spec : Prop :=
  ∀ n, P16471292803610810711.a n = A367175 (n + 1)

theorem P16471292803610810711.correct : P16471292803610810711.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel, A367175.P16471292803610810711.f1, A367175.P16471292803610810711.f2, A367175.P16471292803610810711.f3, A367175.P16471292803610810711.a, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367175

/-! ## A367175.P3189972228319977371

`A023890(n+1)-∑{p}[1+n, #]`
-/

namespace A367175.P3189972228319977371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A367175.P3189972228319977371

namespace A367175

/-- `A023890(n+1)-∑{p}[1+n, #]` -/
def P3189972228319977371.Spec : Prop :=
  ∀ n, P3189972228319977371.a n = A367175 (n + 1)

theorem P3189972228319977371.correct : P3189972228319977371.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel, A367175.P3189972228319977371.f1, A367175.P3189972228319977371.a, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367175

/-! ## A367175.P472743078894368594

`∑{d}[n+1, #]-A005843(∑{p}[1+n, #])`
-/

namespace A367175.P472743078894368594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A005843 (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A367175.P472743078894368594

namespace A367175

/-- `∑{d}[n+1, #]-A005843(∑{p}[1+n, #])` -/
def P472743078894368594.Spec : Prop :=
  ∀ n, P472743078894368594.a n = A367175 (n + 1)

theorem P472743078894368594.correct : P472743078894368594.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel, A367175.P472743078894368594.f1, A367175.P472743078894368594.f2, A367175.P472743078894368594.a, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005843, A005843.P3167286115683555970.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367175

/-! ## A367175.P15452854862644034671

`∑{d}[n+1, #]-∑{p}[1+n, #]-A008472(n+1)`
-/

namespace A367175.P15452854862644034671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - A008472 (n + 1)

end

end A367175.P15452854862644034671

namespace A367175

/-- `∑{d}[n+1, #]-∑{p}[1+n, #]-A008472(n+1)` -/
def P15452854862644034671.Spec : Prop :=
  ∀ n, P15452854862644034671.a n = A367175 (n + 1)

theorem P15452854862644034671.correct : P15452854862644034671.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel, A367175.P15452854862644034671.f1, A367175.P15452854862644034671.f2, A367175.P15452854862644034671.a, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367175

/-! ## A367175.P14083758976828669313

`A023890(n+1)-A008472(n+1)`
-/

namespace A367175.P14083758976828669313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A008472 (n + 1)

end

end A367175.P14083758976828669313

namespace A367175

/-- `A023890(n+1)-A008472(n+1)` -/
def P14083758976828669313.Spec : Prop :=
  ∀ n, P14083758976828669313.a n = A367175 (n + 1)

theorem P14083758976828669313.correct : P14083758976828669313.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel, A367175.P14083758976828669313.a, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367175

/-! ## A367175.P147699723191089619

`A380441(n+1)-A399978(n+1)`
-/

namespace A367175.P147699723191089619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380441 (n + 1) - A399978 (n + 1)

end

end A367175.P147699723191089619

namespace A367175

/-- `A380441(n+1)-A399978(n+1)` -/
def P147699723191089619.Spec : Prop :=
  ∀ n, P147699723191089619.a n = A367175 (n + 1)

theorem P147699723191089619.correct : P147699723191089619.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel, A367175.P147699723191089619.a, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A380441, A380441.P1716721751457761727.a, A399978, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367175

/-! ## A367175.P17873754385674711524

`A023891(n+1)+1-A008472(n+1)`
-/

namespace A367175.P17873754385674711524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (n + 1) + (1 - A008472 (n + 1))

end

end A367175.P17873754385674711524

namespace A367175

/-- `A023891(n+1)+1-A008472(n+1)` -/
def P17873754385674711524.Spec : Prop :=
  ∀ n, P17873754385674711524.a n = A367175 (n + 1)

theorem P17873754385674711524.correct : P17873754385674711524.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel, A367175.P17873754385674711524.a, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023891, A023891.P8679455862173637145.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367175

/-! ## A367175.P11749563333331135466

`2*A023890(n+1)-A000203(n+1)`
-/

namespace A367175.P11749563333331135466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023890 (n + 1) - A000203 (n + 1)

end

end A367175.P11749563333331135466

namespace A367175

/-- `2*A023890(n+1)-A000203(n+1)` -/
def P11749563333331135466.Spec : Prop :=
  ∀ n, P11749563333331135466.a n = A367175 (n + 1)

theorem P11749563333331135466.correct : P11749563333331135466.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel, A367175.P11749563333331135466.a, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367175

/-! ## A367175.P675600753353493757

`A023890(n+1)-A023889(A007947(n+1))`
-/

namespace A367175.P675600753353493757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A023889 (A007947 (n + 1)).toNat

end

end A367175.P675600753353493757

namespace A367175

/-- `A023890(n+1)-A023889(A007947(n+1))` -/
def P675600753353493757.Spec : Prop :=
  ∀ n, P675600753353493757.a n = A367175 (n + 1)

end A367175

/-! ## A367175.P14057437739949512017

`A380441(n+1)-(A008472(n+1)+A001221(n+1))`
-/

namespace A367175.P14057437739949512017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380441 (n + 1) - (A008472 (n + 1) + A001221 (n + 1))

end

end A367175.P14057437739949512017

namespace A367175

/-- `A380441(n+1)-(A008472(n+1)+A001221(n+1))` -/
def P14057437739949512017.Spec : Prop :=
  ∀ n, P14057437739949512017.a n = A367175 (n + 1)

theorem P14057437739949512017.correct : P14057437739949512017.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel, A367175.P14057437739949512017.a, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A380441, A380441.P1716721751457761727.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367175

/-! ## A367175.P10004274047765693647

`A380444(n+1)-(A008472(n+1)+A005063(n+1))`
-/

namespace A367175.P10004274047765693647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380444 (n + 1) - (A008472 (n + 1) + A005063 (n + 1))

end

end A367175.P10004274047765693647

namespace A367175

/-- `A380444(n+1)-(A008472(n+1)+A005063(n+1))` -/
def P10004274047765693647.Spec : Prop :=
  ∀ n, P10004274047765693647.a n = A367175 (n + 1)

theorem P10004274047765693647.correct : P10004274047765693647.Spec := by
  intro n
  simp only [A367175, Nat.add_sub_cancel, A367175.P10004274047765693647.a, A367175.P9934287224977358039.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005063, A005063.P14493524835340415593.f1, A005063.P14493524835340415593.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A380444, A380444.P14151293279187532113.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367175

/-! ## A367175.P6684285108437924320

`A351827(n+1)-(A034387(n+1)+A008472(n+1))`
-/

namespace A367175.P6684285108437924320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351827 (n + 1) - (A034387 (n + 1) + A008472 (n + 1))

end

end A367175.P6684285108437924320

namespace A367175

/-- `A351827(n+1)-(A034387(n+1)+A008472(n+1))` -/
def P6684285108437924320.Spec : Prop :=
  ∀ n, P6684285108437924320.a n = A367175 (n + 1)

end A367175

/-!
# A367177: Triangle read by rows, T(n, k) = [x^k] hypergeom([1/2, -n, -n], [1, 1], 4*x).

The programs for A367177, the canonical program `A367177.P1708002181417949732` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367177 has offset 0).

The definition of A367177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367177.P1708002181417949732

`C(row(n), col(n))²*C(2*col(n), col(n))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367177

/-- `C(row(n), col(n))²*C(2*col(n), col(n))` -/
def P1708002181417949732.Spec : Prop :=
  ∀ n, (P1708002181417949732.a n : ℤ) = A367177 n

theorem P1708002181417949732.correct : P1708002181417949732.Spec := by
  intro n
  simp only [A367177]

end A367177

/-! ## A367177.P2081851788588361856

`(col(n)+1)*A367178(n)`
-/

namespace A367177.P2081851788588361856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A367178 n

end

end A367177.P2081851788588361856

namespace A367177

/-- `(col(n)+1)*A367178(n)` -/
def P2081851788588361856.Spec : Prop :=
  ∀ n, P2081851788588361856.a n = A367177 n

end A367177

/-! ## A367177.P15815741201613916363

`A007318(n)*A098473(n)`
-/

namespace A367177.P15815741201613916363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A098473 n

end

end A367177.P15815741201613916363

namespace A367177

/-- `A007318(n)*A098473(n)` -/
def P15815741201613916363.Spec : Prop :=
  ∀ n, P15815741201613916363.a n = A367177 n

theorem P15815741201613916363.correct : P15815741201613916363.Spec := by
  intro n
  simp only [A367177, Nat.add_sub_cancel, A367177.P15815741201613916363.a, A367177.P1708002181417949732.a, A007318, A007318.P11755526479805562006.a, A098473, A098473.P7476735239146920852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A367177

/-! ## A367177.P13614912284142302168

`A098474(n)*A103406(n)`
-/

namespace A367177.P13614912284142302168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 n * A103406 n

end

end A367177.P13614912284142302168

namespace A367177

/-- `A098474(n)*A103406(n)` -/
def P13614912284142302168.Spec : Prop :=
  ∀ n, P13614912284142302168.a n = A367177 n

end A367177

/-! ## A367177.P15719075759139114295

`A000984(col(n))*A008459(n)`
-/

namespace A367177.P15719075759139114295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (SequenceMachineLib.triCol n) * A008459 n

end

end A367177.P15719075759139114295

namespace A367177

/-- `A000984(col(n))*A008459(n)` -/
def P15719075759139114295.Spec : Prop :=
  ∀ n, P15719075759139114295.a n = A367177 n

end A367177

/-! ## A367177.P16834305209971313594

`A002260(n+1)*A367178(n)`
-/

namespace A367177.P16834305209971313594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A367178 n

end

end A367177.P16834305209971313594

namespace A367177

/-- `A002260(n+1)*A367178(n)` -/
def P16834305209971313594.Spec : Prop :=
  ∀ n, P16834305209971313594.a n = A367177 n

end A367177

/-! ## A367177.P9874781442154611100

`lcm(2, A132046(n))/2*A098473(n)`
-/

namespace A367177.P9874781442154611100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A132046 n) : ℚ) / 2 * (A098473 n : ℚ)

end

end A367177.P9874781442154611100

namespace A367177

/-- `lcm(2, A132046(n))/2*A098473(n)` -/
def P9874781442154611100.Spec : Prop :=
  ∀ n, P9874781442154611100.a n = (A367177 n : ℚ)

end A367177

/-! ## A367177.P11875330908849478509

`A007318(n)*A117852(A061579(n))`
-/

namespace A367177.P11875330908849478509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A117852 (A061579 n).toNat

end

end A367177.P11875330908849478509

namespace A367177

/-- `A007318(n)*A117852(A061579(n))` -/
def P11875330908849478509.Spec : Prop :=
  ∀ n, P11875330908849478509.a n = A367177 n

end A367177

/-! ## A367177.P9711713776972158465

`A007318(n)²*A000984(A002262(n))`
-/

namespace A367177.P9711713776972158465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A000984 (A002262 n).toNat

end

end A367177.P9711713776972158465

namespace A367177

/-- `A007318(n)²*A000984(A002262(n))` -/
def P9711713776972158465.Spec : Prop :=
  ∀ n, P9711713776972158465.a n = A367177 n

end A367177

/-! ## A367177.P17848698967489105820

`A318397(A061579(n))`
-/

namespace A367177.P17848698967489105820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318397 (A061579 n).toNat

end

end A367177.P17848698967489105820

namespace A367177

/-- `A318397(A061579(n))` -/
def P17848698967489105820.Spec : Prop :=
  ∀ n, P17848698967489105820.a n = A367177 n

end A367177

/-!
# A367178: Triangle read by rows. T(n, k) = binomial(n, k)^2 * CatalanNumber(k).

The programs for A367178, the canonical program `A367178.P11936607762183092066` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367178 has offset 0).

The definition of A367178 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))²*A000108(col(n))` (program `A367178.P11936607762183092066`, by `A367178.P11936607762183092066.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A367178.P11936607762183092066

`C(row(n), col(n))²*A000108(col(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367178

/-- `C(row(n), col(n))²*A000108(col(n))` -/
def P11936607762183092066.Spec : Prop :=
  ∀ n, P11936607762183092066.a n = A367178 n

theorem P11936607762183092066.correct : P11936607762183092066.Spec := by
  intro n
  simp only [A367178]

end A367178

/-! ## A367178.P4903911435495326151

`C(row(n), col(n))²*C(2*col(n), col(n))/(col(n)+1)`
-/

namespace A367178.P4903911435495326151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 2 * Nat.choose (2 * SequenceMachineLib.triCol n) (SequenceMachineLib.triCol n) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A367178.P4903911435495326151

namespace A367178

/-- `C(row(n), col(n))²*C(2*col(n), col(n))/(col(n)+1)` -/
def P4903911435495326151.Spec : Prop :=
  ∀ n, P4903911435495326151.a n = (A367178 n : ℚ)

end A367178

/-! ## A367178.P17332612623705729214

`A098474(n)*C(row(n), col(n))`
-/

namespace A367178.P17332612623705729214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 n * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A367178.P17332612623705729214

namespace A367178

/-- `A098474(n)*C(row(n), col(n))` -/
def P17332612623705729214.Spec : Prop :=
  ∀ n, P17332612623705729214.a n = A367178 n

end A367178

/-! ## A367178.P17603027464540111819

`A007318(n)*A098474(n)`
-/

namespace A367178.P17603027464540111819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A098474 n

end

end A367178.P17603027464540111819

namespace A367178

/-- `A007318(n)*A098474(n)` -/
def P17603027464540111819.Spec : Prop :=
  ∀ n, P17603027464540111819.a n = A367178 n

end A367178

/-! ## A367178.P12523425366236377476

`abs(A098474(n)*A108086(n))`
-/

namespace A367178.P12523425366236377476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098474 n * A108086 n|

end

end A367178.P12523425366236377476

namespace A367178

/-- `abs(A098474(n)*A108086(n))` -/
def P12523425366236377476.Spec : Prop :=
  ∀ n, P12523425366236377476.a n = A367178 n

end A367178

/-! ## A367178.P11780621569135519440

`abs(A098474(n)*A130595(n))`
-/

namespace A367178.P11780621569135519440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098474 n * A130595 n|

end

end A367178.P11780621569135519440

namespace A367178

/-- `abs(A098474(n)*A130595(n))` -/
def P11780621569135519440.Spec : Prop :=
  ∀ n, P11780621569135519440.a n = A367178 n

end A367178

/-! ## A367178.P8258235031004976670

`sqrt(A008459(n))*A098474(n)`
-/

namespace A367178.P8258235031004976670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A098474 n : ℝ)

end

end A367178.P8258235031004976670

namespace A367178

/-- `sqrt(A008459(n))*A098474(n)` -/
def P8258235031004976670.Spec : Prop :=
  ∀ n, P8258235031004976670.a n = (A367178 n : ℝ)

end A367178

/-! ## A367178.P5016639015520244029

`Δ[A102363(n)]*A098474(n)`
-/

namespace A367178.P5016639015520244029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A098474 n

end

end A367178.P5016639015520244029

namespace A367178

/-- `Δ[A102363(n)]*A098474(n)` -/
def P5016639015520244029.Spec : Prop :=
  ∀ n, P5016639015520244029.a n = A367178 n

end A367178

/-! ## A367178.P6376865296423080919

`(A131063(n)+4)/5*A098474(n)`
-/

namespace A367178.P6376865296423080919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131063 n + 4 : ℚ) / 5 * (A098474 n : ℚ)

end

end A367178.P6376865296423080919

namespace A367178

/-- `(A131063(n)+4)/5*A098474(n)` -/
def P6376865296423080919.Spec : Prop :=
  ∀ n, P6376865296423080919.a n = (A367178 n : ℚ)

end A367178

/-! ## A367178.P3186599369367088315

`ceil(sqrt(A141596(n))/2)*A098474(n)`
-/

namespace A367178.P3186599369367088315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A141596 n : ℝ) / 2⌉ * A098474 n

end

end A367178.P3186599369367088315

namespace A367178

/-- `ceil(sqrt(A141596(n))/2)*A098474(n)` -/
def P3186599369367088315.Spec : Prop :=
  ∀ n, P3186599369367088315.a n = A367178 n

end A367178

/-! ## A367178.P7276685878796305844

`A000108(A002262(n))*A008459(n)`
-/

namespace A367178.P7276685878796305844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A008459 n

end

end A367178.P7276685878796305844

namespace A367178

/-- `A000108(A002262(n))*A008459(n)` -/
def P7276685878796305844.Spec : Prop :=
  ∀ n, P7276685878796305844.a n = A367178 n

end A367178

/-! ## A367178.P10683803365778345172

`A007318(n)²*A000108(A002262(n))`
-/

namespace A367178.P10683803365778345172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A000108 (A002262 n).toNat

end

end A367178.P10683803365778345172

namespace A367178

/-- `A007318(n)²*A000108(A002262(n))` -/
def P10683803365778345172.Spec : Prop :=
  ∀ n, P10683803365778345172.a n = A367178 n

end A367178

/-! ## A367178.P4209821784502118054

`A367177(n)/A002260(n+1)`
-/

namespace A367178.P4209821784502118054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367177 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A367178.P4209821784502118054

namespace A367178

/-- `A367177(n)/A002260(n+1)` -/
def P4209821784502118054.Spec : Prop :=
  ∀ n, P4209821784502118054.a n = (A367178 n : ℚ)

end A367178

/-!
# A367180: E.g.f. satisfies A(x) = 1 + (exp(x*A(x)^2) - 1)/A(x).

The programs for A367180, there is no canonical definition to state claims against.
-/

/-! ## A367180.P5922156576821552091

`A320340(A214933(n))`
-/

namespace A367180.P5922156576821552091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (A214933 n).toNat

end

end A367180.P5922156576821552091

/-! ## A367180.P7224049019022590423

`A060144(A377826(n))+1`
-/

namespace A367180.P7224049019022590423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A377826 n).toNat + 1

end

end A367180.P7224049019022590423

/-!
# A367181: E.g.f. satisfies A(x) = 1 + (exp(x*A(x)^3) - 1)/A(x)^2.

The programs for A367181, there is no canonical definition to state claims against.
-/

/-! ## A367181.P6784151602144808262

`A081753((n+1)^(n+1))`
-/

namespace A367181.P6784151602144808262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 ((n + 1) ^ (n + 1))

end

end A367181.P6784151602144808262

/-!
# A367182: Primes of the form (k-th primorial) - (k+1)st prime.

The programs for A367182, there is no canonical definition to state claims against.
-/

/-! ## A367182.P16489754788239953239

`record[A065314(3+n)]`
-/

namespace A367182.P16489754788239953239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065314 (3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367182.P16489754788239953239

/-!
# A367183: Table read by antidiagonals: Place k points in general position on each side of a regular n-gon and join every pair of the n*(k+1) boundary points by a chord; T(n,k) (n >= 3, k >= 0) gives number of vertices in the resulting planar graph.

The programs for A367183, there is no canonical definition to state claims against.
-/

/-! ## A367183.P16073506004992413086

`A367190(n+3)+A024000(A366253(n+3))`
-/

namespace A367183.P16073506004992413086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367190 (n + 3) + A024000 (A366253 (n + 3)).toNat

end

end A367183.P16073506004992413086

/-! ## A367183.P2812316251505591

`(A367190(n+3)-A023443(A366253(n+3)))%A367121(n)`
-/

namespace A367183.P2812316251505591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367190 (n + 3) - A023443 (A366253 (n + 3)).toNat) (A367121 n)

end

end A367183.P2812316251505591

/-!
# A367184: Starting index in the Period doubling sequence (A096268) of the first maximum length word in which every subword of length n is distinct.

The programs for A367184, the canonical program `A367184.P1691830542074880587` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367184 has offset 1).

The definition of A367184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367184.P1691830542074880587

`∑[A099892(n)+1]+2-A233583(A004765(2*n+5))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367184

/-- `∑[A099892(n)+1]+2-A233583(A004765(2*n+5))` -/
def P1691830542074880587.Spec : Prop :=
  ∀ n, P1691830542074880587.a n = A367184 (n + 1)

theorem P1691830542074880587.correct : P1691830542074880587.Spec := by
  intro n
  simp only [A367184, Nat.add_sub_cancel]

end A367184

/-! ## A367184.P8378172861857252478

`record[A057115(n+1)+1]-A233583(A004765(2*n+5))`
-/

namespace A367184.P8378172861857252478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A233583 (A004765 (2 * n + 5)).toNat

end

end A367184.P8378172861857252478

namespace A367184

/-- `record[A057115(n+1)+1]-A233583(A004765(2*n+5))` -/
def P8378172861857252478.Spec : Prop :=
  ∀ n, P8378172861857252478.a n = A367184 (n + 1)

end A367184

/-! ## A367184.P14347773380755533951

`A007378(A003817(n)+2)+n-A233583(A004765(2*n+5))`
-/

namespace A367184.P14347773380755533951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (A003817 n + 2).toNat + (n : ℤ) - A233583 (A004765 (2 * n + 5)).toNat

end

end A367184.P14347773380755533951

namespace A367184

/-- `A007378(A003817(n)+2)+n-A233583(A004765(2*n+5))` -/
def P14347773380755533951.Spec : Prop :=
  ∀ n, P14347773380755533951.a n = A367184 (n + 1)

end A367184

/-!
# A367185: Largest cost for a permutation problem.

The programs for A367185, there is no canonical definition to state claims against.
-/

/-! ## A367185.P11178348744267029497

`ceil(sqrt(floor(A080259((n+1)^4)*n²/9)))`
-/

namespace A367185.P11178348744267029497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (⌊(A080259 ((n + 1) ^ 4) * (n ^ 2 : ℤ) : ℚ) / 9⌋ : ℝ)⌉

end

end A367185.P11178348744267029497

/-! ## A367185.P15483668005953628718

`∑[A389317(n)%A233300(n+1)]`
-/

namespace A367185.P15483668005953628718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389317 n) (A233300 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367185.P15483668005953628718

/-! ## A367185.P2491902808747323364

`∑[(A213396(n)-A006527(n))%A094776(n)]`
-/

namespace A367185.P2491902808747323364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213396 n - A006527 n) (A094776 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367185.P2491902808747323364

/-! ## A367185.P17174634444827841302

`∑[∑[comp[A368606(3*n+4)]]]`
-/

namespace A367185.P17174634444827841302
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368606 (3 * n + 4)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367185.P17174634444827841302

/-! ## A367185.P7195852621662578099

`∑[A001221(∑[ceil(4^n/3)])+n²]`
-/

namespace A367185.P7195852621662578099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367185.P7195852621662578099

/-!
# A367186: Numbers that can be written as 2^k + prime in more than one way.

The programs for A367186, there is no canonical definition to state claims against.
-/

/-! ## A367186.P15018329289310520071

`lt[1, A109925(1+n)]+1`
-/

namespace A367186.P15018329289310520071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A367186.P15018329289310520071

/-! ## A367186.P3497948495567585007

`lt[a(A109925(n))/9, 2]` with `a(0)=22, a(1)=19, a(2)=11, a(3)=3`
-/

namespace A367186.P3497948495567585007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [22, 19, 11, 3] fun n f1 =>
  f1 (A109925 n).toNat / 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A367186.P3497948495567585007

/-! ## A367186.P17511687108594568311

`lt[1, A109925(A028310(n))]`
-/

namespace A367186.P17511687108594568311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367186.P17511687108594568311

/-! ## A367186.P6262512115989839585

`lt[1, A109925(A233583(1+n))]`
-/

namespace A367186.P6262512115989839585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A233583 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367186.P6262512115989839585

/-! ## A367186.P15964572729590428898

`lt[1, A109925(A065033(2*n))]`
-/

namespace A367186.P15964572729590428898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367186.P15964572729590428898

/-! ## A367186.P11679580211691622511

`lt[1, A109925(A000007(n)+n)]`
-/

namespace A367186.P11679580211691622511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367186.P11679580211691622511

/-! ## A367186.P16877374906481270706

`eq[1, A000010(a(A109925(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A367186.P16877374906481270706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A109925 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367186.P16877374906481270706

/-! ## A367186.P3173906453623774343

`lt[1, A088888(a(A109925(n)))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A367186.P3173906453623774343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  A088888 (f2 (A109925 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367186.P3173906453623774343

/-! ## A367186.P10914788625509541764

`eq[1, A239001(a(A109925(n)))²]` with `a(0)=2, a(1)=2`
-/

namespace A367186.P10914788625509541764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A239001 (f2 (A109925 n).toNat).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367186.P10914788625509541764

/-!
# A367187: Numbers which are the sum of a prime number and a Fibonacci number of index >1 in at least two ways.

The programs for A367187, there is no canonical definition to state claims against.
-/

/-! ## A367187.P10441619521866337701

`lt[A262889(A033581(n)), A350883(n)]`
-/

namespace A367187.P10441619521866337701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262889 (A033581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367187.P10441619521866337701

/-! ## A367187.P8092710540851835802

`lt[1, A382757(2*(n+1))*A061358(n)]`
-/

namespace A367187.P8092710540851835802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382757 (2 * (n + 1)) * A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367187.P8092710540851835802

/-! ## A367187.P12797769844418614088

`lt[A133612(A005897(n)), A017666(n+1)]`
-/

namespace A367187.P12797769844418614088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133612 (A005897 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367187.P12797769844418614088

/-! ## A367187.P5979518346076020893

`lt[A000203(n+1), A122282(A081988(n+1))]`
-/

namespace A367187.P5979518346076020893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A081988 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367187.P5979518346076020893

/-! ## A367187.P4211048938494497483

`lt[A362611(A181815(3*n+2)), A350883(n)]`
-/

namespace A367187.P4211048938494497483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A181815 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367187.P4211048938494497483

/-!
# A367190: Table read by antidiagonals: Place k points in general position on each side of a regular n-gon and join every pair of the n*(k+1) boundary points by a chord; T(n,k) (n >= 3, k >= 0) gives number of edges in the resulting planar graph.

The programs for A367190, there is no canonical definition to state claims against.
-/

/-! ## A367190.P1727391465962734812

`A366253(n+3)+A023443(A367183(n+3))`
-/

namespace A367190.P1727391465962734812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366253 (n + 3) + A023443 (A367183 (n + 3)).toNat

end

end A367190.P1727391465962734812

/-!
# A367192: Number of discrete implications I:L_n^2-> L_n defined on the finite chain L_n={0,1,...n}, which satisfy the left neutrality principle, i.e., I(n,y)=y for all y in L_n.

The programs for A367192, there is no canonical definition to state claims against.
-/

/-! ## A367192.P3031106051096124384

`A368025(A001844(n+1))`
-/

namespace A367192.P3031106051096124384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368025 (A001844 (n + 1)).toNat

end

end A367192.P3031106051096124384

/-!
# A367193: The x-coordinate of the point where x + y = n, x and y are integers and x/y is as close as possible to Pi.

The programs for A367193, the canonical program `A367193.P3462070861438571832` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367193 has offset 1).

The definition of A367193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367193.P3462070861438571832

`round((2*(n+1)*π+n+1-sqrt(π²+2*π+(n+1)²+1))/(2*π+2))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367193

/-- `round((2*(n+1)*π+n+1-sqrt(π²+2*π+(n+1)²+1))/(2*π+2))` -/
def P3462070861438571832.Spec : Prop :=
  ∀ n, P3462070861438571832.a n = A367193 (n + 1)

theorem P3462070861438571832.correct : P3462070861438571832.Spec := by
  intro n
  simp only [A367193, Nat.add_sub_cancel]

end A367193

/-! ## A367193.P15127717020004818171

`1-A367194(1+n)+n`
-/

namespace A367193.P15127717020004818171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A367194 (1 + n) + (n : ℤ)

end

end A367193.P15127717020004818171

namespace A367193

/-- `1-A367194(1+n)+n` -/
def P15127717020004818171.Spec : Prop :=
  ∀ n, P15127717020004818171.a n = A367193 (n + 1)

end A367193

/-! ## A367193.P4892619900319894934

`n+1-ceil(lt[A164942(n+3), 2]/8)`
-/

namespace A367193.P4892619900319894934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164942 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 8⌉

end

end A367193.P4892619900319894934

namespace A367193

/-- `n+1-ceil(lt[A164942(n+3), 2]/8)` -/
def P4892619900319894934.Spec : Prop :=
  ∀ n, P4892619900319894934.a n = A367193 (n + 1)

end A367193

/-! ## A367193.P8942631213024297576

`n-A203565(A367194(n+1))`
-/

namespace A367193.P8942631213024297576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A203565 (A367194 (n + 1)).toNat

end

end A367193.P8942631213024297576

namespace A367193

/-- `n-A203565(A367194(n+1))` -/
def P8942631213024297576.Spec : Prop :=
  ∀ n, P8942631213024297576.a n = A367193 (n + 1)

end A367193

/-! ## A367193.P1975322988836971913

`A025581(A367194(n+1)+A000217(n+1))`
-/

namespace A367193.P1975322988836971913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A367194 (n + 1) + A000217 (n + 1)).toNat

end

end A367193.P1975322988836971913

namespace A367193

/-- `A025581(A367194(n+1)+A000217(n+1))` -/
def P1975322988836971913.Spec : Prop :=
  ∀ n, P1975322988836971913.a n = A367193 (n + 1)

end A367193

/-! ## A367193.P978175566713633753

`A001478(A367194(n+1)+A230403(2*n+3))+n+1`
-/

namespace A367193.P978175566713633753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A367194 (n + 1) + A230403 (2 * n + 3)).toNat + (n + 1 : ℤ)

end

end A367193.P978175566713633753

namespace A367193

/-- `A001478(A367194(n+1)+A230403(2*n+3))+n+1` -/
def P978175566713633753.Spec : Prop :=
  ∀ n, P978175566713633753.a n = A367193 (n + 1)

end A367193

/-!
# A367194: The y-coordinate of the point where x + y = n, x and y are integers and x/y is as close as possible to Pi.

The programs for A367194, there is no canonical definition to state claims against.
-/

/-! ## A367194.P10200716287392444064

`fp[log2(A215039(n+1))]`
-/

namespace A367194.P10200716287392444064
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A215039 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A367194.P10200716287392444064

/-! ## A367194.P4283448766760082707

`ceil(lt[A164942(n+3), 2]/8)`
-/

namespace A367194.P4283448766760082707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164942 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 8⌉

end

end A367194.P4283448766760082707

/-! ## A367194.P4622406249995125125

`floor(A025845(9*n)/(n+3))+1`
-/

namespace A367194.P4622406249995125125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025845 (9 * n) : ℚ) / (n + 3 : ℚ)⌋ + 1

end

end A367194.P4622406249995125125

/-! ## A367194.P9647299733360827076

`round(sqrt(A376218(3*n+5)/120*n+1))`
-/

namespace A367194.P9647299733360827076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A376218 (3 * n + 5) : ℚ) / 120 * (n : ℚ) + 1 : ℝ))

end

end A367194.P9647299733360827076

/-! ## A367194.P13971338096904752407

`A004526(round(log(A002062(n+4))))`
-/

namespace A367194.P13971338096904752407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.log (A002062 (n + 4) : ℝ))).toNat

end

end A367194.P13971338096904752407

/-! ## A367194.P544848457678649835

`round(A299278(n)/A054567(n+1))`
-/

namespace A367194.P544848457678649835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A299278 n : ℚ) / (A054567 (n + 1) : ℚ))

end

end A367194.P544848457678649835

/-! ## A367194.P18082033608183883835

`A002266(comp[A244991(3*n+4)])+1`
-/

namespace A367194.P18082033608183883835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A367194.P18082033608183883835

/-! ## A367194.P4123942959842901442

`ceil(A299290(n)/A002378(3*(n+1)))`
-/

namespace A367194.P4123942959842901442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299290 n : ℚ) / (A002378 (3 * (n + 1)) : ℚ)⌉

end

end A367194.P4123942959842901442

/-! ## A367194.P2501780469931717220

`A000196(A101402(∑[a(n-3)+1]))` with `a(0)=3, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A367194.P2501780469931717220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1, 2] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A101402 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A367194.P2501780469931717220

/-! ## A367194.P7478932480317761102

`A002266(A047201(n+5)-A048766(2*n+1))`
-/

namespace A367194.P7478932480317761102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A047201 (n + 5) - A048766 (2 * n + 1)).toNat

end

end A367194.P7478932480317761102

/-!
# A367199: E.g.f. satisfies A(x) = (1 + x*A(x))^(A(x)^3).

The programs for A367199, there is no canonical definition to state claims against.
-/

/-! ## A367199.P9616945471996651279

`A022549(A192557(n)+A006788(n+1))`
-/

namespace A367199.P9616945471996651279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (A192557 n + A006788 (n + 1)).toNat

end

end A367199.P9616945471996651279

