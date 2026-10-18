import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

/-!
# A342402: Numbers k with property that if k has m proper divisors, there are m/2 proper divisors of k whose sum is k.

The programs for A342402, there is no canonical definition to state claims against.
-/

/-! ## A342402.P9306415798611058298

`∩[A032742(A308053(n+1)), n²]`
-/

namespace A342402.P9306415798611058298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A308053 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A342402.P9306415798611058298

/-! ## A342402.P769878316803536697

`∩[A253260(n+1), A390557(n+1)]`
-/

namespace A342402.P769878316803536697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342402.P769878316803536697

/-! ## A342402.P7549026367930164070

`∩[A004526(A356871(n+1)), (n+3)²]`
-/

namespace A342402.P7549026367930164070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A356871 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A342402.P7549026367930164070

/-! ## A342402.P12596797915946028184

`A004526(∩[A090937(n+1), A356871(n+1)])`
-/

namespace A342402.P12596797915946028184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A342402.P12596797915946028184

/-! ## A342402.P15882132700095540014

`A289436(∩[A090937(n+1), A356871(n+1)])`
-/

namespace A342402.P15882132700095540014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A342402.P15882132700095540014

/-!
# A342404: a(n) = binomial(n,2)*(2^(n-2) - n + 1).

The programs for A342404, the canonical program `A342404.P7003255690784973239` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342404 has offset 0).

The definition of A342404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342404.P1024913375846611600

`(2^(n-2)-(n-1))*C(n, 2)`
-/

namespace A342404.P1024913375846611600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - ((n : ℤ) - 1 : ℚ)) * (Nat.choose n 2 : ℚ)

end

end A342404.P1024913375846611600

namespace A342404

/-- `(2^(n-2)-(n-1))*C(n, 2)` -/
def P1024913375846611600.Spec : Prop :=
  ∀ n, P1024913375846611600.a n = (A342404 n : ℚ)

end A342404

/-! ## A342404.P1572076190734169782

`A338232(n)-A338230(n)`
-/

namespace A342404.P1572076190734169782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338232 n - A338230 n

end

end A342404.P1572076190734169782

namespace A342404

/-- `A338232(n)-A338230(n)` -/
def P1572076190734169782.Spec : Prop :=
  ∀ n, P1572076190734169782.a n = A342404 n

end A342404

/-! ## A342404.P7003255690784973239

`(A166444(n)+A024000(n))*(∑[n]-n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342404

/-- `(A166444(n)+A024000(n))*(∑[n]-n)` -/
def P7003255690784973239.Spec : Prop :=
  ∀ n, P7003255690784973239.a n = A342404 n

theorem P7003255690784973239.correct : P7003255690784973239.Spec := by
  intro n
  simp only [A342404]

end A342404

/-! ## A342404.P13289938862913914014

`A000295(A289207(n))*A161680(n)`
-/

namespace A342404.P13289938862913914014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A289207 n).toNat * A161680 n

end

end A342404.P13289938862913914014

namespace A342404

/-- `A000295(A289207(n))*A161680(n)` -/
def P13289938862913914014.Spec : Prop :=
  ∀ n, P13289938862913914014.a n = A342404 n

end A342404

/-! ## A342404.P4351807897292981063

`(A034008(n)+A024000(n))*A161680(n)`
-/

namespace A342404.P4351807897292981063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034008 n + A024000 n) * A161680 n

end

end A342404.P4351807897292981063

namespace A342404

/-- `(A034008(n)+A024000(n))*A161680(n)` -/
def P4351807897292981063.Spec : Prop :=
  ∀ n, P4351807897292981063.a n = A342404 n

end A342404

/-! ## A342404.P12306646245450130820

`A161680(n)*A243827(A052905(n))`
-/

namespace A342404.P12306646245450130820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n * A243827 (A052905 n).toNat

end

end A342404.P12306646245450130820

namespace A342404

/-- `A161680(n)*A243827(A052905(n))` -/
def P12306646245450130820.Spec : Prop :=
  ∀ n, P12306646245450130820.a n = A342404 n

end A342404

/-!
# A342405: a(n) = (27^n - 3*9^n - 3*12^n)/6 + 6^n.

The programs for A342405, the canonical program `A342405.P270956778832168628` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342405 has offset 1).

The definition of A342405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342405.P270956778832168628

`(27^(n+1)-3*9^(n+1)-3*12^(n+1))/6+6^(n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A342405

/-- `(27^(n+1)-3*9^(n+1)-3*12^(n+1))/6+6^(n+1)` -/
def P270956778832168628.Spec : Prop :=
  ∀ n, P270956778832168628.a n = (A342405 (n + 1) : ℚ)

end A342405

/-! ## A342405.P9725721294097749434

`(A134063(2*n+1)-A134063(n+1))*A000244(n+1)`
-/

namespace A342405.P9725721294097749434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134063 (2 * n + 1) - A134063 (n + 1)) * A000244 (n + 1)

end

end A342405.P9725721294097749434

namespace A342405

/-- `(A134063(2*n+1)-A134063(n+1))*A000244(n+1)` -/
def P9725721294097749434.Spec : Prop :=
  ∀ n, P9725721294097749434.a n = A342405 (n + 1)

end A342405

/-! ## A342405.P1158656274515484979

`A342202(∑[n+2]+4)`
-/

namespace A342405.P1158656274515484979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342202 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A342405.P1158656274515484979

namespace A342405

/-- `A342202(∑[n+2]+4)` -/
def P1158656274515484979.Spec : Prop :=
  ∀ n, P1158656274515484979.a n = A342405 (n + 1)

end A342405

/-!
# A342406: Primes p such that the number of ways to write p = 2*q + r with q and r prime is a prime.

The programs for A342406, there is no canonical definition to state claims against.
-/

/-! ## A342406.P16716515388428350443

`p?[A032741(A046926(n+1))*A109613(n)]`
-/

namespace A342406.P16716515388428350443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A046926 (n + 1)).toNat * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342406.P16716515388428350443

/-! ## A342406.P11586368841628661036

`p?[A006005(n+1)*A032741(A103274(n+1))]`
-/

namespace A342406.P11586368841628661036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A032741 (A103274 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342406.P11586368841628661036

/-! ## A342406.P14311845275460048532

`p?[A003415(A046926(n+1))*A004442(n)]`
-/

namespace A342406.P14311845275460048532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046926 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342406.P14311845275460048532

/-! ## A342406.P14648122047738650141

`p?[A003415(A046926(n+1))*A141310(n)]`
-/

namespace A342406.P14648122047738650141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046926 (n + 1)).toNat * A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342406.P14648122047738650141

/-! ## A342406.P8725838719273882956

`p?[A003415(A046926(n+1))*A051377(n+1)]`
-/

namespace A342406.P8725838719273882956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046926 (n + 1)).toNat * A051377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342406.P8725838719273882956

/-! ## A342406.P7093254752214594383

`p?[A003415(A046926(n+1))*A094759(n+1)]`
-/

namespace A342406.P7093254752214594383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046926 (n + 1)).toNat * A094759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342406.P7093254752214594383

/-!
# A342407: Number of 2's in the first 10^n entries of the Kolakoski sequence (A000002).

The programs for A342407, there is no canonical definition to state claims against.
-/

/-! ## A342407.P7418862168391541202

`10^n-A195206(n)`
-/

namespace A342407.P7418862168391541202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - A195206 n

end

end A342407.P7418862168391541202

/-! ## A342407.P930669375841108267

`abs(A289324(n)+A195206(n))`
-/

namespace A342407.P930669375841108267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A289324 n + A195206 n|

end

end A342407.P930669375841108267

/-! ## A342407.P7854109133297731216

`abs(A011557(n)-A195206(n))`
-/

namespace A342407.P7854109133297731216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A195206 n|

end

end A342407.P7854109133297731216

/-! ## A342407.P5890912172488613259

`A001019(n)+A016189(n)-A195206(n)`
-/

namespace A342407.P5890912172488613259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + (A016189 n - A195206 n)

end

end A342407.P5890912172488613259

/-! ## A342407.P17087412310333269780

`(A289324(n)+A195206(n))*A011598(n²)`
-/

namespace A342407.P17087412310333269780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A289324 n + A195206 n) * A011598 (n ^ 2)

end

end A342407.P17087412310333269780

/-!
# A342408: a(n) is the least prime that begins a string of n consecutive primes such that the sum of each consecutive pair in the string is divisible by 8.

The programs for A342408, there is no canonical definition to state claims against.
-/

/-! ## A342408.P11850336506455595906

`A096650(abs(A128018(n)))`
-/

namespace A342408.P11850336506455595906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096650 |A128018 n|.toNat

end

end A342408.P11850336506455595906

/-!
# A342410: The binary expansion of a(n) corresponds to that of n where all the 1's have been replaced by 0's except in the last run of 1's.

The programs for A342410, the canonical program `A342410.P6578316461280834384` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342410 has offset 0).

The definition of A342410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342410.P6578316461280834384

`and(n, xor(n, -n)-n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A342410

/-- `and(n, xor(n, -n)-n)` -/
def P6578316461280834384.Spec : Prop :=
  ∀ n, P6578316461280834384.a n = A342410 n

theorem P6578316461280834384.correct : P6578316461280834384.Spec := by
  intro n
  simp only [A342410]

end A342410

/-! ## A342410.P975975385427081662

`and(n, -(or(n, n-1)+2))`
-/

namespace A342410.P975975385427081662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(Int.lor (n : ℤ) ((n : ℤ) - 1) + 2))

end

end A342410.P975975385427081662

namespace A342410

/-- `and(n, -(or(n, n-1)+2))` -/
def P975975385427081662.Spec : Prop :=
  ∀ n, P975975385427081662.a n = A342410 n

end A342410

/-! ## A342410.P6967064386673978313

`and(n, and(2*n, -n)-1)`
-/

namespace A342410.P6967064386673978313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.land (2 * n : ℤ) (-(n : ℤ)) - 1)

end

end A342410.P6967064386673978313

namespace A342410

/-- `and(n, and(2*n, -n)-1)` -/
def P6967064386673978313.Spec : Prop :=
  ∀ n, P6967064386673978313.a n = A342410 n

end A342410

/-! ## A342410.P9574964047342861292

`and(n, or(n, 2*n)-(n+1))`
-/

namespace A342410.P9574964047342861292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((Nat.lor n (2 * n) : ℤ) - (n + 1 : ℤ))

end

end A342410.P9574964047342861292

namespace A342410

/-- `and(n, or(n, 2*n)-(n+1))` -/
def P9574964047342861292.Spec : Prop :=
  ∀ n, P9574964047342861292.a n = A342410 n

end A342410

/-! ## A342410.P966730463050249151

`and(n, -(and(n, -n)+n+1))`
-/

namespace A342410.P966730463050249151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ) + 1))

end

end A342410.P966730463050249151

namespace A342410

/-- `and(n, -(and(n, -n)+n+1))` -/
def P966730463050249151.Spec : Prop :=
  ∀ n, P966730463050249151.a n = A342410 n

end A342410

/-! ## A342410.P3785032802436153352

`and(n, and(n, n-1)-1-2*n)`
-/

namespace A342410.P3785032802436153352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.land (n : ℤ) ((n : ℤ) - 1) - 1 - (2 * n : ℤ))

end

end A342410.P3785032802436153352

namespace A342410

/-- `and(n, and(n, n-1)-1-2*n)` -/
def P3785032802436153352.Spec : Prop :=
  ∀ n, P3785032802436153352.a n = A342410 n

end A342410

/-! ## A342410.P17604192311176133194

`and(n, A213064(n)-1)`
-/

namespace A342410.P17604192311176133194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A213064 n - 1)

end

end A342410.P17604192311176133194

namespace A342410

/-- `and(n, A213064(n)-1)` -/
def P17604192311176133194.Spec : Prop :=
  ∀ n, P17604192311176133194.a n = A342410 n

end A342410

/-! ## A342410.P14298242570997529829

`n-and(n, A285326(n))`
-/

namespace A342410.P14298242570997529829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A285326 n)

end

end A342410.P14298242570997529829

namespace A342410

/-- `n-and(n, A285326(n))` -/
def P14298242570997529829.Spec : Prop :=
  ∀ n, P14298242570997529829.a n = A342410 n

end A342410

/-! ## A342410.P9648976772763118835

`n-A322018(or(1, A322018(n)))`
-/

namespace A342410.P9648976772763118835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A322018 (Int.lor 1 (A322018 n)).toNat

end

end A342410.P9648976772763118835

namespace A342410

/-- `n-A322018(or(1, A322018(n)))` -/
def P9648976772763118835.Spec : Prop :=
  ∀ n, P9648976772763118835.a n = A342410 n

end A342410

/-! ## A342410.P3599392808462639447

`xor(n-A140472(n), A140472(n))`
-/

namespace A342410.P3599392808462639447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A140472 n) (A140472 n)

end

end A342410.P3599392808462639447

namespace A342410

/-- `xor(n-A140472(n), A140472(n))` -/
def P3599392808462639447.Spec : Prop :=
  ∀ n, P3599392808462639447.a n = A342410 n

end A342410

/-! ## A342410.P4884441436630165201

`and(n, A292272(2*n)-1)`
-/

namespace A342410.P4884441436630165201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A292272 (2 * n) - 1)

end

end A342410.P4884441436630165201

namespace A342410

/-- `and(n, A292272(2*n)-1)` -/
def P4884441436630165201.Spec : Prop :=
  ∀ n, P4884441436630165201.a n = A342410 n

end A342410

/-! ## A342410.P17862559298706456465

`n-A129760(A322018(n)+1)`
-/

namespace A342410.P17862559298706456465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A129760 (A322018 n + 1).toNat

end

end A342410.P17862559298706456465

namespace A342410

/-- `n-A129760(A322018(n)+1)` -/
def P17862559298706456465.Spec : Prop :=
  ∀ n, P17862559298706456465.a n = A342410 n

end A342410

/-! ## A342410.P1000510268454505720

`n-and(n, A140472(2*n))`
-/

namespace A342410.P1000510268454505720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A140472 (2 * n))

end

end A342410.P1000510268454505720

namespace A342410

/-- `n-and(n, A140472(2*n))` -/
def P1000510268454505720.Spec : Prop :=
  ∀ n, P1000510268454505720.a n = A342410 n

end A342410

/-! ## A342410.P616035369696358633

`and(n, A340632(2*n)-n)`
-/

namespace A342410.P616035369696358633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A340632 (2 * n) - (n : ℤ))

end

end A342410.P616035369696358633

namespace A342410

/-- `and(n, A340632(2*n)-n)` -/
def P616035369696358633.Spec : Prop :=
  ∀ n, P616035369696358633.a n = A342410 n

end A342410

/-! ## A342410.P1818893651551811835

`and(n, A265263(A048724(n))-1)`
-/

namespace A342410.P1818893651551811835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A265263 (A048724 n).toNat - 1)

end

end A342410.P1818893651551811835

namespace A342410

/-- `and(n, A265263(A048724(n))-1)` -/
def P1818893651551811835.Spec : Prop :=
  ∀ n, P1818893651551811835.a n = A342410 n

end A342410

/-! ## A342410.P14848134277271530620

`and(n, A142151(A010078(n+1))-n)`
-/

namespace A342410.P14848134277271530620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A142151 (A010078 (n + 1)).toNat - (n : ℤ))

end

end A342410.P14848134277271530620

namespace A342410

/-- `and(n, A142151(A010078(n+1))-n)` -/
def P14848134277271530620.Spec : Prop :=
  ∀ n, P14848134277271530620.a n = A342410 n

end A342410

/-! ## A342410.P333849131798969717

`A214546(2*n)-A214546(A285326(2*n))`
-/

namespace A342410.P333849131798969717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (2 * n) - A214546 (A285326 (2 * n)).toNat

end

end A342410.P333849131798969717

namespace A342410

/-- `A214546(2*n)-A214546(A285326(2*n))` -/
def P333849131798969717.Spec : Prop :=
  ∀ n, P333849131798969717.a n = A342410 n

end A342410

/-! ## A342410.P15418485239800233890

`A214546(2*n)-A214546(A140472(4*n))`
-/

namespace A342410.P15418485239800233890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (2 * n) - A214546 (A140472 (4 * n)).toNat

end

end A342410.P15418485239800233890

namespace A342410

/-- `A214546(2*n)-A214546(A140472(4*n))` -/
def P15418485239800233890.Spec : Prop :=
  ∀ n, P15418485239800233890.a n = A342410 n

end A342410

/-! ## A342410.P12672796119982128450

`filter[A343757(2*n), A340375(#)]`
-/

namespace A342410.P12672796119982128450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343757 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340375 (f1 j).toNat = 1) n)

end

end A342410.P12672796119982128450

namespace A342410

/-- `filter[A343757(2*n), A340375(#)]` -/
def P12672796119982128450.Spec : Prop :=
  ∀ n, P12672796119982128450.a n = A342410 n

end A342410

/-! ## A342410.P763097460392025205

`(A285326(n)-n)*A089312(n)`
-/

namespace A342410.P763097460392025205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285326 n - (n : ℤ)) * A089312 n

end

end A342410.P763097460392025205

namespace A342410

/-- `(A285326(n)-n)*A089312(n)` -/
def P763097460392025205.Spec : Prop :=
  ∀ n, P763097460392025205.a n = A342410 n

end A342410

/-!
# A342411: a(n) = Sum_{k=1..n} (n/gcd(k,n))^(n/gcd(k,n) - 2).

The programs for A342411, there is no canonical definition to state claims against.
-/

/-! ## A342411.P2959558226321997133

`∑{d}[n+1, A000010(#^(#-1))]`
-/

namespace A342411.P2959558226321997133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((d : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat

end

end A342411.P2959558226321997133

/-! ## A342411.P2517030373606107839

`A353571(n+1)+A000010((n+1)^n)`
-/

namespace A342411.P2517030373606107839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353571 (n + 1) + A000010 ((n + 1) ^ n)

end

end A342411.P2517030373606107839

/-!
# A342412: a(n) = Sum_{k=1..n} (n/gcd(k,n))^(n-2).

The programs for A342412, there is no canonical definition to state claims against.
-/

/-! ## A342412.P549314655433698284

`∑{d}[n+1, #^(n-1)*A000010(#)]`
-/

namespace A342412.P549314655433698284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000010 d : ℚ)

end

end A342412.P549314655433698284

/-! ## A342412.P11851210649728666751

`∑{d}[n+1, A000010(#^n)]`
-/

namespace A342412.P11851210649728666751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (d ^ n)

end

end A342412.P11851210649728666751

/-!
# A342413: a(n) = gcd(phi(n), A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

The programs for A342413, the canonical program `A342413.P5834518652712506782` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342413 has offset 1).

The definition of A342413 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A342416, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342413.P5834518652712506782

`A003557(n+1)*A342416(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A342413

/-- `A003557(n+1)*A342416(n+1)` -/
def P5834518652712506782.Spec : Prop :=
  ∀ n, P5834518652712506782.a n = A342413 (n + 1)

theorem P5834518652712506782.correct : P5834518652712506782.Spec := by
  intro n
  simp only [A342413, Nat.add_sub_cancel]

end A342413

/-! ## A342413.P674665905356826413

`A000010(n+1)/A342415(n+1)`
-/

namespace A342413.P674665905356826413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A342415 (n + 1) : ℚ)

end

end A342413.P674665905356826413

namespace A342413

/-- `A000010(n+1)/A342415(n+1)` -/
def P674665905356826413.Spec : Prop :=
  ∀ n, P674665905356826413.a n = (A342413 (n + 1) : ℚ)

end A342413

/-! ## A342413.P7540234365590903240

`Δ[A002088(n)]/A342415(n+1)`
-/

namespace A342413.P7540234365590903240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A342415 (n + 1) : ℚ)

end

end A342413.P7540234365590903240

namespace A342413

/-- `Δ[A002088(n)]/A342415(n+1)` -/
def P7540234365590903240.Spec : Prop :=
  ∀ n, P7540234365590903240.a n = (A342413 (n + 1) : ℚ)

end A342413

/-! ## A342413.P3357305190212128734

`gcd(∑[A258057(n)], A000010(n+1))`
-/

namespace A342413.P3357305190212128734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000010 (n + 1))

end

end A342413.P3357305190212128734

namespace A342413

/-- `gcd(∑[A258057(n)], A000010(n+1))` -/
def P3357305190212128734.Spec : Prop :=
  ∀ n, (P3357305190212128734.a n : ℤ) = A342413 (n + 1)

end A342413

/-! ## A342413.P2608293705160218037

`(1-A010848(n+1)+n)*A342416(n+1)`
-/

namespace A342413.P2608293705160218037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010848 (n + 1) + (n : ℤ)) * A342416 (n + 1)

end

end A342413.P2608293705160218037

namespace A342413

/-- `(1-A010848(n+1)+n)*A342416(n+1)` -/
def P2608293705160218037.Spec : Prop :=
  ∀ n, P2608293705160218037.a n = A342413 (n + 1)

end A342413

/-! ## A342413.P15052527889806057179

`(A076332(n+1)-A007947(n+1))*A342416(n+1)`
-/

namespace A342413.P15052527889806057179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076332 (n + 1) - A007947 (n + 1)) * A342416 (n + 1)

end

end A342413.P15052527889806057179

namespace A342413

/-- `(A076332(n+1)-A007947(n+1))*A342416(n+1)` -/
def P15052527889806057179.Spec : Prop :=
  ∀ n, P15052527889806057179.a n = A342413 (n + 1)

end A342413

/-! ## A342413.P1223206497726098808

`A001615(n+1)/A048250(n+1)*A342416(n+1)`
-/

namespace A342413.P1223206497726098808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A342416 (n + 1) : ℚ)

end

end A342413.P1223206497726098808

namespace A342413

/-- `A001615(n+1)/A048250(n+1)*A342416(n+1)` -/
def P1223206497726098808.Spec : Prop :=
  ∀ n, P1223206497726098808.a n = (A342413 (n + 1) : ℚ)

end A342413

/-! ## A342413.P1782316134221352742

`A000010(n+1)/A173557(n+1)*A342416(n+1)`
-/

namespace A342413.P1782316134221352742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ) * (A342416 (n + 1) : ℚ)

end

end A342413.P1782316134221352742

namespace A342413

/-- `A000010(n+1)/A173557(n+1)*A342416(n+1)` -/
def P1782316134221352742.Spec : Prop :=
  ∀ n, P1782316134221352742.a n = (A342413 (n + 1) : ℚ)

end A342413

/-! ## A342413.P7357464160742464324

`A003557(n+1)*A173557(n+1)/A342415(n+1)`
-/

namespace A342413.P7357464160742464324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A173557 (n + 1) : ℚ) / (A342415 (n + 1) : ℚ)

end

end A342413.P7357464160742464324

namespace A342413

/-- `A003557(n+1)*A173557(n+1)/A342415(n+1)` -/
def P7357464160742464324.Spec : Prop :=
  ∀ n, P7357464160742464324.a n = (A342413 (n + 1) : ℚ)

end A342413

/-! ## A342413.P4207858514611290792

`A342416(n+1)*A342458(n+1)/A342459(n+1)`
-/

namespace A342413.P4207858514611290792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342416 (n + 1) * A342458 (n + 1) : ℚ) / (A342459 (n + 1) : ℚ)

end

end A342413.P4207858514611290792

namespace A342413

/-- `A342416(n+1)*A342458(n+1)/A342459(n+1)` -/
def P4207858514611290792.Spec : Prop :=
  ∀ n, P4207858514611290792.a n = (A342413 (n + 1) : ℚ)

end A342413

/-!
# A342414: a(n) = A003415(n) / gcd(phi(n),A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

The programs for A342414, the canonical program `A342414.P18241024431258092632` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342414 has offset 1).

The definition of A342414 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A342416, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342414.P3531289412351950481

`A003415(n+1)/A342413(n+1)`
-/

namespace A342414.P3531289412351950481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A342413 (n + 1) : ℚ)

end

end A342414.P3531289412351950481

namespace A342414

/-- `A003415(n+1)/A342413(n+1)` -/
def P3531289412351950481.Spec : Prop :=
  ∀ n, P3531289412351950481.a n = (A342414 (n + 1) : ℚ)

end A342414

/-! ## A342414.P18241024431258092632

`A342001(n+1)/A342416(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A342414

/-- `A342001(n+1)/A342416(n+1)` -/
def P18241024431258092632.Spec : Prop :=
  ∀ n, P18241024431258092632.a n = (A342414 (n + 1) : ℚ)

end A342414

/-! ## A342414.P11545883111765916547

`(A329039(n+1)+A069359(n+1))/A342413(n+1)`
-/

namespace A342414.P11545883111765916547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329039 (n + 1) + A069359 (n + 1) : ℚ) / (A342413 (n + 1) : ℚ)

end

end A342414.P11545883111765916547

namespace A342414

/-- `(A329039(n+1)+A069359(n+1))/A342413(n+1)` -/
def P11545883111765916547.Spec : Prop :=
  ∀ n, P11545883111765916547.a n = (A342414 (n + 1) : ℚ)

end A342414

/-! ## A342414.P7759172135188524087

`A003415(n+1)/A000010(n+1)*A342415(n+1)`
-/

namespace A342414.P7759172135188524087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A342415 (n + 1) : ℚ)

end

end A342414.P7759172135188524087

namespace A342414

/-- `A003415(n+1)/A000010(n+1)*A342415(n+1)` -/
def P7759172135188524087.Spec : Prop :=
  ∀ n, P7759172135188524087.a n = (A342414 (n + 1) : ℚ)

end A342414

/-! ## A342414.P5852851172849993218

`A003415(n+1)/(A003557(n+1)*A342416(n+1))`
-/

namespace A342414.P5852851172849993218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A003557 (n + 1) * A342416 (n + 1) : ℚ)

end

end A342414.P5852851172849993218

namespace A342414

/-- `A003415(n+1)/(A003557(n+1)*A342416(n+1))` -/
def P5852851172849993218.Spec : Prop :=
  ∀ n, P5852851172849993218.a n = (A342414 (n + 1) : ℚ)

end A342414

/-! ## A342414.P17896136947895594481

`A003557(n+1)*A342001(n+1)/A342413(n+1)`
-/

namespace A342414.P17896136947895594481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A342001 (n + 1) : ℚ) / (A342413 (n + 1) : ℚ)

end

end A342414.P17896136947895594481

namespace A342414

/-- `A003557(n+1)*A342001(n+1)/A342413(n+1)` -/
def P17896136947895594481.Spec : Prop :=
  ∀ n, P17896136947895594481.a n = (A342414 (n + 1) : ℚ)

end A342414

/-! ## A342414.P989472861269357046

`A342001(n+1)/A173557(n+1)*A342415(n+1)`
-/

namespace A342414.P989472861269357046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ) * (A342415 (n + 1) : ℚ)

end

end A342414.P989472861269357046

namespace A342414

/-- `A342001(n+1)/A173557(n+1)*A342415(n+1)` -/
def P989472861269357046.Spec : Prop :=
  ∀ n, P989472861269357046.a n = (A342414 (n + 1) : ℚ)

end A342414

/-! ## A342414.P16669709615713600235

`A342458(n+1)/A342413(n+1)*A342919(n+1)`
-/

namespace A342414.P16669709615713600235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342458 (n + 1) : ℚ) / (A342413 (n + 1) : ℚ) * (A342919 (n + 1) : ℚ)

end

end A342414.P16669709615713600235

namespace A342414

/-- `A342458(n+1)/A342413(n+1)*A342919(n+1)` -/
def P16669709615713600235.Spec : Prop :=
  ∀ n, P16669709615713600235.a n = (A342414 (n + 1) : ℚ)

end A342414

/-! ## A342414.P11617588309717343195

`A348492(n+1)/A342413(n+1)*A348493(n+1)`
-/

namespace A342414.P11617588309717343195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A342413 (n + 1) : ℚ) * (A348493 (n + 1) : ℚ)

end

end A342414.P11617588309717343195

namespace A342414

/-- `A348492(n+1)/A342413(n+1)*A348493(n+1)` -/
def P11617588309717343195.Spec : Prop :=
  ∀ n, P11617588309717343195.a n = (A342414 (n + 1) : ℚ)

end A342414

/-! ## A342414.P4866189847263894298

`A342001(n+1)/gcd(A023900(n+1), A342001(n+1))`
-/

namespace A342414.P4866189847263894298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (Int.gcd (A023900 (n + 1)) (A342001 (n + 1)) : ℚ)

end

end A342414.P4866189847263894298

namespace A342414

/-- `A342001(n+1)/gcd(A023900(n+1), A342001(n+1))` -/
def P4866189847263894298.Spec : Prop :=
  ∀ n, P4866189847263894298.a n = (A342414 (n + 1) : ℚ)

end A342414

/-!
# A342415: a(n) = phi(n) / gcd(phi(n),A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

The programs for A342415, the canonical program `A342415.P5847240470460742720` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342415 has offset 1).

The definition of A342415 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A342413, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342415.P5847240470460742720

`A000010(n+1)/A342413(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A342415

/-- `A000010(n+1)/A342413(n+1)` -/
def P5847240470460742720.Spec : Prop :=
  ∀ n, P5847240470460742720.a n = (A342415 (n + 1) : ℚ)

end A342415

/-! ## A342415.P15845082318338396593

`A173557(n+1)/A342416(n+1)`
-/

namespace A342415.P15845082318338396593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A342416 (n + 1) : ℚ)

end

end A342415.P15845082318338396593

namespace A342415

/-- `A173557(n+1)/A342416(n+1)` -/
def P15845082318338396593.Spec : Prop :=
  ∀ n, P15845082318338396593.a n = (A342415 (n + 1) : ℚ)

end A342415

/-! ## A342415.P18315515792775624078

`A000010(n+1)/(A003557(n+1)*A342416(n+1))`
-/

namespace A342415.P18315515792775624078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A003557 (n + 1) * A342416 (n + 1) : ℚ)

end

end A342415.P18315515792775624078

namespace A342415

/-- `A000010(n+1)/(A003557(n+1)*A342416(n+1))` -/
def P18315515792775624078.Spec : Prop :=
  ∀ n, P18315515792775624078.a n = (A342415 (n + 1) : ℚ)

end A342415

/-! ## A342415.P7120662576847808973

`A003557(n+1)*A173557(n+1)/A342413(n+1)`
-/

namespace A342415.P7120662576847808973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A173557 (n + 1) : ℚ) / (A342413 (n + 1) : ℚ)

end

end A342415.P7120662576847808973

namespace A342415

/-- `A003557(n+1)*A173557(n+1)/A342413(n+1)` -/
def P7120662576847808973.Spec : Prop :=
  ∀ n, P7120662576847808973.a n = (A342415 (n + 1) : ℚ)

end A342415

/-! ## A342415.P16298253718202917696

`A173557(n+1)/gcd(A173557(n+1), A342001(n+1))`
-/

namespace A342415.P16298253718202917696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (Int.gcd (A173557 (n + 1)) (A342001 (n + 1)) : ℚ)

end

end A342415.P16298253718202917696

namespace A342415

/-- `A173557(n+1)/gcd(A173557(n+1), A342001(n+1))` -/
def P16298253718202917696.Spec : Prop :=
  ∀ n, P16298253718202917696.a n = (A342415 (n + 1) : ℚ)

end A342415

/-! ## A342415.P11819107842410598758

`A067541(2*n+1)/A342413(n+1)`
-/

namespace A342415.P11819107842410598758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067541 (2 * n + 1) : ℚ) / (A342413 (n + 1) : ℚ)

end

end A342415.P11819107842410598758

namespace A342415

/-- `A067541(2*n+1)/A342413(n+1)` -/
def P11819107842410598758.Spec : Prop :=
  ∀ n, P11819107842410598758.a n = (A342415 (n + 1) : ℚ)

end A342415

/-!
# A342416: a(n) = gcd(A173557(n), A342001(n)).

The programs for A342416, the canonical program `A342416.P13973089960249361298` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342416 has offset 1).

The definition of A342416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342416.P14235605843775504252

`A342413(n+1)/A003557(n+1)`
-/

namespace A342416.P14235605843775504252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342413 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A342416.P14235605843775504252

namespace A342416

/-- `A342413(n+1)/A003557(n+1)` -/
def P14235605843775504252.Spec : Prop :=
  ∀ n, P14235605843775504252.a n = (A342416 (n + 1) : ℚ)

end A342416

/-! ## A342416.P9220544594096630417

`A173557(n+1)/A342415(n+1)`
-/

namespace A342416.P9220544594096630417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A342415 (n + 1) : ℚ)

end

end A342416.P9220544594096630417

namespace A342416

/-- `A173557(n+1)/A342415(n+1)` -/
def P9220544594096630417.Spec : Prop :=
  ∀ n, P9220544594096630417.a n = (A342416 (n + 1) : ℚ)

end A342416

/-! ## A342416.P13973089960249361298

`gcd(A023900(n+1), A342001(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A342416

/-- `gcd(A023900(n+1), A342001(n+1))` -/
def P13973089960249361298.Spec : Prop :=
  ∀ n, (P13973089960249361298.a n : ℤ) = A342416 (n + 1)

theorem P13973089960249361298.correct : P13973089960249361298.Spec := by
  intro n
  simp only [A342416, Nat.add_sub_cancel]

end A342416

/-! ## A342416.P11080253808014738400

`A000010(n+1)/(A003557(n+1)*A342415(n+1))`
-/

namespace A342416.P11080253808014738400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A003557 (n + 1) * A342415 (n + 1) : ℚ)

end

end A342416.P11080253808014738400

namespace A342416

/-- `A000010(n+1)/(A003557(n+1)*A342415(n+1))` -/
def P11080253808014738400.Spec : Prop :=
  ∀ n, P11080253808014738400.a n = (A342416 (n + 1) : ℚ)

end A342416

/-! ## A342416.P5287778052745152474

`A173557(n+1)/A000010(n+1)*A342413(n+1)`
-/

namespace A342416.P5287778052745152474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A342413 (n + 1) : ℚ)

end

end A342416.P5287778052745152474

namespace A342416

/-- `A173557(n+1)/A000010(n+1)*A342413(n+1)` -/
def P5287778052745152474.Spec : Prop :=
  ∀ n, P5287778052745152474.a n = (A342416 (n + 1) : ℚ)

end A342416

/-! ## A342416.P15004145675422127431

`A342413(n+1)/A342458(n+1)*A342459(n+1)`
-/

namespace A342416.P15004145675422127431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342413 (n + 1) : ℚ) / (A342458 (n + 1) : ℚ) * (A342459 (n + 1) : ℚ)

end

end A342416.P15004145675422127431

namespace A342416

/-- `A342413(n+1)/A342458(n+1)*A342459(n+1)` -/
def P15004145675422127431.Spec : Prop :=
  ∀ n, P15004145675422127431.a n = (A342416 (n + 1) : ℚ)

end A342416

/-! ## A342416.P10088533884822079154

`A342413(n+1)/A348492(n+1)*A348494(n+1)`
-/

namespace A342416.P10088533884822079154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342413 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ) * (A348494 (n + 1) : ℚ)

end

end A342416.P10088533884822079154

namespace A342416

/-- `A342413(n+1)/A348492(n+1)*A348494(n+1)` -/
def P10088533884822079154.Spec : Prop :=
  ∀ n, P10088533884822079154.a n = (A342416 (n + 1) : ℚ)

end A342416

/-!
# A342417: Dirichlet inverse of Čiurlionis sequence, A342002.

The programs for A342417, there is no canonical definition to state claims against.
-/

/-! ## A342417.P15056153564202061944

`A342419(n+1)-A342002(n+1)`
-/

namespace A342417.P15056153564202061944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342419 (n + 1) - A342002 (n + 1)

end

end A342417.P15056153564202061944

/-! ## A342417.P15332962987665749351

`A342419(n+1)-A327860(n+1)/A328572(n+1)`
-/

namespace A342417.P15332962987665749351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342419 (n + 1) : ℚ) - (A327860 (n + 1) : ℚ) / (A328572 (n + 1) : ℚ)

end

end A342417.P15332962987665749351

/-! ## A342417.P15669794653119498884

`A342419(n+1)-A083345(A276086(n+1))`
-/

namespace A342417.P15669794653119498884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342419 (n + 1) - A083345 (A276086 (n + 1)).toNat

end

end A342417.P15669794653119498884

/-!
# A342418: Composite numbers k such that Euler totient phi(k) is a multiple of the arithmetic derivative of k.

The programs for A342418, there is no canonical definition to state claims against.
-/

/-! ## A342418.P18001459912597491433

`filter[A342008(n+1), A005171(#)]`
-/

namespace A342418.P18001459912597491433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A342418.P18001459912597491433

/-! ## A342418.P12694954044001781339

`filter[A342008(n+1), A066247(#)]`
-/

namespace A342418.P12694954044001781339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A342418.P12694954044001781339

/-! ## A342418.P6521702471340281077

`filter[A342008(n+1), A202238(#)]`
-/

namespace A342418.P6521702471340281077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A342418.P6521702471340281077

/-! ## A342418.P6308884815655912055

`filter[A342008(n+1), A292438(#)]`
-/

namespace A342418.P6308884815655912055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A342418.P6308884815655912055

/-! ## A342418.P15985325497187155461

`filter[A342008(n+1), A323162(#)]`
-/

namespace A342418.P15985325497187155461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A342418.P15985325497187155461

/-! ## A342418.P16045405635968692891

`∩[A005381(n+1), A342008(n+1)]`
-/

namespace A342418.P16045405635968692891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342418.P16045405635968692891

/-! ## A342418.P7131741014687953542

`∩[A009188(n+1), A342008(n+1)]`
-/

namespace A342418.P7131741014687953542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342418.P7131741014687953542

/-! ## A342418.P357436709950020719

`∩[A014076(n+1), A342008(n+1)]`
-/

namespace A342418.P357436709950020719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342418.P357436709950020719

/-! ## A342418.P7718102619737410945

`∩[A039769(n+1), A342008(n+1)]`
-/

namespace A342418.P7718102619737410945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342418.P7718102619737410945

/-! ## A342418.P12787300380830750024

`∩[A058957(n+1), A342008(n+1)]`
-/

namespace A342418.P12787300380830750024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342418.P12787300380830750024

/-!
# A342419: Sum of A342002 and its Dirichlet inverse.

The programs for A342419, there is no canonical definition to state claims against.
-/

/-! ## A342419.P12825239648139391219

`A342002(n+1)+A342417(n+1)`
-/

namespace A342419.P12825239648139391219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (n + 1) + A342417 (n + 1)

end

end A342419.P12825239648139391219

/-! ## A342419.P14294834928287342642

`A342417(n+1)+A327860(n+1)/A328572(n+1)`
-/

namespace A342419.P14294834928287342642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342417 (n + 1) : ℚ) + (A327860 (n + 1) : ℚ) / (A328572 (n + 1) : ℚ)

end

end A342419.P14294834928287342642

/-! ## A342419.P8843789950781152631

`A344761(A328626(n+1))+A342417(n+1)`
-/

namespace A342419.P8843789950781152631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344761 (A328626 (n + 1)).toNat + A342417 (n + 1)

end

end A342419.P8843789950781152631

/-! ## A342419.P379653370484384665

`A342417(n+1)+A342001(A276086(n+1))`
-/

namespace A342419.P379653370484384665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342417 (n + 1) + A342001 (A276086 (n + 1)).toNat

end

end A342419.P379653370484384665

/-!
# A342420: a(n) = Sum_{k=1..n} (n/gcd(k,n))^(n/gcd(k,n)).

The programs for A342420, there is no canonical definition to state claims against.
-/

/-! ## A342420.P14599349989261983558

`∑{d}[n+1, #^#*A000010(#)]`
-/

namespace A342420.P14599349989261983558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ d : ℤ) * A000010 d

end

end A342420.P14599349989261983558

/-!
# A342421: a(n) = Sum_{k=1..n} (n/gcd(k,n))^(gcd(k,n) - 1).

The programs for A342421, there is no canonical definition to state claims against.
-/

/-! ## A342421.P6762707642833864977

`∑{d}[n+1, A000010(#^ceil(n/#))]`
-/

namespace A342421.P6762707642833864977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((d : ℚ) ^ (⌈(n : ℚ) / (d : ℚ)⌉ : ℤ))).toNat

end

end A342421.P6762707642833864977

/-!
# A342423: a(n) = Sum_{k=1..n} gcd(k,n)^gcd(k,n).

The programs for A342423, there is no canonical definition to state claims against.
-/

/-! ## A342423.P17554995649343290091

`∑{d}[n+1, #^#]+A001222(A340027(n))`
-/

namespace A342423.P17554995649343290091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ d : ℕ) : ℤ) + A001222 (A340027 n).toNat

end

end A342423.P17554995649343290091

/-! ## A342423.P5947480437142329680

`A062796(n+1)+A001222(A337458(n))`
-/

namespace A342423.P5947480437142329680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (n + 1) + A001222 (A337458 n).toNat

end

end A342423.P5947480437142329680

/-! ## A342423.P16682389323708736259

`A062796(n+1)+A001222(A340027(n))`
-/

namespace A342423.P16682389323708736259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (n + 1) + A001222 (A340027 n).toNat

end

end A342423.P16682389323708736259

/-!
# A342424: a(n) = Sum_{k=1..n} gcd(k,n)^(n/gcd(k,n)).

The programs for A342424, the canonical program `A342424.P4079614756208477528` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342424 has offset 1).

The definition of A342424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342424.P4079614756208477528

`∑{d}[n+1, ((n+1)/#)^#*A000010(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A342424

/-- `∑{d}[n+1, ((n+1)/#)^#*A000010(#)]` -/
def P4079614756208477528.Spec : Prop :=
  ∀ n, P4079614756208477528.a n = (A342424 (n + 1) : ℚ)

end A342424

/-!
# A342426: Niven numbers in base 3/2: numbers divisible by their sum of digits in fractional base 3/2 (A244040).

The programs for A342426, there is no canonical definition to state claims against.
-/

/-! ## A342426.P6064945067189898777

`A179884(n+1)-A023961(A328432(n))`
-/

namespace A342426.P6064945067189898777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179884 (n + 1) - A023961 (A328432 n).toNat

end

end A342426.P6064945067189898777

/-!
# A342427: Numbers k such that k and k + 1 are both Niven numbers in base 3/2 (A342426).

The programs for A342427, there is no canonical definition to state claims against.
-/

/-! ## A342427.P13669104932314492131

`∩[A342426(n+1)-1, A342426(n+1)]`
-/

namespace A342427.P13669104932314492131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342426 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342427.P13669104932314492131

/-! ## A342427.P14957621509937083225

`∩[A342426(n+1), A023443(A342426(n+1))]`
-/

namespace A342427.P14957621509937083225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A342426 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342427.P14957621509937083225

/-!
# A342428: Starts of runs of 3 consecutive Niven numbers in base 3/2 (A342426).

The programs for A342428, there is no canonical definition to state claims against.
-/

/-! ## A342428.P7775290001016671274

`∩[A342427(n+1)-1, A342427(n+1)]`
-/

namespace A342428.P7775290001016671274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342427 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342428.P7775290001016671274

/-!
# A342430: Number of prime polyominoes with n cells.

The programs for A342430, there is no canonical definition to state claims against.
-/

/-! ## A342430.P15899029508086394235

`A000105(n)%A045778(A255611(n))`
-/

namespace A342430.P15899029508086394235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000105 n) (A045778 (A255611 n).toNat)

end

end A342430.P15899029508086394235

/-! ## A342430.P11929725990780243119

`A002262(A226876(n)-A275420(2*(n+1)))`
-/

namespace A342430.P11929725990780243119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A226876 n - A275420 (2 * (n + 1))).toNat

end

end A342430.P11929725990780243119

/-! ## A342430.P9623412215219589031

`A004526(and(A167330(n+1), A245898(n+1)))`
-/

namespace A342430.P9623412215219589031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.land (A167330 (n + 1)) (A245898 (n + 1))).toNat

end

end A342430.P9623412215219589031

/-! ## A342430.P6446081855507389722

`(A006765(A028310(n))+1)%A045778(A255611(n))`
-/

namespace A342430.P6446081855507389722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006765 (A028310 n).toNat + 1) (A045778 (A255611 n).toNat)

end

end A342430.P6446081855507389722

/-!
# A342431: Solution to Von Neumann stepping stone puzzle (see Comments).

The programs for A342431, there is no canonical definition to state claims against.
-/

/-! ## A342431.P13472674206044659361

`A310157(n)-A010051(A220771(n))`
-/

namespace A342431.P13472674206044659361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310157 n - A010051 (A220771 n).toNat

end

end A342431.P13472674206044659361

/-! ## A342431.P6086302324220412032

`A109129(A291823(n))+A087160(n+1)`
-/

namespace A342431.P6086302324220412032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A291823 n).toNat + A087160 (n + 1)

end

end A342431.P6086302324220412032

/-! ## A342431.P11938704648192596304

`∑[A260311(A356237(n+1)+A079326(n+2))]`
-/

namespace A342431.P11938704648192596304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (A356237 (n + 1) + A079326 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342431.P11938704648192596304

/-!
# A342432: a(n) = Sum_{k=1..n} gcd(k,n)^(n-2).

The programs for A342432, there is no canonical definition to state claims against.
-/

/-! ## A342432.P3054409662364413321

`A343510(A051890(n))-A159075(n)`
-/

namespace A342432.P3054409662364413321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (A051890 n).toNat - A159075 n

end

end A342432.P3054409662364413321

/-! ## A342432.P11920404777449867683

`∑[A004525(A238020(3*n+1)+1)]`
-/

namespace A342432.P11920404777449867683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A238020 (3 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342432.P11920404777449867683

/-!
# A342433: a(n) = Sum_{k=1..n} gcd(k,n)^(n-1).

The programs for A342433, there is no canonical definition to state claims against.
-/

/-! ## A342433.P16360547975863956506

`A343510(A058331(n))`
-/

namespace A342433.P16360547975863956506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (A058331 n).toNat

end

end A342433.P16360547975863956506

/-! ## A342433.P7913900852896031520

`A343510(A005408(n²))`
-/

namespace A342433.P7913900852896031520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (A005408 (n ^ 2)).toNat

end

end A342433.P7913900852896031520

/-! ## A342433.P9972105521203627315

`A343510(A001105(n)+1)`
-/

namespace A342433.P9972105521203627315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (A001105 n + 1).toNat

end

end A342433.P9972105521203627315

/-! ## A342433.P6475073529856073553

`A343510(or(1, A001105(n)))`
-/

namespace A342433.P6475073529856073553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (Int.lor 1 (A001105 n)).toNat

end

end A342433.P6475073529856073553

/-! ## A342433.P13245049115954212283

`A343510(xor(1, A001105(n)))`
-/

namespace A342433.P13245049115954212283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (Int.xor 1 (A001105 n)).toNat

end

end A342433.P13245049115954212283

/-!
# A342435: a(n) = Sum_{k=1..n} gcd(k,n)^(gcd(k,n) - 2).

The programs for A342435, there is no canonical definition to state claims against.
-/

/-! ## A342435.P10673817200345267960

`xor(A341036(n+1), A341040(A160607(n)))`
-/

namespace A342435.P10673817200345267960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A341036 (n + 1)) (A341040 (A160607 n).toNat)

end

end A342435.P10673817200345267960

/-! ## A342435.P11852173588572795668

`A341036(n+1)-A341027(A028269(n+1))`
-/

namespace A342435.P11852173588572795668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341036 (n + 1) - A341027 ((A028269 (n + 1)).toNat + 220)

end

end A342435.P11852173588572795668

/-! ## A342435.P1907050463046335829

`A321464(n)+A000272(n+1)%A059801(3*n+5)`
-/

namespace A342435.P1907050463046335829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 n + Int.tmod (A000272 (n + 1)) (A059801 (3 * n + 5))

end

end A342435.P1907050463046335829

/-!
# A342436: a(n) = Sum_{k=1..n} gcd(k,n)^(gcd(k,n) - 1).

The programs for A342436, there is no canonical definition to state claims against.
-/

/-! ## A342436.P4288823494204247730

`A046665(A098710(n+1))+∑{d}[n+1, #^#/#]`
-/

namespace A342436.P4288823494204247730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046665 (A098710 (n + 1)).toNat : ℚ) + ∑ d ∈ Nat.divisors (f1 n), (d ^ d : ℚ) / (d : ℚ)

end

end A342436.P4288823494204247730

/-! ## A342436.P4374578250180505581

`A342370(n+1)+A324688(A342318(n))`
-/

namespace A342436.P4374578250180505581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342370 (n + 1) + A324688 (A342318 n).toNat

end

end A342436.P4374578250180505581

/-! ## A342436.P14634089166023030072

`A342370(n+1)+A324688(A342379(n))`
-/

namespace A342436.P14634089166023030072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342370 (n + 1) + A324688 (A342379 n).toNat

end

end A342436.P14634089166023030072

/-!
# A342438: Primitive arithmetic numbers: terms of A003601 not of the form m*q where m, q > 1 are both terms of A003601 with gcd(m,q) = 1.

The programs for A342438, there is no canonical definition to state claims against.
-/

/-! ## A342438.P3904982163188697643

`Δ[n²]-A081603(A038303(n))`
-/

namespace A342438.P3904982163188697643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A081603 (A038303 n).toNat

end

end A342438.P3904982163188697643

/-! ## A342438.P17720923209101293410

`A000005(2^n)+n-A081603(A038303(n))`
-/

namespace A342438.P17720923209101293410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) + ((n : ℤ) - A081603 (A038303 n).toNat)

end

end A342438.P17720923209101293410

/-! ## A342438.P17652017419933457676

`2*n+A007318(∑[n])-A081603(A038303(n))`
-/

namespace A342438.P17652017419933457676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A081603 (A038303 n).toNat)

end

end A342438.P17652017419933457676

/-! ## A342438.P11277215257276035369

`A003601(lt[A008275(n+4), A144284(3*n+1)])`
-/

namespace A342438.P11277215257276035369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144284 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342438.P11277215257276035369

/-! ## A342438.P12714773901267710126

`A007318(C(2, n))+n-A081603(A038303(n))+n`
-/

namespace A342438.P12714773901267710126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + ((n : ℤ) - A081603 (A038303 n).toNat + (n : ℤ))

end

end A342438.P12714773901267710126

/-!
# A342440: The longest length of consecutive primes which sums to prime = A342439(n) < 10^n.

The programs for A342440, there is no canonical definition to state claims against.
-/

/-! ## A342440.P14685514554802358931

`A390027(A132750(n))`
-/

namespace A342440.P14685514554802358931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390027 (A132750 n).toNat

end

end A342440.P14685514554802358931

/-!
# A342442: a(1) = 2; for n > 1, a(n) is the least positive integer not occurring earlier such that a(n-1)*a(n) shares no digit with either a(n-1) or a(n).

The programs for A342442, there is no canonical definition to state claims against.
-/

/-! ## A342442.P12640724518334961488

`record[abs(A108376(n)-n-n)]+2`
-/

namespace A342442.P12640724518334961488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108376 n - (n : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A342442.P12640724518334961488

/-! ## A342442.P1697040313704477275

`A129513(A002998(n+1))`
-/

namespace A342442.P1697040313704477275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129513 (A002998 (n + 1)).toNat

end

end A342442.P1697040313704477275

/-! ## A342442.P9730341381734445668

`A129513(A032555(n+1))`
-/

namespace A342442.P9730341381734445668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129513 (A032555 (n + 1)).toNat

end

end A342442.P9730341381734445668

/-! ## A342442.P11337200824048748461

`A129513(A032557(n+1))`
-/

namespace A342442.P11337200824048748461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129513 (A032557 (n + 1)).toNat

end

end A342442.P11337200824048748461

/-! ## A342442.P3462130293465249970

`A129513(A032559(n+1))`
-/

namespace A342442.P3462130293465249970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129513 (A032559 (n + 1)).toNat

end

end A342442.P3462130293465249970

/-!
# A342443: a(n) is the largest prime < 10^n that is the sum of at least two consecutive primes.

The programs for A342443, there is no canonical definition to state claims against.
-/

/-! ## A342443.P929495620531712057

`A000040(A225137(n+1)-ceil(abs((1-n)/2)))`
-/

namespace A342443.P929495620531712057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A225137 (n + 1) - ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉).toNat

end

end A342443.P929495620531712057

/-!
# A342445: Numbers that are divisible by their nonzero digits but are not divisible by the product of their nonzero digits.

The programs for A342445, there is no canonical definition to state claims against.
-/

/-! ## A342445.P16220171991423912063

`∩[A002796(n+1), A346657(n+1)]`
-/

namespace A342445.P16220171991423912063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342445.P16220171991423912063

/-!
# A342448: Partial sums of A066194.

The programs for A342448, the canonical program `A342448.P7515012020023295061` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342448 has offset 1).

The definition of A342448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342448.P7515012020023295061

`-∑[xor(n, a(floor(n/2)))]` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A342448

/-- `-∑[xor(n, a(floor(n/2)))]` -/
def P7515012020023295061.Spec : Prop :=
  ∀ n, P7515012020023295061.a n = A342448 (n + 1)

theorem P7515012020023295061.correct : P7515012020023295061.Spec := by
  intro n
  simp only [A342448, Nat.add_sub_cancel]

end A342448

/-! ## A342448.P11754920362250514685

`∑[A006068(n)+1]`
-/

namespace A342448.P11754920362250514685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P11754920362250514685

namespace A342448

/-- `∑[A006068(n)+1]` -/
def P11754920362250514685.Spec : Prop :=
  ∀ n, P11754920362250514685.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P15276136698911605962

`∑[A066194(n+1)]`
-/

namespace A342448.P15276136698911605962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P15276136698911605962

namespace A342448

/-- `∑[A066194(n+1)]` -/
def P15276136698911605962.Spec : Prop :=
  ∀ n, P15276136698911605962.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P5560022772510802345

`∑[A268716(n)/2+1]`
-/

namespace A342448.P5560022772510802345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 n : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P5560022772510802345

namespace A342448

/-- `∑[A268716(n)/2+1]` -/
def P5560022772510802345.Spec : Prop :=
  ∀ n, P5560022772510802345.a n = (A342448 (n + 1) : ℚ)

end A342448

/-! ## A342448.P15918857323377974461

`∑[A286546(n)+1+n]`
-/

namespace A342448.P15918857323377974461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286546 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P15918857323377974461

namespace A342448

/-- `∑[A286546(n)+1+n]` -/
def P15918857323377974461.Spec : Prop :=
  ∀ n, P15918857323377974461.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P3385246038133778209

`∑[xor(n, A292600(n))+1]`
-/

namespace A342448.P3385246038133778209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P3385246038133778209

namespace A342448

/-- `∑[xor(n, A292600(n))+1]` -/
def P3385246038133778209.Spec : Prop :=
  ∀ n, P3385246038133778209.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P9464571337004358995

`A268836(n)/2+n+1`
-/

namespace A342448.P9464571337004358995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268836 n : ℚ) / 2 + (n + 1 : ℚ)

end

end A342448.P9464571337004358995

namespace A342448

/-- `A268836(n)/2+n+1` -/
def P9464571337004358995.Spec : Prop :=
  ∀ n, P9464571337004358995.a n = (A342448 (n + 1) : ℚ)

end A342448

/-! ## A342448.P3174200800228116963

`∑[A065620(A000069(n+1))]`
-/

namespace A342448.P3174200800228116963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A000069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P3174200800228116963

namespace A342448

/-- `∑[A065620(A000069(n+1))]` -/
def P3174200800228116963.Spec : Prop :=
  ∀ n, P3174200800228116963.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P9301891721383728669

`∑[A003188(A064707(n))+1]`
-/

namespace A342448.P9301891721383728669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A064707 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P9301891721383728669

namespace A342448

/-- `∑[A003188(A064707(n))+1]` -/
def P9301891721383728669.Spec : Prop :=
  ∀ n, P9301891721383728669.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P6738813093665302040

`∑[A302844(A302845(n))+1]`
-/

namespace A342448.P6738813093665302040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A302845 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P6738813093665302040

namespace A342448

/-- `∑[A302844(A302845(n))+1]` -/
def P6738813093665302040.Spec : Prop :=
  ∀ n, P6738813093665302040.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P198338301849656439

`∑[A104895(A001969(n+1))+1]`
-/

namespace A342448.P198338301849656439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A001969 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P198338301849656439

namespace A342448

/-- `∑[A104895(A001969(n+1))+1]` -/
def P198338301849656439.Spec : Prop :=
  ∀ n, P198338301849656439.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P10401254817138844559

`∑[xor(A001969(n+1), A268716(n))+1]`
-/

namespace A342448.P10401254817138844559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001969 (n + 1)) (A268716 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P10401254817138844559

namespace A342448

/-- `∑[xor(A001969(n+1), A268716(n))+1]` -/
def P10401254817138844559.Spec : Prop :=
  ∀ n, P10401254817138844559.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P9884538332364486570

`∑[xor(A341916(n)%2+2*n, A268716(n))+1]`
-/

namespace A342448.P9884538332364486570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A341916 n) 2 + (2 * n : ℤ)) (A268716 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P9884538332364486570

namespace A342448

/-- `∑[xor(A341916(n)%2+2*n, A268716(n))+1]` -/
def P9884538332364486570.Spec : Prop :=
  ∀ n, P9884538332364486570.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P17937582333720450911

`∑[A292600(2*n)+1]`
-/

namespace A342448.P17937582333720450911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P17937582333720450911

namespace A342448

/-- `∑[A292600(2*n)+1]` -/
def P17937582333720450911.Spec : Prop :=
  ∀ n, P17937582333720450911.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P3219110490842417287

`∑[2*n+1-A292601(2*n)]`
-/

namespace A342448.P3219110490842417287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A292601 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P3219110490842417287

namespace A342448

/-- `∑[2*n+1-A292601(2*n)]` -/
def P3219110490842417287.Spec : Prop :=
  ∀ n, P3219110490842417287.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P7036612213980223294

`∑[A233279(A063946(n))+1]`
-/

namespace A342448.P7036612213980223294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A063946 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P7036612213980223294

namespace A342448

/-- `∑[A233279(A063946(n))+1]` -/
def P7036612213980223294.Spec : Prop :=
  ∀ n, P7036612213980223294.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P15827554731542179220

`∑[A234613(A193231(n))+1]`
-/

namespace A342448.P15827554731542179220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A193231 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P15827554731542179220

namespace A342448

/-- `∑[A234613(A193231(n))+1]` -/
def P15827554731542179220.Spec : Prop :=
  ∀ n, P15827554731542179220.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P4994177188727744306

`∑[A193231(A234612(n))+1]`
-/

namespace A342448.P4994177188727744306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234612 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P4994177188727744306

namespace A342448

/-- `∑[A193231(A234612(n))+1]` -/
def P4994177188727744306.Spec : Prop :=
  ∀ n, P4994177188727744306.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P9195855269518542609

`∑[A268671(A277902(A065621(n+1)))]`
-/

namespace A342448.P9195855269518542609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268671 (A277902 (A065621 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P9195855269518542609

namespace A342448

/-- `∑[A268671(A277902(A065621(n+1)))]` -/
def P9195855269518542609.Spec : Prop :=
  ∀ n, P9195855269518542609.a n = A342448 (n + 1)

end A342448

/-! ## A342448.P2324968724141405347

`∑[A246160(comp[A001969(n+1)])]`
-/

namespace A342448.P2324968724141405347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246160 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342448.P2324968724141405347

namespace A342448

/-- `∑[A246160(comp[A001969(n+1)])]` -/
def P2324968724141405347.Spec : Prop :=
  ∀ n, P2324968724141405347.a n = A342448 (n + 1)

end A342448

/-!
# A342449: a(n) = Sum_{k=1..n} gcd(k,n)^k.

The programs for A342449, there is no canonical definition to state claims against.
-/

/-! ## A342449.P175427634984068970

`A342423(n+1)+A342311(A342318(n))`
-/

namespace A342449.P175427634984068970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342423 (n + 1) + A342311 (A342318 n).toNat

end

end A342449.P175427634984068970

/-! ## A342449.P18288805213116810035

`A342423(n+1)+A004016(A072850(n+4))`
-/

namespace A342449.P18288805213116810035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342423 (n + 1) + A004016 (A072850 (n + 4)).toNat

end

end A342449.P18288805213116810035

/-!
# A342455: The fifth powers of primorials: a(n) = A002110(n)^5.

The programs for A342455, there is no canonical definition to state claims against.
-/

/-! ## A342455.P6864500426351930076

`A002110(n)^5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342455.P6864500426351930076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n ^ 5

end

end A342455.P6864500426351930076

/-! ## A342455.P3930817279238125771

`∏[eq[n, ∏{d}[n, #]]]^5`
-/

namespace A342455.P3930817279238125771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A342455.P3930817279238125771

/-! ## A342455.P3759575330995120160

`record[A108951(n+1)^5]`
-/

namespace A342455.P3759575330995120160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342455.P3759575330995120160

/-! ## A342455.P1745853014354110075

`∏[record[A006530(n+1)^5]]`
-/

namespace A342455.P1745853014354110075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342455.P1745853014354110075

/-! ## A342455.P14098754713037281609

`∏[record[A020639(n+1)^5]]`
-/

namespace A342455.P14098754713037281609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342455.P14098754713037281609

/-!
# A342456: A276086 applied to the primorial inflation of Doudna-tree, where A276086(n) is the prime product form of primorial base expansion of n.

The programs for A342456, there is no canonical definition to state claims against.
-/

/-! ## A342456.P3644387649519965865

`A324886(A005940(1+n))`
-/

namespace A342456.P3644387649519965865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (A005940 (1 + n)).toNat

end

end A342456.P3644387649519965865

/-! ## A342456.P291973294083413207

`A276086(A329886(n))`
-/

namespace A342456.P291973294083413207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A329886 n).toNat

end

end A342456.P291973294083413207

/-! ## A342456.P8394333334285906376

`A324886(A324394(n)*A324395(n))`
-/

namespace A342456.P8394333334285906376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (A324394 n * A324395 n).toNat

end

end A342456.P8394333334285906376

/-! ## A342456.P9173177515004875372

`A324886(A337375(n)*A337376(n))`
-/

namespace A342456.P9173177515004875372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (A337375 n * A337376 n).toNat

end

end A342456.P9173177515004875372

/-! ## A342456.P15551450480603372378

`A324886((A324055(n)+A324054(n))/2)`
-/

namespace A342456.P15551450480603372378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A342456.P15551450480603372378

/-!
# A342457: Terms of A342456 prime-shifted so far towards lower primes that they become even: a(n) = 2*A246277(A342456(n)).

The programs for A342457, there is no canonical definition to state claims against.
-/

/-! ## A342457.P14372910194705672452

`2*A329038(A329886(n))`
-/

namespace A342457.P14372910194705672452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329038 (A329886 n).toNat

end

end A342457.P14372910194705672452

/-!
# A342458: a(n) = gcd(A001615(n), A003415(n)), where A001615 is Dedekind psi, and A003415 is the arithmetic derivative of n.

The programs for A342458, the canonical program `A342458.P9558356536123007435` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342458 has offset 1).

The definition of A342458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342458.P13760096286397697677

`A003557(n+1)*A342459(n+1)`
-/

namespace A342458.P13760096286397697677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A342459 (n + 1)

end

end A342458.P13760096286397697677

namespace A342458

/-- `A003557(n+1)*A342459(n+1)` -/
def P13760096286397697677.Spec : Prop :=
  ∀ n, P13760096286397697677.a n = A342458 (n + 1)

end A342458

/-! ## A342458.P9558356536123007435

`gcd(∑[A258057(n)], A001615(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A342458

/-- `gcd(∑[A258057(n)], A001615(n+1))` -/
def P9558356536123007435.Spec : Prop :=
  ∀ n, (P9558356536123007435.a n : ℤ) = A342458 (n + 1)

theorem P9558356536123007435.correct : P9558356536123007435.Spec := by
  intro n
  simp only [A342458, Nat.add_sub_cancel]

end A342458

/-! ## A342458.P11304010377484225167

`A001615(n+1)/A048250(n+1)*A342459(n+1)`
-/

namespace A342458.P11304010377484225167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A342459 (n + 1) : ℚ)

end

end A342458.P11304010377484225167

namespace A342458

/-- `A001615(n+1)/A048250(n+1)*A342459(n+1)` -/
def P11304010377484225167.Spec : Prop :=
  ∀ n, P11304010377484225167.a n = (A342458 (n + 1) : ℚ)

end A342458

/-! ## A342458.P10470726113061893644

`A000010(n+1)/A173557(n+1)*A342459(n+1)`
-/

namespace A342458.P10470726113061893644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ) * (A342459 (n + 1) : ℚ)

end

end A342458.P10470726113061893644

namespace A342458

/-- `A000010(n+1)/A173557(n+1)*A342459(n+1)` -/
def P10470726113061893644.Spec : Prop :=
  ∀ n, P10470726113061893644.a n = (A342458 (n + 1) : ℚ)

end A342458

/-! ## A342458.P16745198686138624439

`A342413(n+1)/A342416(n+1)*A342459(n+1)`
-/

namespace A342458.P16745198686138624439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342413 (n + 1) : ℚ) / (A342416 (n + 1) : ℚ) * (A342459 (n + 1) : ℚ)

end

end A342458.P16745198686138624439

namespace A342458

/-- `A342413(n+1)/A342416(n+1)*A342459(n+1)` -/
def P16745198686138624439.Spec : Prop :=
  ∀ n, P16745198686138624439.a n = (A342458 (n + 1) : ℚ)

end A342458

/-! ## A342458.P11094702280330518397

`gcd(A048250(n+1), A342001(n+1))*A003557(n+1)`
-/

namespace A342458.P11094702280330518397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A048250 (n + 1)) (A342001 (n + 1)) : ℤ) * A003557 (n + 1)

end

end A342458.P11094702280330518397

namespace A342458

/-- `gcd(A048250(n+1), A342001(n+1))*A003557(n+1)` -/
def P11094702280330518397.Spec : Prop :=
  ∀ n, P11094702280330518397.a n = A342458 (n + 1)

end A342458

/-!
# A342459: a(n) = gcd(A048250(n), A342001(n)).

The programs for A342459, the canonical program `A342459.P5259144866708303854` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342459 has offset 1).

The definition of A342459 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A342458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342459.P5259144866708303854

`A342458(n+1)/A003557(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A342459

/-- `A342458(n+1)/A003557(n+1)` -/
def P5259144866708303854.Spec : Prop :=
  ∀ n, P5259144866708303854.a n = (A342459 (n + 1) : ℚ)

end A342459

/-! ## A342459.P620409289771443930

`gcd(A048250(n+1), A342001(n+1))`
-/

namespace A342459.P620409289771443930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 (n + 1)) (A342001 (n + 1))

end

end A342459.P620409289771443930

namespace A342459

/-- `gcd(A048250(n+1), A342001(n+1))` -/
def P620409289771443930.Spec : Prop :=
  ∀ n, (P620409289771443930.a n : ℤ) = A342459 (n + 1)

end A342459

/-! ## A342459.P7526924559211121419

`A342458(n+1)/(A336551(n+1)+1)`
-/

namespace A342459.P7526924559211121419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342458 (n + 1) : ℚ) / (A336551 (n + 1) + 1 : ℚ)

end

end A342459.P7526924559211121419

namespace A342459

/-- `A342458(n+1)/(A336551(n+1)+1)` -/
def P7526924559211121419.Spec : Prop :=
  ∀ n, P7526924559211121419.a n = (A342459 (n + 1) : ℚ)

end A342459

/-! ## A342459.P15730966040993819335

`A342458(n+1)/round((n+1)²/A064549(n+1))`
-/

namespace A342459.P15730966040993819335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342458 (n + 1) : ℚ) / (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A064549 (n + 1) : ℚ)) : ℚ)

end

end A342459.P15730966040993819335

namespace A342459

/-- `A342458(n+1)/round((n+1)²/A064549(n+1))` -/
def P15730966040993819335.Spec : Prop :=
  ∀ n, P15730966040993819335.a n = (A342459 (n + 1) : ℚ)

end A342459

/-! ## A342459.P13897524171291561500

`A342458(n+1)/abs((n+1)/(n+1-A066503(n+1)))`
-/

namespace A342459.P13897524171291561500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342458 (n + 1) : ℚ) / |(n + 1 : ℚ) / ((n + 1 : ℤ) - A066503 (n + 1) : ℚ)|

end

end A342459.P13897524171291561500

namespace A342459

/-- `A342458(n+1)/abs((n+1)/(n+1-A066503(n+1)))` -/
def P13897524171291561500.Spec : Prop :=
  ∀ n, P13897524171291561500.a n = (A342459 (n + 1) : ℚ)

end A342459

/-! ## A342459.P13066934481367129974

`A048250(n+1)/A001615(n+1)*A342458(n+1)`
-/

namespace A342459.P13066934481367129974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A342458 (n + 1) : ℚ)

end

end A342459.P13066934481367129974

namespace A342459

/-- `A048250(n+1)/A001615(n+1)*A342458(n+1)` -/
def P13066934481367129974.Spec : Prop :=
  ∀ n, P13066934481367129974.a n = (A342459 (n + 1) : ℚ)

end A342459

/-! ## A342459.P1147964108011928509

`A342458(n+1)/A348492(n+1)*A348494(n+1)`
-/

namespace A342459.P1147964108011928509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342458 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ) * (A348494 (n + 1) : ℚ)

end

end A342459.P1147964108011928509

namespace A342459

/-- `A342458(n+1)/A348492(n+1)*A348494(n+1)` -/
def P1147964108011928509.Spec : Prop :=
  ∀ n, P1147964108011928509.a n = (A342459 (n + 1) : ℚ)

end A342459

/-! ## A342459.P10365815528605931916

`A342458(n+1)/A348495(n+1)*A348496(n+1)`
-/

namespace A342459.P10365815528605931916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342458 (n + 1) : ℚ) / (A348495 (n + 1) : ℚ) * (A348496 (n + 1) : ℚ)

end

end A342459.P10365815528605931916

namespace A342459

/-- `A342458(n+1)/A348495(n+1)*A348496(n+1)` -/
def P10365815528605931916.Spec : Prop :=
  ∀ n, P10365815528605931916.a n = (A342459 (n + 1) : ℚ)

end A342459

/-!
# A342460: a(n) = 1 if n > 1 and is divisible by the sum of its prime factors (with repetition), otherwise 0.

The programs for A342460, the canonical program `A342460.P5036170238459632379` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342460 has offset 1).

The definition of A342460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342460.P6139373881381160303

`char[A036844(n+1)-1]`
-/

namespace A342460.P6139373881381160303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A342460.P6139373881381160303

namespace A342460

/-- `char[A036844(n+1)-1]` -/
def P6139373881381160303.Spec : Prop :=
  ∀ n, (P6139373881381160303.a n : ℤ) = A342460 (n + 1)

end A342460

/-! ## A342460.P4289037234036764766

`char[eq[1, A082343(n+1)]]`
-/

namespace A342460.P4289037234036764766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A342460.P4289037234036764766

namespace A342460

/-- `char[eq[1, A082343(n+1)]]` -/
def P4289037234036764766.Spec : Prop :=
  ∀ n, (P4289037234036764766.a n : ℤ) = A342460 (n + 1)

end A342460

/-! ## A342460.P17902127220117947453

`char[eq[n+1, lcm(n+1, A001414(n+1))]]`
-/

namespace A342460.P17902127220117947453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001414 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A342460.P17902127220117947453

namespace A342460

/-- `char[eq[n+1, lcm(n+1, A001414(n+1))]]` -/
def P17902127220117947453.Spec : Prop :=
  ∀ n, (P17902127220117947453.a n : ℤ) = A342460 (n + 1)

end A342460

/-! ## A342460.P5036170238459632379

`A063524(A082343(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A342460

/-- `A063524(A082343(n+1))` -/
def P5036170238459632379.Spec : Prop :=
  ∀ n, P5036170238459632379.a n = A342460 (n + 1)

theorem P5036170238459632379.correct : P5036170238459632379.Spec := by
  intro n
  simp only [A342460, Nat.add_sub_cancel]

end A342460

/-! ## A342460.P4778746993522726316

`A000007((1-A329656(n+1))²)`
-/

namespace A342460.P4778746993522726316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((1 - A329656 (n + 1)) ^ 2).toNat

end

end A342460.P4778746993522726316

namespace A342460

/-- `A000007((1-A329656(n+1))²)` -/
def P4778746993522726316.Spec : Prop :=
  ∀ n, P4778746993522726316.a n = A342460 (n + 1)

end A342460

/-! ## A342460.P7373200759667910513

`∏{d}[1-A082343(n+1), A082343(#)]`
-/

namespace A342460.P7373200759667910513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A082343 d

end

end A342460.P7373200759667910513

namespace A342460

/-- `∏{d}[1-A082343(n+1), A082343(#)]` -/
def P7373200759667910513.Spec : Prop :=
  ∀ n, P7373200759667910513.a n = A342460 (n + 1)

end A342460

/-! ## A342460.P11239181727513814240

`A238525(a(n-1)+2)^A238525(n+1)` with `a(0)=0`
-/

namespace A342460.P11239181727513814240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A238525 (SequenceMachineLib.roundAway (a (n - 1) + 2)).toNat : ℚ) ^ (A238525 (n + 1) : ℤ)

end

end A342460.P11239181727513814240

namespace A342460

/-- `A238525(a(n-1)+2)^A238525(n+1)` -/
def P11239181727513814240.Spec : Prop :=
  ∀ n, P11239181727513814240.a n = (A342460 (n + 1) : ℚ)

end A342460

/-! ## A342460.P16424623670584247302

`A002265(a(n-1))^((n+1)%A001414(n+1))` with `a(0)=0`
-/

namespace A342460.P16424623670584247302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A002265 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (Int.tmod (n + 1 : ℤ) (A001414 (n + 1)) : ℤ)

end

end A342460.P16424623670584247302

namespace A342460

/-- `A002265(a(n-1))^((n+1)%A001414(n+1))` -/
def P16424623670584247302.Spec : Prop :=
  ∀ n, P16424623670584247302.a n = (A342460 (n + 1) : ℚ)

end A342460

/-! ## A342460.P17196347086648491550

`∏{e}[A329656(n+1), A000007(#)]-A000007(n)`
-/

namespace A342460.P17196347086648491550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000007 (Nat.factorization (f1 n).natAbs p) - A000007 n

end

end A342460.P17196347086648491550

namespace A342460

/-- `∏{e}[A329656(n+1), A000007(#)]-A000007(n)` -/
def P17196347086648491550.Spec : Prop :=
  ∀ n, P17196347086648491550.a n = A342460 (n + 1)

end A342460

/-! ## A342460.P12851819797477129830

`A000007(and(n+1, 1-A329656(n+1)))`
-/

namespace A342460.P12851819797477129830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (n + 1 : ℤ) (1 - A329656 (n + 1))).toNat

end

end A342460.P12851819797477129830

namespace A342460

/-- `A000007(and(n+1, 1-A329656(n+1)))` -/
def P12851819797477129830.Spec : Prop :=
  ∀ n, P12851819797477129830.a n = A342460 (n + 1)

end A342460

/-! ## A342460.P851726446771216189

`A209229(A082343(n+1)²+3)`
-/

namespace A342460.P851726446771216189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A082343 (n + 1) ^ 2 + 3).toNat

end

end A342460.P851726446771216189

namespace A342460

/-- `A209229(A082343(n+1)²+3)` -/
def P851726446771216189.Spec : Prop :=
  ∀ n, P851726446771216189.a n = A342460 (n + 1)

end A342460

/-! ## A342460.P14466058666134176874

`A209229((A082343(n+1)+1)*A082343(n+1))`
-/

namespace A342460.P14466058666134176874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 ((A082343 (n + 1) + 1) * A082343 (n + 1)).toNat

end

end A342460.P14466058666134176874

namespace A342460

/-- `A209229((A082343(n+1)+1)*A082343(n+1))` -/
def P14466058666134176874.Spec : Prop :=
  ∀ n, P14466058666134176874.a n = A342460 (n + 1)

end A342460

/-!
# A342461: Number of nonzero digits when A329886(n) is written in primorial base, where A329886 is the primorial inflation of Doudna-tree.

The programs for A342461, the canonical program `A342461.P8411652038842845370` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342461 has offset 0).

The definition of A342461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342461.P17571443144159816648

`A329040(A005940(1+n))`
-/

namespace A342461.P17571443144159816648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A005940 (1 + n)).toNat

end

end A342461.P17571443144159816648

namespace A342461

/-- `A329040(A005940(1+n))` -/
def P17571443144159816648.Spec : Prop :=
  ∀ n, P17571443144159816648.a n = A342461 n

end A342461

/-! ## A342461.P15696654106782011865

`A329040(A324394(n)*A324395(n))`
-/

namespace A342461.P15696654106782011865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A324394 n * A324395 n).toNat

end

end A342461.P15696654106782011865

namespace A342461

/-- `A329040(A324394(n)*A324395(n))` -/
def P15696654106782011865.Spec : Prop :=
  ∀ n, P15696654106782011865.a n = A342461 n

end A342461

/-! ## A342461.P7522387332644527770

`A329040(A337375(n)*A337376(n))`
-/

namespace A342461.P7522387332644527770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A337375 n * A337376 n).toNat

end

end A342461.P7522387332644527770

namespace A342461

/-- `A329040(A337375(n)*A337376(n))` -/
def P7522387332644527770.Spec : Prop :=
  ∀ n, P7522387332644527770.a n = A342461 n

end A342461

/-! ## A342461.P17535845669746975325

`A329040(A340362(n+1)+A324106(n+1))`
-/

namespace A342461.P17535845669746975325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A342461.P17535845669746975325

namespace A342461

/-- `A329040(A340362(n+1)+A324106(n+1))` -/
def P17535845669746975325.Spec : Prop :=
  ∀ n, P17535845669746975325.a n = A342461 n

end A342461

/-! ## A342461.P24045033864848680

`A329040(A340364(n+1)*A340365(n+1))`
-/

namespace A342461.P24045033864848680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A342461.P24045033864848680

namespace A342461

/-- `A329040(A340364(n+1)*A340365(n+1))` -/
def P24045033864848680.Spec : Prop :=
  ∀ n, P24045033864848680.a n = A342461 n

end A342461

/-! ## A342461.P8411652038842845370

`A365460(A253563(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342461

/-- `A365460(A253563(n))` -/
def P8411652038842845370.Spec : Prop :=
  ∀ n, P8411652038842845370.a n = A342461 n

theorem P8411652038842845370.correct : P8411652038842845370.Spec := by
  intro n
  simp only [A342461]

end A342461

/-! ## A342461.P9434228383753455805

`A329040(A332815(n))%A342457(n)`
-/

namespace A342461.P9434228383753455805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329040 (A332815 n).toNat) (A342457 n)

end

end A342461.P9434228383753455805

namespace A342461

/-- `A329040(A332815(n))%A342457(n)` -/
def P9434228383753455805.Spec : Prop :=
  ∀ n, P9434228383753455805.a n = A342461 n

end A342461

/-!
# A342462: Sum of digits when A329886(n) is written in primorial base, where A329886 is the primorial inflation of Doudna-tree.

The programs for A342462, the canonical program `A342462.P8891341993698202582` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342462 has offset 0).

The definition of A342462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A329886, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342462.P9390569323892104720

`A324888(A005940(1+n))`
-/

namespace A342462.P9390569323892104720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (A005940 (1 + n)).toNat

end

end A342462.P9390569323892104720

namespace A342462

/-- `A324888(A005940(1+n))` -/
def P9390569323892104720.Spec : Prop :=
  ∀ n, P9390569323892104720.a n = A342462 n

end A342462

/-! ## A342462.P16939524474694848836

`A001222(A342457(n))`
-/

namespace A342462.P16939524474694848836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A342457 n).toNat

end

end A342462.P16939524474694848836

namespace A342462

/-- `A001222(A342457(n))` -/
def P16939524474694848836.Spec : Prop :=
  ∀ n, P16939524474694848836.a n = A342462 n

end A342462

/-! ## A342462.P8891341993698202582

`A276150(A329886(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A342462

/-- `A276150(A329886(n))` -/
def P8891341993698202582.Spec : Prop :=
  ∀ n, P8891341993698202582.a n = A342462 n

theorem P8891341993698202582.correct : P8891341993698202582.Spec := by
  intro n
  simp only [A342462]

end A342462

/-! ## A342462.P7649434740522425633

`A161511(n)-A329622(A005940(n+1))`
-/

namespace A342462.P7649434740522425633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n - A329622 (A005940 (n + 1)).toNat

end

end A342462.P7649434740522425633

namespace A342462

/-- `A161511(n)-A329622(A005940(n+1))` -/
def P7649434740522425633.Spec : Prop :=
  ∀ n, P7649434740522425633.a n = A342462 n

end A342462

/-! ## A342462.P10951761688277008666

`A161511(n)-A329622((A324055(n)+A324054(n))/2)`
-/

namespace A342462.P10951761688277008666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n - A329622 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A342462.P10951761688277008666

namespace A342462

/-- `A161511(n)-A329622((A324055(n)+A324054(n))/2)` -/
def P10951761688277008666.Spec : Prop :=
  ∀ n, P10951761688277008666.a n = A342462 n

end A342462

/-! ## A342462.P9861692693419724916

`A365461(A253563(n))`
-/

namespace A342462.P9861692693419724916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365461 (A253563 n).toNat

end

end A342462.P9861692693419724916

namespace A342462

/-- `A365461(A253563(n))` -/
def P9861692693419724916.Spec : Prop :=
  ∀ n, P9861692693419724916.a n = A342462 n

end A342462

/-! ## A342462.P13199026852660734917

`A324888(A324394(n)*A324395(n))`
-/

namespace A342462.P13199026852660734917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (A324394 n * A324395 n).toNat

end

end A342462.P13199026852660734917

namespace A342462

/-- `A324888(A324394(n)*A324395(n))` -/
def P13199026852660734917.Spec : Prop :=
  ∀ n, P13199026852660734917.a n = A342462 n

end A342462

/-! ## A342462.P15622588164768085742

`A324888(A337375(n)*A337376(n))`
-/

namespace A342462.P15622588164768085742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (A337375 n * A337376 n).toNat

end

end A342462.P15622588164768085742

namespace A342462

/-- `A324888(A337375(n)*A337376(n))` -/
def P15622588164768085742.Spec : Prop :=
  ∀ n, P15622588164768085742.a n = A342462 n

end A342462

/-!
# A342463: a(n) = A342001(A342456(n)); "wild part" of the arithmetic derivative of A342456(n).

The programs for A342463, there is no canonical definition to state claims against.
-/

/-! ## A342463.P349718151515743357

`A342920(A005940(1+n))`
-/

namespace A342463.P349718151515743357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342920 (A005940 (1 + n)).toNat

end

end A342463.P349718151515743357

/-! ## A342463.P11579654025260417353

`A342002(A329886(n))`
-/

namespace A342463.P11579654025260417353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A329886 n).toNat

end

end A342463.P11579654025260417353

/-! ## A342463.P14157533097606435313

`A342920(A292602(4*n+3))`
-/

namespace A342463.P14157533097606435313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342920 (A292602 (4 * n + 3)).toNat

end

end A342463.P14157533097606435313

/-! ## A342463.P87453534638829185

`A342920(A324394(n)*A324395(n))`
-/

namespace A342463.P87453534638829185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342920 (A324394 n * A324395 n).toNat

end

end A342463.P87453534638829185

/-! ## A342463.P17513851481473048145

`A342920(A337375(n)*A337376(n))`
-/

namespace A342463.P17513851481473048145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342920 (A337375 n * A337376 n).toNat

end

end A342463.P17513851481473048145

/-! ## A342463.P7811501097526171054

`A342920((A324055(n)+A324054(n))/2)`
-/

namespace A342463.P7811501097526171054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342920 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A342463.P7811501097526171054

/-! ## A342463.P14768827529835024480

`A342920(A340362(n+1)+A324106(n+1))`
-/

namespace A342463.P14768827529835024480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342920 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A342463.P14768827529835024480

/-! ## A342463.P13269872053901584634

`A342920(A324641(n+1)-A324640(n+1))`
-/

namespace A342463.P13269872053901584634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342920 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A342463.P13269872053901584634

/-!
# A342464: Largest digit value when A329886(n) is written in primorial base, where A329886 is the primorial inflation of Doudna-tree.

The programs for A342464, there is no canonical definition to state claims against.
-/

/-! ## A342464.P10539907823502533028

`A329344(A005940(1+n))`
-/

namespace A342464.P10539907823502533028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (A005940 (1 + n)).toNat

end

end A342464.P10539907823502533028

/-! ## A342464.P7628047389321257062

`A328114(A329886(n))`
-/

namespace A342464.P7628047389321257062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A329886 n).toNat

end

end A342464.P7628047389321257062

/-! ## A342464.P14620377215788427690

`A329344(A292602(4*n+3))`
-/

namespace A342464.P14620377215788427690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (A292602 (4 * n + 3)).toNat

end

end A342464.P14620377215788427690

/-! ## A342464.P6993012811247754449

`A329344(A324394(n)*A324395(n))`
-/

namespace A342464.P6993012811247754449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (A324394 n * A324395 n).toNat

end

end A342464.P6993012811247754449

/-! ## A342464.P10408198994187049321

`A329344(A337375(n)*A337376(n))`
-/

namespace A342464.P10408198994187049321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (A337375 n * A337376 n).toNat

end

end A342464.P10408198994187049321

/-! ## A342464.P8414116742944388793

`A329344((A324055(n)+A324054(n))/2)`
-/

namespace A342464.P8414116742944388793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A342464.P8414116742944388793

/-! ## A342464.P10005737363132799506

`A329344(A340362(n+1)+A324106(n+1))`
-/

namespace A342464.P10005737363132799506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A342464.P10005737363132799506

/-! ## A342464.P17851253042098778613

`A329344(A324641(n+1)-A324640(n+1))`
-/

namespace A342464.P17851253042098778613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A342464.P17851253042098778613

/-! ## A342464.P3212085999978124551

`A329344(A340362(n+1)+A340364(n+1)*A340366(n+1))`
-/

namespace A342464.P3212085999978124551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (A340362 (n + 1) + A340364 (n + 1) * A340366 (n + 1)).toNat

end

end A342464.P3212085999978124551

/-!
# A342465: a(n) = A329697(A337194(n)).

The programs for A342465, the canonical program `A342465.P10365381412380769729` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342465 has offset 1).

The definition of A342465 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, A337194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342465.P15734257753767338658

`A329697(A336698(n+1))`
-/

namespace A342465.P15734257753767338658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A336698 (n + 1)).toNat

end

end A342465.P15734257753767338658

namespace A342465

/-- `A329697(A336698(n+1))` -/
def P15734257753767338658.Spec : Prop :=
  ∀ n, P15734257753767338658.a n = A342465 (n + 1)

end A342465

/-! ## A342465.P10365381412380769729

`A329697(A337194(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342465

/-- `A329697(A337194(n+1))` -/
def P10365381412380769729.Spec : Prop :=
  ∀ n, P10365381412380769729.a n = A342465 (n + 1)

theorem P10365381412380769729.correct : P10365381412380769729.Spec := by
  intro n
  simp only [A342465, Nat.add_sub_cancel]

end A342465

/-! ## A342465.P18116793996801832893

`A329697(A161942(n+1)+1)`
-/

namespace A342465.P18116793996801832893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A161942 (n + 1) + 1).toNat

end

end A342465.P18116793996801832893

namespace A342465

/-- `A329697(A161942(n+1)+1)` -/
def P18116793996801832893.Spec : Prop :=
  ∀ n, P18116793996801832893.a n = A342465 (n + 1)

end A342465

/-! ## A342465.P11676435852616089817

`A329697(A000265(∑{d}[n+1, #])+1)`
-/

namespace A342465.P11676435852616089817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A000265 (∑ d ∈ Nat.divisors (f1 n), d) + 1).toNat

end

end A342465.P11676435852616089817

namespace A342465

/-- `A329697(A000265(∑{d}[n+1, #])+1)` -/
def P11676435852616089817.Spec : Prop :=
  ∀ n, P11676435852616089817.a n = A342465 (n + 1)

end A342465

/-! ## A342465.P1167421866627697560

`A329697(A110654(A161942(n+1)))`
-/

namespace A342465.P1167421866627697560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A110654 (A161942 (n + 1)).toNat).toNat

end

end A342465.P1167421866627697560

namespace A342465

/-- `A329697(A110654(A161942(n+1)))` -/
def P1167421866627697560.Spec : Prop :=
  ∀ n, P1167421866627697560.a n = A342465 (n + 1)

end A342465

/-! ## A342465.P18178890564689712872

`A329697(A003602(∑{d}[n+1, #]))`
-/

namespace A342465.P18178890564689712872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A003602 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A342465.P18178890564689712872

namespace A342465

/-- `A329697(A003602(∑{d}[n+1, #]))` -/
def P18178890564689712872.Spec : Prop :=
  ∀ n, P18178890564689712872.a n = A342465 (n + 1)

end A342465

/-! ## A342465.P12998529521313210731

`A072671(n)%A337199(n+1)`
-/

namespace A342465.P12998529521313210731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072671 n) (A337199 (n + 1))

end

end A342465.P12998529521313210731

namespace A342465

/-- `A072671(n)%A337199(n+1)` -/
def P12998529521313210731.Spec : Prop :=
  ∀ n, P12998529521313210731.a n = A342465 (n + 1)

end A342465

/-! ## A342465.P16678766044329649981

`(A337199(n+1)-1)%A151942(A151942(n+1)+1)`
-/

namespace A342465.P16678766044329649981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337199 (n + 1) - 1) (A151942 (A151942 (n + 1) + 1).toNat)

end

end A342465.P16678766044329649981

namespace A342465

/-- `(A337199(n+1)-1)%A151942(A151942(n+1)+1)` -/
def P16678766044329649981.Spec : Prop :=
  ∀ n, P16678766044329649981.a n = A342465 (n + 1)

end A342465

/-! ## A342465.P513127700824339693

`A045535(n)%A337199(n+1)`
-/

namespace A342465.P513127700824339693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045535 n) (A337199 (n + 1))

end

end A342465.P513127700824339693

namespace A342465

/-- `A045535(n)%A337199(n+1)` -/
def P513127700824339693.Spec : Prop :=
  ∀ n, P513127700824339693.a n = A342465 (n + 1)

end A342465

/-!
# A342466: a(n) = A336466(1+A000265(sigma(n))), where A336466 is fully multiplicative with a(p) = A000265(p-1) for p prime, and A000265(k) is the odd part of k.

The programs for A342466, the canonical program `A342466.P10072051426789715214` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342466 has offset 1).

The definition of A342466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A336698, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342466.P10072051426789715214

`A336466(A336698(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A342466

/-- `A336466(A336698(n+1))` -/
def P10072051426789715214.Spec : Prop :=
  ∀ n, P10072051426789715214.a n = A342466 (n + 1)

theorem P10072051426789715214.correct : P10072051426789715214.Spec := by
  intro n
  simp only [A342466, Nat.add_sub_cancel]

end A342466

/-! ## A342466.P18246360854199566098

`A000265(A003958(1+A161942(n+1)))`
-/

namespace A342466.P18246360854199566098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003958 (1 + A161942 (n + 1)).toNat).toNat

end

end A342466.P18246360854199566098

namespace A342466

/-- `A000265(A003958(1+A161942(n+1)))` -/
def P18246360854199566098.Spec : Prop :=
  ∀ n, P18246360854199566098.a n = A342466 (n + 1)

end A342466

/-! ## A342466.P6881430200824468438

`A336466(A337194(n+1))`
-/

namespace A342466.P6881430200824468438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A337194 (n + 1)).toNat

end

end A342466.P6881430200824468438

namespace A342466

/-- `A336466(A337194(n+1))` -/
def P6881430200824468438.Spec : Prop :=
  ∀ n, P6881430200824468438.a n = A342466 (n + 1)

end A342466

/-! ## A342466.P6429274856267877583

`A336466(A161942(n+1)+1)`
-/

namespace A342466.P6429274856267877583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A161942 (n + 1) + 1).toNat

end

end A342466.P6429274856267877583

namespace A342466

/-- `A336466(A161942(n+1)+1)` -/
def P6429274856267877583.Spec : Prop :=
  ∀ n, P6429274856267877583.a n = A342466 (n + 1)

end A342466

/-! ## A342466.P333291959235063799

`A336466(2*(A000265(∑{d}[n+1, #])+1))`
-/

namespace A342466.P333291959235063799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (2 * (A000265 (∑ d ∈ Nat.divisors (f1 n), d) + 1)).toNat

end

end A342466.P333291959235063799

namespace A342466

/-- `A336466(2*(A000265(∑{d}[n+1, #])+1))` -/
def P333291959235063799.Spec : Prop :=
  ∀ n, P333291959235063799.a n = A342466 (n + 1)

end A342466

/-! ## A342466.P12110341084849254886

`A336466(A003602(∑{d}[n+1, #]))`
-/

namespace A342466.P12110341084849254886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A003602 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A342466.P12110341084849254886

namespace A342466

/-- `A336466(A003602(∑{d}[n+1, #]))` -/
def P12110341084849254886.Spec : Prop :=
  ∀ n, P12110341084849254886.a n = A342466 (n + 1)

end A342466

/-!
# A342469: Positive numbers that are triangular, square or pentagonal.

The programs for A342469, the canonical program `A342469.P18019370537787846838` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342469 has offset 1).

The definition of A342469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342469.P18019370537787846838

`∪[A005214(n+1), ∑[a(n-1)+3]]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342469

/-- `∪[A005214(n+1), ∑[a(n-1)+3]]` -/
def P18019370537787846838.Spec : Prop :=
  ∀ n, (P18019370537787846838.a n : ℤ) = A342469 (n + 1)

theorem P18019370537787846838.correct : P18019370537787846838.Spec := by
  intro n
  simp only [A342469, Nat.add_sub_cancel]

end A342469

/-! ## A342469.P3686821898608423507

`∪[A005214(n+1), ∑[A016777(n)]]`
-/

namespace A342469.P3686821898608423507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342469.P3686821898608423507

namespace A342469

/-- `∪[A005214(n+1), ∑[A016777(n)]]` -/
def P3686821898608423507.Spec : Prop :=
  ∀ n, (P3686821898608423507.a n : ℤ) = A342469 (n + 1)

end A342469

/-! ## A342469.P9837255970416662047

`lt[0, char[A267322(n)]]`
-/

namespace A342469.P9837255970416662047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267322 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342469.P9837255970416662047

namespace A342469

/-- `lt[0, char[A267322(n)]]` -/
def P9837255970416662047.Spec : Prop :=
  ∀ n, (P9837255970416662047.a n : ℤ) = A342469 (n + 1)

end A342469

/-! ## A342469.P17699756039248985768

`eq[1, char[A267322(n+1)]]`
-/

namespace A342469.P17699756039248985768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267322 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342469.P17699756039248985768

namespace A342469

/-- `eq[1, char[A267322(n+1)]]` -/
def P17699756039248985768.Spec : Prop :=
  ∀ n, (P17699756039248985768.a n : ℤ) = A342469 (n + 1)

end A342469

/-! ## A342469.P10522140389698125596

`eq[char[A267322(n)], A267318(3*n)]`
-/

namespace A342469.P10522140389698125596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267322 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A342469.P10522140389698125596

namespace A342469

/-- `eq[char[A267322(n)], A267318(3*n)]` -/
def P10522140389698125596.Spec : Prop :=
  ∀ n, (P10522140389698125596.a n : ℤ) = A342469 (n + 1)

end A342469

/-!
# A342470: a(n) = Sum_{d|n} phi(d)^4.

The programs for A342470, the canonical program `A342470.P9427416455520986583` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342470 has offset 1).

The definition of A342470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342470.P9427416455520986583

`∑{d}[n+1, A361148(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A342470

/-- `∑{d}[n+1, A361148(#)]` -/
def P9427416455520986583.Spec : Prop :=
  ∀ n, P9427416455520986583.a n = A342470 (n + 1)

theorem P9427416455520986583.correct : P9427416455520986583.Spec := by
  intro n
  simp only [A342470, Nat.add_sub_cancel]

end A342470

/-! ## A342470.P1652237492256398037

`∑{d}[n+1, A127473(#)²]`
-/

namespace A342470.P1652237492256398037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127473 d ^ 2

end

end A342470.P1652237492256398037

namespace A342470

/-- `∑{d}[n+1, A127473(#)²]` -/
def P1652237492256398037.Spec : Prop :=
  ∀ n, P1652237492256398037.a n = A342470 (n + 1)

end A342470

/-! ## A342470.P2285810494831413333

`∑{d}[n+1, A000010(#)^4]`
-/

namespace A342470.P2285810494831413333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ 4

end

end A342470.P2285810494831413333

namespace A342470

/-- `∑{d}[n+1, A000010(#)^4]` -/
def P2285810494831413333.Spec : Prop :=
  ∀ n, P2285810494831413333.a n = A342470 (n + 1)

end A342470

/-! ## A342470.P1121738691726166860

`∑{d}[n+1, A000010(lcm(2, #))²²]`
-/

namespace A342470.P1121738691726166860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (Nat.lcm 2 d) ^ 2) ^ 2

end

end A342470.P1121738691726166860

namespace A342470

/-- `∑{d}[n+1, A000010(lcm(2, #))²²]` -/
def P1121738691726166860.Spec : Prop :=
  ∀ n, P1121738691726166860.a n = A342470 (n + 1)

end A342470

/-! ## A342470.P14171554917366908994

`∑{d}[n+1, A000010((n+1)/#)²²]`
-/

namespace A342470.P14171554917366908994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2) ^ 2

end

end A342470.P14171554917366908994

namespace A342470

/-- `∑{d}[n+1, A000010((n+1)/#)²²]` -/
def P14171554917366908994.Spec : Prop :=
  ∀ n, P14171554917366908994.a n = A342470 (n + 1)

end A342470

/-! ## A342470.P16470660921047645465

`∑{d}[n+1, A000583(A000010(#))]`
-/

namespace A342470.P16470660921047645465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000583 (A000010 d).toNat

end

end A342470.P16470660921047645465

namespace A342470

/-- `∑{d}[n+1, A000583(A000010(#))]` -/
def P16470660921047645465.Spec : Prop :=
  ∀ n, P16470660921047645465.a n = A342470 (n + 1)

end A342470

/-! ## A342470.P10279579581741380969

`∑{d}[A267099(n+1), A354102(#)²²]`
-/

namespace A342470.P10279579581741380969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A354102 d ^ 2) ^ 2

end

end A342470.P10279579581741380969

namespace A342470

/-- `∑{d}[A267099(n+1), A354102(#)²²]` -/
def P10279579581741380969.Spec : Prop :=
  ∀ n, P10279579581741380969.a n = A342470 (n + 1)

end A342470

/-! ## A342470.P6147085224736046921

`∑{d}[A064549(n+1), A300717(#)²²]`
-/

namespace A342470.P6147085224736046921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A300717 d ^ 2) ^ 2

end

end A342470.P6147085224736046921

namespace A342470

/-- `∑{d}[A064549(n+1), A300717(#)²²]` -/
def P6147085224736046921.Spec : Prop :=
  ∀ n, P6147085224736046921.a n = A342470 (n + 1)

end A342470

/-!
# A342471: a(n) = Sum_{d|n} phi(d)^n.

The programs for A342471, there is no canonical definition to state claims against.
-/

/-! ## A342471.P53467521156759386

`∑{d}[n+1, A000010(#)^(n+1)]`
-/

namespace A342471.P53467521156759386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (n + 1)

end

end A342471.P53467521156759386

/-! ## A342471.P8065881904352771825

`∑{d}[n+1, sqrt(A127473(#))^(n+1)]`
-/

namespace A342471.P8065881904352771825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A127473 d : ℝ) ^ (n + 1)

end

end A342471.P8065881904352771825

/-! ## A342471.P11528174194371396186

`∑{d}[n+1, (A109606(#)+1)^(n+1)]`
-/

namespace A342471.P11528174194371396186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A109606 d + 1) ^ (n + 1)

end

end A342471.P11528174194371396186

/-! ## A342471.P3114388603006592578

`A000027(A342539(n+1)-A049820(n+1))`
-/

namespace A342471.P3114388603006592578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A342539 (n + 1) - A049820 (n + 1)).toNat

end

end A342471.P3114388603006592578

/-!
# A342472: T(n,k) is the maximum sum of products of adjacent parts in all compositions of n into k parts: triangle read by rows.

The programs for A342472, there is no canonical definition to state claims against.
-/

/-! ## A342472.P9905105939279390457

`A003434(A059268(n)*A113340(n))`
-/

namespace A342472.P9905105939279390457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A059268 n * A113340 n).toNat

end

end A342472.P9905105939279390457

/-! ## A342472.P5848700250864178736

`A130259(A002620(n)*A093729(n))`
-/

namespace A342472.P5848700250864178736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A002620 n * A093729 n).toNat

end

end A342472.P5848700250864178736

/-! ## A342472.P7855474716749728632

`∑{e}[A066991(n+1), A066949(#)]`
-/

namespace A342472.P7855474716749728632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A066949 (Nat.factorization (f1 n).natAbs p)

end

end A342472.P7855474716749728632

/-! ## A342472.P17237742509950568035

`A284248(A385108(n+1))`
-/

namespace A342472.P17237742509950568035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284248 (A385108 (n + 1)).toNat

end

end A342472.P17237742509950568035

/-! ## A342472.P10557029772551271808

`A077429(2*A222866(n+1))`
-/

namespace A342472.P10557029772551271808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (2 * A222866 (n + 1)).toNat

end

end A342472.P10557029772551271808

/-!
# A342473: a(n) = Sum_{d|n} phi(d)^d.

The programs for A342473, there is no canonical definition to state claims against.
-/

/-! ## A342473.P2711231474040979310

`∑{d}[n+1, A284438(#)]`
-/

namespace A342473.P2711231474040979310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284438 d

end

end A342473.P2711231474040979310

/-! ## A342473.P1212100716746415246

`∑{d}[n+1, A000010(#)^#]`
-/

namespace A342473.P1212100716746415246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ d

end

end A342473.P1212100716746415246

/-! ## A342473.P7522163895482958768

`A000027(A342543(n+1)-A049820(n+1))`
-/

namespace A342473.P7522163895482958768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A342543 (n + 1) - A049820 (n + 1)).toNat

end

end A342473.P7522163895482958768

/-!
# A342475: Prime numbers whose binary expansion contains only prime powers of 2 and the zeroth power.

The programs for A342475, there is no canonical definition to state claims against.
-/

/-! ## A342475.P17301072094320036382

`p?[2*A326782(n+1)+1]`
-/

namespace A342475.P17301072094320036382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326782 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342475.P17301072094320036382

/-! ## A342475.P653919900949106896

`p?[A005408(A326782(n+1))]`
-/

namespace A342475.P653919900949106896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A326782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342475.P653919900949106896

/-! ## A342475.P13296241810115996447

`p?[A004273(A326782(n+1)+1)]`
-/

namespace A342475.P13296241810115996447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A326782 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342475.P13296241810115996447

/-! ## A342475.P4547424520891909413

`p?[A141310(2*A326782(n+1))]`
-/

namespace A342475.P4547424520891909413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A326782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342475.P4547424520891909413

/-! ## A342475.P2786224421155935237

`p?[A004442(2*A326782(n+1))]`
-/

namespace A342475.P2786224421155935237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A326782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342475.P2786224421155935237

/-!
# A342477: The squarefree part of the powerful numbers: a(n) = A007913(A001694(n)).

The programs for A342477, there is no canonical definition to state claims against.
-/

/-! ## A342477.P16359388995229207909

`A007913(A001694(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342477.P16359388995229207909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001694 (n + 1)).toNat

end

end A342477.P16359388995229207909

/-! ## A342477.P11859275312353714930

`A369430(n+1)/A369429(n+1)`
-/

namespace A342477.P11859275312353714930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369430 (n + 1) : ℚ) / (A369429 (n + 1) : ℚ)

end

end A342477.P11859275312353714930

/-! ## A342477.P5970196324882190266

`A001694(n+1)/A369429(n+1)²`
-/

namespace A342477.P5970196324882190266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A369429 (n + 1) ^ 2 : ℚ)

end

end A342477.P5970196324882190266

/-! ## A342477.P13071679857666536968

`A369430(n+1)²/A001694(n+1)`
-/

namespace A342477.P13071679857666536968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369430 (n + 1) ^ 2 : ℚ) / (A001694 (n + 1) : ℚ)

end

end A342477.P13071679857666536968

/-! ## A342477.P14392542160581345734

`A336643(A306458(n+1))`
-/

namespace A342477.P14392542160581345734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A306458 (n + 1)).toNat

end

end A342477.P14392542160581345734

/-! ## A342477.P7826212201841239245

`A355261(A306458(n+1))²/A001694(n+1)`
-/

namespace A342477.P7826212201841239245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355261 (A306458 (n + 1)).toNat ^ 2 : ℚ) / (A001694 (n + 1) : ℚ)

end

end A342477.P7826212201841239245

/-! ## A342477.P17979621812165553374

`A007913(eq[1, A055231(n+1)]+1)`
-/

namespace A342477.P17979621812165553374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A342477.P17979621812165553374

/-! ## A342477.P6816326678692178478

`A007913(lt[A055231(n+1), 2]+1)`
-/

namespace A342477.P6816326678692178478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A342477.P6816326678692178478

/-! ## A342477.P12832977349363803122

`A007913(record[n*(2-A055231(n+1))]+1)`
-/

namespace A342477.P12832977349363803122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A055231 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A342477.P12832977349363803122

/-! ## A342477.P9193087428743842627

`A007913(record[(n+1)/A055231(n+1)-1]+1)`
-/

namespace A342477.P9193087428743842627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055231 (n + 1) : ℚ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A342477.P9193087428743842627

/-! ## A342477.P13777926110869659723

`A007913(record[A057521(n+1)])`
-/

namespace A342477.P13777926110869659723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342477.P13777926110869659723

/-! ## A342477.P18136980779500679922

`A055229(eq[1, A055231(n+1)]+1)`
-/

namespace A342477.P18136980779500679922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A342477.P18136980779500679922

/-! ## A342477.P16938322698184023376

`A007913(record[A008833(n+1)*A055229(n+1)])`
-/

namespace A342477.P16938322698184023376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A055229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342477.P16938322698184023376

/-! ## A342477.P5197253840397406971

`A055229(record[A008833(n+1)*A055229(n+1)])`
-/

namespace A342477.P5197253840397406971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A055229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342477.P5197253840397406971

/-!
# A342478: Number k > 1 such that gpf(phi(k)/lambda(k)) = A006530(A000010(k)/A002322(k)) > log(log(k))^2.

The programs for A342478, there is no canonical definition to state claims against.
-/

/-! ## A342478.P766606222486837950

`record[and(n+2, A005555(A005555(n)))]`
-/

namespace A342478.P766606222486837950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (A005555 (A005555 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342478.P766606222486837950

/-! ## A342478.P1945445033511356318

`A005555(lt[A266768(n), comp[5*n]])`
-/

namespace A342478.P1945445033511356318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A342478.P1945445033511356318

/-! ## A342478.P5852579668166581874

`A005555(lt[A029236(n)², A005555(n)])`
-/

namespace A342478.P5852579668166581874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342478.P5852579668166581874

/-! ## A342478.P14017081882295945982

`A005555(lt[A029236(n)!, A082743(n)])`
-/

namespace A342478.P14017081882295945982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A029236 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A342478.P14017081882295945982

/-!
# A342479: a(n) is the numerator of the asymptotic density of numbers whose second smallest prime divisor (A119288) is prime(n).

The programs for A342479, there is no canonical definition to state claims against.
-/

/-! ## A342479.P2241375945500499039

`A078456(a(n-1))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=46, a(5)=44, a(6)=288`
-/

namespace A342479.P2241375945500499039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 46, 44, 288] fun n a =>
  A078456 (a (n - 1)).toNat

end

end A342479.P2241375945500499039

/-!
# A342480: a(n) is the denominator of the asymptotic density of numbers whose second smallest prime divisor (A119288) is prime(n).

The programs for A342480, there is no canonical definition to state claims against.
-/

/-! ## A342480.P9286869488200087351

`A328571(∑[(5*a(n-1)+1)²])` with `a(0)=0, a(1)=3, a(2)=4, a(3)=3`
-/

namespace A342480.P9286869488200087351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 3] fun n f1 =>
  (5 * f1 (n - 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342480.P9286869488200087351

/-!
# A342481: Prime numbers whose binary expansion involves powers of 2 with only composite (or zero) exponents.

The programs for A342481, there is no canonical definition to state claims against.
-/

/-! ## A342481.P6216515598478722904

`∩[A080167(n+1), A209078(n+1)]`
-/

namespace A342481.P6216515598478722904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342481.P6216515598478722904

/-!
# A342482: a(n) = n*(2^(n-1) - n - 1).

The programs for A342482, the canonical program `A342482.P12195952626198206325` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342482 has offset 3).

The definition of A342482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342482.P12195952626198206325

`(n+3)*(∑[∑[2^n]]-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A342482

/-- `(n+3)*(∑[∑[2^n]]-1)` -/
def P12195952626198206325.Spec : Prop :=
  ∀ n, P12195952626198206325.a n = A342482 (n + 3)

theorem P12195952626198206325.correct : P12195952626198206325.Spec := by
  intro n
  simp only [A342482, Nat.add_sub_cancel]

end A342482

/-! ## A342482.P17941777147217098140

`record[n*(2^(n-1)-(n+1))]`
-/

namespace A342482.P17941777147217098140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n + 1 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342482.P17941777147217098140

namespace A342482

/-- `record[n*(2^(n-1)-(n+1))]` -/
def P17941777147217098140.Spec : Prop :=
  ∀ n, P17941777147217098140.a n = (A342482 (n + 3) : ℚ)

end A342482

/-! ## A342482.P5996361814864167965

`A027540(n+2)-(n+3)`
-/

namespace A342482.P5996361814864167965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027540 (n + 2) - (n + 3 : ℤ)

end

end A342482.P5996361814864167965

namespace A342482

/-- `A027540(n+2)-(n+3)` -/
def P5996361814864167965.Spec : Prop :=
  ∀ n, P5996361814864167965.a n = A342482 (n + 3)

end A342482

/-! ## A342482.P4065582377488725107

`A058877(n+3)-(n+3)²`
-/

namespace A342482.P4065582377488725107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058877 (n + 3) - ((n + 3) ^ 2 : ℤ)

end

end A342482.P4065582377488725107

namespace A342482

/-- `A058877(n+3)-(n+3)²` -/
def P4065582377488725107.Spec : Prop :=
  ∀ n, P4065582377488725107.a n = A342482 (n + 3)

end A342482

/-! ## A342482.P6873252625693968407

`A188626(n+4)-(n+4)²`
-/

namespace A342482.P6873252625693968407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188626 (n + 4) - ((n + 4) ^ 2 : ℤ)

end

end A342482.P6873252625693968407

namespace A342482

/-- `A188626(n+4)-(n+4)²` -/
def P6873252625693968407.Spec : Prop :=
  ∀ n, P6873252625693968407.a n = A342482 (n + 3)

end A342482

/-! ## A342482.P12556068978384934795

`A092442(n+2)-(2*n+5)`
-/

namespace A342482.P12556068978384934795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092442 (n + 2) - (2 * n + 5 : ℤ)

end

end A342482.P12556068978384934795

namespace A342482

/-- `A092442(n+2)-(2*n+5)` -/
def P12556068978384934795.Spec : Prop :=
  ∀ n, P12556068978384934795.a n = A342482 (n + 3)

end A342482

/-! ## A342482.P10350554014853621547

`∑[∑[∑[A045891(n+2)]]]-(n+3)`
-/

namespace A342482.P10350554014853621547
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 3 : ℤ)

end

end A342482.P10350554014853621547

namespace A342482

/-- `∑[∑[∑[A045891(n+2)]]]-(n+3)` -/
def P10350554014853621547.Spec : Prop :=
  ∀ n, P10350554014853621547.a n = A342482 (n + 3)

end A342482

/-! ## A342482.P4833293445453637551

`∑[∑[∑[A047860(n)+2]]]-(n+3)`
-/

namespace A342482.P4833293445453637551
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047860 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 3 : ℤ)

end

end A342482.P4833293445453637551

namespace A342482

/-- `∑[∑[∑[A047860(n)+2]]]-(n+3)` -/
def P4833293445453637551.Spec : Prop :=
  ∀ n, P4833293445453637551.a n = A342482 (n + 3)

end A342482

/-! ## A342482.P16647219503096192072

`A001787(n+3)-A002378(n+3)`
-/

namespace A342482.P16647219503096192072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 3) - A002378 (n + 3)

end

end A342482.P16647219503096192072

namespace A342482

/-- `A001787(n+3)-A002378(n+3)` -/
def P16647219503096192072.Spec : Prop :=
  ∀ n, P16647219503096192072.a n = A342482 (n + 3)

end A342482

/-! ## A342482.P7163955364254124656

`A290056(n+3)-A000125(n+3)`
-/

namespace A342482.P7163955364254124656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290056 (n + 3) - A000125 (n + 3)

end

end A342482.P7163955364254124656

namespace A342482

/-- `A290056(n+3)-A000125(n+3)` -/
def P7163955364254124656.Spec : Prop :=
  ∀ n, P7163955364254124656.a n = A342482 (n + 3)

end A342482

/-! ## A342482.P10406040547273548683

`A139756(n+4)-A002378(n+3)`
-/

namespace A342482.P10406040547273548683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 4) - A002378 (n + 3)

end

end A342482.P10406040547273548683

namespace A342482

/-- `A139756(n+4)-A002378(n+3)` -/
def P10406040547273548683.Spec : Prop :=
  ∀ n, P10406040547273548683.a n = A342482 (n + 3)

end A342482

/-! ## A342482.P16600102445761097304

`A000247(n+2)+(n+2)*A000247(n+2)`
-/

namespace A342482.P16600102445761097304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000247 (n + 2) + (n + 2 : ℤ) * A000247 (n + 2)

end

end A342482.P16600102445761097304

namespace A342482

/-- `A000247(n+2)+(n+2)*A000247(n+2)` -/
def P16600102445761097304.Spec : Prop :=
  ∀ n, P16600102445761097304.a n = A342482 (n + 3)

end A342482

/-! ## A342482.P15810077790326714234

`(n+3)*A052515(n+3)/2`
-/

namespace A342482.P15810077790326714234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * A052515 (n + 3) : ℚ) / 2

end

end A342482.P15810077790326714234

namespace A342482

/-- `(n+3)*A052515(n+3)/2` -/
def P15810077790326714234.Spec : Prop :=
  ∀ n, P15810077790326714234.a n = (A342482 (n + 3) : ℚ)

end A342482

/-! ## A342482.P4007123121903310618

`Δ[A276659(n+1)]-(n+3)²`
-/

namespace A342482.P4007123121903310618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n + 3) ^ 2 : ℤ)

end

end A342482.P4007123121903310618

namespace A342482

/-- `Δ[A276659(n+1)]-(n+3)²` -/
def P4007123121903310618.Spec : Prop :=
  ∀ n, P4007123121903310618.a n = A342482 (n + 3)

end A342482

/-!
# A342483: a(n) = binomial(n,2)*(2^(n-2) - n).

The programs for A342483, the canonical program `A342483.P15391076904208009271` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342483 has offset 4).

The definition of A342483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, 2)*(2^(n+2)-(n+4))` (program `A342483.P15391076904208009271`, by `A342483.P15391076904208009271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342483.P15391076904208009271

`C(n+4, 2)*(2^(n+2)-(n+4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A342483

/-- `C(n+4, 2)*(2^(n+2)-(n+4))` -/
def P15391076904208009271.Spec : Prop :=
  ∀ n, P15391076904208009271.a n = A342483 (n + 4)

theorem P15391076904208009271.correct : P15391076904208009271.Spec := by
  intro n
  simp only [A342483, Nat.add_sub_cancel]

end A342483

/-! ## A342483.P1053863331187912152

`record[2^(n-1)*∑[n]-A006002(n)]`
-/

namespace A342483.P1053863331187912152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) - (A006002 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342483.P1053863331187912152

namespace A342483

/-- `record[2^(n-1)*∑[n]-A006002(n)]` -/
def P1053863331187912152.Spec : Prop :=
  ∀ n, P1053863331187912152.a n = (A342483 (n + 4) : ℚ)

end A342483

/-! ## A342483.P17066957216948218945

`record[A001788(n)-∑[A005449(n)]]`
-/

namespace A342483.P17066957216948218945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342483.P17066957216948218945

namespace A342483

/-- `record[A001788(n)-∑[A005449(n)]]` -/
def P17066957216948218945.Spec : Prop :=
  ∀ n, P17066957216948218945.a n = A342483 (n + 4)

end A342483

/-! ## A342483.P16843755662720523508

`record[(A034008(n)-n)*A161680(n)]`
-/

namespace A342483.P16843755662720523508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034008 n - (n : ℤ)) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342483.P16843755662720523508

namespace A342483

/-- `record[(A034008(n)-n)*A161680(n)]` -/
def P16843755662720523508.Spec : Prop :=
  ∀ n, P16843755662720523508.a n = A342483 (n + 4)

end A342483

/-! ## A342483.P3010920231286581314

`A000217(n+3)*A000247(n+2)`
-/

namespace A342483.P3010920231286581314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3) * A000247 (n + 2)

end

end A342483.P3010920231286581314

namespace A342483

/-- `A000217(n+3)*A000247(n+2)` -/
def P3010920231286581314.Spec : Prop :=
  ∀ n, P3010920231286581314.a n = A342483 (n + 4)

end A342483

/-! ## A342483.P14754188967939451306

`record[(A011782(n)-(n+1))*A000217(n)]`
-/

namespace A342483.P14754188967939451306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 n - (n + 1 : ℤ)) * A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342483.P14754188967939451306

namespace A342483

/-- `record[(A011782(n)-(n+1))*A000217(n)]` -/
def P14754188967939451306.Spec : Prop :=
  ∀ n, P14754188967939451306.a n = A342483 (n + 4)

end A342483

/-! ## A342483.P10997837827101055197

`record[(1-(A122958(n)+n))*A000217(n)]`
-/

namespace A342483.P10997837827101055197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A122958 n + (n : ℤ))) * A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342483.P10997837827101055197

namespace A342483

/-- `record[(1-(A122958(n)+n))*A000217(n)]` -/
def P10997837827101055197.Spec : Prop :=
  ∀ n, P10997837827101055197.a n = A342483 (n + 4)

end A342483

/-!
# A342485: a(n) = Sum_{d|n} phi(d)^(d+1).

The programs for A342485, there is no canonical definition to state claims against.
-/

/-! ## A342485.P7553701451819094382

`∑{d}[n+1, A000010(#)^(#+1)]`
-/

namespace A342485.P7553701451819094382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (d + 1)

end

end A342485.P7553701451819094382

/-!
# A342487: a(n) = Sum_{d|n} phi(d)^(n+1).

The programs for A342487, there is no canonical definition to state claims against.
-/

/-! ## A342487.P14234691519251316654

`∑{d}[n+1, A000010(#)^(n+2)]`
-/

namespace A342487.P14234691519251316654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (n + 2)

end

end A342487.P14234691519251316654

/-! ## A342487.P2530180433666323292

`∑{d}[n+1, (A109606(#)+1)^(n+2)]`
-/

namespace A342487.P2530180433666323292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A109606 d + 1) ^ (n + 2)

end

end A342487.P2530180433666323292

/-!
# A342488: a(n) = Sum_{d|n} phi(d)^(n/d+1).

The programs for A342488, there is no canonical definition to state claims against.
-/

/-! ## A342488.P14314322141125989121

`A204187(A004881(n+1)²+1)+1`
-/

namespace A342488.P14314322141125989121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204187 (A004881 (n + 1) ^ 2 + 1).toNat + 1

end

end A342488.P14314322141125989121

/-!
# A342489: a(n) = Sum_{d|n} phi(d)^(d-1).

The programs for A342489, there is no canonical definition to state claims against.
-/

/-! ## A342489.P14892594995084121903

`∑{d}[n+1, A000010(#)^(#-1)]`
-/

namespace A342489.P14892594995084121903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A342489.P14892594995084121903

/-!
# A342490: a(n) = Sum_{d|n} phi(d)^(n-1).

The programs for A342490, there is no canonical definition to state claims against.
-/

/-! ## A342490.P5422289700660606895

`∑{d}[n+1, A000010(#)^n]`
-/

namespace A342490.P5422289700660606895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ n

end

end A342490.P5422289700660606895

/-! ## A342490.P9190342324434720261

`∑{d}[n+1, sqrt(A127473(#))^n]`
-/

namespace A342490.P9190342324434720261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A127473 d : ℝ) ^ n

end

end A342490.P9190342324434720261

/-! ## A342490.P5243264408705660396

`∑{d}[n+1, (A109606(#)+1)^n]`
-/

namespace A342490.P5243264408705660396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A109606 d + 1) ^ n

end

end A342490.P5243264408705660396

/-! ## A342490.P6457589209016806101

`∑{d}[n+1, (A039649(#)-1)^n]`
-/

namespace A342490.P6457589209016806101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A039649 d - 1) ^ n

end

end A342490.P6457589209016806101

/-! ## A342490.P11870204404568850687

`∑{d}[n+1, (#-A051953(#))^n]`
-/

namespace A342490.P11870204404568850687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A051953 d) ^ n

end

end A342490.P11870204404568850687

/-!
# A342492: Number of compositions of n with weakly increasing first quotients.

The programs for A342492, there is no canonical definition to state claims against.
-/

/-! ## A342492.P8334080475497002408

`A135664(lcm(2, A260186(n)))`
-/

namespace A342492.P8334080475497002408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (Int.lcm 2 (A260186 n))

end

end A342492.P8334080475497002408

/-! ## A342492.P15631153147229482956

`A000196(∑[A241734(3*n)])`
-/

namespace A342492.P15631153147229482956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241734 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342492.P15631153147229482956

/-! ## A342492.P8298167487322115289

`A000194(A325676(n)+A282893(3*n))`
-/

namespace A342492.P8298167487322115289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A325676 n + A282893 (3 * n)).toNat

end

end A342492.P8298167487322115289

/-! ## A342492.P6352205577394263293

`A000009(2*n+1)-A300820(A041331(n))`
-/

namespace A342492.P6352205577394263293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n + 1) - A300820 (A041331 n).toNat

end

end A342492.P6352205577394263293

/-! ## A342492.P15126895401887914151

`A000196(A036884(n+2))-A000196(2*n)`
-/

namespace A342492.P15126895401887914151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A036884 (n + 2)).toNat - A000196 (2 * n)

end

end A342492.P15126895401887914151

/-!
# A342493: Number of compositions of n with strictly increasing first quotients.

The programs for A342493, there is no canonical definition to state claims against.
-/

/-! ## A342493.P8600092339915441823

`A347579(A035294(n))+A347573(n)`
-/

namespace A342493.P8600092339915441823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347579 (A035294 n).toNat + A347573 (n + 21)

end

end A342493.P8600092339915441823

/-! ## A342493.P1679600246358520698

`A347579(A347588(2*n))+A347573(n)`
-/

namespace A342493.P1679600246358520698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347579 (A347588 (2 * n)).toNat + A347573 (n + 21)

end

end A342493.P1679600246358520698

/-! ## A342493.P10017381615285103742

`A347579(A347539(3*n+2))+A347573(n)`
-/

namespace A342493.P10017381615285103742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347579 (A347539 (3 * n + 2)).toNat + A347573 (n + 21)

end

end A342493.P10017381615285103742

/-! ## A342493.P14094709239194020408

`A347579(9*n+2)+A347573(n)`
-/

namespace A342493.P14094709239194020408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347579 (9 * n + 2) + A347573 (n + 21)

end

end A342493.P14094709239194020408

/-!
# A342494: Number of compositions of n with strictly decreasing first quotients.

The programs for A342494, there is no canonical definition to state claims against.
-/

/-! ## A342494.P1510757149348692377

`A036469(n)-A309981(A036469(n))`
-/

namespace A342494.P1510757149348692377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - A309981 (A036469 n).toNat

end

end A342494.P1510757149348692377

/-! ## A342494.P14095021185045981124

`A323089(2*n+3)-A266377(A185234(n))`
-/

namespace A342494.P14095021185045981124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323089 (2 * n + 3) - A266377 (A185234 n).toNat

end

end A342494.P14095021185045981124

/-! ## A342494.P8760995386801265765

`A275024(A246883(n))+A000792(n)`
-/

namespace A342494.P8760995386801265765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A246883 n).toNat + A000792 n

end

end A342494.P8760995386801265765

/-! ## A342494.P9762044704985238811

`A332745(n)+A011708(A321959(n))`
-/

namespace A342494.P9762044704985238811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332745 n + A011708 (A321959 n).toNat

end

end A342494.P9762044704985238811

/-! ## A342494.P6470581423339177373

`A355027(n)+A327928(A287252(n))`
-/

namespace A342494.P6470581423339177373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355027 n + A327928 (A287252 n).toNat

end

end A342494.P6470581423339177373

/-!
# A342495: Number of compositions of n with constant (equal) first quotients.

The programs for A342495, there is no canonical definition to state claims against.
-/

/-! ## A342495.P8737011613697696819

`A032741(n)+A004273(A342515(n))`
-/

namespace A342495.P8737011613697696819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A004273 (A342515 n).toNat

end

end A342495.P8737011613697696819

/-! ## A342495.P2498029407799098113

`A342496(n)+A342515(n)-1`
-/

namespace A342495.P2498029407799098113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342496 n + (A342515 n - 1)

end

end A342495.P2498029407799098113

/-! ## A342495.P7742486631316384445

`A342496(n)+A023443(A342515(n))`
-/

namespace A342495.P7742486631316384445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342496 n + A023443 (A342515 n).toNat

end

end A342495.P7742486631316384445

/-! ## A342495.P4600166333085481744

`A004273(A342496(n))-A032741(n)`
-/

namespace A342495.P4600166333085481744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A342496 n).toNat - A032741 n

end

end A342495.P4600166333085481744

/-!
# A342496: Number of integer partitions of n with constant (equal) first quotients.

The programs for A342496, there is no canonical definition to state claims against.
-/

/-! ## A342496.P17350898680461365997

`A342515(n)+∑{d}[n, floor(atan(#))]`
-/

namespace A342496.P17350898680461365997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 n + ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋

end

end A342496.P17350898680461365997

/-! ## A342496.P7644308556807165193

`A342515(n)+A032741(n)`
-/

namespace A342496.P7644308556807165193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 n + A032741 n

end

end A342496.P7644308556807165193

/-! ## A342496.P17790890772808499066

`A342495(n)+1-A342515(n)`
-/

namespace A342496.P17790890772808499066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342495 n + (1 - A342515 n)

end

end A342496.P17790890772808499066

/-! ## A342496.P15292443076272074726

`ceil((A342495(n)+A032741(n))/2)`
-/

namespace A342496.P15292443076272074726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342495 n + A032741 n : ℚ) / 2⌉

end

end A342496.P15292443076272074726

/-! ## A342496.P2874915357227220410

`A000463(A342495(n)+A032741(n))`
-/

namespace A342496.P2874915357227220410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A342495 n + A032741 n).toNat

end

end A342496.P2874915357227220410

/-! ## A342496.P5976665576828354195

`A001057(A342495(n)+A032741(n))`
-/

namespace A342496.P5976665576828354195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A342495 n + A032741 n).toNat

end

end A342496.P5976665576828354195

/-! ## A342496.P8811608919424831619

`A008619(A342495(n)+A032741(n))`
-/

namespace A342496.P8811608919424831619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A342495 n + A032741 n).toNat

end

end A342496.P8811608919424831619

/-! ## A342496.P17051353884534037402

`A065033(A342495(n)+A032741(n))`
-/

namespace A342496.P17051353884534037402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A342495 n + A032741 n).toNat

end

end A342496.P17051353884534037402

/-! ## A342496.P16210989235765805562

`A001281(A032741(n)+A342495(n)+1)`
-/

namespace A342496.P16210989235765805562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A032741 n + (A342495 n + 1)).toNat

end

end A342496.P16210989235765805562

/-! ## A342496.P4609282422765777532

`A000005(A028310(n))+A342515(n)-1`
-/

namespace A342496.P4609282422765777532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat + (A342515 n - 1)

end

end A342496.P4609282422765777532

/-!
# A342497: Number of integer partitions of n with weakly increasing first quotients.

The programs for A342497, there is no canonical definition to state claims against.
-/

/-! ## A342497.P3550292639633773630

`A365877(A043318(n+1))+A086016(n)`
-/

namespace A342497.P3550292639633773630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (A043318 (n + 1)).toNat + A086016 n

end

end A342497.P3550292639633773630

/-! ## A342497.P11432809130109582975

`A001400(n)-A336107(A078477(n+3))`
-/

namespace A342497.P11432809130109582975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A336107 (A078477 (n + 3)).toNat

end

end A342497.P11432809130109582975

/-! ## A342497.P2547449902600397596

`A341123(n+5)+A025456(A355969(n+4))`
-/

namespace A342497.P2547449902600397596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341123 (n + 5) + A025456 (A355969 (n + 4)).toNat

end

end A342497.P2547449902600397596

/-! ## A342497.P9183419542404479478

`A324417(A010554(3*n+2))+∑[A365876(n+1)]`
-/

namespace A342497.P9183419542404479478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324417 (A010554 (3 * n + 2)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342497.P9183419542404479478

/-! ## A342497.P401224485880961782

`A365877(A043318(n+1))+A008795(A348928(2*n+3))`
-/

namespace A342497.P401224485880961782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (A043318 (n + 1)).toNat + A008795 (A348928 (2 * n + 3)).toNat

end

end A342497.P401224485880961782

/-!
# A342498: Number of integer partitions of n with strictly increasing first quotients.

The programs for A342498, there is no canonical definition to state claims against.
-/

/-! ## A342498.P12110062821046155926

`A048766(A070926(n+1)*A163180(n+1))`
-/

namespace A342498.P12110062821046155926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A070926 (n + 1) * A163180 (n + 1)).toNat

end

end A342498.P12110062821046155926

/-! ## A342498.P2253877873826474697

`A302405(A156251(∑[A020910(n)]))`
-/

namespace A342498.P2253877873826474697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (A156251 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A342498.P2253877873826474697

/-! ## A342498.P9754412543863453177

`A329978(A347610(n+3)^A063775(n+1))`
-/

namespace A342498.P9754412543863453177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (SequenceMachineLib.roundAway ((A347610 (n + 3) : ℚ) ^ (A063775 (n + 1) : ℤ))).toNat

end

end A342498.P9754412543863453177

/-! ## A342498.P11993063538497711673

`A097849(n+1)+A001222(∏[A061987(n)])`
-/

namespace A342498.P11993063538497711673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (n + 1) + A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342498.P11993063538497711673

/-!
# A342499: Number of integer partitions of n with strictly decreasing first quotients.

The programs for A342499, there is no canonical definition to state claims against.
-/

/-! ## A342499.P13499407426505541584

`A048766(∑[A280019(n+2)])`
-/

namespace A342499.P13499407426505541584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280019 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342499.P13499407426505541584

/-! ## A342499.P7802977113640694168

`A048766(record[or(3, A229012(n+1))])`
-/

namespace A342499.P7802977113640694168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A229012 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342499.P7802977113640694168

/-! ## A342499.P10768314167571509268

`A029016(n)-Δ[A025465(A134136(n))]`
-/

namespace A342499.P10768314167571509268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A134136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029016 n - (f1 (n + 1) - f1 n)

end

end A342499.P10768314167571509268

