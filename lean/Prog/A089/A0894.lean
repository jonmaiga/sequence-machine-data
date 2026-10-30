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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A089400: a(n) = m - A089398(2^m - n) for m>=n.

The programs for A089400, there is no canonical definition to state claims against.
-/

/-! ## A089400.P5243382407165171919

`dr(A103542(n))`
-/

namespace A089400.P5243382407165171919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A103542 n)

end

end A089400.P5243382407165171919

/-! ## A089400.P17668909877215873697

`A103542(char[1]+n)%9`
-/

namespace A089400.P17668909877215873697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103542 ((if ∃ j, f1 j = n then 1 else 0) + n)) 9

end

end A089400.P17668909877215873697

/-! ## A089400.P14201870527498619445

`∑{digits}[A103542(n-char[2]), #]`
-/

namespace A089400.P14201870527498619445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A089400.P14201870527498619445

/-! ## A089400.P833045378079123784

`A000120(A102370(n))`
-/

namespace A089400.P833045378079123784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A102370 n).toNat

end

end A089400.P833045378079123784

/-! ## A089400.P13876339317534275288

`A000120(A105104(n))`
-/

namespace A089400.P13876339317534275288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105104 n).toNat

end

end A089400.P13876339317534275288

/-! ## A089400.P17729682755014034507

`A048881(2*A102370(n))`
-/

namespace A089400.P17729682755014034507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A102370 n).toNat

end

end A089400.P17729682755014034507

/-! ## A089400.P3900566462819005496

`A000120(A105023(n)+n)`
-/

namespace A089400.P3900566462819005496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105023 n + (n : ℤ)).toNat

end

end A089400.P3900566462819005496

/-! ## A089400.P18057837622319610475

`A103586(n)-A103615(n)`
-/

namespace A089400.P18057837622319610475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 n - A103615 n

end

end A089400.P18057837622319610475

/-! ## A089400.P12048207515240331171

`A000030(∑{digits}[A103542(n), #])`
-/

namespace A089400.P12048207515240331171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A089400.P12048207515240331171

/-! ## A089400.P13448411728327901540

`A000120(2*A103185(n)+n)`
-/

namespace A089400.P13448411728327901540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A103185 n + (n : ℤ)).toNat

end

end A089400.P13448411728327901540

/-! ## A089400.P5147761947284778211

`A001222(2^∑{digits}[A103542(n), #])`
-/

namespace A089400.P5147761947284778211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A089400.P5147761947284778211

/-! ## A089400.P2215302102110524431

`∑{digits}[A103542(n), #]%A000040(n+1)`
-/

namespace A089400.P2215302102110524431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A000040 (n + 1))

end

end A089400.P2215302102110524431

/-! ## A089400.P9438246432463013045

`A007318(C(2, n))*∑{digits}[A103542(n), #]`
-/

namespace A089400.P9438246432463013045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A089400.P9438246432463013045

/-! ## A089400.P14679543272156900393

`gcd(31, A007318(n))*∑{digits}[A103542(n), #]`
-/

namespace A089400.P14679543272156900393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 31 (A007318 n) * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A089400.P14679543272156900393

/-!
# A089401: a(n) = m - A089398(2^m + n) for m>=n.

The programs for A089401, the canonical program `A089401.P8966417940861156161` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089401 has offset 1).

The definition of A089401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089401.P8966417940861156161

`(n+1)/2+1/2*∑{#}[n, (-1)^floor((n+1-(#+1))/2^#)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089401

/-- `(n+1)/2+1/2*∑{#}[n, (-1)^floor((n+1-(#+1))/2^#)]` -/
def P8966417940861156161.Spec : Prop :=
  ∀ n, P8966417940861156161.a n = (A089401 (n + 1) : ℚ)

end A089401

/-! ## A089401.P7732096927838264771

`n+1-A089398(abs(1-n)+1)`
-/

namespace A089401.P7732096927838264771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A089398 (|1 - (n : ℤ)| + 1).toNat

end

end A089401.P7732096927838264771

namespace A089401

/-- `n+1-A089398(abs(1-n)+1)` -/
def P7732096927838264771.Spec : Prop :=
  ∀ n, P7732096927838264771.a n = A089401 (n + 1)

end A089401

/-! ## A089401.P2986332576160763207

`1-A000120(A105033(n))+n`
-/

namespace A089401.P2986332576160763207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000120 (A105033 n).toNat + (n : ℤ)

end

end A089401.P2986332576160763207

namespace A089401

/-- `1-A000120(A105033(n))+n` -/
def P2986332576160763207.Spec : Prop :=
  ∀ n, P2986332576160763207.a n = A089401 (n + 1)

end A089401

/-! ## A089401.P13253590458773746391

`A103318(n+1)+∑[A105553(n+1)]`
-/

namespace A089401.P13253590458773746391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103318 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089401.P13253590458773746391

namespace A089401

/-- `A103318(n+1)+∑[A105553(n+1)]` -/
def P13253590458773746391.Spec : Prop :=
  ∀ n, P13253590458773746391.a n = A089401 (n + 1)

end A089401

/-! ## A089401.P13747494573640546540

`A103318(n+1)+∑[5%A103318(-xor(n, -1))]`
-/

namespace A089401.P13747494573640546540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A103318 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103318 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089401.P13747494573640546540

namespace A089401

/-- `A103318(n+1)+∑[5%A103318(-xor(n, -1))]` -/
def P13747494573640546540.Spec : Prop :=
  ∀ n, P13747494573640546540.a n = A089401 (n + 1)

end A089401

/-! ## A089401.P5619003927798439618

`A028310(n)+1-A089398(A028310(n))`
-/

namespace A089401.P5619003927798439618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (1 - A089398 (A028310 n).toNat)

end

end A089401.P5619003927798439618

namespace A089401

/-- `A028310(n)+1-A089398(A028310(n))` -/
def P5619003927798439618.Spec : Prop :=
  ∀ n, P5619003927798439618.a n = A089401 (n + 1)

end A089401

/-! ## A089401.P10574126030198475341

`A008619(2*n)-A000120(A105033(n))`
-/

namespace A089401.P10574126030198475341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A000120 (A105033 n).toNat

end

end A089401.P10574126030198475341

namespace A089401

/-- `A008619(2*n)-A000120(A105033(n))` -/
def P10574126030198475341.Spec : Prop :=
  ∀ n, P10574126030198475341.a n = A089401 (n + 1)

end A089401

/-! ## A089401.P11738125855547289115

`A029579(2*n)-A000120(A105033(n))`
-/

namespace A089401.P11738125855547289115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * n) - A000120 (A105033 n).toNat

end

end A089401.P11738125855547289115

namespace A089401

/-- `A029579(2*n)-A000120(A105033(n))` -/
def P11738125855547289115.Spec : Prop :=
  ∀ n, P11738125855547289115.a n = A089401 (n + 1)

end A089401

/-! ## A089401.P15080885895459169529

`A103318(n+1)+∑[A001221(A103528(n+1)+1)]`
-/

namespace A089401.P15080885895459169529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103528 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103318 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089401.P15080885895459169529

namespace A089401

/-- `A103318(n+1)+∑[A001221(A103528(n+1)+1)]` -/
def P15080885895459169529.Spec : Prop :=
  ∀ n, P15080885895459169529.a n = A089401 (n + 1)

end A089401

/-! ## A089401.P18259847153844555595

`A000120(A105033(n))/or(-1, A000045(n))+n+1`
-/

namespace A089401.P18259847153844555595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (A105033 n).toNat : ℚ) / (Int.lor (-1) (A000045 n) : ℚ) + (n + 1 : ℚ)

end

end A089401.P18259847153844555595

namespace A089401

/-- `A000120(A105033(n))/or(-1, A000045(n))+n+1` -/
def P18259847153844555595.Spec : Prop :=
  ∀ n, P18259847153844555595.a n = (A089401 (n + 1) : ℚ)

end A089401

/-!
# A089402: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A089864.

The programs for A089402, the canonical program `A089402.P12649387450735140950` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089402 has offset 0).

The definition of A089402 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089408, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089402.P12649387450735140950

`(A000108(n)+A089408(n))/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A089402

/-- `(A000108(n)+A089408(n))/2` -/
def P12649387450735140950.Spec : Prop :=
  ∀ n, P12649387450735140950.a n = (A089402 n : ℚ)

end A089402

/-! ## A089402.P17541530594655866031

`(A089408(n)+abs(A168491(n)))/2`
-/

namespace A089402.P17541530594655866031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 n + |A168491 n| : ℚ) / 2

end

end A089402.P17541530594655866031

namespace A089402

/-- `(A089408(n)+abs(A168491(n)))/2` -/
def P17541530594655866031.Spec : Prop :=
  ∀ n, P17541530594655866031.a n = (A089402 n : ℚ)

end A089402

/-! ## A089402.P3248477741551841772

`(A120588(n+1)+A089408(n))/2`
-/

namespace A089402.P3248477741551841772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (n + 1) + A089408 n : ℚ) / 2

end

end A089402.P3248477741551841772

namespace A089402

/-- `(A120588(n+1)+A089408(n))/2` -/
def P3248477741551841772.Spec : Prop :=
  ∀ n, P3248477741551841772.a n = (A089402 n : ℚ)

end A089402

/-! ## A089402.P10917449126291377522

`(A089408(n)+A120304(n)+2)/2`
-/

namespace A089402.P10917449126291377522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 n + (A120304 n + 2) : ℚ) / 2

end

end A089402.P10917449126291377522

namespace A089402

/-- `(A089408(n)+A120304(n)+2)/2` -/
def P10917449126291377522.Spec : Prop :=
  ∀ n, P10917449126291377522.a n = (A089402 n : ℚ)

end A089402

/-! ## A089402.P14531716355713712557

`(A089408(n)+A028303(2*n))/2`
-/

namespace A089402.P14531716355713712557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 n + A028303 (2 * n) : ℚ) / 2

end

end A089402.P14531716355713712557

namespace A089402

/-- `(A089408(n)+A028303(2*n))/2` -/
def P14531716355713712557.Spec : Prop :=
  ∀ n, P14531716355713712557.a n = (A089402 n : ℚ)

end A089402

/-! ## A089402.P5909728437866934378

`(A089408(n)+∑{d}[n+1, A034742(#)])/2`
-/

namespace A089402.P5909728437866934378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A089408 n + ∑ d ∈ Nat.divisors (f1 n), A034742 d : ℤ) : ℚ) / 2

end

end A089402.P5909728437866934378

namespace A089402

/-- `(A089408(n)+∑{d}[n+1, A034742(#)])/2` -/
def P5909728437866934378.Spec : Prop :=
  ∀ n, P5909728437866934378.a n = (A089402 n : ℚ)

end A089402

/-! ## A089402.P5782849678572504023

`(A089408(n)+abs(A090192(2*n+1)))/2`
-/

namespace A089402.P5782849678572504023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 n + |A090192 (2 * n + 1)| : ℚ) / 2

end

end A089402.P5782849678572504023

namespace A089402

/-- `(A089408(n)+abs(A090192(2*n+1)))/2` -/
def P5782849678572504023.Spec : Prop :=
  ∀ n, P5782849678572504023.a n = (A089402 n : ℚ)

end A089402

/-! ## A089402.P15228538031421481694

`A120588(A110654(n))+A000150(n)`
-/

namespace A089402.P15228538031421481694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A110654 n).toNat + A000150 n

end

end A089402.P15228538031421481694

namespace A089402

/-- `A120588(A110654(n))+A000150(n)` -/
def P15228538031421481694.Spec : Prop :=
  ∀ n, P15228538031421481694.a n = A089402 n

end A089402

/-! ## A089402.P15166214089644256174

`A208355(A289207(n))+A000150(n)`
-/

namespace A089402.P15166214089644256174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (A289207 n).toNat + A000150 n

end

end A089402.P15166214089644256174

namespace A089402

/-- `A208355(A289207(n))+A000150(n)` -/
def P15166214089644256174.Spec : Prop :=
  ∀ n, P15166214089644256174.a n = A089402 n

end A089402

/-! ## A089402.P8410310405042042230

`A000150(n)-A115140(A065033(n))`
-/

namespace A089402.P8410310405042042230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000150 n - A115140 (A065033 n).toNat

end

end A089402.P8410310405042042230

namespace A089402

/-- `A000150(n)-A115140(A065033(n))` -/
def P8410310405042042230.Spec : Prop :=
  ∀ n, P8410310405042042230.a n = A089402 n

end A089402

/-! ## A089402.P8538025358914529906

`A120588(∑[A000035(n)])+A000150(n)`
-/

namespace A089402.P8538025358914529906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000150 n

end

end A089402.P8538025358914529906

namespace A089402

/-- `A120588(∑[A000035(n)])+A000150(n)` -/
def P8538025358914529906.Spec : Prop :=
  ∀ n, P8538025358914529906.a n = A089402 n

end A089402

/-! ## A089402.P8322154238069681096

`(A089408(A005408(n))+A089408(n))/2`
-/

namespace A089402.P8322154238069681096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 (A005408 n).toNat + A089408 n : ℚ) / 2

end

end A089402.P8322154238069681096

namespace A089402

/-- `(A089408(A005408(n))+A089408(n))/2` -/
def P8322154238069681096.Spec : Prop :=
  ∀ n, P8322154238069681096.a n = (A089402 n : ℚ)

end A089402

/-! ## A089402.P17185211940091244753

`(A089408(n)+A263986(n)+A000045(n))/2`
-/

namespace A089402.P17185211940091244753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 n + (A263986 n + A000045 n) : ℚ) / 2

end

end A089402.P17185211940091244753

namespace A089402

/-- `(A089408(n)+A263986(n)+A000045(n))/2` -/
def P17185211940091244753.Spec : Prop :=
  ∀ n, P17185211940091244753.a n = (A089402 n : ℚ)

end A089402

/-!
# A089403: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A071661/A071662.

The programs for A089403, there is no canonical definition to state claims against.
-/

/-! ## A089403.P12749399250450565368

`ceil(A060114(n)/2)`
-/

namespace A089403.P12749399250450565368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060114 n : ℚ) / 2⌉

end

end A089403.P12749399250450565368

/-! ## A089403.P8011209427355189848

`A060114(n)/A073203(∑[n])`
-/

namespace A089403.P8011209427355189848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060114 n : ℚ) / (A073203 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A089403.P8011209427355189848

/-! ## A089403.P9719662212082203052

`A060114(A233583(n+1))/2`
-/

namespace A089403.P9719662212082203052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060114 (A233583 (n + 1)).toNat : ℚ) / 2

end

end A089403.P9719662212082203052

/-! ## A089403.P12460283581894703485

`gcd(2, A089875(n))*A089875(n)`
-/

namespace A089403.P12460283581894703485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A089875 n) : ℤ) * A089875 n

end

end A089403.P12460283581894703485

/-! ## A089403.P8250015048473187294

`A060114(n)/A006530(A011782(n))`
-/

namespace A089403.P8250015048473187294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060114 n : ℚ) / (A006530 (A011782 n).toNat : ℚ)

end

end A089403.P8250015048473187294

/-!
# A089404: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A073286/A073287.

The programs for A089404, there is no canonical definition to state claims against.
-/

/-! ## A089404.P9181242538241258015

`A127757(A148168(n+1))`
-/

namespace A089404.P9181242538241258015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A148168 (n + 1)).toNat

end

end A089404.P9181242538241258015

/-! ## A089404.P14704488887754112639

`A060384(A000571(n)*A093161(n+1))`
-/

namespace A089404.P14704488887754112639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A000571 n * A093161 (n + 1)).toNat

end

end A089404.P14704488887754112639

/-! ## A089404.P10993146130225953762

`A060384(A000571(n)*A307782(n+1))`
-/

namespace A089404.P10993146130225953762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A000571 n * A307782 (n + 1)).toNat

end

end A089404.P10993146130225953762

/-! ## A089404.P17453343110258822995

`ceil(sqrt(A006005(n!)))`
-/

namespace A089404.P17453343110258822995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A006005 (Nat.factorial n) : ℝ)⌉

end

end A089404.P17453343110258822995

/-!
# A089405: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A073288/A073289.

The programs for A089405, there is no canonical definition to state claims against.
-/

/-! ## A089405.P13282923419063032537

`A014267(n+1)+and(n+2, A309862(n)!-1)`
-/

namespace A089405.P13282923419063032537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014267 (n + 1) + Int.land (n + 2 : ℤ) ((Nat.factorial (A309862 n).toNat : ℤ) - 1)

end

end A089405.P13282923419063032537

/-! ## A089405.P5634124332624157246

`A127757(A124156(n+1)+A000625(n+2))`
-/

namespace A089405.P5634124332624157246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A124156 (n + 1) + A000625 (n + 2)).toNat

end

end A089405.P5634124332624157246

/-! ## A089405.P4711396257580308953

`A127757(A196096(2*n+1)+A000625(n+2))`
-/

namespace A089405.P4711396257580308953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A196096 (2 * n + 1) + A000625 (n + 2)).toNat

end

end A089405.P4711396257580308953

/-! ## A089405.P17206908883675944227

`A127757(A230772(2*(n+1))+A000625(n+2))`
-/

namespace A089405.P17206908883675944227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A230772 (2 * (n + 1)) + A000625 (n + 2)).toNat

end

end A089405.P17206908883675944227

/-! ## A089405.P1130039931890831219

`A001462(A319787(n))`
-/

namespace A089405.P1130039931890831219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A319787 n).toNat

end

end A089405.P1130039931890831219

/-!
# A089406: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A082345/A082346.

The programs for A089406, there is no canonical definition to state claims against.
-/

/-! ## A089406.P11322103753558892051

`A023193(or(n, A007460(n)))`
-/

namespace A089406.P11322103753558892051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (n : ℤ) (A007460 n)).toNat

end

end A089406.P11322103753558892051

/-! ## A089406.P16105821047782690108

`A054404(A261492(n)+A097331(n))`
-/

namespace A089406.P16105821047782690108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A261492 n + A097331 n).toNat

end

end A089406.P16105821047782690108

/-!
# A089407: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A089859/A089863.

The programs for A089407, there is no canonical definition to state claims against.
-/

/-! ## A089407.P15451793649591268367

`A065033(A089402(n))`
-/

namespace A089407.P15451793649591268367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A089402 n).toNat

end

end A089407.P15451793649591268367

/-! ## A089407.P16660530343563838297

`A004526(A089402(n)+1)`
-/

namespace A089407.P16660530343563838297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A089402 n + 1).toNat

end

end A089407.P16660530343563838297

/-! ## A089407.P14790412723249827740

`A123108(A089402(n)+1)`
-/

namespace A089407.P14790412723249827740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A089402 n + 1).toNat

end

end A089407.P14790412723249827740

/-! ## A089407.P9725692774179431470

`A008619(A089402(n)-1)`
-/

namespace A089407.P9725692774179431470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A089402 n - 1).toNat

end

end A089407.P9725692774179431470

/-! ## A089407.P18435263405714976694

`A140106(A089402(n)+3)`
-/

namespace A089407.P18435263405714976694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A089402 n + 3).toNat

end

end A089407.P18435263405714976694

/-!
# A089408: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A089864.

The programs for A089408, the canonical program `A089408.P14427067045341250572` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089408 has offset 0).

The definition of A089408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089408.P374426151796746695

`gcd(A090192(n), A104624(n))`
-/

namespace A089408.P374426151796746695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090192 n) (A104624 n)

end

end A089408.P374426151796746695

namespace A089408

/-- `gcd(A090192(n), A104624(n))` -/
def P374426151796746695.Spec : Prop :=
  ∀ n, (P374426151796746695.a n : ℤ) = A089408 n

end A089408

/-! ## A089408.P14427067045341250572

`gcd(A097331(n), A182122(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089408

/-- `gcd(A097331(n), A182122(n))` -/
def P14427067045341250572.Spec : Prop :=
  ∀ n, (P14427067045341250572.a n : ℤ) = A089408 n

theorem P14427067045341250572.correct : P14427067045341250572.Spec := by
  intro n
  simp only [A089408]

end A089408

/-! ## A089408.P2016501383033531018

`gcd(A182122(n)+A105523(n), A105523(n))`
-/

namespace A089408.P2016501383033531018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182122 n + A105523 n) (A105523 n)

end

end A089408.P2016501383033531018

namespace A089408

/-- `gcd(A182122(n)+A105523(n), A105523(n))` -/
def P2016501383033531018.Spec : Prop :=
  ∀ n, (P2016501383033531018.a n : ℤ) = A089408 n

end A089408

/-! ## A089408.P6318960248245398594

`gcd(A210628(n)+A182122(n), A210628(n))`
-/

namespace A089408.P6318960248245398594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210628 n + A182122 n) (A210628 n)

end

end A089408.P6318960248245398594

namespace A089408

/-- `gcd(A210628(n)+A182122(n), A210628(n))` -/
def P6318960248245398594.Spec : Prop :=
  ∀ n, (P6318960248245398594.a n : ℤ) = A089408 n

end A089408

/-! ## A089408.P2121445542143474939

`A241543(n)/A152271(n)`
-/

namespace A089408.P2121445542143474939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241543 n : ℚ) / (A152271 n : ℚ)

end

end A089408.P2121445542143474939

namespace A089408

/-- `A241543(n)/A152271(n)` -/
def P2121445542143474939.Spec : Prop :=
  ∀ n, P2121445542143474939.a n = (A089408 n : ℚ)

end A089408

/-! ## A089408.P16552695502758848641

`gcd(A105523(n), A241543(n))`
-/

namespace A089408.P16552695502758848641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105523 n) (A241543 n)

end

end A089408.P16552695502758848641

namespace A089408

/-- `gcd(A105523(n), A241543(n))` -/
def P16552695502758848641.Spec : Prop :=
  ∀ n, (P16552695502758848641.a n : ℤ) = A089408 n

end A089408

/-! ## A089408.P10520289820671229214

`gcd(A089849(n), A104624(n))`
-/

namespace A089408.P10520289820671229214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089849 n) (A104624 n)

end

end A089408.P10520289820671229214

namespace A089408

/-- `gcd(A089849(n), A104624(n))` -/
def P10520289820671229214.Spec : Prop :=
  ∀ n, (P10520289820671229214.a n : ℤ) = A089408 n

end A089408

/-! ## A089408.P7721584463710084124

`gcd(A001405(n), A047073(n))`
-/

namespace A089408.P7721584463710084124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 n) (A047073 n)

end

end A089408.P7721584463710084124

namespace A089408

/-- `gcd(A001405(n), A047073(n))` -/
def P7721584463710084124.Spec : Prop :=
  ∀ n, (P7721584463710084124.a n : ℤ) = A089408 n

end A089408

/-! ## A089408.P144603079369336049

`gcd(A126930(n), A182027(n))`
-/

namespace A089408.P144603079369336049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126930 n) (A182027 n)

end

end A089408.P144603079369336049

namespace A089408

/-- `gcd(A126930(n), A182027(n))` -/
def P144603079369336049.Spec : Prop :=
  ∀ n, (P144603079369336049.a n : ℤ) = A089408 n

end A089408

/-! ## A089408.P15001922388062299754

`A047073(n)/A131055(n+1)`
-/

namespace A089408.P15001922388062299754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047073 n : ℚ) / (A131055 (n + 1) : ℚ)

end

end A089408.P15001922388062299754

namespace A089408

/-- `A047073(n)/A131055(n+1)` -/
def P15001922388062299754.Spec : Prop :=
  ∀ n, P15001922388062299754.a n = (A089408 n : ℚ)

end A089408

/-! ## A089408.P4493483811574703977

`A001405(n)/(A053438(n)-n)`
-/

namespace A089408.P4493483811574703977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A053438 n - (n : ℤ) : ℚ)

end

end A089408.P4493483811574703977

namespace A089408

/-- `A001405(n)/(A053438(n)-n)` -/
def P4493483811574703977.Spec : Prop :=
  ∀ n, P4493483811574703977.a n = (A089408 n : ℚ)

end A089408

/-! ## A089408.P16522602111670494628

`A001405(n)/(1-A134451(n)+n)`
-/

namespace A089408.P16522602111670494628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (1 - A134451 n + (n : ℤ) : ℚ)

end

end A089408.P16522602111670494628

namespace A089408

/-- `A001405(n)/(1-A134451(n)+n)` -/
def P16522602111670494628.Spec : Prop :=
  ∀ n, P16522602111670494628.a n = (A089408 n : ℚ)

end A089408

/-! ## A089408.P15424076358692000278

`A001405(n)/A004273(A065033(n))`
-/

namespace A089408.P15424076358692000278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A004273 (A065033 n).toNat : ℚ)

end

end A089408.P15424076358692000278

namespace A089408

/-- `A001405(n)/A004273(A065033(n))` -/
def P15424076358692000278.Spec : Prop :=
  ∀ n, P15424076358692000278.a n = (A089408 n : ℚ)

end A089408

/-! ## A089408.P879391312859311345

`A078391(A165157(n))`
-/

namespace A089408.P879391312859311345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 (A165157 n).toNat

end

end A089408.P879391312859311345

namespace A089408

/-- `A078391(A165157(n))` -/
def P879391312859311345.Spec : Prop :=
  ∀ n, P879391312859311345.a n = A089408 n

end A089408

/-! ## A089408.P3392155316984939615

`gcd(A089849(n), A100225(n))`
-/

namespace A089408.P3392155316984939615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089849 n) (A100225 n)

end

end A089408.P3392155316984939615

namespace A089408

/-- `gcd(A089849(n), A100225(n))` -/
def P3392155316984939615.Spec : Prop :=
  ∀ n, (P3392155316984939615.a n : ℤ) = A089408 n

end A089408

/-! ## A089408.P9022921719251267248

`2*A089402(n)-A000108(n)`
-/

namespace A089408.P9022921719251267248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089402 n - A000108 n

end

end A089408.P9022921719251267248

namespace A089408

/-- `2*A089402(n)-A000108(n)` -/
def P9022921719251267248.Spec : Prop :=
  ∀ n, P9022921719251267248.a n = A089408 n

end A089408

/-! ## A089408.P1745057847636855657

`A047072(A266725(n))`
-/

namespace A089408.P1745057847636855657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (A266725 n).toNat

end

end A089408.P1745057847636855657

namespace A089408

/-- `A047072(A266725(n))` -/
def P1745057847636855657.Spec : Prop :=
  ∀ n, P1745057847636855657.a n = A089408 n

end A089408

/-! ## A089408.P17914370108824939820

`A047072(A194274(n))`
-/

namespace A089408.P17914370108824939820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (A194274 n).toNat

end

end A089408.P17914370108824939820

namespace A089408

/-- `A047072(A194274(n))` -/
def P17914370108824939820.Spec : Prop :=
  ∀ n, P17914370108824939820.a n = A089408 n

end A089408

/-! ## A089408.P16010028780321013883

`A047072(A007590(n+1))`
-/

namespace A089408.P16010028780321013883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (A007590 (n + 1)).toNat

end

end A089408.P16010028780321013883

namespace A089408

/-- `A047072(A007590(n+1))` -/
def P16010028780321013883.Spec : Prop :=
  ∀ n, P16010028780321013883.a n = A089408 n

end A089408

/-! ## A089408.P8414805472163555024

`A047072(A080476(n+1))`
-/

namespace A089408.P8414805472163555024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (A080476 (n + 1)).toNat

end

end A089408.P8414805472163555024

namespace A089408

/-- `A047072(A080476(n+1))` -/
def P8414805472163555024.Spec : Prop :=
  ∀ n, P8414805472163555024.a n = A089408 n

end A089408

/-!
# A089409: Even-indexed terms of A089413.

The programs for A089409, there is no canonical definition to state claims against.
-/

/-! ## A089409.P17792948701092028785

`A089413(2*n)`
-/

namespace A089409.P17792948701092028785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089413 (2 * n)

end

end A089409.P17792948701092028785

/-! ## A089409.P14410251195654562915

`A089413(gcd(n, C(2, n))+n)%64`
-/

namespace A089409.P14410251195654562915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089413 (Nat.gcd n (Nat.choose 2 n) + n)) 64

end

end A089409.P14410251195654562915

/-! ## A089409.P2414433076800490125

`A089413(A004277(n))%37`
-/

namespace A089409.P2414433076800490125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089413 (A004277 n).toNat) 37

end

end A089409.P2414433076800490125

/-! ## A089409.P8306175611240367548

`A089413(A005843(n))%37`
-/

namespace A089409.P8306175611240367548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089413 (A005843 n).toNat) 37

end

end A089409.P8306175611240367548

/-! ## A089409.P12845311538047819862

`A089413(A376952(n))%37`
-/

namespace A089409.P12845311538047819862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089413 (A376952 n).toNat) 37

end

end A089409.P12845311538047819862

/-!
# A089415: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A071655/A071656.

The programs for A089415, there is no canonical definition to state claims against.
-/

/-! ## A089415.P14690727122711939874

`A303226(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=12`
-/

namespace A089415.P14690727122711939874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6, 12] fun n a =>
  A303226 (a (n - 1)).toNat

end

end A089415.P14690727122711939874

/-! ## A089415.P7655470802075437753

`n*A298389(a(n-1)+5)` with `a(0)=1`
-/

namespace A089415.P7655470802075437753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A298389 (a (n - 1) + 5).toNat

end

end A089415.P7655470802075437753

/-!
# A089416: Odd-indexed terms of A089413.

The programs for A089416, there is no canonical definition to state claims against.
-/

/-! ## A089416.P630133371588489001

`record[A089413(n)]`
-/

namespace A089416.P630133371588489001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089416.P630133371588489001

/-! ## A089416.P13521641260856177565

`A089413(Δ[n²])`
-/

namespace A089416.P13521641260856177565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089413 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A089416.P13521641260856177565

/-! ## A089416.P863644854109600154

`and(-1, A089413(2*n+1))`
-/

namespace A089416.P863644854109600154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A089413 (2 * n + 1))

end

end A089416.P863644854109600154

/-! ## A089416.P14079201567415124925

`∑[A208887(n)]-A213370(n)`
-/

namespace A089416.P14079201567415124925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A213370 n

end

end A089416.P14079201567415124925

/-! ## A089416.P16670768001360498666

`A000027(A089413(2*n+1))`
-/

namespace A089416.P16670768001360498666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A089413 (2 * n + 1)).toNat

end

end A089416.P16670768001360498666

/-!
# A089417: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A082333/A082334.

The programs for A089417, there is no canonical definition to state claims against.
-/

/-! ## A089417.P13155140499864394578

`A359897(A003140(n+1))`
-/

namespace A089417.P13155140499864394578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359897 (A003140 (n + 1)).toNat

end

end A089417.P13155140499864394578

/-! ## A089417.P8746861385022818153

`or(A302613(n+2)/2, A008929(n+1))`
-/

namespace A089417.P8746861385022818153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A302613 (n + 2) : ℚ) / 2)) (A008929 (n + 1))

end

end A089417.P8746861385022818153

/-! ## A089417.P16203536651773580043

`or(A302613(n+2)/2, A339153(n+1))`
-/

namespace A089417.P16203536651773580043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A302613 (n + 2) : ℚ) / 2)) (A339153 (n + 1))

end

end A089417.P16203536651773580043

/-! ## A089417.P13793264338467251834

`xor(A003242(n), A087436(A149467(n)))`
-/

namespace A089417.P13793264338467251834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003242 n) (A087436 (A149467 n).toNat)

end

end A089417.P13793264338467251834

/-! ## A089417.P9945640233898399037

`A335616(A362381(n))+A324408(n+1)`
-/

namespace A089417.P9945640233898399037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335616 (A362381 n).toNat + A324408 (n + 1)

end

end A089417.P9945640233898399037

/-!
# A089420: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A082333/A082334.

The programs for A089420, there is no canonical definition to state claims against.
-/

/-! ## A089420.P12647010667453710989

`A285705(∑[∏[ceil(n!/2)]])`
-/

namespace A089420.P12647010667453710989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285705 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089420.P12647010667453710989

/-! ## A089420.P3747786501278691391

`A285705(∑[∏[lcm(2, n!)/2]])`
-/

namespace A089420.P3747786501278691391
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.factorial n) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285705 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A089420.P3747786501278691391

/-!
# A089423: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A082335/A082336 (and also of A082349/A082350, to be proved).

The programs for A089423, there is no canonical definition to state claims against.
-/

/-! ## A089423.P15909791481656954605

`lcm(lcm(n, a(n-1)), A089422(n))` with `a(0)=1`
-/

namespace A089423.P15909791481656954605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (Nat.lcm n (a (n - 1)) : ℤ) (A089422 n)

end

end A089423.P15909791481656954605

/-! ## A089423.P7708985646905653211

`A003418(n)*A034444(A046799(n))`
-/

namespace A089423.P7708985646905653211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A034444 (A046799 n).toNat

end

end A089423.P7708985646905653211

/-! ## A089423.P8181436937016672233

`A003418(n)*A047726(A083652(n))`
-/

namespace A089423.P8181436937016672233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A047726 (A083652 n).toNat

end

end A089423.P8181436937016672233

/-! ## A089423.P7786026052952615785

`A003418(n)*A107286(A046798(n))`
-/

namespace A089423.P7786026052952615785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A107286 (A046798 n).toNat

end

end A089423.P7786026052952615785

/-! ## A089423.P2816235988517775523

`A003418(n)*A105224(A071051(n))`
-/

namespace A089423.P2816235988517775523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A105224 (A071051 n).toNat

end

end A089423.P2816235988517775523

/-!
# A089424: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A082351/A082352.

The programs for A089424, there is no canonical definition to state claims against.
-/

/-! ## A089424.P1262318559751487645

`A339695(∏[A027337(n)])`
-/

namespace A089424.P1262318559751487645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339695 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089424.P1262318559751487645

/-! ## A089424.P9520976701554163539

`A020650(A000142(n))-col(∑{d}[n+1, #]%4)`
-/

namespace A089424.P9520976701554163539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A000142 n).toNat - (SequenceMachineLib.triCol ((∑ d ∈ Nat.divisors (f1 n), d) % 4) : ℤ)

end

end A089424.P9520976701554163539

/-! ## A089424.P5589350277749154074

`A023193(A274107(n)+A148463(n))`
-/

namespace A089424.P5589350277749154074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A274107 n + A148463 n).toNat

end

end A089424.P5589350277749154074

/-! ## A089424.P14579069411091620366

`A020650(A000142(n))-A220400(n)`
-/

namespace A089424.P14579069411091620366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A000142 n).toNat - A220400 n

end

end A089424.P14579069411091620366

/-!
# A089427: Maximum cycle size in range [A014137(n-1)..A014138(n-1)] of permutation A082355/A082356.

The programs for A089427, there is no canonical definition to state claims against.
-/

/-! ## A089427.P6014882419723530508

`A002635(A222373(n+1)+A048277(n))`
-/

namespace A089427.P6014882419723530508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A222373 (n + 1) + A048277 n).toNat

end

end A089427.P6014882419723530508

/-! ## A089427.P4713688145133034727

`A326784(A142870(n+1)+A140207(n))`
-/

namespace A089427.P4713688145133034727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326784 (A142870 (n + 1) + A140207 n).toNat

end

end A089427.P4713688145133034727

/-! ## A089427.P16243577932884760186

`and(A006068(A245900(n+1)), A062547(n+2))`
-/

namespace A089427.P16243577932884760186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006068 (A245900 (n + 1)).toNat) (A062547 (n + 2))

end

end A089427.P16243577932884760186

/-! ## A089427.P12466919423942717718

`or(A001462(A286076(n)), A159689(2*(n+2)))`
-/

namespace A089427.P12466919423942717718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001462 (A286076 n).toNat) (A159689 (2 * (n + 2)))

end

end A089427.P12466919423942717718

/-!
# A089428: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A082355/A082356.

The programs for A089428, there is no canonical definition to state claims against.
-/

/-! ## A089428.P17149805561193669475

`∏[A333432(n!)]`
-/

namespace A089428.P17149805561193669475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089428.P17149805561193669475

/-! ## A089428.P9769452855545137980

`A246147(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A089428.P9769452855545137980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A246147 (a (n - 1)).toNat

end

end A089428.P9769452855545137980

/-!
# A089430: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A082339/A082340.

The programs for A089430, there is no canonical definition to state claims against.
-/

/-! ## A089430.P12609300178026934434

`A112325(A148103(n))`
-/

namespace A089430.P12609300178026934434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A148103 n).toNat

end

end A089430.P12609300178026934434

/-! ## A089430.P10683213665496783727

`A293994(n)-A006995(A139554(2*n))`
-/

namespace A089430.P10683213665496783727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293994 n - A006995 (A139554 (2 * n)).toNat

end

end A089430.P10683213665496783727

/-!
# A089431: Even-indexed terms of A089423.

The programs for A089431, there is no canonical definition to state claims against.
-/

/-! ## A089431.P6723358344292300371

`lcm(a(n-1), record[lcm(n+1, 2*n)])` with `a(0)=1`
-/

namespace A089431.P6723358344292300371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A089431.P6723358344292300371

/-! ## A089431.P7031177678995530287

`A089423(2*n)`
-/

namespace A089431.P7031177678995530287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089423 (2 * n)

end

end A089431.P7031177678995530287

/-! ## A089431.P489915768179310677

`C(A089423(n+n), ceil(sin(n)²))`
-/

namespace A089431.P489915768179310677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089423 (n + n)).toNat ⌈Real.sin (n : ℝ) ^ 2⌉.toNat

end

end A089431.P489915768179310677

/-! ## A089431.P13800951731581907940

`or(C(2, n+2), A089423(record[(n-1)^(n%2)]))`
-/

namespace A089431.P13800951731581907940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A089423 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A089431.P13800951731581907940

/-! ## A089431.P3330457769851656318

`A066574(A068977(n+1))`
-/

namespace A089431.P3330457769851656318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066574 (A068977 (n + 1)).toNat

end

end A089431.P3330457769851656318

/-!
# A089432: Numbers n such that n concatenated with floor(n/2) is prime.

The programs for A089432, there is no canonical definition to state claims against.
-/

/-! ## A089432.P8841152071075046336

`lt[A348735(A082985(n)), A007814(n+1)]`
-/

namespace A089432.P8841152071075046336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348735 (A082985 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089432.P8841152071075046336

/-! ## A089432.P471992338258083767

`4*lt[n+1, ∑{digits}[Δ[n^3]+1, #]]+3`
-/

namespace A089432.P471992338258083767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A089432.P471992338258083767

/-! ## A089432.P14196540472412223028

`or(3, A055572(A315459(n)))`
-/

namespace A089432.P14196540472412223028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A055572 (A315459 n).toNat)

end

end A089432.P14196540472412223028

/-! ## A089432.P5790320901912722647

`lt[A145364(A034851(n)), A007814(n+1)]`
-/

namespace A089432.P5790320901912722647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145364 (A034851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089432.P5790320901912722647

/-! ## A089432.P5760994635595421122

`lt[A115362(A329865(n+1)), A115362(n)]`
-/

namespace A089432.P5760994635595421122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A329865 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089432.P5760994635595421122

/-!
# A089433: Number of noncrossing connected graphs on n nodes having exactly two interior faces.

The programs for A089433, the canonical program `A089433.P9191932478328768461` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089433 has offset 4).

The definition of A089433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089433.P9191932478328768461

`(n+4)*C(3*(n+4)-3, n)/2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089433

/-- `(n+4)*C(3*(n+4)-3, n)/2` -/
def P9191932478328768461.Spec : Prop :=
  ∀ n, P9191932478328768461.a n = (A089433 (n + 4) : ℚ)

end A089433

/-! ## A089433.P18158069655952064341

`(n+4)/2*A004321(n+3)`
-/

namespace A089433.P18158069655952064341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) / 2 * (A004321 (n + 3) : ℚ)

end

end A089433.P18158069655952064341

namespace A089433

/-- `(n+4)/2*A004321(n+3)` -/
def P18158069655952064341.Spec : Prop :=
  ∀ n, P18158069655952064341.a n = (A089433 (n + 4) : ℚ)

end A089433

/-! ## A089433.P1119597586296806246

`(A167614(n+2)-3)/3*A230547(n)`
-/

namespace A089433.P1119597586296806246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167614 (n + 2) - 3 : ℚ) / 3 * (A230547 n : ℚ)

end

end A089433.P1119597586296806246

namespace A089433

/-- `(A167614(n+2)-3)/3*A230547(n)` -/
def P1119597586296806246.Spec : Prop :=
  ∀ n, P1119597586296806246.a n = (A089433 (n + 4) : ℚ)

end A089433

/-! ## A089433.P5283765546677825851

`A089434(∑[n+2]+5)`
-/

namespace A089433.P5283765546677825851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089434 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A089433.P5283765546677825851

namespace A089433

/-- `A089434(∑[n+2]+5)` -/
def P5283765546677825851.Spec : Prop :=
  ∀ n, P5283765546677825851.a n = A089433 (n + 4)

end A089433

/-! ## A089433.P12492096815840838160

`record[gcd(A084938(n+3), A089434(n+7))]`
-/

namespace A089433.P12492096815840838160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 (n + 3)) (A089434 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089433.P12492096815840838160

namespace A089433

/-- `record[gcd(A084938(n+3), A089434(n+7))]` -/
def P12492096815840838160.Spec : Prop :=
  ∀ n, (P12492096815840838160.a n : ℤ) = A089433 (n + 4)

end A089433

/-!
# A089434: Triangle read by rows: T(n,k) (n >= 2, k >= 0) is the number of non-crossing connected graphs on n nodes on a circle, having k interior faces. Rows are indexed 2,3,4,...; columns are indexed 0,1,2,....

The programs for A089434, there is no canonical definition to state claims against.
-/

/-! ## A089434.P11133482802668997445

`A127537(A166021(n+1))`
-/

namespace A089434.P11133482802668997445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127537 (A166021 (n + 1)).toNat

end

end A089434.P11133482802668997445

/-! ## A089434.P2217626406166334006

`A127537(A061885(n)+2)`
-/

namespace A089434.P2217626406166334006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127537 (A061885 n + 2).toNat

end

end A089434.P2217626406166334006

/-! ## A089434.P3491759350020639694

`A127537(A057944(n)+2+n)`
-/

namespace A089434.P3491759350020639694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127537 (A057944 n + 2 + (n : ℤ)).toNat

end

end A089434.P3491759350020639694

/-! ## A089434.P5604406586170829469

`A127537(2*(n+1)-A002262(n))`
-/

namespace A089434.P5604406586170829469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127537 ((2 * (n + 1) : ℤ) - A002262 n).toNat

end

end A089434.P5604406586170829469

/-!
# A089436: Number of non-crossing connected graphs on n nodes on a circle in which a fixed (distinguished) node has degree one.

The programs for A089436, the canonical program `A089436.P16838142110947848169` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089436 has offset 2).

The definition of A089436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089436.P16838142110947848169

`A085614(n+1)+A085614(n+1)-A263843(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089436

/-- `A085614(n+1)+A085614(n+1)-A263843(n+1)` -/
def P16838142110947848169.Spec : Prop :=
  ∀ n, P16838142110947848169.a n = A089436 (n + 2)

theorem P16838142110947848169.correct : P16838142110947848169.Spec := by
  intro n
  simp only [A089436, Nat.add_sub_cancel]

end A089436

/-! ## A089436.P11682502810357434249

`A085614(n+1)+A085614(n+1)-A007297(n+2)`
-/

namespace A089436.P11682502810357434249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085614 (n + 1) + (A085614 (n + 1) - A007297 (n + 2))

end

end A089436.P11682502810357434249

namespace A089436

/-- `A085614(n+1)+A085614(n+1)-A007297(n+2)` -/
def P11682502810357434249.Spec : Prop :=
  ∀ n, P11682502810357434249.a n = A089436 (n + 2)

end A089436

/-! ## A089436.P5561655249719099920

`A143021(n+2)/(n+2)`
-/

namespace A089436.P5561655249719099920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143021 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A089436.P5561655249719099920

namespace A089436

/-- `A143021(n+2)/(n+2)` -/
def P5561655249719099920.Spec : Prop :=
  ∀ n, P5561655249719099920.a n = (A089436 (n + 2) : ℚ)

end A089436

/-! ## A089436.P3997656849823391852

`A143022(∑[n]+2)`
-/

namespace A089436.P3997656849823391852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143022 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A089436.P3997656849823391852

namespace A089436

/-- `A143022(∑[n]+2)` -/
def P3997656849823391852.Spec : Prop :=
  ∀ n, P3997656849823391852.a n = A089436 (n + 2)

end A089436

/-! ## A089436.P3749103097144778531

`record[A143022(n+2)/A007318(n)]`
-/

namespace A089436.P3749103097144778531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143022 (n + 2) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089436.P3749103097144778531

namespace A089436

/-- `record[A143022(n+2)/A007318(n)]` -/
def P3749103097144778531.Spec : Prop :=
  ∀ n, P3749103097144778531.a n = (A089436 (n + 2) : ℚ)

end A089436

/-! ## A089436.P88034911050715963

`record[A143022(n+2)/A047969(n)]`
-/

namespace A089436.P88034911050715963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143022 (n + 2) : ℚ) / (A047969 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089436.P88034911050715963

namespace A089436

/-- `record[A143022(n+2)/A047969(n)]` -/
def P88034911050715963.Spec : Prop :=
  ∀ n, P88034911050715963.a n = (A089436 (n + 2) : ℚ)

end A089436

/-! ## A089436.P6811237185149321092

`record[A143022(n+2)/A131060(n)]`
-/

namespace A089436.P6811237185149321092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143022 (n + 2) : ℚ) / (A131060 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089436.P6811237185149321092

namespace A089436

/-- `record[A143022(n+2)/A131060(n)]` -/
def P6811237185149321092.Spec : Prop :=
  ∀ n, P6811237185149321092.a n = (A089436 (n + 2) : ℚ)

end A089436

/-!
# A089437: Numbers k such that 4^k + 3 is prime.

The programs for A089437, there is no canonical definition to state claims against.
-/

/-! ## A089437.P12640149053802552861

`record[A273943(A057732(n+1))]`
-/

namespace A089437.P12640149053802552861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A057732 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089437.P12640149053802552861

/-! ## A089437.P17201393643439263559

`record[A318518(A057732(n+2))]`
-/

namespace A089437.P17201393643439263559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A057732 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089437.P17201393643439263559

/-! ## A089437.P11048298732576446217

`record[A078898(A057732(n+3))]`
-/

namespace A089437.P11048298732576446217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A057732 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089437.P11048298732576446217

/-! ## A089437.P16000685174390437865

`record[A101279(A057732(n+1)+1)]`
-/

namespace A089437.P16000685174390437865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A057732 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089437.P16000685174390437865

/-! ## A089437.P771880206973738911

`record[A025480(A057732(n+1)+A000007(n))]`
-/

namespace A089437.P771880206973738911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A057732 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089437.P771880206973738911

/-!
# A089438: Primes p such that 6p+11 is also a prime.

The programs for A089438, the canonical program `A089438.P17160099628666241984` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089438 has offset 1).

The definition of A089438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1067 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089438.P14667071329660721068

`p?[∑[A358565(n+3)]]`
-/

namespace A089438.P14667071329660721068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358565 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089438.P14667071329660721068

namespace A089438

/-- `p?[∑[A358565(n+3)]]` -/
def P14667071329660721068.Spec : Prop :=
  ∀ n, P14667071329660721068.a n = A089438 (n + 1)

end A089438

/-! ## A089438.P17160099628666241984

`p?[A059325(n+1)-1]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089438

/-- `p?[A059325(n+1)-1]` -/
def P17160099628666241984.Spec : Prop :=
  ∀ n, P17160099628666241984.a n = A089438 (n + 1)

theorem P17160099628666241984.correct : P17160099628666241984.Spec := by
  intro n
  simp only [A089438, Nat.add_sub_cancel]

end A089438

/-! ## A089438.P8673680277644483936

`p?[A024898(n+1)-2]`
-/

namespace A089438.P8673680277644483936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089438.P8673680277644483936

namespace A089438

/-- `p?[A024898(n+1)-2]` -/
def P8673680277644483936.Spec : Prop :=
  ∀ n, P8673680277644483936.a n = A089438 (n + 1)

end A089438

/-! ## A089438.P17491739050669921770

`p?[A153134(n+1)-3]`
-/

namespace A089438.P17491739050669921770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089438.P17491739050669921770

namespace A089438

/-- `p?[A153134(n+1)-3]` -/
def P17491739050669921770.Spec : Prop :=
  ∀ n, P17491739050669921770.a n = A089438 (n + 1)

theorem P17491739050669921770.correct : P17491739050669921770.Spec := by
  intro n
  simp only [A089438, Nat.add_sub_cancel, A089438.P17491739050669921770.f1, A089438.P17491739050669921770.a, A089438.P17160099628666241984.f1, A089438.P17160099628666241984.a, A059325, A059325.P13883216233904633735.a, A153134, A153134.P3812563169600574784.a, A024898, A024898.P2838277204682131429.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089438

/-! ## A089438.P3284846114657392915

`∩[A000040(n+1), A059325(n+1)-1]`
-/

namespace A089438.P3284846114657392915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089438.P3284846114657392915

namespace A089438

/-- `∩[A000040(n+1), A059325(n+1)-1]` -/
def P3284846114657392915.Spec : Prop :=
  ∀ n, (P3284846114657392915.a n : ℤ) = A089438 (n + 1)

end A089438

/-! ## A089438.P6100868934923271971

`∩[A000040(n+1), A024898(n+1)-2]`
-/

namespace A089438.P6100868934923271971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089438.P6100868934923271971

namespace A089438

/-- `∩[A000040(n+1), A024898(n+1)-2]` -/
def P6100868934923271971.Spec : Prop :=
  ∀ n, (P6100868934923271971.a n : ℤ) = A089438 (n + 1)

end A089438

/-! ## A089438.P11922030021375911367

`p?[n*A167020(n+2)]`
-/

namespace A089438.P11922030021375911367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A167020 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089438.P11922030021375911367

namespace A089438

/-- `p?[n*A167020(n+2)]` -/
def P11922030021375911367.Spec : Prop :=
  ∀ n, P11922030021375911367.a n = A089438 (n + 1)

end A089438

/-! ## A089438.P6906573664323507213

`p?[A014681(A059325(n+1))]`
-/

namespace A089438.P6906573664323507213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A059325 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089438.P6906573664323507213

namespace A089438

/-- `p?[A014681(A059325(n+1))]` -/
def P6906573664323507213.Spec : Prop :=
  ∀ n, P6906573664323507213.a n = A089438 (n + 1)

end A089438

/-! ## A089438.P11956769879462111955

`p?[A023443(A059325(n+2))]`
-/

namespace A089438.P11956769879462111955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A059325 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089438.P11956769879462111955

namespace A089438

/-- `p?[A023443(A059325(n+2))]` -/
def P11956769879462111955.Spec : Prop :=
  ∀ n, P11956769879462111955.a n = A089438 (n + 1)

end A089438

/-! ## A089438.P6376212973956024992

`eq[A003415(n), A167020(n+2)]`
-/

namespace A089438.P6376212973956024992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089438.P6376212973956024992

namespace A089438

/-- `eq[A003415(n), A167020(n+2)]` -/
def P6376212973956024992.Spec : Prop :=
  ∀ n, (P6376212973956024992.a n : ℤ) = A089438 (n + 1)

end A089438

/-! ## A089438.P248282637289941268

`eq[A018783(n), A167020(n+2)]`
-/

namespace A089438.P248282637289941268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089438.P248282637289941268

namespace A089438

/-- `eq[A018783(n), A167020(n+2)]` -/
def P248282637289941268.Spec : Prop :=
  ∀ n, (P248282637289941268.a n : ℤ) = A089438 (n + 1)

end A089438

/-! ## A089438.P18324632119174900047

`eq[A032741(n), A167020(n+2)]`
-/

namespace A089438.P18324632119174900047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089438.P18324632119174900047

namespace A089438

/-- `eq[A032741(n), A167020(n+2)]` -/
def P18324632119174900047.Spec : Prop :=
  ∀ n, (P18324632119174900047.a n : ℤ) = A089438 (n + 1)

end A089438

/-! ## A089438.P16457879949191933637

`eq[A167020(n+2), A175126(n)]`
-/

namespace A089438.P16457879949191933637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089438.P16457879949191933637

namespace A089438

/-- `eq[A167020(n+2), A175126(n)]` -/
def P16457879949191933637.Spec : Prop :=
  ∀ n, (P16457879949191933637.a n : ℤ) = A089438 (n + 1)

end A089438

/-! ## A089438.P3793635173692524430

`eq[A003415(n), A359305(n+2)]`
-/

namespace A089438.P3793635173692524430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359305 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089438.P3793635173692524430

namespace A089438

/-- `eq[A003415(n), A359305(n+2)]` -/
def P3793635173692524430.Spec : Prop :=
  ∀ n, (P3793635173692524430.a n : ℤ) = A089438 (n + 1)

end A089438

/-! ## A089438.P17925918794161343461

`eq[A167020(n+2), A302055(n)]`
-/

namespace A089438.P17925918794161343461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089438.P17925918794161343461

namespace A089438

/-- `eq[A167020(n+2), A302055(n)]` -/
def P17925918794161343461.Spec : Prop :=
  ∀ n, (P17925918794161343461.a n : ℤ) = A089438 (n + 1)

end A089438

/-! ## A089438.P12949862485870281149

`eq[A167020(n+2), A328771(n)]`
-/

namespace A089438.P12949862485870281149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089438.P12949862485870281149

namespace A089438

/-- `eq[A167020(n+2), A328771(n)]` -/
def P12949862485870281149.Spec : Prop :=
  ∀ n, (P12949862485870281149.a n : ℤ) = A089438 (n + 1)

end A089438

/-! ## A089438.P8979470558436543216

`p?[n-A054024(A016969(n))²]`
-/

namespace A089438.P8979470558436543216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054024 (A016969 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089438.P8979470558436543216

namespace A089438

/-- `p?[n-A054024(A016969(n))²]` -/
def P8979470558436543216.Spec : Prop :=
  ∀ n, P8979470558436543216.a n = A089438 (n + 1)

end A089438

/-! ## A089438.P6680151928559409862

`p?[lt[A001222(A016969(n+1)), 2]]`
-/

namespace A089438.P6680151928559409862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089438.P6680151928559409862

namespace A089438

/-- `p?[lt[A001222(A016969(n+1)), 2]]` -/
def P6680151928559409862.Spec : Prop :=
  ∀ n, (P6680151928559409862.a n : ℤ) = A089438 (n + 1)

end A089438

/-! ## A089438.P12052543853426158450

`p?[n*A075743(A005408(n+1))]`
-/

namespace A089438.P12052543853426158450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A075743 (A005408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089438.P12052543853426158450

namespace A089438

/-- `p?[n*A075743(A005408(n+1))]` -/
def P12052543853426158450.Spec : Prop :=
  ∀ n, P12052543853426158450.a n = A089438 (n + 1)

end A089438

/-! ## A089438.P6229707624644392966

`p?[lt[A000005(2*(A016777(n)+7)+1), 3]+1]`
-/

namespace A089438.P6229707624644392966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (A016777 n + 7) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089438.P6229707624644392966

namespace A089438

/-- `p?[lt[A000005(2*(A016777(n)+7)+1), 3]+1]` -/
def P6229707624644392966.Spec : Prop :=
  ∀ n, (P6229707624644392966.a n : ℤ) = A089438 (n + 1)

end A089438

/-!
# A089439: 6p+13 and p are primes.

The programs for A089439, the canonical program `A089439.P9144807234089263602` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089439 has offset 1).

The definition of A089439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089439.P9144807234089263602

`p?[A153218(n+1)-1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A089439

/-- `p?[A153218(n+1)-1]` -/
def P9144807234089263602.Spec : Prop :=
  ∀ n, P9144807234089263602.a n = A089439 (n + 1)

theorem P9144807234089263602.correct : P9144807234089263602.Spec := by
  intro n
  simp only [A089439, Nat.add_sub_cancel]

end A089439

/-! ## A089439.P11864987515042240280

`p?[A024899(n+1)-2]`
-/

namespace A089439.P11864987515042240280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089439.P11864987515042240280

namespace A089439

/-- `p?[A024899(n+1)-2]` -/
def P11864987515042240280.Spec : Prop :=
  ∀ n, P11864987515042240280.a n = A089439 (n + 1)

end A089439

/-! ## A089439.P12869715026491585512

`∩[A000040(n+1), A153218(n+1)-1]`
-/

namespace A089439.P12869715026491585512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089439.P12869715026491585512

namespace A089439

/-- `∩[A000040(n+1), A153218(n+1)-1]` -/
def P12869715026491585512.Spec : Prop :=
  ∀ n, (P12869715026491585512.a n : ℤ) = A089439 (n + 1)

end A089439

/-! ## A089439.P13434578409231322688

`∩[A000040(n+1), A024899(n+1)-2]`
-/

namespace A089439.P13434578409231322688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089439.P13434578409231322688

namespace A089439

/-- `∩[A000040(n+1), A024899(n+1)-2]` -/
def P13434578409231322688.Spec : Prop :=
  ∀ n, (P13434578409231322688.a n : ℤ) = A089439 (n + 1)

end A089439

/-! ## A089439.P10380916988914038833

`p?[lt[A001222(6*(n+1)+7), 2]]`
-/

namespace A089439.P10380916988914038833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * (n + 1) + 7)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089439.P10380916988914038833

namespace A089439

/-- `p?[lt[A001222(6*(n+1)+7), 2]]` -/
def P10380916988914038833.Spec : Prop :=
  ∀ n, (P10380916988914038833.a n : ℤ) = A089439 (n + 1)

end A089439

/-! ## A089439.P17979238727570564350

`p?[(2*n-1)*A001222(12*n+7)]`
-/

namespace A089439.P17979238727570564350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * A001222 (12 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089439.P17979238727570564350

namespace A089439

/-- `p?[(2*n-1)*A001222(12*n+7)]` -/
def P17979238727570564350.Spec : Prop :=
  ∀ n, P17979238727570564350.a n = A089439 (n + 1)

end A089439

/-! ## A089439.P8564551467838540582

`p?[A008615(A002476(n+1))-2]`
-/

namespace A089439.P8564551467838540582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A002476 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089439.P8564551467838540582

namespace A089439

/-- `p?[A008615(A002476(n+1))-2]` -/
def P8564551467838540582.Spec : Prop :=
  ∀ n, P8564551467838540582.a n = A089439 (n + 1)

end A089439

/-!
# A089440: 14*p+13 and p are primes.

The programs for A089440, the canonical program `A089440.P7458790694453305357` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089440 has offset 1).

The definition of A089440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089440.P13287722951450560764

`p?[A138622(n+1)-1]`
-/

namespace A089440.P13287722951450560764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138622 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089440.P13287722951450560764

namespace A089440

/-- `p?[A138622(n+1)-1]` -/
def P13287722951450560764.Spec : Prop :=
  ∀ n, P13287722951450560764.a n = A089440 (n + 1)

end A089440

/-! ## A089440.P7458790694453305357

`p?[floor(A024900(n+1)/2)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089440

/-- `p?[floor(A024900(n+1)/2)]` -/
def P7458790694453305357.Spec : Prop :=
  ∀ n, P7458790694453305357.a n = A089440 (n + 1)

theorem P7458790694453305357.correct : P7458790694453305357.Spec := by
  intro n
  simp only [A089440, Nat.add_sub_cancel]

end A089440

/-! ## A089440.P659098429741341989

`p?[A260196(n)+A138622(n+1)]`
-/

namespace A089440.P659098429741341989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A138622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089440.P659098429741341989

namespace A089440

/-- `p?[A260196(n)+A138622(n+1)]` -/
def P659098429741341989.Spec : Prop :=
  ∀ n, P659098429741341989.a n = A089440 (n + 1)

end A089440

/-! ## A089440.P5387682964070587569

`record[A006530(A024900(n+2)-1)]`
-/

namespace A089440.P5387682964070587569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024900 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089440.P5387682964070587569

namespace A089440

/-- `record[A006530(A024900(n+2)-1)]` -/
def P5387682964070587569.Spec : Prop :=
  ∀ n, P5387682964070587569.a n = A089440 (n + 1)

end A089440

/-! ## A089440.P17477265493562732747

`p?[A066182(A138622(n+1))]`
-/

namespace A089440.P17477265493562732747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A138622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089440.P17477265493562732747

namespace A089440

/-- `p?[A066182(A138622(n+1))]` -/
def P17477265493562732747.Spec : Prop :=
  ∀ n, P17477265493562732747.a n = A089440 (n + 1)

end A089440

/-! ## A089440.P5923395251569831349

`p?[A014681(A138622(n+1))]`
-/

namespace A089440.P5923395251569831349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A138622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089440.P5923395251569831349

namespace A089440

/-- `p?[A014681(A138622(n+1))]` -/
def P5923395251569831349.Spec : Prop :=
  ∀ n, P5923395251569831349.a n = A089440 (n + 1)

end A089440

/-! ## A089440.P10488498697261031450

`p?[n*A001221(14*(n+1)-1)]`
-/

namespace A089440.P10488498697261031450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (14 * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089440.P10488498697261031450

namespace A089440

/-- `p?[n*A001221(14*(n+1)-1)]` -/
def P10488498697261031450.Spec : Prop :=
  ∀ n, P10488498697261031450.a n = A089440 (n + 1)

end A089440

/-! ## A089440.P14199310840365823590

`p?[n*A010051(2*A113801(n+1)+1)]`
-/

namespace A089440.P14199310840365823590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (2 * A113801 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089440.P14199310840365823590

namespace A089440

/-- `p?[n*A010051(2*A113801(n+1)+1)]` -/
def P14199310840365823590.Spec : Prop :=
  ∀ n, P14199310840365823590.a n = A089440 (n + 1)

end A089440

/-! ## A089440.P11005093842495703430

`p?[n*A010051(A113801(2*(n+1)))]`
-/

namespace A089440.P11005093842495703430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (A113801 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089440.P11005093842495703430

namespace A089440

/-- `p?[n*A010051(A113801(2*(n+1)))]` -/
def P11005093842495703430.Spec : Prop :=
  ∀ n, P11005093842495703430.a n = A089440 (n + 1)

end A089440

/-!
# A089441: Primes p such that 16*p+17 is a prime.

The programs for A089441, there is no canonical definition to state claims against.
-/

/-! ## A089441.P6438527786058023547

`p?[A155942(n+1)-1]`
-/

namespace A089441.P6438527786058023547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089441.P6438527786058023547

/-! ## A089441.P11126572427690064852

`p?[2*A133869(n+1)-1]`
-/

namespace A089441.P11126572427690064852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133869 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089441.P11126572427690064852

/-! ## A089441.P1162247999456724520

`p?[floor(A094407(n+1)/16)-1]`
-/

namespace A089441.P1162247999456724520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094407 (n + 1) : ℚ) / 16⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089441.P1162247999456724520

/-! ## A089441.P12166490062501481548

`p?[eq[16*(n+1), A000010(16*(n+1)+1)]]`
-/

namespace A089441.P12166490062501481548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (16 * (n + 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089441.P12166490062501481548

/-! ## A089441.P13267552414152302642

`record[A020639(A155942(n+2)-1)]`
-/

namespace A089441.P13267552414152302642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155942 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089441.P13267552414152302642

/-!
# A089442: Primes p such that (p-11)/10 is also a prime.

The programs for A089442, the canonical program `A089442.P1014451239977324603` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089442 has offset 1).

The definition of A089442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089442.P4656844789706735978

`10*A155978(n+1)+11`
-/

namespace A089442.P4656844789706735978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A155978 (n + 1) + 11

end

end A089442.P4656844789706735978

namespace A089442

/-- `10*A155978(n+1)+11` -/
def P4656844789706735978.Spec : Prop :=
  ∀ n, P4656844789706735978.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P17566294585255002400

`A000040(A143365(n+1))`
-/

namespace A089442.P17566294585255002400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A143365 (n + 1)).toNat

end

end A089442.P17566294585255002400

namespace A089442

/-- `A000040(A143365(n+1))` -/
def P17566294585255002400.Spec : Prop :=
  ∀ n, P17566294585255002400.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P1014451239977324603

`p?[10*A008864(n+1)+1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089442

/-- `p?[10*A008864(n+1)+1]` -/
def P1014451239977324603.Spec : Prop :=
  ∀ n, P1014451239977324603.a n = A089442 (n + 1)

theorem P1014451239977324603.correct : P1014451239977324603.Spec := by
  intro n
  simp only [A089442, Nat.add_sub_cancel]

end A089442

/-! ## A089442.P9676747463739989442

`p?[10*A000040(n+1)+11]`
-/

namespace A089442.P9676747463739989442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P9676747463739989442

namespace A089442

/-- `p?[10*A000040(n+1)+11]` -/
def P9676747463739989442.Spec : Prop :=
  ∀ n, P9676747463739989442.a n = A089442 (n + 1)

theorem P9676747463739989442.correct : P9676747463739989442.Spec := by
  intro n
  simp only [A089442, Nat.add_sub_cancel, A089442.P9676747463739989442.f1, A089442.P9676747463739989442.a, A089442.P1014451239977324603.f1, A089442.P1014451239977324603.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089442

/-! ## A089442.P13498597237676050841

`p?[10*A008578(n+2)+11]`
-/

namespace A089442.P13498597237676050841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008578 (n + 2) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P13498597237676050841

namespace A089442

/-- `p?[10*A008578(n+2)+11]` -/
def P13498597237676050841.Spec : Prop :=
  ∀ n, P13498597237676050841.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P14656941423375739460

`p?[5*(A072055(n+1)+1)+1]`
-/

namespace A089442.P14656941423375739460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A072055 (n + 1) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P14656941423375739460

namespace A089442

/-- `p?[5*(A072055(n+1)+1)+1]` -/
def P14656941423375739460.Spec : Prop :=
  ∀ n, P14656941423375739460.a n = A089442 (n + 1)

theorem P14656941423375739460.correct : P14656941423375739460.Spec := by
  intro n
  simp only [A089442, Nat.add_sub_cancel, A089442.P14656941423375739460.f1, A089442.P14656941423375739460.a, A089442.P1014451239977324603.f1, A089442.P1014451239977324603.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089442

/-! ## A089442.P7691477241456915831

`p?[10*(A158611(n+2)+1)+1]`
-/

namespace A089442.P7691477241456915831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A158611 (n + 2) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P7691477241456915831

namespace A089442

/-- `p?[10*(A158611(n+2)+1)+1]` -/
def P7691477241456915831.Spec : Prop :=
  ∀ n, P7691477241456915831.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P928357386800111931

`p?[10*(record[A000010(n+1)]+2)+1]`
-/

namespace A089442.P928357386800111931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P928357386800111931

namespace A089442

/-- `p?[10*(record[A000010(n+1)]+2)+1]` -/
def P928357386800111931.Spec : Prop :=
  ∀ n, P928357386800111931.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P4922526369219778676

`record[A060954(A000040(n+1)+1)]`
-/

namespace A089442.P4922526369219778676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060954 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089442.P4922526369219778676

namespace A089442

/-- `record[A060954(A000040(n+1)+1)]` -/
def P4922526369219778676.Spec : Prop :=
  ∀ n, P4922526369219778676.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P17210632464307046392

`p?[A017281(A000040(n+1)+1)]`
-/

namespace A089442.P17210632464307046392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P17210632464307046392

namespace A089442

/-- `p?[A017281(A000040(n+1)+1)]` -/
def P17210632464307046392.Spec : Prop :=
  ∀ n, P17210632464307046392.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P14238253685812909097

`p?[A019428(A072055(n+1))+8]`
-/

namespace A089442.P14238253685812909097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A072055 (n + 1)).toNat + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P14238253685812909097

namespace A089442

/-- `p?[A019428(A072055(n+1))+8]` -/
def P14238253685812909097.Spec : Prop :=
  ∀ n, P14238253685812909097.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P16287678504772888535

`p?[record[A017509(A014963(n+1))-n]]`
-/

namespace A089442.P16287678504772888535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A014963 (n + 1)).toNat - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P16287678504772888535

namespace A089442

/-- `p?[record[A017509(A014963(n+1))-n]]` -/
def P16287678504772888535.Spec : Prop :=
  ∀ n, P16287678504772888535.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P6377377465858041151

`p?[A008592(A000040(n+1)+1)+1]`
-/

namespace A089442.P6377377465858041151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A000040 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P6377377465858041151

namespace A089442

/-- `p?[A008592(A000040(n+1)+1)+1]` -/
def P6377377465858041151.Spec : Prop :=
  ∀ n, P6377377465858041151.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P2286485368732876574

`p?[A008592(A008578(n+1)+1)+1]`
-/

namespace A089442.P2286485368732876574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A008578 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P2286485368732876574

namespace A089442

/-- `p?[A008592(A008578(n+1)+1)+1]` -/
def P2286485368732876574.Spec : Prop :=
  ∀ n, P2286485368732876574.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P4567017015154474856

`record[A020639(10*A008864(n+1)+1)]`
-/

namespace A089442.P4567017015154474856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * A008864 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089442.P4567017015154474856

namespace A089442

/-- `record[A020639(10*A008864(n+1)+1)]` -/
def P4567017015154474856.Spec : Prop :=
  ∀ n, P4567017015154474856.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P14703190310495235844

`p?[A008592(p?[A039698(n+1)]+1)+1]`
-/

namespace A089442.P14703190310495235844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P14703190310495235844

namespace A089442

/-- `p?[A008592(p?[A039698(n+1)]+1)+1]` -/
def P14703190310495235844.Spec : Prop :=
  ∀ n, P14703190310495235844.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P4169208168639266414

`p?[A008592(p?[A207790(n+1)]+1)+1]`
-/

namespace A089442.P4169208168639266414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P4169208168639266414

namespace A089442

/-- `p?[A008592(p?[A207790(n+1)]+1)+1]` -/
def P4169208168639266414.Spec : Prop :=
  ∀ n, P4169208168639266414.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P16789572394802145811

`record[A020639(10*(Δ[A007504(n)]+1)+1)]`
-/

namespace A089442.P16789572394802145811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * (f2 (n + 1) - f2 n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089442.P16789572394802145811

namespace A089442

/-- `record[A020639(10*(Δ[A007504(n)]+1)+1)]` -/
def P16789572394802145811.Spec : Prop :=
  ∀ n, P16789572394802145811.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P4804805497413006009

`record[A006530(10*(A006530(n+2)+1)+1)]`
-/

namespace A089442.P4804805497413006009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * (A006530 (n + 2) + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089442.P4804805497413006009

namespace A089442

/-- `record[A006530(10*(A006530(n+2)+1)+1)]` -/
def P4804805497413006009.Spec : Prop :=
  ∀ n, P4804805497413006009.a n = A089442 (n + 1)

end A089442

/-! ## A089442.P9105905211079122538

`p?[A106582(n+1)+9]`
-/

namespace A089442.P9105905211079122538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089442.P9105905211079122538

namespace A089442

/-- `p?[A106582(n+1)+9]` -/
def P9105905211079122538.Spec : Prop :=
  ∀ n, P9105905211079122538.a n = A089442 (n + 1)

end A089442

/-!
# A089443: Primes p such that 12*p + 13 is prime.

The programs for A089443, the canonical program `A089443.P3212227870292618403` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089443 has offset 1).

The definition of A089443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089443.P3212227870292618403

`p?[A110801(n+1)-1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089443

/-- `p?[A110801(n+1)-1]` -/
def P3212227870292618403.Spec : Prop :=
  ∀ n, P3212227870292618403.a n = A089443 (n + 1)

theorem P3212227870292618403.correct : P3212227870292618403.Spec := by
  intro n
  simp only [A089443, Nat.add_sub_cancel]

end A089443

/-! ## A089443.P18161941199862860385

`record[A006530(A110801(n+2)-1)]`
-/

namespace A089443.P18161941199862860385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A110801 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089443.P18161941199862860385

namespace A089443

/-- `record[A006530(A110801(n+2)-1)]` -/
def P18161941199862860385.Spec : Prop :=
  ∀ n, P18161941199862860385.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P2859207478880204145

`∩[A000040(n+1), A110801(n+1)-1]`
-/

namespace A089443.P2859207478880204145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089443.P2859207478880204145

namespace A089443

/-- `∩[A000040(n+1), A110801(n+1)-1]` -/
def P2859207478880204145.Spec : Prop :=
  ∀ n, (P2859207478880204145.a n : ℤ) = A089443 (n + 1)

end A089443

/-! ## A089443.P3128166573515781075

`∩[A110801(n+2)-1, A182986(n+2)]`
-/

namespace A089443.P3128166573515781075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089443.P3128166573515781075

namespace A089443

/-- `∩[A110801(n+2)-1, A182986(n+2)]` -/
def P3128166573515781075.Spec : Prop :=
  ∀ n, (P3128166573515781075.a n : ℤ) = A089443 (n + 1)

end A089443

/-! ## A089443.P7696386256077570993

`p?[A014681(A110801(n+1))]`
-/

namespace A089443.P7696386256077570993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A110801 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P7696386256077570993

namespace A089443

/-- `p?[A014681(A110801(n+1))]` -/
def P7696386256077570993.Spec : Prop :=
  ∀ n, P7696386256077570993.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P5459571457182737089

`record[A014963(A110801(n+2)-1)]`
-/

namespace A089443.P5459571457182737089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A110801 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089443.P5459571457182737089

namespace A089443

/-- `record[A014963(A110801(n+2)-1)]` -/
def P5459571457182737089.Spec : Prop :=
  ∀ n, P5459571457182737089.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P3112111470916267165

`p?[n*A075743(4*(n+1))]`
-/

namespace A089443.P3112111470916267165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A075743 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P3112111470916267165

namespace A089443

/-- `p?[n*A075743(4*(n+1))]` -/
def P3112111470916267165.Spec : Prop :=
  ∀ n, P3112111470916267165.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P12553485658921060422

`p?[n*A010051(12*(n+1)+1)]`
-/

namespace A089443.P12553485658921060422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (12 * (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P12553485658921060422

namespace A089443

/-- `p?[n*A010051(12*(n+1)+1)]` -/
def P12553485658921060422.Spec : Prop :=
  ∀ n, P12553485658921060422.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P16132907682514505586

`p?[2*n-A075743(A022144(n))]`
-/

namespace A089443.P16132907682514505586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A075743 (A022144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P16132907682514505586

namespace A089443

/-- `p?[2*n-A075743(A022144(n))]` -/
def P16132907682514505586.Spec : Prop :=
  ∀ n, P16132907682514505586.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P7447189406567320231

`p?[2*n-A101264(A008594(n))]`
-/

namespace A089443.P7447189406567320231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A101264 (A008594 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P7447189406567320231

namespace A089443

/-- `p?[2*n-A101264(A008594(n))]` -/
def P7447189406567320231.Spec : Prop :=
  ∀ n, P7447189406567320231.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P14024074932464542698

`p?[2*n-A010051(A103214(n))]`
-/

namespace A089443.P14024074932464542698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A010051 (A103214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P14024074932464542698

namespace A089443

/-- `p?[2*n-A010051(A103214(n))]` -/
def P14024074932464542698.Spec : Prop :=
  ∀ n, P14024074932464542698.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P17852700144308478162

`p?[lt[A001222(2*A016945(n)+7), 2]]`
-/

namespace A089443.P17852700144308478162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A016945 n + 7).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089443.P17852700144308478162

namespace A089443

/-- `p?[lt[A001222(2*A016945(n)+7), 2]]` -/
def P17852700144308478162.Spec : Prop :=
  ∀ n, (P17852700144308478162.a n : ℤ) = A089443 (n + 1)

end A089443

/-! ## A089443.P2354447927612886600

`p?[lt[A001222(A017509(n)+3+n), 2]]`
-/

namespace A089443.P2354447927612886600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017509 n + 3 + (n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089443.P2354447927612886600

namespace A089443

/-- `p?[lt[A001222(A017509(n)+3+n), 2]]` -/
def P2354447927612886600.Spec : Prop :=
  ∀ n, (P2354447927612886600.a n : ℤ) = A089443 (n + 1)

end A089443

/-! ## A089443.P13250801508793291579

`p?[lt[A000005(A008592(n+1)+2*n+3), 3]]`
-/

namespace A089443.P13250801508793291579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008592 (n + 1) + (2 * n + 3 : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089443.P13250801508793291579

namespace A089443

/-- `p?[lt[A000005(A008592(n+1)+2*n+3), 3]]` -/
def P13250801508793291579.Spec : Prop :=
  ∀ n, (P13250801508793291579.a n : ℤ) = A089443 (n + 1)

end A089443

/-! ## A089443.P2197766624689269580

`p?[A075743(A004771(n)+1)+A005843(n)]`
-/

namespace A089443.P2197766624689269580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A004771 n + 1).toNat + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P2197766624689269580

namespace A089443

/-- `p?[A075743(A004771(n)+1)+A005843(n)]` -/
def P2197766624689269580.Spec : Prop :=
  ∀ n, P2197766624689269580.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P16059962351141197333

`p?[A026215(A153762(n+1))]`
-/

namespace A089443.P16059962351141197333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026215 (A153762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P16059962351141197333

namespace A089443

/-- `p?[A026215(A153762(n+1))]` -/
def P16059962351141197333.Spec : Prop :=
  ∀ n, P16059962351141197333.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P15311285720505695354

`p?[n-A293892(A259755(n+1)-3)]`
-/

namespace A089443.P15311285720505695354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A293892 (A259755 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P15311285720505695354

namespace A089443

/-- `p?[n-A293892(A259755(n+1)-3)]` -/
def P15311285720505695354.Spec : Prop :=
  ∀ n, P15311285720505695354.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P1411501961089189939

`p?[A001617(A068228(n+1))]`
-/

namespace A089443.P1411501961089189939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A068228 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P1411501961089189939

namespace A089443

/-- `p?[A001617(A068228(n+1))]` -/
def P1411501961089189939.Spec : Prop :=
  ∀ n, P1411501961089189939.a n = A089443 (n + 1)

end A089443

/-! ## A089443.P15888734853969178737

`eq[2, A001222(A055671(n)+2)]`
-/

namespace A089443.P15888734853969178737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055671 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089443.P15888734853969178737

namespace A089443

/-- `eq[2, A001222(A055671(n)+2)]` -/
def P15888734853969178737.Spec : Prop :=
  ∀ n, (P15888734853969178737.a n : ℤ) = A089443 (n + 1)

end A089443

/-! ## A089443.P16112547690929919106

`p?[A001617(p?[A016921(2*n)])]`
-/

namespace A089443.P16112547690929919106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089443.P16112547690929919106

namespace A089443

/-- `p?[A001617(p?[A016921(2*n)])]` -/
def P16112547690929919106.Spec : Prop :=
  ∀ n, P16112547690929919106.a n = A089443 (n + 1)

end A089443

/-!
# A089445: Smallest 7-tuple of consecutive primes such that a(n)+a(n+1)+a(n+2)+a(n+3)+a(n+4), n=1...3, are again consecutive primes.

The programs for A089445, there is no canonical definition to state claims against.
-/

/-! ## A089445.P8117115713184300359

`A089446(n+1)+char[7]`
-/

namespace A089445.P8117115713184300359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089446 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089445.P8117115713184300359

/-! ## A089445.P13209377218333016259

`A089446(∑[A047130(n)])`
-/

namespace A089445.P13209377218333016259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089446 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089445.P13209377218333016259

/-! ## A089445.P11959751599548047924

`A089446(∑[A219924(n)])`
-/

namespace A089445.P11959751599548047924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089446 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089445.P11959751599548047924

/-!
# A089447: Symmetric square table of coefficients, read by antidiagonals, where T(n,k) is the coefficient of x^n*y^k in f(x,y) that satisfies: f(x,y) = g(x,y) + xy*f(x,y)^4 and where g(x,y) satisfies: 1 + (x+y-1)*g(x,y) + xy*g(x,y)^2 = 0.

The programs for A089447, there is no canonical definition to state claims against.
-/

/-! ## A089447.P16936598345976279696

`A175124(n+1)+A004198(A059328(n))`
-/

namespace A089447.P16936598345976279696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175124 (n + 1) + A004198 (A059328 n).toNat

end

end A089447.P16936598345976279696

/-! ## A089447.P3695026713453240510

`A175124(n+1)+A089457(A109128(n))`
-/

namespace A089447.P3695026713453240510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175124 (n + 1) + A089457 (A109128 n).toNat

end

end A089447.P3695026713453240510

/-! ## A089447.P5371627279177252808

`A178798(A107105(n))+A175124(n+1)`
-/

namespace A089447.P5371627279177252808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A107105 n).toNat + A175124 (n + 1)

end

end A089447.P5371627279177252808

/-! ## A089447.P2463175754856189004

`A178798(A174545(n))+A175124(n+1)`
-/

namespace A089447.P2463175754856189004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A174545 n).toNat + A175124 (n + 1)

end

end A089447.P2463175754856189004

/-! ## A089447.P7288468910923966297

`A341025(A098568(n))+A175124(n+1)`
-/

namespace A089447.P7288468910923966297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A098568 n).toNat + 120) + A175124 (n + 1)

end

end A089447.P7288468910923966297

/-!
# A089448: Diagonal of square table A089447, which lists the coefficients of x^n*y^k in f(x,y) that satisfies: f(x,y) = g(x,y) + xy*f(x,y)^4 and where g(x,y) satisfies: 1 + (x+y-1)*g(x,y) + xy*g(x,y)^2 = 0.

The programs for A089448, there is no canonical definition to state claims against.
-/

/-! ## A089448.P18273025024693664010

`A089447(∑[4*n])`
-/

namespace A089448.P18273025024693664010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089448.P18273025024693664010

/-!
# A089449: Antidiagonal sums of square table A089447, which lists the coefficients of x^n*y^k in f(x,y) that satisfies: f(x,y) = g(x,y) + xy*f(x,y)^4 and where g(x,y) satisfies: 1 + (x+y-1)*g(x,y) + xy*g(x,y)^2 = 0.

The programs for A089449, there is no canonical definition to state claims against.
-/

/-! ## A089449.P17702551075932971092

`record[A367514(A053617(n))]`
-/

namespace A089449.P17702551075932971092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 (A053617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089449.P17702551075932971092

/-! ## A089449.P13441689715301372960

`A053617(A037442(n+1))`
-/

namespace A089449.P13441689715301372960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053617 (A037442 (n + 1)).toNat

end

end A089449.P13441689715301372960

/-! ## A089449.P5581062951295414055

`A053617(A065666(n+1))`
-/

namespace A089449.P5581062951295414055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053617 (A065666 (n + 1)).toNat

end

end A089449.P5581062951295414055

/-!
# A089450: Sequence of primes 2*p(k) + 3 such that 2*p(k) + 3, 2*p(k+1) + 3, 2*p(k+2) + 3 are consecutive primes, where p(i) denotes the i-th prime. Sequence terms are 2*p(k) + 3.

The programs for A089450, there is no canonical definition to state claims against.
-/

/-! ## A089450.P12963879476615101780

`2*A088119(n+1)+3`
-/

namespace A089450.P12963879476615101780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088119 (n + 1) + 3

end

end A089450.P12963879476615101780

/-! ## A089450.P16624882591217222847

`2*A000040(A088066(n+1))+3`
-/

namespace A089450.P16624882591217222847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (A088066 (n + 1)).toNat + 3

end

end A089450.P16624882591217222847

/-! ## A089450.P16789944075639060038

`A073704(A088066(n+1))`
-/

namespace A089450.P16789944075639060038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073704 (A088066 (n + 1)).toNat

end

end A089450.P16789944075639060038

/-!
# A089451: a(n) = mu(prime(n)-1), where mu is the Moebius function (A008683).

The programs for A089451, the canonical program `A089451.P7196534336753683133` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089451 has offset 1).

The definition of A089451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(A000040(n+1)-1)` (program `A089451.P7196534336753683133`, by `A089451.P7196534336753683133.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089451.P10835392395682769380

`A067460(n+1)-1`
-/

namespace A089451.P10835392395682769380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067460 (n + 1) - 1

end

end A089451.P10835392395682769380

namespace A089451

/-- `A067460(n+1)-1` -/
def P10835392395682769380.Spec : Prop :=
  ∀ n, P10835392395682769380.a n = A089451 (n + 1)

theorem P10835392395682769380.correct : P10835392395682769380.Spec := by
  intro n
  simp only [A089451, Nat.add_sub_cancel, A089451.P10835392395682769380.a, A089451.P7196534336753683133.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A067460, A067460.P7460291602574700690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089451

/-! ## A089451.P7196534336753683133

`A008683(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089451

/-- `A008683(A000040(n+1)-1)` -/
def P7196534336753683133.Spec : Prop :=
  ∀ n, P7196534336753683133.a n = A089451 (n + 1)

theorem P7196534336753683133.correct : P7196534336753683133.Spec := by
  intro n
  simp only [A089451, Nat.add_sub_cancel]

end A089451

/-! ## A089451.P6206413411606585800

`A089496(n+1)-A089495(n+1)`
-/

namespace A089451.P6206413411606585800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089496 (n + 1) - A089495 (n + 1)

end

end A089451.P6206413411606585800

namespace A089451

/-- `A089496(n+1)-A089495(n+1)` -/
def P6206413411606585800.Spec : Prop :=
  ∀ n, P6206413411606585800.a n = A089451 (n + 1)

theorem P6206413411606585800.correct : P6206413411606585800.Spec := by
  intro n
  simp only [A089451, Nat.add_sub_cancel, A089451.P6206413411606585800.a, A089451.P7196534336753683133.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A089495, A089495.P3499540144449875997.a, A089496, A089496.P7226039739294844425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089451

/-! ## A089451.P10071667495818250720

`A008683(A278227(n+1))`
-/

namespace A089451.P10071667495818250720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278227 (n + 1)).toNat

end

end A089451.P10071667495818250720

namespace A089451

/-- `A008683(A278227(n+1))` -/
def P10071667495818250720.Spec : Prop :=
  ∀ n, P10071667495818250720.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P8805810656428267824

`A008683(∑[A075526(n)])`
-/

namespace A089451.P8805810656428267824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089451.P8805810656428267824

namespace A089451

/-- `A008683(∑[A075526(n)])` -/
def P8805810656428267824.Spec : Prop :=
  ∀ n, P8805810656428267824.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P10170785057915879716

`A008683(A006093(1+n))`
-/

namespace A089451.P10170785057915879716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006093 (1 + n)).toNat

end

end A089451.P10170785057915879716

namespace A089451

/-- `A008683(A006093(1+n))` -/
def P10170785057915879716.Spec : Prop :=
  ∀ n, P10170785057915879716.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P777842549272249835

`A008683(sqrt(A005722(n+1)))`
-/

namespace A089451.P777842549272249835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat

end

end A089451.P777842549272249835

namespace A089451

/-- `A008683(sqrt(A005722(n+1)))` -/
def P777842549272249835.Spec : Prop :=
  ∀ n, P777842549272249835.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P8393837770483916308

`A008683(Δ[A007504(n)]-1)`
-/

namespace A089451.P8393837770483916308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n - 1).toNat

end

end A089451.P8393837770483916308

namespace A089451

/-- `A008683(Δ[A007504(n)]-1)` -/
def P8393837770483916308.Spec : Prop :=
  ∀ n, P8393837770483916308.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P13836704953598117113

`A008683(record[A000010(n+1)])`
-/

namespace A089451.P13836704953598117113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089451.P13836704953598117113

namespace A089451

/-- `A008683(record[A000010(n+1)])` -/
def P13836704953598117113.Spec : Prop :=
  ∀ n, P13836704953598117113.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P8223263177301627876

`A008683(A040976(n+1)+1)`
-/

namespace A089451.P8223263177301627876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A040976 (n + 1) + 1).toNat

end

end A089451.P8223263177301627876

namespace A089451

/-- `A008683(A040976(n+1)+1)` -/
def P8223263177301627876.Spec : Prop :=
  ∀ n, P8223263177301627876.a n = A089451 (n + 1)

theorem P8223263177301627876.correct : P8223263177301627876.Spec := by
  intro n
  simp only [A089451, Nat.add_sub_cancel, A089451.P8223263177301627876.a, A089451.P7196534336753683133.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089451

/-! ## A089451.P9752760840695291467

`A008683(A008578(n+2)-1)`
-/

namespace A089451.P9752760840695291467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008578 (n + 2) - 1).toNat

end

end A089451.P9752760840695291467

namespace A089451

/-- `A008683(A008578(n+2)-1)` -/
def P9752760840695291467.Spec : Prop :=
  ∀ n, P9752760840695291467.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P14280032102911472219

`A008683(A008864(n+1)-2)`
-/

namespace A089451.P14280032102911472219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008864 (n + 1) - 2).toNat

end

end A089451.P14280032102911472219

namespace A089451

/-- `A008683(A008864(n+1)-2)` -/
def P14280032102911472219.Spec : Prop :=
  ∀ n, P14280032102911472219.a n = A089451 (n + 1)

theorem P14280032102911472219.correct : P14280032102911472219.Spec := by
  intro n
  simp only [A089451, Nat.add_sub_cancel, A089451.P14280032102911472219.a, A089451.P7196534336753683133.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089451

/-! ## A089451.P12522774448606079177

`A008683(A028815(n+1)-2)`
-/

namespace A089451.P12522774448606079177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028815 (n + 1) - 2).toNat

end

end A089451.P12522774448606079177

namespace A089451

/-- `A008683(A028815(n+1)-2)` -/
def P12522774448606079177.Spec : Prop :=
  ∀ n, P12522774448606079177.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P5261535807363591685

`A008683(A182986(n+2)-1)`
-/

namespace A089451.P5261535807363591685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A182986 (n + 2) - 1).toNat

end

end A089451.P5261535807363591685

namespace A089451

/-- `A008683(A182986(n+2)-1)` -/
def P5261535807363591685.Spec : Prop :=
  ∀ n, P5261535807363591685.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P6281430688785454627

`A008683(A299763(n+2)-2)`
-/

namespace A089451.P6281430688785454627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A299763 (n + 2) - 2).toNat

end

end A089451.P6281430688785454627

namespace A089451

/-- `A008683(A299763(n+2)-2)` -/
def P6281430688785454627.Spec : Prop :=
  ∀ n, P6281430688785454627.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P6607696179602350896

`A008683(A065890(n+1)+n+1)`
-/

namespace A089451.P6607696179602350896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065890 (n + 1) + (n + 1 : ℤ)).toNat

end

end A089451.P6607696179602350896

namespace A089451

/-- `A008683(A065890(n+1)+n+1)` -/
def P6607696179602350896.Spec : Prop :=
  ∀ n, P6607696179602350896.a n = A089451 (n + 1)

theorem P6607696179602350896.correct : P6607696179602350896.Spec := by
  intro n
  simp only [A089451, Nat.add_sub_cancel, A089451.P6607696179602350896.a, A089451.P7196534336753683133.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A065890, A065890.P15936493256530540462.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089451

/-! ## A089451.P12504258551620671017

`A008683(A095116(n+1)-(n+1))`
-/

namespace A089451.P12504258551620671017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A095116 (n + 1) - (n + 1 : ℤ)).toNat

end

end A089451.P12504258551620671017

namespace A089451

/-- `A008683(A095116(n+1)-(n+1))` -/
def P12504258551620671017.Spec : Prop :=
  ∀ n, P12504258551620671017.a n = A089451 (n + 1)

theorem P12504258551620671017.correct : P12504258551620671017.Spec := by
  intro n
  simp only [A089451, Nat.add_sub_cancel, A089451.P12504258551620671017.a, A089451.P7196534336753683133.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089451

/-! ## A089451.P1947249597168750034

`A008683(A014688(n+1)-(n+2))`
-/

namespace A089451.P1947249597168750034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014688 (n + 1) - (n + 2 : ℤ)).toNat

end

end A089451.P1947249597168750034

namespace A089451

/-- `A008683(A014688(n+1)-(n+2))` -/
def P1947249597168750034.Spec : Prop :=
  ∀ n, P1947249597168750034.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P12259028797358556863

`A008683(A000010(A000040(n+1)))`
-/

namespace A089451.P12259028797358556863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000010 (A000040 (n + 1)).toNat).toNat

end

end A089451.P12259028797358556863

namespace A089451

/-- `A008683(A000010(A000040(n+1)))` -/
def P12259028797358556863.Spec : Prop :=
  ∀ n, P12259028797358556863.a n = A089451 (n + 1)

end A089451

/-! ## A089451.P4438616873073449699

`A008683(A000010(A008578(n+2)))`
-/

namespace A089451.P4438616873073449699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000010 (A008578 (n + 2)).toNat).toNat

end

end A089451.P4438616873073449699

namespace A089451

/-- `A008683(A000010(A008578(n+2)))` -/
def P4438616873073449699.Spec : Prop :=
  ∀ n, P4438616873073449699.a n = A089451 (n + 1)

end A089451

/-!
# A089452: a(n) = smallest prime k such that k*(prime(n)-1) + prime(n) is prime.

The programs for A089452, there is no canonical definition to state claims against.
-/

/-! ## A089452.P7988602831498326894

`A249800(p?[2*n+1]-1)`
-/

namespace A089452.P7988602831498326894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A089452.P7988602831498326894

/-! ## A089452.P15540414219646523904

`A249800(xor(1, p?[2*n+1]))`
-/

namespace A089452.P15540414219646523904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A089452.P15540414219646523904

/-! ## A089452.P17300053455715590477

`A249800(A006093(n+2))`
-/

namespace A089452.P17300053455715590477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A006093 (n + 2)).toNat

end

end A089452.P17300053455715590477

/-! ## A089452.P16048829028182018055

`A249800(A039915(n+2))`
-/

namespace A089452.P16048829028182018055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A039915 (n + 2)).toNat

end

end A089452.P16048829028182018055

/-! ## A089452.P11496673025297106552

`A249800(record[A000010(n+3)])`
-/

namespace A089452.P11496673025297106552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089452.P11496673025297106552

/-! ## A089452.P15420647996653961359

`A249800(A040976(n+2)+1)`
-/

namespace A089452.P15420647996653961359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A040976 (n + 2) + 1).toNat

end

end A089452.P15420647996653961359

/-! ## A089452.P5764472989120353067

`A249800(A000040(n+2)-1)`
-/

namespace A089452.P5764472989120353067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A000040 (n + 2) - 1).toNat

end

end A089452.P5764472989120353067

/-! ## A089452.P6408418215487543304

`A249800(2*A005097(n+1))`
-/

namespace A089452.P6408418215487543304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (2 * A005097 (n + 1)).toNat

end

end A089452.P6408418215487543304

/-! ## A089452.P8241092994193593062

`A249800(xor(1, A000040(n+2)))`
-/

namespace A089452.P8241092994193593062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (Int.xor 1 (A000040 (n + 2))).toNat

end

end A089452.P8241092994193593062

/-! ## A089452.P14723416231496725498

`A249800(eq[2, A182256(n+1)])`
-/

namespace A089452.P14723416231496725498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089452.P14723416231496725498

/-! ## A089452.P11879248510091756621

`A249800(eq[2, A182256(n)]-1)`
-/

namespace A089452.P11879248510091756621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A089452.P11879248510091756621

/-! ## A089452.P13134435334655145510

`A249800(A003958(p?[A004273(n)]))`
-/

namespace A089452.P13134435334655145510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A089452.P13134435334655145510

/-! ## A089452.P3472516343497196521

`A249800(A004442(p?[A004273(n)]))`
-/

namespace A089452.P3472516343497196521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A004442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A089452.P3472516343497196521

/-! ## A089452.P1875122887208010081

`A249800(A004442(p?[A005408(n)]))`
-/

namespace A089452.P1875122887208010081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A004442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A089452.P1875122887208010081

/-! ## A089452.P13758679366820452943

`A249800(A011772(p?[A005408(n)]))`
-/

namespace A089452.P13758679366820452943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A011772 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A089452.P13758679366820452943

/-! ## A089452.P3998563132482657849

`A249800(A062570(p?[A004273(n)]))`
-/

namespace A089452.P3998563132482657849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A062570 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A089452.P3998563132482657849

/-! ## A089452.P6940311325645249729

`A249800(A070667(p?[A005408(n)]))`
-/

namespace A089452.P6940311325645249729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A070667 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A089452.P6940311325645249729

/-! ## A089452.P17584394831776528387

`A249800(A004442(p?[A176447(n)]))`
-/

namespace A089452.P17584394831776528387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A004442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A089452.P17584394831776528387

/-! ## A089452.P1893254125921409509

`A249800(A165754(p?[A093178(n)]))`
-/

namespace A089452.P1893254125921409509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (A165754 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A089452.P1893254125921409509

/-!
# A089453: Sums of squares of primitive roots of primes.

The programs for A089453, there is no canonical definition to state claims against.
-/

/-! ## A089453.P7738096862099478955

`A002330((n+2)^n)+n`
-/

namespace A089453.P7738096862099478955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 ((n + 2) ^ n) + (n : ℤ)

end

end A089453.P7738096862099478955

/-!
# A089454: Number of n-celled polyominoes with exactly 2 holes.

The programs for A089454, there is no canonical definition to state claims against.
-/

/-! ## A089454.P1071615291536090474

`A168131(C(n, 9))`
-/

namespace A089454.P1071615291536090474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168131 (Nat.choose n 9)

end

end A089454.P1071615291536090474

/-! ## A089454.P6811657834349657915

`A248333(C(n, 9))`
-/

namespace A089454.P6811657834349657915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (Nat.choose n 9)

end

end A089454.P6811657834349657915

/-! ## A089454.P14524265517597470474

`A073750(C(n+1, 10))`
-/

namespace A089454.P14524265517597470474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (Nat.choose (n + 1) 10)

end

end A089454.P14524265517597470474

/-! ## A089454.P4015712847514021825

`A259361(C(Δ[n²], 20))`
-/

namespace A089454.P4015712847514021825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 20)

end

end A089454.P4015712847514021825

/-! ## A089454.P3808154377977224898

`ceil(sqrt(A038141(round((n+3)²/12))))`
-/

namespace A089454.P3808154377977224898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A038141 (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)).toNat : ℝ)⌉

end

end A089454.P3808154377977224898

/-!
# A089455: Number of n-celled polyominoes with exactly 3 holes.

The programs for A089455, there is no canonical definition to state claims against.
-/

/-! ## A089455.P1590399167641385383

`floor(A079205(n+1)/63)`
-/

namespace A089455.P1590399167641385383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079205 (n + 1) : ℚ) / 63⌋

end

end A089455.P1590399167641385383

/-! ## A089455.P9842705063420266159

`69%A110193(n+1)!`
-/

namespace A089455.P9842705063420266159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  69 % Nat.factorial (A110193 (n + 1)).toNat

end

end A089455.P9842705063420266159

/-! ## A089455.P13690204348860508625

`A259361(C(floor((n²-n)/9), 16))`
-/

namespace A089455.P13690204348860508625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Nat.choose ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 9⌋.toNat 16)

end

end A089455.P13690204348860508625

/-! ## A089455.P5801033381636797186

`floor(A180501(n)/p?[round(8*n/7)]²)`
-/

namespace A089455.P5801033381636797186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A180501 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℚ)⌋

end

end A089455.P5801033381636797186

/-! ## A089455.P526817597964722393

`A307891(A062869(n+1))`
-/

namespace A089455.P526817597964722393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307891 (A062869 (n + 1)).toNat

end

end A089455.P526817597964722393

/-!
# A089456: Number of n-celled polyominoes with exactly 4 holes.

The programs for A089456, there is no canonical definition to state claims against.
-/

/-! ## A089456.P10144997942963506148

`floor(A166880(3*n+1)/exp(9))`
-/

namespace A089456.P10144997942963506148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166880 (3 * n + 1) : ℝ) / Real.exp (9 : ℝ)⌋

end

end A089456.P10144997942963506148

/-! ## A089456.P5104826247931358532

`∑{d}[A165656(n), A159325(#)]`
-/

namespace A089456.P5104826247931358532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A159325 d

end

end A089456.P5104826247931358532

/-! ## A089456.P4813919629149791035

`Δ[Δ[A325415(A014376(n))²]]`
-/

namespace A089456.P4813919629149791035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325415 (A014376 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089456.P4813919629149791035

/-!
# A089459: Shifts 2 places left under the hyperbinomial transform.

The programs for A089459, there is no canonical definition to state claims against.
-/

/-! ## A089459.P12392229926336555987

`ceil(A049432(3*n+1)/30)`
-/

namespace A089459.P12392229926336555987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049432 (3 * n + 1) : ℚ) / 30⌉

end

end A089459.P12392229926336555987

/-! ## A089459.P15558203512040260484

`A087950(ceil(∑[ceil(3^(n-1))]/7))`
-/

namespace A089459.P15558203512040260484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087950 ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 7⌉.toNat

end

end A089459.P15558203512040260484

/-! ## A089459.P5935906214132329778

`A024417(ceil(((n+1)²/∏{p}[n+1, #])^(n-2)/2))`
-/

namespace A089459.P5935906214132329778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 ⌈(((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ ((n : ℤ) - 2 : ℤ) / 2⌉.toNat

end

end A089459.P5935906214132329778

/-!
# A089460: Triangle, read by rows, of coefficients for the second iteration of the hyperbinomial transform.

The programs for A089460, the canonical program `A089460.P16992600266824329580` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089460 has offset 0).

The definition of A089460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089460.P16992600266824329580

`2*(row(n)-col(n)+2)^(row(n)-col(n)-1)*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089460

/-- `2*(row(n)-col(n)+2)^(row(n)-col(n)-1)*C(row(n), col(n))` -/
def P16992600266824329580.Spec : Prop :=
  ∀ n, P16992600266824329580.a n = (A089460 n : ℚ)

end A089460

/-!
# A089461: Hyperbinomial transform of A088957. Also the row sums of triangle A089460, which lists the coefficients for the second hyperbinomial transform.

The programs for A089461, the canonical program `A089461.P11051083182350333077` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089461 has offset 0).

The definition of A089461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089461.P11051083182350333077

`∑{#}[n, 2*(n-#+2)^(n-#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089461

/-- `∑{#}[n, 2*(n-#+2)^(n-#-1)*C(n, #)]` -/
def P11051083182350333077.Spec : Prop :=
  ∀ n, P11051083182350333077.a n = (A089461 n : ℚ)

end A089461

/-! ## A089461.P15469447566867258041

`A144303(∑[n+3])`
-/

namespace A089461.P15469447566867258041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089461.P15469447566867258041

namespace A089461

/-- `A144303(∑[n+3])` -/
def P15469447566867258041.Spec : Prop :=
  ∀ n, P15469447566867258041.a n = A089461 n

end A089461

/-! ## A089461.P10745912086862746331

`record[A144303(A056847(n+1)+n)]`
-/

namespace A089461.P10745912086862746331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A056847 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089461.P10745912086862746331

namespace A089461

/-- `record[A144303(A056847(n+1)+n)]` -/
def P10745912086862746331.Spec : Prop :=
  ∀ n, P10745912086862746331.a n = A089461 n

end A089461

/-! ## A089461.P14399596170586081659

`record[A144303(n)/A215652(n+2)]`
-/

namespace A089461.P14399596170586081659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144303 n : ℚ) / (A215652 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089461.P14399596170586081659

namespace A089461

/-- `record[A144303(n)/A215652(n+2)]` -/
def P14399596170586081659.Spec : Prop :=
  ∀ n, P14399596170586081659.a n = (A089461 n : ℚ)

end A089461

/-! ## A089461.P15778594254293724982

`record[A144303(A055998(A004489(n)))]`
-/

namespace A089461.P15778594254293724982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A055998 (A004489 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089461.P15778594254293724982

namespace A089461

/-- `record[A144303(A055998(A004489(n)))]` -/
def P15778594254293724982.Spec : Prop :=
  ∀ n, P15778594254293724982.a n = A089461 n

end A089461

/-! ## A089461.P941610554197002270

`record[A144303(A055998(A134478(n)))]`
-/

namespace A089461.P941610554197002270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A055998 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089461.P941610554197002270

namespace A089461

/-- `record[A144303(A055998(A134478(n)))]` -/
def P941610554197002270.Spec : Prop :=
  ∀ n, P941610554197002270.a n = A089461 n

end A089461

/-! ## A089461.P3350207122962175242

`record[A144303(A055998(A032742(n+1)))]`
-/

namespace A089461.P3350207122962175242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A055998 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089461.P3350207122962175242

namespace A089461

/-- `record[A144303(A055998(A032742(n+1)))]` -/
def P3350207122962175242.Spec : Prop :=
  ∀ n, P3350207122962175242.a n = A089461 n

end A089461

/-! ## A089461.P18189472915979678334

`record[A144303(A049780(n))]`
-/

namespace A089461.P18189472915979678334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089461.P18189472915979678334

namespace A089461

/-- `record[A144303(A049780(n))]` -/
def P18189472915979678334.Spec : Prop :=
  ∀ n, P18189472915979678334.a n = A089461 n

end A089461

/-!
# A089462: 2nd hyperbinomial transform of A001858.

The programs for A089462, there is no canonical definition to state claims against.
-/

/-! ## A089462.P17296461745959865678

`∑{#}[n, 2*(n-#+2)^(n-#-1)*C(n, #)*A001858(#)]`
-/

namespace A089462.P17296461745959865678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 * ((n : ℤ) - (k : ℤ) + 2 : ℚ) ^ ((n : ℤ) - (k : ℤ) - 1 : ℤ) * (Nat.choose n k : ℚ) * (A001858 k : ℚ)

end

end A089462.P17296461745959865678

/-! ## A089462.P17195677329377543949

`A144304(∑[n+3])`
-/

namespace A089462.P17195677329377543949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089462.P17195677329377543949

/-! ## A089462.P2418870865456982715

`record[and(A104975(n), A144304(n))]`
-/

namespace A089462.P2418870865456982715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104975 n) (A144304 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089462.P2418870865456982715

/-! ## A089462.P7047253657958593283

`record[record[A144304(n)]*A033999(n)]`
-/

namespace A089462.P7047253657958593283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089462.P7047253657958593283

/-! ## A089462.P5713933330457004246

`record[A144304(n)/A144304(n+3)]`
-/

namespace A089462.P5713933330457004246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144304 n : ℚ) / (A144304 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089462.P5713933330457004246

/-! ## A089462.P7841918389523720328

`A001858(n+2)-A220690(n+2)`
-/

namespace A089462.P7841918389523720328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001858 (n + 2) - A220690 (n + 2)

end

end A089462.P7841918389523720328

/-!
# A089463: Triangle, read by rows, of coefficients for the third iteration of the hyperbinomial transform.

The programs for A089463, the canonical program `A089463.P11617503660830594903` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089463 has offset 0).

The definition of A089463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089463.P11617503660830594903

`3*(row(n)-col(n)+3)^(row(n)-col(n)-1)*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089463

/-- `3*(row(n)-col(n)+3)^(row(n)-col(n)-1)*C(row(n), col(n))` -/
def P11617503660830594903.Spec : Prop :=
  ∀ n, P11617503660830594903.a n = (A089463 n : ℚ)

end A089463

/-!
# A089464: Hyperbinomial transform of A089461. Also the row sums of triangle A089463, which lists the coefficients for the third hyperbinomial transform.

The programs for A089464, the canonical program `A089464.P13120772220262353947` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089464 has offset 0).

The definition of A089464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089464.P13120772220262353947

`∑{#}[n, 3*(n-#+3)^(n-#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089464

/-- `∑{#}[n, 3*(n-#+3)^(n-#-1)*C(n, #)]` -/
def P13120772220262353947.Spec : Prop :=
  ∀ n, P13120772220262353947.a n = (A089464 n : ℚ)

end A089464

/-! ## A089464.P6273647350087897684

`A144303(∑[n+3]+n+3)`
-/

namespace A089464.P6273647350087897684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A089464.P6273647350087897684

namespace A089464

/-- `A144303(∑[n+3]+n+3)` -/
def P6273647350087897684.Spec : Prop :=
  ∀ n, P6273647350087897684.a n = A089464 n

end A089464

/-! ## A089464.P3979647286104947206

`record[A144303(n)^A055137(n+3)]`
-/

namespace A089464.P3979647286104947206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144303 n : ℚ) ^ (A055137 (n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089464.P3979647286104947206

namespace A089464

/-- `record[A144303(n)^A055137(n+3)]` -/
def P3979647286104947206.Spec : Prop :=
  ∀ n, P3979647286104947206.a n = (A089464 n : ℚ)

end A089464

/-! ## A089464.P17426635535672021260

`record[gcd(A048993(n+4), A144303(n))]`
-/

namespace A089464.P17426635535672021260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 (n + 4)) (A144303 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089464.P17426635535672021260

namespace A089464

/-- `record[gcd(A048993(n+4), A144303(n))]` -/
def P17426635535672021260.Spec : Prop :=
  ∀ n, (P17426635535672021260.a n : ℤ) = A089464 n

end A089464

/-!
# A089465: 3rd hyperbinomial transform of A001858; also the hyperbinomial transform of A089462.

The programs for A089465, there is no canonical definition to state claims against.
-/

/-! ## A089465.P7575139435644671469

`∑{#}[n, 3*(n-#+3)^(n-#-1)*C(n, #)*A001858(#)]`
-/

namespace A089465.P7575139435644671469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 * ((n : ℤ) - (k : ℤ) + 3 : ℚ) ^ ((n : ℤ) - (k : ℤ) - 1 : ℤ) * (Nat.choose n k : ℚ) * (A001858 k : ℚ)

end

end A089465.P7575139435644671469

/-! ## A089465.P8284930557263601331

`A144304(∑[n+3]+n+3)`
-/

namespace A089465.P8284930557263601331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144304 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A089465.P8284930557263601331

/-! ## A089465.P9568599615493807546

`and(floor(1/(γ-n)), A144304(A046691(n+2)))`
-/

namespace A089465.P9568599615493807546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ (A144304 (A046691 (n + 2)).toNat)

end

end A089465.P9568599615493807546

/-! ## A089465.P15552752524607679813

`record[A144304(A046691(A324346(n)))]`
-/

namespace A089465.P15552752524607679813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144304 (A046691 (A324346 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089465.P15552752524607679813

/-! ## A089465.P3894510785709045148

`A144304(A046691(n+2))+A000038(n+2)`
-/

namespace A089465.P3894510785709045148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144304 (A046691 (n + 2)).toNat + A000038 (n + 2)

end

end A089465.P3894510785709045148

/-! ## A089465.P12145029877855910514

`(A033999(2*n+1)+2)*A144304(A046691(n+2))`
-/

namespace A089465.P12145029877855910514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) + 2) * A144304 (A046691 (n + 2)).toNat

end

end A089465.P12145029877855910514

/-!
# A089466: Inverse hyperbinomial transform of A089467.

The programs for A089466, there is no canonical definition to state claims against.
-/

/-! ## A089466.P1314835266965087465

`A334014(∑[2+n]-1)`
-/

namespace A089466.P1314835266965087465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A089466.P1314835266965087465

/-! ## A089466.P1980966090980970723

`or(char[1], A334014(A034856(n+1)))`
-/

namespace A089466.P1980966090980970723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A334014 (A034856 (n + 1)).toNat)

end

end A089466.P1980966090980970723

/-! ## A089466.P3148615106244635659

`A334014(A034856(n+1))+A025439(n)`
-/

namespace A089466.P3148615106244635659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (A034856 (n + 1)).toNat + A025439 n

end

end A089466.P3148615106244635659

/-! ## A089466.P3579329217642712777

`gcd(A000038(n), A334014(A034856(n+1)))`
-/

namespace A089466.P3579329217642712777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A334014 (A034856 (n + 1)).toNat)

end

end A089466.P3579329217642712777

/-! ## A089466.P9540686887116518054

`abs(A020985(n)*A334014(A034856(n+1)))`
-/

namespace A089466.P9540686887116518054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A334014 (A034856 (n + 1)).toNat|

end

end A089466.P9540686887116518054

/-! ## A089466.P10299329078138819997

`A334014(A034856(n+1))+A000007(n+1)`
-/

namespace A089466.P10299329078138819997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A089466.P10299329078138819997

/-! ## A089466.P3677033073122740404

`A334014(A034856(n+1))+A000038(n+1)`
-/

namespace A089466.P3677033073122740404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (A034856 (n + 1)).toNat + A000038 (n + 1)

end

end A089466.P3677033073122740404

/-! ## A089466.P4904477351338942292

`A001222(A007918(n))*A334014(A034856(n+1))`
-/

namespace A089466.P4904477351338942292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A334014 (A034856 (n + 1)).toNat

end

end A089466.P4904477351338942292

/-!
# A089467: Hyperbinomial transform of A089466 and also the inverse hyperbinomial transform of A089468.

The programs for A089467, there is no canonical definition to state claims against.
-/

/-! ## A089467.P17087979934263526565

`∑{#}[n, (n-#+1)^(n-#-1)*C(n, #)*A089466(#)]`
-/

namespace A089467.P17087979934263526565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℤ) - (k : ℤ) + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) - 1 : ℤ) * (Nat.choose n k : ℚ) * (A089466 k : ℚ)

end

end A089467.P17087979934263526565

/-! ## A089467.P10468876935427120754

`A334014(∑[n+3])`
-/

namespace A089467.P10468876935427120754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089467.P10468876935427120754

/-! ## A089467.P1884699745853198803

`record[A334014(n)/A088956(n+2)]`
-/

namespace A089467.P1884699745853198803
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334014 n : ℚ) / (A088956 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089467.P1884699745853198803

/-! ## A089467.P5252763266840838291

`A244490(∑[n+1]+n)`
-/

namespace A089467.P5252763266840838291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244490 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A089467.P5252763266840838291

/-! ## A089467.P12567809331405337514

`record[A244490(n-A053616(n))]`
-/

namespace A089467.P12567809331405337514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244490 ((n : ℤ) - A053616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089467.P12567809331405337514

/-!
# A089468: Hyperbinomial transform of A089467 and also the 2nd hyperbinomial transform of A089466.

The programs for A089468, there is no canonical definition to state claims against.
-/

/-! ## A089468.P3900341061639151023

`∑{#}[n, (n-#+1)^(n-#-1)*C(n, #)*A089467(#)]`
-/

namespace A089468.P3900341061639151023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℤ) - (k : ℤ) + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) - 1 : ℤ) * (Nat.choose n k : ℚ) * (A089467 k : ℚ)

end

end A089468.P3900341061639151023

/-! ## A089468.P8748313081238568194

`∑{#}[n, 2*(n-#+2)^(n-#-1)*C(n, #)*A089466(#)]`
-/

namespace A089468.P8748313081238568194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 * ((n : ℤ) - (k : ℤ) + 2 : ℚ) ^ ((n : ℤ) - (k : ℤ) - 1 : ℤ) * (Nat.choose n k : ℚ) * (A089466 k : ℚ)

end

end A089468.P8748313081238568194

/-! ## A089468.P2064681409782637655

`A001858(n+1)+n*A220690(n+1)`
-/

namespace A089468.P2064681409782637655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001858 (n + 1) + (n : ℤ) * A220690 (n + 1)

end

end A089468.P2064681409782637655

/-! ## A089468.P368010955509302301

`A334014(∑[n+3]+n+3)`
-/

namespace A089468.P368010955509302301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A089468.P368010955509302301

/-! ## A089468.P15460305138179327968

`record[A334014(abs(A046691(n)))]`
-/

namespace A089468.P15460305138179327968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089468.P15460305138179327968

/-!
# A089469: a(n+1) = the n-th term of the n-th binomial transform.

The programs for A089469, there is no canonical definition to state claims against.
-/

/-! ## A089469.P2240773065851241692

`A008619(∑[n!^4]%n!²)`
-/

namespace A089469.P2240773065851241692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((∑ j ∈ Finset.range (n + 1), f1 j) % Nat.factorial n ^ 2)

end

end A089469.P2240773065851241692

/-! ## A089469.P1315526067068859323

`A117910(∑[∏[∑[round(sqrt(2*n))]+1]])`
-/

namespace A089469.P1315526067068859323
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089469.P1315526067068859323

/-!
# A089470: Self-convolution of this sequence is equal to its hyperbinomial transform and results in A089471.

The programs for A089470, there is no canonical definition to state claims against.
-/

/-! ## A089470.P14203554674622002156

`ceil(A308478(n+1)/12)`
-/

namespace A089470.P14203554674622002156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308478 (n + 1) : ℚ) / 12⌉

end

end A089470.P14203554674622002156

/-!
# A089471: Equals the self-convolution of A089470 and also the hyperbinomial transform of A089470.

The programs for A089471, there is no canonical definition to state claims against.
-/

/-! ## A089471.P16656275062089941885

`A060126(A352410(n))`
-/

namespace A089471.P16656275062089941885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A352410 n).toNat

end

end A089471.P16656275062089941885

/-!
# A089472: Number of different values taken by the determinant of a real (0,1)-matrix of order n.

The programs for A089472, there is no canonical definition to state claims against.
-/

/-! ## A089472.P5324326356514757673

`∑[∑{d}[(2*n+1)*a(n-1), and(1, #)]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=6, a(4)=5`
-/

namespace A089472.P5324326356514757673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 6, 5] fun n f2 =>
  (2 * n + 1) * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.land 1 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089472.P5324326356514757673

/-! ## A089472.P5463023498085321830

`∑[∏[A319420((1+n)*∏{p}[n+1, #])]]`
-/

namespace A089472.P5463023498085321830
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 ((1 + n) * (∏ p ∈ Nat.primeFactors (f3 n), p))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089472.P5463023498085321830

/-! ## A089472.P8506337295901360824

`∑[A173557(A143383(n))]`
-/

namespace A089472.P8506337295901360824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A143383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089472.P8506337295901360824

/-! ## A089472.P15214461659386314169

`∑[∏[A073203(A002530(n))]]`
-/

namespace A089472.P15214461659386314169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073203 (A002530 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089472.P15214461659386314169

/-! ## A089472.P13010013639808426142

`∑[∏[A165413(A001250(n))]]`
-/

namespace A089472.P13010013639808426142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (A001250 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089472.P13010013639808426142

/-!
# A089475: Number of different values taken by the permanent of a real nonsingular (0,1)-matrix of order n.

The programs for A089475, there is no canonical definition to state claims against.
-/

/-! ## A089475.P9873377547088080452

`A161957(A003430(n))`
-/

namespace A089475.P9873377547088080452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161957 (A003430 n).toNat

end

end A089475.P9873377547088080452

/-! ## A089475.P17264866618664016968

`A317805(A317782(n))+1`
-/

namespace A089475.P17264866618664016968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317805 (A317782 n).toNat + 1

end

end A089475.P17264866618664016968

/-!
# A089476: Number of different values taken by the permanent of a real singular (0,1)-matrix of order n.

The programs for A089476, there is no canonical definition to state claims against.
-/

/-! ## A089476.P945052550733984286

`∑[A261104(n^n)]`
-/

namespace A089476.P945052550733984286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089476.P945052550733984286

/-! ## A089476.P11757736270674814459

`Δ[A331418(a(n-1))]` with `a(0)=4`
-/

namespace A089476.P11757736270674814459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A331418 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089476.P11757736270674814459

/-!
# A089477: Smallest positive integer not the permanent of a real {0,1}-matrix of order n.

The programs for A089477, there is no canonical definition to state claims against.
-/

/-! ## A089477.P10558577036247551803

`A020986(∏[A325095(n)])`
-/

namespace A089477.P10558577036247551803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089477.P10558577036247551803

/-! ## A089477.P9285182087778895584

`A178041(A176499(n+1))`
-/

namespace A089477.P9285182087778895584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178041 (A176499 (n + 1)).toNat

end

end A089477.P9285182087778895584

/-!
# A089482: Number of real {0,1}-matrices having permanent = 1.

The programs for A089482, there is no canonical definition to state claims against.
-/

/-! ## A089482.P17148905324385294369

`n!*A003024(n)`
-/

namespace A089482.P17148905324385294369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003024 n

end

end A089482.P17148905324385294369

/-! ## A089482.P12454825381105144233

`n!*A380336(∑[n])`
-/

namespace A089482.P12454825381105144233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A380336 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089482.P12454825381105144233

/-! ## A089482.P6989248369974448483

`abs(A224069(∑[n]))*n!`
-/

namespace A089482.P6989248369974448483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224069 (∑ j ∈ Finset.range (n + 1), f1 j)| * (Nat.factorial n : ℤ)

end

end A089482.P6989248369974448483

/-! ## A089482.P1955979174878894807

`A000142(n)*A003024(n)`
-/

namespace A089482.P1955979174878894807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003024 n

end

end A089482.P1955979174878894807

/-!
# A089484: Number of positions of the 15-puzzle at a distance of n moves from an initial state with the empty square in one of the corners, in the single-tile metric.

The programs for A089484, there is no canonical definition to state claims against.
-/

/-! ## A089484.P13659212445202910879

`A087160(∑{p}[n+1, gcd(n, #)]+ceil(2^(n-1)))`
-/

namespace A089484.P13659212445202910879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A089484.P13659212445202910879

/-! ## A089484.P2378896015983172119

`∑[A320921(n+2)-∑{p}[n+1, #*val(n+1, #)]]`
-/

namespace A089484.P2378896015983172119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320921 (n + 2) - ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089484.P2378896015983172119

/-! ## A089484.P15237918434328464840

`A114149(A056184(n))`
-/

namespace A089484.P15237918434328464840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (A056184 n).toNat

end

end A089484.P15237918434328464840

/-!
# A089486: The second-smallest prime of the form (p-prime(n))/(prime(n)-1), where p is also prime.

The programs for A089486, there is no canonical definition to state claims against.
-/

/-! ## A089486.P14189631367931900904

`A144294(A304204(n+1)+A254297(n+1))`
-/

namespace A089486.P14189631367931900904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144294 (A304204 (n + 1) + A254297 (n + 1)).toNat

end

end A089486.P14189631367931900904

/-!
# A089488: First occurrence where (p-q)/(q-3), p and q are primes.

The programs for A089488, there is no canonical definition to state claims against.
-/

/-! ## A089488.P8286549477311438460

`A000058(gcd(A074057(n+3), A132969(n)))`
-/

namespace A089488.P8286549477311438460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000058 (Int.gcd (A074057 (n + 3)) (A132969 n))

end

end A089488.P8286549477311438460

/-!
# A089489: Smallest k greater than n such that (k^2-n^2, 2*k*n, k^2+n^2) is a primitive Pythagorean triple and the corresponding right triangle has a prime hypotenuse.

The programs for A089489, there is no canonical definition to state claims against.
-/

/-! ## A089489.P14045181492596050669

`A378898(n+1)+1+n`
-/

namespace A089489.P14045181492596050669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378898 (n + 1) + 1 + (n : ℤ)

end

end A089489.P14045181492596050669

/-! ## A089489.P8685589003570952551

`floor(sqrt(A068487(n+1)-n²))`
-/

namespace A089489.P8685589003570952551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A068487 (n + 1) - (n ^ 2 : ℤ))

end

end A089489.P8685589003570952551

/-! ## A089489.P6113237818487228830

`A195013(A378898(n+1))+n`
-/

namespace A089489.P6113237818487228830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (A378898 (n + 1)).toNat + (n : ℤ)

end

end A089489.P6113237818487228830

/-! ## A089489.P14065249227047527470

`sqrt(A068487(n+1)-∑[A005408(n)])`
-/

namespace A089489.P14065249227047527470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A068487 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A089489.P14065249227047527470

/-! ## A089489.P11007327613579243746

`A262689(A068487(n+1))`
-/

namespace A089489.P11007327613579243746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A068487 (n + 1)).toNat

end

end A089489.P11007327613579243746

/-! ## A089489.P15011999011193943937

`A018851(A068487(n+1)-(n+1)²)`
-/

namespace A089489.P15011999011193943937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A068487 (n + 1) - ((n + 1) ^ 2 : ℤ)).toNat

end

end A089489.P15011999011193943937

/-! ## A089489.P13291770050396507772

`A037213(A068487(n+1)-(n+1)²)`
-/

namespace A089489.P13291770050396507772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A068487 (n + 1) - ((n + 1) ^ 2 : ℤ)).toNat

end

end A089489.P13291770050396507772

/-! ## A089489.P15140436674717624546

`A000196(A068487(n+1)-n²)`
-/

namespace A089489.P15140436674717624546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A068487 (n + 1) - (n ^ 2 : ℤ)).toNat

end

end A089489.P15140436674717624546

/-! ## A089489.P6213691834617909134

`A064876(A068487(n+1))`
-/

namespace A089489.P6213691834617909134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A068487 (n + 1)).toNat

end

end A089489.P6213691834617909134

/-!
# A089492: Sequence of primes 2*p(k) + 3 such that 2*p(k) + 3, 2*p(k+1) + 3, 2*p(k+2) + 3, 2*p(k+3) + 3 are consecutive primes, where p(i) denotes the i-th prime.

The programs for A089492, there is no canonical definition to state claims against.
-/

/-! ## A089492.P8512030624608668263

`2*A089007(n+1)+3`
-/

namespace A089492.P8512030624608668263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089007 (n + 1) + 3

end

end A089492.P8512030624608668263

/-!
# A089495: a(n) = mu(prime(n)+1), where mu is the Moebius function.

The programs for A089495, the canonical program `A089495.P3499540144449875997` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089495 has offset 1).

The definition of A089495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(A000040(n+1)+1)` (program `A089495.P3499540144449875997`, by `A089495.P3499540144449875997.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089495.P3499540144449875997

`A008683(A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089495

/-- `A008683(A000040(n+1)+1)` -/
def P3499540144449875997.Spec : Prop :=
  ∀ n, P3499540144449875997.a n = A089495 (n + 1)

theorem P3499540144449875997.correct : P3499540144449875997.Spec := by
  intro n
  simp only [A089495, Nat.add_sub_cancel]

end A089495

/-! ## A089495.P3118819153637413189

`A067461(n+1)-1`
-/

namespace A089495.P3118819153637413189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067461 (n + 1) - 1

end

end A089495.P3118819153637413189

namespace A089495

/-- `A067461(n+1)-1` -/
def P3118819153637413189.Spec : Prop :=
  ∀ n, P3118819153637413189.a n = A089495 (n + 1)

theorem P3118819153637413189.correct : P3118819153637413189.Spec := by
  intro n
  simp only [A089495, Nat.add_sub_cancel, A089495.P3118819153637413189.a, A089495.P3499540144449875997.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A067461, A067461.P14669510870591473496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089495

/-! ## A089495.P9315906422731124417

`A089496(n+1)-A089451(n+1)`
-/

namespace A089495.P9315906422731124417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089496 (n + 1) - A089451 (n + 1)

end

end A089495.P9315906422731124417

namespace A089495

/-- `A089496(n+1)-A089451(n+1)` -/
def P9315906422731124417.Spec : Prop :=
  ∀ n, P9315906422731124417.a n = A089495 (n + 1)

theorem P9315906422731124417.correct : P9315906422731124417.Spec := by
  intro n
  simp only [A089495, Nat.add_sub_cancel, A089495.P9315906422731124417.a, A089495.P3499540144449875997.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A089451, A089451.P7196534336753683133.a, A089496, A089496.P7226039739294844425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089495

/-! ## A089495.P14908800006589169796

`A008683(A278228(n+1))`
-/

namespace A089495.P14908800006589169796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278228 (n + 1)).toNat

end

end A089495.P14908800006589169796

namespace A089495

/-- `A008683(A278228(n+1))` -/
def P14908800006589169796.Spec : Prop :=
  ∀ n, P14908800006589169796.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P9128066532580263143

`A008683(p?[abs(xor(n, -2))]+1)`
-/

namespace A089495.P9128066532580263143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A089495.P9128066532580263143

namespace A089495

/-- `A008683(p?[abs(xor(n, -2))]+1)` -/
def P9128066532580263143.Spec : Prop :=
  ∀ n, P9128066532580263143.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P10719432480825996691

`A008683(p?[xor(1, n)+1]+1)`
-/

namespace A089495.P10719432480825996691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A089495.P10719432480825996691

namespace A089495

/-- `A008683(p?[xor(1, n)+1]+1)` -/
def P10719432480825996691.Spec : Prop :=
  ∀ n, P10719432480825996691.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P5011620248824972955

`A008683(p?[n%3+n]+1)`
-/

namespace A089495.P5011620248824972955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A089495.P5011620248824972955

namespace A089495

/-- `A008683(p?[n%3+n]+1)` -/
def P5011620248824972955.Spec : Prop :=
  ∀ n, P5011620248824972955.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P13115466489382372003

`A008683(p?[round(sqrt(n)+n)]+1)`
-/

namespace A089495.P13115466489382372003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A089495.P13115466489382372003

namespace A089495

/-- `A008683(p?[round(sqrt(n)+n)]+1)` -/
def P13115466489382372003.Spec : Prop :=
  ∀ n, P13115466489382372003.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P14074988616472706931

`A008683(∑{d}[p?[n-(-1)^n], #])`
-/

namespace A089495.P14074988616472706931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A089495.P14074988616472706931

namespace A089495

/-- `A008683(∑{d}[p?[n-(-1)^n], #])` -/
def P14074988616472706931.Spec : Prop :=
  ∀ n, P14074988616472706931.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P12537958535675505282

`and(-1, A008683(p?[round(8*n/7)]+1))`
-/

namespace A089495.P12537958535675505282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat)

end

end A089495.P12537958535675505282

namespace A089495

/-- `and(-1, A008683(p?[round(8*n/7)]+1))` -/
def P12537958535675505282.Spec : Prop :=
  ∀ n, P12537958535675505282.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P15473188143595605397

`A008683(A008864(n+1))`
-/

namespace A089495.P15473188143595605397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008864 (n + 1)).toNat

end

end A089495.P15473188143595605397

namespace A089495

/-- `A008683(A008864(n+1))` -/
def P15473188143595605397.Spec : Prop :=
  ∀ n, P15473188143595605397.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P5903287447478270292

`A008683(A028815(n+1))`
-/

namespace A089495.P5903287447478270292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028815 (n + 1)).toNat

end

end A089495.P5903287447478270292

namespace A089495

/-- `A008683(A028815(n+1))` -/
def P5903287447478270292.Spec : Prop :=
  ∀ n, P5903287447478270292.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P12896236896427664399

`A008683(A299763(n+2))`
-/

namespace A089495.P12896236896427664399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A299763 (n + 2)).toNat

end

end A089495.P12896236896427664399

namespace A089495

/-- `A008683(A299763(n+2))` -/
def P12896236896427664399.Spec : Prop :=
  ∀ n, P12896236896427664399.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P2452552240263370650

`A008683(sqrt(A110833(n+1)))`
-/

namespace A089495.P2452552240263370650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 1) : ℝ))).toNat

end

end A089495.P2452552240263370650

namespace A089495

/-- `A008683(sqrt(A110833(n+1)))` -/
def P2452552240263370650.Spec : Prop :=
  ∀ n, P2452552240263370650.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P13008850196184348311

`A008683(Δ[A007504(n)]+1)`
-/

namespace A089495.P13008850196184348311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n + 1).toNat

end

end A089495.P13008850196184348311

namespace A089495

/-- `A008683(Δ[A007504(n)]+1)` -/
def P13008850196184348311.Spec : Prop :=
  ∀ n, P13008850196184348311.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P17476054949175522106

`A008683(A006005(n+1)+1)`
-/

namespace A089495.P17476054949175522106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006005 (n + 1) + 1).toNat

end

end A089495.P17476054949175522106

namespace A089495

/-- `A008683(A006005(n+1)+1)` -/
def P17476054949175522106.Spec : Prop :=
  ∀ n, P17476054949175522106.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P16587076422718339975

`A008683(A006093(n+1)+2)`
-/

namespace A089495.P16587076422718339975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006093 (n + 1) + 2).toNat

end

end A089495.P16587076422718339975

namespace A089495

/-- `A008683(A006093(n+1)+2)` -/
def P16587076422718339975.Spec : Prop :=
  ∀ n, P16587076422718339975.a n = A089495 (n + 1)

theorem P16587076422718339975.correct : P16587076422718339975.Spec := by
  intro n
  simp only [A089495, Nat.add_sub_cancel, A089495.P16587076422718339975.a, A089495.P3499540144449875997.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089495

/-! ## A089495.P102641854261873454

`A008683(A008578(n+2)+1)`
-/

namespace A089495.P102641854261873454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008578 (n + 2) + 1).toNat

end

end A089495.P102641854261873454

namespace A089495

/-- `A008683(A008578(n+2)+1)` -/
def P102641854261873454.Spec : Prop :=
  ∀ n, P102641854261873454.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P892051210550931600

`A008683(A039915(n+1)+2)`
-/

namespace A089495.P892051210550931600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A039915 (n + 1) + 2).toNat

end

end A089495.P892051210550931600

namespace A089495

/-- `A008683(A039915(n+1)+2)` -/
def P892051210550931600.Spec : Prop :=
  ∀ n, P892051210550931600.a n = A089495 (n + 1)

end A089495

/-! ## A089495.P14063822146365171071

`A008683(A052147(n+1)-1)`
-/

namespace A089495.P14063822146365171071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A052147 (n + 1) - 1).toNat

end

end A089495.P14063822146365171071

namespace A089495

/-- `A008683(A052147(n+1)-1)` -/
def P14063822146365171071.Spec : Prop :=
  ∀ n, P14063822146365171071.a n = A089495 (n + 1)

theorem P14063822146365171071.correct : P14063822146365171071.Spec := by
  intro n
  simp only [A089495, Nat.add_sub_cancel, A089495.P14063822146365171071.a, A089495.P3499540144449875997.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089495

/-!
# A089496: a(n) = mu(prime(n)+1) + mu(prime(n)-1), where mu is the Moebius function.

The programs for A089496, the canonical program `A089496.P7226039739294844425` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089496 has offset 1).

The definition of A089496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(A000040(n+1)+1)+A008683(A000040(n+1)-1)` (program `A089496.P7226039739294844425`, by `A089496.P7226039739294844425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089496.P7226039739294844425

`A008683(A000040(n+1)+1)+A008683(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089496

/-- `A008683(A000040(n+1)+1)+A008683(A000040(n+1)-1)` -/
def P7226039739294844425.Spec : Prop :=
  ∀ n, P7226039739294844425.a n = A089496 (n + 1)

theorem P7226039739294844425.correct : P7226039739294844425.Spec := by
  intro n
  simp only [A089496, Nat.add_sub_cancel]

end A089496

/-! ## A089496.P15718053810505253648

`A089495(n+1)+A089451(n+1)`
-/

namespace A089496.P15718053810505253648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089495 (n + 1) + A089451 (n + 1)

end

end A089496.P15718053810505253648

namespace A089496

/-- `A089495(n+1)+A089451(n+1)` -/
def P15718053810505253648.Spec : Prop :=
  ∀ n, P15718053810505253648.a n = A089496 (n + 1)

end A089496

/-! ## A089496.P16924279729457233349

`A067460(n+1)+A067461(n+1)-2`
-/

namespace A089496.P16924279729457233349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067460 (n + 1) + (A067461 (n + 1) - 2)

end

end A089496.P16924279729457233349

namespace A089496

/-- `A067460(n+1)+A067461(n+1)-2` -/
def P16924279729457233349.Spec : Prop :=
  ∀ n, P16924279729457233349.a n = A089496 (n + 1)

theorem P16924279729457233349.correct : P16924279729457233349.Spec := by
  intro n
  simp only [A089496, Nat.add_sub_cancel, A089496.P16924279729457233349.a, A089496.P7226039739294844425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A067460, A067460.P7460291602574700690.a, A067461, A067461.P14669510870591473496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089496

/-! ## A089496.P12129521151859222942

`A008683(A082542(n+1))+A000007(n)`
-/

namespace A089496.P12129521151859222942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A082542 (n + 1)).toNat + A000007 n

end

end A089496.P12129521151859222942

namespace A089496

/-- `A008683(A082542(n+1))+A000007(n)` -/
def P12129521151859222942.Spec : Prop :=
  ∀ n, P12129521151859222942.a n = A089496 (n + 1)

end A089496

/-! ## A089496.P16254337184312195262

`A008683(A082542(n+1))%(6%A017449(n))`
-/

namespace A089496.P16254337184312195262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (A082542 (n + 1)).toNat) (Int.tmod 6 (A017449 n))

end

end A089496.P16254337184312195262

namespace A089496

/-- `A008683(A082542(n+1))%(6%A017449(n))` -/
def P16254337184312195262.Spec : Prop :=
  ∀ n, P16254337184312195262.a n = A089496 (n + 1)

end A089496

/-! ## A089496.P10843750461963174339

`A089495(n+1)+A008683(record[A000010(n+1)])`
-/

namespace A089496.P10843750461963174339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089495 (n + 1) + A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089496.P10843750461963174339

namespace A089496

/-- `A089495(n+1)+A008683(record[A000010(n+1)])` -/
def P10843750461963174339.Spec : Prop :=
  ∀ n, P10843750461963174339.a n = A089496 (n + 1)

end A089496

/-! ## A089496.P10136077247601782866

`A089451(n+1)+A008683(A000040(n+1)+1)`
-/

namespace A089496.P10136077247601782866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089451 (n + 1) + A008683 (A000040 (n + 1) + 1).toNat

end

end A089496.P10136077247601782866

namespace A089496

/-- `A089451(n+1)+A008683(A000040(n+1)+1)` -/
def P10136077247601782866.Spec : Prop :=
  ∀ n, P10136077247601782866.a n = A089496 (n + 1)

theorem P10136077247601782866.correct : P10136077247601782866.Spec := by
  intro n
  simp only [A089496, Nat.add_sub_cancel, A089496.P10136077247601782866.a, A089496.P7226039739294844425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A089451, A089451.P7196534336753683133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089496

/-! ## A089496.P8829577501230239419

`A089495(n+1)+A008683(A000040(n+1)-1)`
-/

namespace A089496.P8829577501230239419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089495 (n + 1) + A008683 (A000040 (n + 1) - 1).toNat

end

end A089496.P8829577501230239419

namespace A089496

/-- `A089495(n+1)+A008683(A000040(n+1)-1)` -/
def P8829577501230239419.Spec : Prop :=
  ∀ n, P8829577501230239419.a n = A089496 (n + 1)

end A089496

/-! ## A089496.P5224605924765992358

`A008683(A006093(n+1))+A008683(A008864(n+1))`
-/

namespace A089496.P5224605924765992358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006093 (n + 1)).toNat + A008683 (A008864 (n + 1)).toNat

end

end A089496.P5224605924765992358

namespace A089496

/-- `A008683(A006093(n+1))+A008683(A008864(n+1))` -/
def P5224605924765992358.Spec : Prop :=
  ∀ n, P5224605924765992358.a n = A089496 (n + 1)

theorem P5224605924765992358.correct : P5224605924765992358.Spec := by
  intro n
  simp only [A089496, Nat.add_sub_cancel, A089496.P5224605924765992358.a, A089496.P7226039739294844425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089496

/-! ## A089496.P11962339970654326759

`A008683(A006093(n+1)+2)+A008683(A006093(n+1))`
-/

namespace A089496.P11962339970654326759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006093 (n + 1) + 2).toNat + A008683 (A006093 (n + 1)).toNat

end

end A089496.P11962339970654326759

namespace A089496

/-- `A008683(A006093(n+1)+2)+A008683(A006093(n+1))` -/
def P11962339970654326759.Spec : Prop :=
  ∀ n, P11962339970654326759.a n = A089496 (n + 1)

theorem P11962339970654326759.correct : P11962339970654326759.Spec := by
  intro n
  simp only [A089496, Nat.add_sub_cancel, A089496.P11962339970654326759.a, A089496.P7226039739294844425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089496

/-! ## A089496.P10124707917144870565

`A089495(n+1)+A008683(eq[2, A000005(n+1)])`
-/

namespace A089496.P10124707917144870565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089495 (n + 1) + A008683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089496.P10124707917144870565

namespace A089496

/-- `A089495(n+1)+A008683(eq[2, A000005(n+1)])` -/
def P10124707917144870565.Spec : Prop :=
  ∀ n, P10124707917144870565.a n = A089496 (n + 1)

end A089496

/-! ## A089496.P2647397357133364475

`A089495(n+1)+A008683(eq[n, A000010(n+1)])`
-/

namespace A089496.P2647397357133364475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089495 (n + 1) + A008683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089496.P2647397357133364475

namespace A089496

/-- `A089495(n+1)+A008683(eq[n, A000010(n+1)])` -/
def P2647397357133364475.Spec : Prop :=
  ∀ n, P2647397357133364475.a n = A089496 (n + 1)

end A089496

/-! ## A089496.P13731609965498550388

`A008683(2*A285869(A000040(n+1)))`
-/

namespace A089496.P13731609965498550388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A285869 (A000040 (n + 1)).toNat).toNat

end

end A089496.P13731609965498550388

namespace A089496

/-- `A008683(2*A285869(A000040(n+1)))` -/
def P13731609965498550388.Spec : Prop :=
  ∀ n, P13731609965498550388.a n = A089496 (n + 1)

end A089496

/-! ## A089496.P2228031607038186099

`A089495(n+1)+A008683(lt[n, A014963(n+2)]+1)`
-/

namespace A089496.P2228031607038186099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089495 (n + 1) + A008683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A089496.P2228031607038186099

namespace A089496

/-- `A089495(n+1)+A008683(lt[n, A014963(n+2)]+1)` -/
def P2228031607038186099.Spec : Prop :=
  ∀ n, P2228031607038186099.a n = A089496 (n + 1)

end A089496

/-! ## A089496.P8451441400331650912

`A089495(n+1)+A008683(eq[n+1, A051664(n+1)])`
-/

namespace A089496.P8451441400331650912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089495 (n + 1) + A008683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089496.P8451441400331650912

namespace A089496

/-- `A089495(n+1)+A008683(eq[n+1, A051664(n+1)])` -/
def P8451441400331650912.Spec : Prop :=
  ∀ n, P8451441400331650912.a n = A089496 (n + 1)

end A089496

/-!
# A089497: mu(prime(n)+1) - mu(prime(n)-1), where mu is the Moebius function.

The programs for A089497, the canonical program `A089497.P17535279753735861595` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089497 has offset 2).

The definition of A089497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(A000040(n+2)+1)-A008683(A000040(n+2)-1)` (program `A089497.P17535279753735861595`, by `A089497.P17535279753735861595.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089497.P17535279753735861595

`A008683(A000040(n+2)+1)-A008683(A000040(n+2)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089497

/-- `A008683(A000040(n+2)+1)-A008683(A000040(n+2)-1)` -/
def P17535279753735861595.Spec : Prop :=
  ∀ n, P17535279753735861595.a n = A089497 (n + 2)

theorem P17535279753735861595.correct : P17535279753735861595.Spec := by
  intro n
  simp only [A089497, Nat.add_sub_cancel]

end A089497

/-! ## A089497.P2346056852702617823

`A008683(A065260(p?[2*n+1]))`
-/

namespace A089497.P2346056852702617823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065260 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A089497.P2346056852702617823

namespace A089497

/-- `A008683(A065260(p?[2*n+1]))` -/
def P2346056852702617823.Spec : Prop :=
  ∀ n, P2346056852702617823.a n = A089497 (n + 2)

end A089497

/-! ## A089497.P17052500174822158017

`A067461(n+2)-A067460(n+2)`
-/

namespace A089497.P17052500174822158017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067461 (n + 2) - A067460 (n + 2)

end

end A089497.P17052500174822158017

namespace A089497

/-- `A067461(n+2)-A067460(n+2)` -/
def P17052500174822158017.Spec : Prop :=
  ∀ n, P17052500174822158017.a n = A089497 (n + 2)

theorem P17052500174822158017.correct : P17052500174822158017.Spec := by
  intro n
  simp only [A089497, Nat.add_sub_cancel, A089497.P17052500174822158017.a, A089497.P17535279753735861595.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A067460, A067460.P7460291602574700690.a, A067461, A067461.P14669510870591473496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089497

/-! ## A089497.P3425397416362865497

`A089495(n+2)-A089451(n+2)`
-/

namespace A089497.P3425397416362865497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089495 (n + 2) - A089451 (n + 2)

end

end A089497.P3425397416362865497

namespace A089497

/-- `A089495(n+2)-A089451(n+2)` -/
def P3425397416362865497.Spec : Prop :=
  ∀ n, P3425397416362865497.a n = A089497 (n + 2)

end A089497

/-! ## A089497.P4627190599468801602

`A070750(n+2)*A089496(n+2)`
-/

namespace A089497.P4627190599468801602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 2) * A089496 (n + 2)

end

end A089497.P4627190599468801602

namespace A089497

/-- `A070750(n+2)*A089496(n+2)` -/
def P4627190599468801602.Spec : Prop :=
  ∀ n, P4627190599468801602.a n = A089497 (n + 2)

end A089497

/-! ## A089497.P1956940439021297070

`A089496(n+2)-2*A089451(n+2)`
-/

namespace A089497.P1956940439021297070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089496 (n + 2) - 2 * A089451 (n + 2)

end

end A089497.P1956940439021297070

namespace A089497

/-- `A089496(n+2)-2*A089451(n+2)` -/
def P1956940439021297070.Spec : Prop :=
  ∀ n, P1956940439021297070.a n = A089497 (n + 2)

theorem P1956940439021297070.correct : P1956940439021297070.Spec := by
  intro n
  simp only [A089497, Nat.add_sub_cancel, A089497.P1956940439021297070.a, A089497.P17535279753735861595.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A089451, A089451.P7196534336753683133.a, A089496, A089496.P7226039739294844425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089497

/-! ## A089497.P16542804532589241149

`2*A089495(n+2)-A089496(n+2)`
-/

namespace A089497.P16542804532589241149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089495 (n + 2) - A089496 (n + 2)

end

end A089497.P16542804532589241149

namespace A089497

/-- `2*A089495(n+2)-A089496(n+2)` -/
def P16542804532589241149.Spec : Prop :=
  ∀ n, P16542804532589241149.a n = A089497 (n + 2)

theorem P16542804532589241149.correct : P16542804532589241149.Spec := by
  intro n
  simp only [A089497, Nat.add_sub_cancel, A089497.P16542804532589241149.a, A089497.P17535279753735861595.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A089495, A089495.P3499540144449875997.a, A089496, A089496.P7226039739294844425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089497

/-! ## A089497.P3875934903538057618

`A008683(A065260(A000040(n+2)))`
-/

namespace A089497.P3875934903538057618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065260 (A000040 (n + 2)).toNat).toNat

end

end A089497.P3875934903538057618

namespace A089497

/-- `A008683(A065260(A000040(n+2)))` -/
def P3875934903538057618.Spec : Prop :=
  ∀ n, P3875934903538057618.a n = A089497 (n + 2)

end A089497

/-! ## A089497.P15415158101739593666

`A089495(n+2)+A070750(n+2)*A089451(n+2)`
-/

namespace A089497.P15415158101739593666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089495 (n + 2) + A070750 (n + 2) * A089451 (n + 2)

end

end A089497.P15415158101739593666

namespace A089497

/-- `A089495(n+2)+A070750(n+2)*A089451(n+2)` -/
def P15415158101739593666.Spec : Prop :=
  ∀ n, P15415158101739593666.a n = A089497 (n + 2)

end A089497

/-! ## A089497.P3453318459530209337

`A008683(A008864(n+2))-A008683(A006093(n+2))`
-/

namespace A089497.P3453318459530209337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008864 (n + 2)).toNat - A008683 (A006093 (n + 2)).toNat

end

end A089497.P3453318459530209337

namespace A089497

/-- `A008683(A008864(n+2))-A008683(A006093(n+2))` -/
def P3453318459530209337.Spec : Prop :=
  ∀ n, P3453318459530209337.a n = A089497 (n + 2)

end A089497

/-!
# A089499: a(0)=0; a(1)=1; a(2n) = 4*Sum_{k=0..n} a(2k-1); a(2n+1) = a(2n) + a(2n-1).

The programs for A089499, the canonical program `A089499.P13255380919286939873` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089499 has offset 0).

The definition of A089499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089499.P2919294671746704053

`ogf((x+4x^2-x^3)/(1-6x^2+x^4))`
-/

namespace A089499.P2919294671746704053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, -1] [1, 0, -6, 0, 1] n

end

end A089499.P2919294671746704053

namespace A089499

/-- `ogf((x+4x^2-x^3)/(1-6x^2+x^4))` -/
def P2919294671746704053.Spec : Prop :=
  ∀ n, P2919294671746704053.a n = A089499 n

end A089499

/-! ## A089499.P13255380919286939873

`6*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089499

/-- `6*a(n-2)-a(n-4)` -/
def P13255380919286939873.Spec : Prop :=
  ∀ n, P13255380919286939873.a n = A089499 n

theorem P13255380919286939873.correct : P13255380919286939873.Spec := by
  intro n
  simp only [A089499]

end A089499

/-! ## A089499.P5017555669286521075

`A000129(n)*A000034(n+1)`
-/

namespace A089499.P5017555669286521075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A000034 (n + 1)

end

end A089499.P5017555669286521075

namespace A089499

/-- `A000129(n)*A000034(n+1)` -/
def P5017555669286521075.Spec : Prop :=
  ∀ n, P5017555669286521075.a n = A089499 n

end A089499

/-! ## A089499.P12419627722924519849

`a(n-2)+lcm(4, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A089499.P12419627722924519849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 1))

end

end A089499.P12419627722924519849

namespace A089499

/-- `a(n-2)+lcm(4, a(n-1))` -/
def P12419627722924519849.Spec : Prop :=
  ∀ n, (P12419627722924519849.a n : ℤ) = A089499 n

end A089499

/-! ## A089499.P8287060332544871368

`gcd(2, n)*A000129(n)`
-/

namespace A089499.P8287060332544871368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A000129 n

end

end A089499.P8287060332544871368

namespace A089499

/-- `gcd(2, n)*A000129(n)` -/
def P8287060332544871368.Spec : Prop :=
  ∀ n, P8287060332544871368.a n = A089499 n

end A089499

/-! ## A089499.P15482964886311860494

`A249576(2*or(1, n)+n)`
-/

namespace A089499.P15482964886311860494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (2 * Nat.lor 1 n + n)

end

end A089499.P15482964886311860494

namespace A089499

/-- `A249576(2*or(1, n)+n)` -/
def P15482964886311860494.Spec : Prop :=
  ∀ n, P15482964886311860494.a n = A089499 n

end A089499

/-! ## A089499.P17309199738633579793

`A227972(A047243(n+1))`
-/

namespace A089499.P17309199738633579793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (A047243 (n + 1)).toNat

end

end A089499.P17309199738633579793

namespace A089499

/-- `A227972(A047243(n+1))` -/
def P17309199738633579793.Spec : Prop :=
  ∀ n, P17309199738633579793.a n = A089499 n

end A089499

/-! ## A089499.P1902626523938181932

`A000129(n)*A040001(n)`
-/

namespace A089499.P1902626523938181932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A040001 n

end

end A089499.P1902626523938181932

namespace A089499

/-- `A000129(n)*A040001(n)` -/
def P1902626523938181932.Spec : Prop :=
  ∀ n, P1902626523938181932.a n = A089499 n

end A089499

/-! ## A089499.P13964574754520922386

`A000129(n)*A134451(n)`
-/

namespace A089499.P13964574754520922386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A134451 n

end

end A089499.P13964574754520922386

namespace A089499

/-- `A000129(n)*A134451(n)` -/
def P13964574754520922386.Spec : Prop :=
  ∀ n, P13964574754520922386.a n = A089499 n

end A089499

/-! ## A089499.P17130875956322103

`A134451(n)*A215928(n)`
-/

namespace A089499.P17130875956322103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A215928 n

end

end A089499.P17130875956322103

namespace A089499

/-- `A134451(n)*A215928(n)` -/
def P17130875956322103.Spec : Prop :=
  ∀ n, P17130875956322103.a n = A089499 n

end A089499

/-! ## A089499.P10772409126208265346

`A041010(n)%A077985(n)`
-/

namespace A089499.P10772409126208265346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041010 n) (A077985 n)

end

end A089499.P10772409126208265346

namespace A089499

/-- `A041010(n)%A077985(n)` -/
def P10772409126208265346.Spec : Prop :=
  ∀ n, P10772409126208265346.a n = A089499 n

end A089499

/-! ## A089499.P14740577498695773585

`Δ[A001333(n)]/A000034(n)`
-/

namespace A089499.P14740577498695773585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 n : ℚ)

end

end A089499.P14740577498695773585

namespace A089499

/-- `Δ[A001333(n)]/A000034(n)` -/
def P14740577498695773585.Spec : Prop :=
  ∀ n, P14740577498695773585.a n = (A089499 n : ℚ)

end A089499

/-! ## A089499.P17145974926396702567

`A227972(A047230(n+1)-1)`
-/

namespace A089499.P17145974926396702567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (A047230 (n + 1) - 1).toNat

end

end A089499.P17145974926396702567

namespace A089499

/-- `A227972(A047230(n+1)-1)` -/
def P17145974926396702567.Spec : Prop :=
  ∀ n, P17145974926396702567.a n = A089499 n

end A089499

/-! ## A089499.P16467250527800497543

`A249576(A047230(n+1)-1)`
-/

namespace A089499.P16467250527800497543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A047230 (n + 1) - 1).toNat

end

end A089499.P16467250527800497543

namespace A089499

/-- `A249576(A047230(n+1)-1)` -/
def P16467250527800497543.Spec : Prop :=
  ∀ n, P16467250527800497543.a n = A089499 n

end A089499

/-! ## A089499.P9690880691419781844

`A084068(n+1)-A001333(n)`
-/

namespace A089499.P9690880691419781844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1) - A001333 n

end

end A089499.P9690880691419781844

namespace A089499

/-- `A084068(n+1)-A001333(n)` -/
def P9690880691419781844.Spec : Prop :=
  ∀ n, P9690880691419781844.a n = A089499 n

end A089499

/-! ## A089499.P15845678013497351313

`A000034(n+1)*A000129(n)`
-/

namespace A089499.P15845678013497351313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A000129 n

end

end A089499.P15845678013497351313

namespace A089499

/-- `A000034(n+1)*A000129(n)` -/
def P15845678013497351313.Spec : Prop :=
  ∀ n, P15845678013497351313.a n = A089499 n

end A089499

/-! ## A089499.P12378055679543779121

`(A059841(n)+1)*A000129(n)`
-/

namespace A089499.P12378055679543779121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n + 1) * A000129 n

end

end A089499.P12378055679543779121

namespace A089499

/-- `(A059841(n)+1)*A000129(n)` -/
def P12378055679543779121.Spec : Prop :=
  ∀ n, P12378055679543779121.a n = A089499 n

end A089499

/-! ## A089499.P14934840172248511870

`A163271(n+1)/A000034(n)`
-/

namespace A089499.P14934840172248511870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163271 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A089499.P14934840172248511870

namespace A089499

/-- `A163271(n+1)/A000034(n)` -/
def P14934840172248511870.Spec : Prop :=
  ∀ n, P14934840172248511870.a n = (A089499 n : ℚ)

end A089499

/-! ## A089499.P12958108590940381824

`(2-A000035(n))*A000129(n)`
-/

namespace A089499.P12958108590940381824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A000129 n

end

end A089499.P12958108590940381824

namespace A089499

/-- `(2-A000035(n))*A000129(n)` -/
def P12958108590940381824.Spec : Prop :=
  ∀ n, P12958108590940381824.a n = A089499 n

end A089499

/-! ## A089499.P9575687321216750067

`A041010(n)-2*A041011(n)`
-/

namespace A089499.P9575687321216750067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041010 n - 2 * A041011 n

end

end A089499.P9575687321216750067

namespace A089499

/-- `A041010(n)-2*A041011(n)` -/
def P9575687321216750067.Spec : Prop :=
  ∀ n, P9575687321216750067.a n = A089499 n

end A089499

