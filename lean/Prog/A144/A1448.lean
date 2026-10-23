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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A144813: Trajectory of 8 under iteration of the map k -> A087712(k).

The programs for A144813, there is no canonical definition to state claims against.
-/

/-! ## A144813.P5223842844408015752

`A087712(a(n-1))` with `a(0)=8`
-/

namespace A144813.P5223842844408015752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A087712 (a (n - 1)).toNat

end

end A144813.P5223842844408015752

/-!
# A144814: Trajectory of 10 under iteration of the map k -> A087712(k).

The programs for A144814, there is no canonical definition to state claims against.
-/

/-! ## A144814.P3248329554563046941

`A087712(a(n-1))` with `a(0)=10`
-/

namespace A144814.P3248329554563046941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A087712 (a (n - 1)).toNat

end

end A144814.P3248329554563046941

/-!
# A144816: Denominators of triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) is the coefficient of x^(2*k+1) in polynomial t_n(x), used to define continuous and n times differentiable sigmoidal transfer functions.

The programs for A144816, the canonical program `A144816.P2801218708024354472` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144816 has offset 0).

The definition of A144816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144816.P14026830844679776619

`2^A077070(n)`
-/

namespace A144816.P14026830844679776619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A077070 n : ℤ)

end

end A144816.P14026830844679776619

namespace A144816

/-- `2^A077070(n)` -/
def P14026830844679776619.Spec : Prop :=
  ∀ n, P14026830844679776619.a n = (A144816 n : ℚ)

end A144816

/-! ## A144816.P18042905156265598201

`A000079(A077070(n))`
-/

namespace A144816.P18042905156265598201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A077070 n).toNat

end

end A144816.P18042905156265598201

namespace A144816

/-- `A000079(A077070(n))` -/
def P18042905156265598201.Spec : Prop :=
  ∀ n, P18042905156265598201.a n = A144816 n

end A144816

/-! ## A144816.P7920497228587877818

`A011782(A077070(n)+1)`
-/

namespace A144816.P7920497228587877818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A077070 n + 1).toNat

end

end A144816.P7920497228587877818

namespace A144816

/-- `A011782(A077070(n)+1)` -/
def P7920497228587877818.Spec : Prop :=
  ∀ n, P7920497228587877818.a n = A144816 n

end A144816

/-! ## A144816.P1833068920575700473

`A016116(2*A077070(n))`
-/

namespace A144816.P1833068920575700473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A077070 n).toNat

end

end A144816.P1833068920575700473

namespace A144816

/-- `A016116(2*A077070(n))` -/
def P1833068920575700473.Spec : Prop :=
  ∀ n, P1833068920575700473.a n = A144816 n

end A144816

/-! ## A144816.P14301551045386190642

`A060818(A003056(n))*A319862(n)`
-/

namespace A144816.P14301551045386190642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (A003056 n).toNat * A319862 n

end

end A144816.P14301551045386190642

namespace A144816

/-- `A060818(A003056(n))*A319862(n)` -/
def P14301551045386190642.Spec : Prop :=
  ∀ n, P14301551045386190642.a n = A144816 n

end A144816

/-! ## A144816.P11308109161481329617

`A046161(A003056(n))/A082907(n)`
-/

namespace A144816.P11308109161481329617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046161 (A003056 n).toNat : ℚ) / (A082907 n : ℚ)

end

end A144816.P11308109161481329617

namespace A144816

/-- `A046161(A003056(n))/A082907(n)` -/
def P11308109161481329617.Spec : Prop :=
  ∀ n, P11308109161481329617.a n = (A144816 n : ℚ)

end A144816

/-! ## A144816.P14745199173180246131

`A016116(A077070(n)+A077070(n)+1)`
-/

namespace A144816.P14745199173180246131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A077070 n + (A077070 n + 1)).toNat

end

end A144816.P14745199173180246131

namespace A144816

/-- `A016116(A077070(n)+A077070(n)+1)` -/
def P14745199173180246131.Spec : Prop :=
  ∀ n, P14745199173180246131.a n = A144816 n

end A144816

/-! ## A144816.P2801218708024354472

`A046161(A002262(n))*A046161(A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A144816

/-- `A046161(A002262(n))*A046161(A025581(n))` -/
def P2801218708024354472.Spec : Prop :=
  ∀ n, P2801218708024354472.a n = A144816 n

theorem P2801218708024354472.correct : P2801218708024354472.Spec := by
  intro n
  simp only [A144816]

end A144816

/-! ## A144816.P5426793850636641398

`A356206(A185869(n+1))`
-/

namespace A144816.P5426793850636641398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356206 (A185869 (n + 1)).toNat

end

end A144816.P5426793850636641398

namespace A144816

/-- `A356206(A185869(n+1))` -/
def P5426793850636641398.Spec : Prop :=
  ∀ n, P5426793850636641398.a n = A144816 n

end A144816

/-! ## A144816.P11424065275611632470

`gcd(A098361(n), A137688(n))*A137688(n)`
-/

namespace A144816.P11424065275611632470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A098361 n) (A137688 n) : ℤ) * A137688 n

end

end A144816.P11424065275611632470

namespace A144816

/-- `gcd(A098361(n), A137688(n))*A137688(n)` -/
def P11424065275611632470.Spec : Prop :=
  ∀ n, P11424065275611632470.a n = A144816 n

end A144816

/-! ## A144816.P6650913284885345591

`A317832(A059268(n))*A317832(A130321(n))`
-/

namespace A144816.P6650913284885345591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317832 (A059268 n).toNat * A317832 (A130321 n).toNat

end

end A144816.P6650913284885345591

namespace A144816

/-- `A317832(A059268(n))*A317832(A130321(n))` -/
def P6650913284885345591.Spec : Prop :=
  ∀ n, P6650913284885345591.a n = A144816 n

end A144816

/-! ## A144816.P17712231224853620349

`∏{e}[A036561(n), A046161(#)]`
-/

namespace A144816.P17712231224853620349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A046161 (Nat.factorization (f1 n).natAbs p)

end

end A144816.P17712231224853620349

namespace A144816

/-- `∏{e}[A036561(n), A046161(#)]` -/
def P17712231224853620349.Spec : Prop :=
  ∀ n, P17712231224853620349.a n = A144816 n

end A144816

/-! ## A144816.P4423259958279101782

`A000079(∑{e}[A036561(n), A005187(#)])`
-/

namespace A144816.P4423259958279101782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005187 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A144816.P4423259958279101782

namespace A144816

/-- `A000079(∑{e}[A036561(n), A005187(#)])` -/
def P4423259958279101782.Spec : Prop :=
  ∀ n, P4423259958279101782.a n = A144816 n

end A144816

/-!
# A144817: Shifts left when Dirichlet convolution with a (DC:(b,a)->c) applied twice.

The programs for A144817, there is no canonical definition to state claims against.
-/

/-! ## A144817.P10581937850364384658

`A144823(∑[n+2])`
-/

namespace A144817.P10581937850364384658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144817.P10581937850364384658

/-! ## A144817.P3511561958046254959

`abs(A144823(A000096(n+1))-n)+n`
-/

namespace A144817.P3511561958046254959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144823 (A000096 (n + 1)).toNat - (n : ℤ)| + (n : ℤ)

end

end A144817.P3511561958046254959

/-! ## A144817.P9077448749538399574

`or(A000007(n), A144823(A000096(n+1)))`
-/

namespace A144817.P9077448749538399574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144823 (A000096 (n + 1)).toNat)

end

end A144817.P9077448749538399574

/-! ## A144817.P2492323912029616593

`char[A004507(n)]*A144823(A000096(n+1))`
-/

namespace A144817.P2492323912029616593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144823 (A000096 (n + 1)).toNat

end

end A144817.P2492323912029616593

/-! ## A144817.P5686537842914680799

`char[A166514(n)]*A144823(A000096(n+1))`
-/

namespace A144817.P5686537842914680799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144823 (A000096 (n + 1)).toNat

end

end A144817.P5686537842914680799

/-! ## A144817.P1344002787723213905

`A144823(A000096(n+1))%Δ[A002909(n)]`
-/

namespace A144817.P1344002787723213905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144823 (A000096 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A144817.P1344002787723213905

/-! ## A144817.P12586579748573020766

`A144823(A000096(n+1))+char[A273508(n+1)]`
-/

namespace A144817.P12586579748573020766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273508 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A144817.P12586579748573020766

/-! ## A144817.P3065012771890690308

`A144823(A000096(n+1))+char[A063773(n+6)]`
-/

namespace A144817.P3065012771890690308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063773 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A144817.P3065012771890690308

/-!
# A144818: Shifts left when Dirichlet convolution with a (DC:(b,a)->c) applied 4 times.

The programs for A144818, there is no canonical definition to state claims against.
-/

/-! ## A144818.P14940239479941954719

`A144823(A027379(n+2))`
-/

namespace A144818.P14940239479941954719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A027379 (n + 2)).toNat

end

end A144818.P14940239479941954719

/-! ## A144818.P3266171452303352636

`A144823(A055998(n+2))`
-/

namespace A144818.P3266171452303352636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A055998 (n + 2)).toNat

end

end A144818.P3266171452303352636

/-! ## A144818.P14016572942092109667

`A144823(A155212(n)+5)`
-/

namespace A144818.P14016572942092109667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A155212 n + 5).toNat

end

end A144818.P14016572942092109667

/-! ## A144818.P17826564488435525849

`A144823(A052905(n+1)+2)`
-/

namespace A144818.P17826564488435525849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A052905 (n + 1) + 2).toNat

end

end A144818.P17826564488435525849

/-! ## A144818.P9749236573057595151

`A144823(A055999(n+1)+3)`
-/

namespace A144818.P9749236573057595151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A055999 (n + 1) + 3).toNat

end

end A144818.P9749236573057595151

/-! ## A144818.P17713137348333548057

`A144823(A000217(n+4)-3)`
-/

namespace A144818.P17713137348333548057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A000217 (n + 4) - 3).toNat

end

end A144818.P17713137348333548057

/-! ## A144818.P628455733982272417

`A144823(A051936(n+4)+6)`
-/

namespace A144818.P628455733982272417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A051936 (n + 4) + 6).toNat

end

end A144818.P628455733982272417

/-! ## A144818.P3141041164132557575

`A144823(A034856(n+2)+n+3)`
-/

namespace A144818.P3141041164132557575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A034856 (n + 2) + (n + 3 : ℤ)).toNat

end

end A144818.P3141041164132557575

/-! ## A144818.P17727232373021858018

`A144823(A167614(n+1)+Δ[n²])`
-/

namespace A144818.P17727232373021858018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A144818.P17727232373021858018

/-!
# A144819: Shifts left when Dirichlet convolution with a (DC:(b,a)->c) applied 5 times.

The programs for A144819, there is no canonical definition to state claims against.
-/

/-! ## A144819.P435119995007504143

`A144823(A046691(n+3))`
-/

namespace A144819.P435119995007504143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A046691 (n + 3)).toNat

end

end A144819.P435119995007504143

/-! ## A144819.P14397292524673904574

`A144823(Δ[A023545(n+1)])`
-/

namespace A144819.P14397292524673904574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (f1 (n + 1) - f1 n).toNat

end

end A144819.P14397292524673904574

/-! ## A144819.P2730440412469069928

`A144823(A000217(n+5)-4)`
-/

namespace A144819.P2730440412469069928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A000217 (n + 5) - 4).toNat

end

end A144819.P2730440412469069928

/-! ## A144819.P13336337709709615768

`A144823(A167499(n+2)+2*n)`
-/

namespace A144819.P13336337709709615768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A167499 (n + 2) + (2 * n : ℤ)).toNat

end

end A144819.P13336337709709615768

/-! ## A144819.P17190865269630067012

`A144823(Δ[A000292(n+2)+(n+2)²])`
-/

namespace A144819.P17190865269630067012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2) + ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (f1 (n + 1) - f1 n).toNat

end

end A144819.P17190865269630067012

/-! ## A144819.P10682989981202733373

`A144823(A034856(n+2)+A020742(n))`
-/

namespace A144819.P10682989981202733373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A034856 (n + 2) + A020742 n).toNat

end

end A144819.P10682989981202733373

/-!
# A144820: Shifts left when Dirichlet convolution with a (DC:(b,a)->c) applied 6 times.

The programs for A144820, there is no canonical definition to state claims against.
-/

/-! ## A144820.P13464741103113599408

`A144823(A052905(n+3))`
-/

namespace A144820.P13464741103113599408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A052905 (n + 3)).toNat

end

end A144820.P13464741103113599408

/-! ## A144820.P8623743169390621926

`A144823(A055999(n+3)+1)`
-/

namespace A144820.P8623743169390621926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A055999 (n + 3) + 1).toNat

end

end A144820.P8623743169390621926

/-! ## A144820.P14615549750036697196

`A144823(A027379(n+4)-2)`
-/

namespace A144820.P14615549750036697196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A027379 (n + 4) - 2).toNat

end

end A144820.P14615549750036697196

/-! ## A144820.P1072563037110901348

`A144823(A000124(n+6)-6)`
-/

namespace A144820.P1072563037110901348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A000124 (n + 6) - 6).toNat

end

end A144820.P1072563037110901348

/-! ## A144820.P3578796280897216556

`A144823(Δ[A023545(n+2)]-1)`
-/

namespace A144820.P3578796280897216556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (f1 (n + 1) - f1 n - 1).toNat

end

end A144820.P3578796280897216556

/-! ## A144820.P12625975902375433164

`A144823(A000217(n+5)+n+1)`
-/

namespace A144820.P12625975902375433164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A144820.P12625975902375433164

/-! ## A144820.P6914689835354195956

`A144823(A002414(n+5)%A002522(n+4))`
-/

namespace A144820.P6914689835354195956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (Int.tmod (A002414 (n + 5)) (A002522 (n + 4))).toNat

end

end A144820.P6914689835354195956

/-!
# A144821: Shifts left when Dirichlet convolution with a (DC:(b,a)->c) applied 8 times.

The programs for A144821, there is no canonical definition to state claims against.
-/

/-! ## A144821.P8969702672231674195

`A144823(A055999(n+5)-1)`
-/

namespace A144821.P8969702672231674195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A055999 (n + 5) - 1).toNat

end

end A144821.P8969702672231674195

/-! ## A144821.P551687669382875089

`A144823(A000124(n+8)-8)`
-/

namespace A144821.P551687669382875089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A000124 (n + 8) - 8).toNat

end

end A144821.P551687669382875089

/-! ## A144821.P4937984968847694367

`A144823(A153151(A055999(n+5)))`
-/

namespace A144821.P4937984968847694367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A153151 (A055999 (n + 5)).toNat).toNat

end

end A144821.P4937984968847694367

/-! ## A144821.P3246836494776903120

`A144823(A005843(n+4)+A000217(n+6))`
-/

namespace A144821.P3246836494776903120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A005843 (n + 4) + A000217 (n + 6)).toNat

end

end A144821.P3246836494776903120

/-! ## A144821.P2930941127112709344

`A144823(A028387(n+5)-A133263(n+4))`
-/

namespace A144821.P2930941127112709344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A028387 (n + 5) - A133263 (n + 4)).toNat

end

end A144821.P2930941127112709344

/-!
# A144822: Shifts left when Dirichlet convolution with a (DC:(b,a)->c) applied 9 times.

The programs for A144822, there is no canonical definition to state claims against.
-/

/-! ## A144822.P16130485290499849161

`A144823(A155212(n+5))`
-/

namespace A144822.P16130485290499849161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A155212 (n + 5)).toNat

end

end A144822.P16130485290499849161

/-! ## A144822.P9882646274571523046

`A144823(A055999(n+6)-2)`
-/

namespace A144822.P9882646274571523046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A055999 (n + 6) - 2).toNat

end

end A144822.P9882646274571523046

/-! ## A144822.P1283851516026865408

`A144823(A055998(n+7)-5)`
-/

namespace A144822.P1283851516026865408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A055998 (n + 7) - 5).toNat

end

end A144822.P1283851516026865408

/-! ## A144822.P2886245158421423792

`A144823(A000124(n+9)-9)`
-/

namespace A144822.P2886245158421423792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A000124 (n + 9) - 9).toNat

end

end A144822.P2886245158421423792

/-! ## A144822.P4591730636974083987

`A144823(Δ[A000292(n+6)+(n+4)²])`
-/

namespace A144822.P4591730636974083987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 6) + ((n + 4) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (f1 (n + 1) - f1 n).toNat

end

end A144822.P4591730636974083987

/-!
# A144823: Square array A(n,k), n>=1, k>=1, read by antidiagonals, with A(1,k)=1 and sequence a_k of column k shifts left when Dirichlet convolution with a_k (DC:(b,a_k)->a) applied k times.

The programs for A144823, there is no canonical definition to state claims against.
-/

/-! ## A144823.P11614211347899910172

`∏{e}[A003945(n), A098446(#)]`
-/

namespace A144823.P11614211347899910172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A098446 (Nat.factorization (f1 n).natAbs p)

end

end A144823.P11614211347899910172

/-! ## A144823.P12630822252362025836

`∏{e}[A169400(n), A098446(#)]`
-/

namespace A144823.P12630822252362025836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A098446 (Nat.factorization (f1 n).natAbs p)

end

end A144823.P12630822252362025836

/-! ## A144823.P11491881178148779967

`A098446(abs(1-n))%record[A050175(n)]`
-/

namespace A144823.P11491881178148779967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098446 |1 - (n : ℤ)|.toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A144823.P11491881178148779967

/-! ## A144823.P10909040000375802611

`A091351(A038722(n+1))%record[A050175(n)]`
-/

namespace A144823.P10909040000375802611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091351 (A038722 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A144823.P10909040000375802611

/-! ## A144823.P6748409163833576761

`A377051(C(A049600(n), 2))`
-/

namespace A144823.P6748409163833576761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377051 (Nat.choose (A049600 n).toNat 2)

end

end A144823.P6748409163833576761

/-!
# A144824: Triangle read by rows, A054533 * A127648 (matrix product).

The programs for A144824, there is no canonical definition to state claims against.
-/

/-! ## A144824.P14110948304044315917

`A002260(n+1)*A054533(n+1)`
-/

namespace A144824.P14110948304044315917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A054533 (n + 1)

end

end A144824.P14110948304044315917

/-! ## A144824.P9136883907569364591

`(A002262(n)+1)*A054533(n+1)`
-/

namespace A144824.P9136883907569364591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A054533 (n + 1)

end

end A144824.P9136883907569364591

/-! ## A144824.P14466168689509294182

`(A057554(2*n+1)+1)*A054533(n+1)`
-/

namespace A144824.P14466168689509294182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * n + 1) + 1) * A054533 (n + 1)

end

end A144824.P14466168689509294182

/-! ## A144824.P7780087384481918868

`A054533(n+1)*A131830(A112367(n))`
-/

namespace A144824.P7780087384481918868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (n + 1) * A131830 (A112367 n).toNat

end

end A144824.P7780087384481918868

/-! ## A144824.P15711947135964024495

`A008619(A158405(n+1))*A054533(n+1)`
-/

namespace A144824.P15711947135964024495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A158405 (n + 1)).toNat * A054533 (n + 1)

end

end A144824.P15711947135964024495

/-! ## A144824.P463233881465893058

`A004736(A038722(n+1))*A054533(n+1)`
-/

namespace A144824.P463233881465893058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A054533 (n + 1)

end

end A144824.P463233881465893058

/-! ## A144824.P9244945866642095470

`A002260(n+1)*A282634(A038722(n+1))`
-/

namespace A144824.P9244945866642095470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A282634 (A038722 (n + 1)).toNat

end

end A144824.P9244945866642095470

/-! ## A144824.P1528070645052605347

`A054533(n+1)*A055396(A087112(n+1))`
-/

namespace A144824.P1528070645052605347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (n + 1) * A055396 (A087112 (n + 1)).toNat

end

end A144824.P1528070645052605347

/-! ## A144824.P18304640422929371119

`A000005(A059268(n))*A054533(n+1)`
-/

namespace A144824.P18304640422929371119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A054533 (n + 1)

end

end A144824.P18304640422929371119

/-! ## A144824.P7032819610271743203

`A001511(A265895(n+1))*A054533(n+1)`
-/

namespace A144824.P7032819610271743203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A265895 (n + 1)).toNat * A054533 (n + 1)

end

end A144824.P7032819610271743203

/-!
# A144827: Partial products of successive terms of A017029; a(0)=1.

The programs for A144827, there is no canonical definition to state claims against.
-/

/-! ## A144827.P10013220626474741808

`∏[a(n-1)+7]` with `a(0)=1, a(1)=4`
-/

namespace A144827.P10013220626474741808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144827.P10013220626474741808

/-! ## A144827.P12906575828597633977

`∏[record[lcm(4, n)+1]-n]`
-/

namespace A144827.P12906575828597633977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144827.P12906575828597633977

/-! ## A144827.P5054797647749642390

`(7*n-3)*a(n-1)` with `a(0)=1`
-/

namespace A144827.P5054797647749642390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((7 * n : ℤ) - 3) * a (n - 1)

end

end A144827.P5054797647749642390

/-! ## A144827.P11005071986251966402

`∏[abs(2-6*n)+n-1]`
-/

namespace A144827.P11005071986251966402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (6 * n : ℤ)| + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144827.P11005071986251966402

/-! ## A144827.P2243211785642323263

`a(n-1)*A017029(n-1)` with `a(0)=1`
-/

namespace A144827.P2243211785642323263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017029 (n - 1)

end

end A144827.P2243211785642323263

/-!
# A144828: Partial products of successive terms of A017113; a(0)=1.

The programs for A144828, the canonical program `A144828.P6877321025962803446` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144828 has offset 0).

The definition of A144828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144828.P14605821403181001497

`2^n*n!*C(2*n, n)`
-/

namespace A144828.P14605821403181001497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n * Nat.choose (2 * n) n

end

end A144828.P14605821403181001497

namespace A144828

/-- `2^n*n!*C(2*n, n)` -/
def P14605821403181001497.Spec : Prop :=
  ∀ n, (P14605821403181001497.a n : ℤ) = A144828 n

end A144828

/-! ## A144828.P9129988576735880114

`A052714(n+1)`
-/

namespace A144828.P9129988576735880114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052714 (n + 1)

end

end A144828.P9129988576735880114

namespace A144828

/-- `A052714(n+1)` -/
def P9129988576735880114.Spec : Prop :=
  ∀ n, P9129988576735880114.a n = A144828 n

end A144828

/-! ## A144828.P6877321025962803446

`4^n*A001147(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144828

/-- `4^n*A001147(n)` -/
def P6877321025962803446.Spec : Prop :=
  ∀ n, P6877321025962803446.a n = A144828 n

theorem P6877321025962803446.correct : P6877321025962803446.Spec := by
  intro n
  simp only [A144828]

end A144828

/-! ## A144828.P5325676054374392082

`2^n*(2*n)!/n!`
-/

namespace A144828.P5325676054374392082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n : ℚ)

end

end A144828.P5325676054374392082

namespace A144828

/-- `2^n*(2*n)!/n!` -/
def P5325676054374392082.Spec : Prop :=
  ∀ n, P5325676054374392082.a n = (A144828 n : ℚ)

end A144828

/-! ## A144828.P14641142434060437853

`∏[a(n-1)+8]` with `a(0)=1, a(1)=4`
-/

namespace A144828.P14641142434060437853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144828.P14641142434060437853

namespace A144828

/-- `∏[a(n-1)+8]` -/
def P14641142434060437853.Spec : Prop :=
  ∀ n, (P14641142434060437853.a n : ℤ) = A144828 n

end A144828

/-!
# A144829: Partial products of successive terms of A017209; a(0)=1 .

The programs for A144829, there is no canonical definition to state claims against.
-/

/-! ## A144829.P16815377997385895811

`∏[a(n-1)+9]` with `a(0)=1, a(1)=4`
-/

namespace A144829.P16815377997385895811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144829.P16815377997385895811

/-! ## A144829.P10081950627522202565

`(9*n-5)*a(n-1)` with `a(0)=1`
-/

namespace A144829.P10081950627522202565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((9 * n : ℤ) - 5) * a (n - 1)

end

end A144829.P10081950627522202565

/-! ## A144829.P4306464785716247162

`∏[abs(3-10*n)-(n+2)]`
-/

namespace A144829.P4306464785716247162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (10 * n : ℤ)| - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144829.P4306464785716247162

/-! ## A144829.P8421238087147551588

`a(n-1)*A017209(n-1)` with `a(0)=1`
-/

namespace A144829.P8421238087147551588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017209 (n - 1)

end

end A144829.P8421238087147551588

/-! ## A144829.P13000869285715393717

`a(n-1)*A026488(3*n)` with `a(0)=1`
-/

namespace A144829.P13000869285715393717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A026488 (3 * n)

end

end A144829.P13000869285715393717

/-!
# A144830: 

The programs for A144830, there is no canonical definition to state claims against.
-/

/-! ## A144830.P15610270577147928471

`(a(n-1)+a(n-2)^4)^4` with `a(0)=1, a(1)=1`
-/

namespace A144830.P15610270577147928471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + a (n - 2) ^ 4) ^ 4

end

end A144830.P15610270577147928471

/-!
# A144831: (n+1)^2 - (smallest prime > n^2).

The programs for A144831, the canonical program `A144831.P7474642275724404831` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144831 has offset 1).

The definition of A144831 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144831.P7474642275724404831

`(n+2)²-A007491(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A144831

/-- `(n+2)²-A007491(n+1)` -/
def P7474642275724404831.Spec : Prop :=
  ∀ n, P7474642275724404831.a n = A144831 (n + 1)

theorem P7474642275724404831.correct : P7474642275724404831.Spec := by
  intro n
  simp only [A144831, Nat.add_sub_cancel]

end A144831

/-! ## A144831.P16030447379763118510

`2*n+3-A053000(n+1)`
-/

namespace A144831.P16030447379763118510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A053000 (n + 1)

end

end A144831.P16030447379763118510

namespace A144831

/-- `2*n+3-A053000(n+1)` -/
def P16030447379763118510.Spec : Prop :=
  ∀ n, P16030447379763118510.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P3904199999515662636

`A005843(n+1)+1-A053000(n+1)`
-/

namespace A144831.P3904199999515662636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (1 - A053000 (n + 1))

end

end A144831.P3904199999515662636

namespace A144831

/-- `A005843(n+1)+1-A053000(n+1)` -/
def P3904199999515662636.Spec : Prop :=
  ∀ n, P3904199999515662636.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P7185773427691930318

`A102305(n+1)-(A007491(n+1)+2)`
-/

namespace A144831.P7185773427691930318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102305 (n + 1) - (A007491 (n + 1) + 2)

end

end A144831.P7185773427691930318

namespace A144831

/-- `A102305(n+1)-(A007491(n+1)+2)` -/
def P7185773427691930318.Spec : Prop :=
  ∀ n, P7185773427691930318.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P13702279914959458562

`A008486(n+1)-(A053000(n+1)+n)`
-/

namespace A144831.P13702279914959458562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - (A053000 (n + 1) + (n : ℤ))

end

end A144831.P13702279914959458562

namespace A144831

/-- `A008486(n+1)-(A053000(n+1)+n)` -/
def P13702279914959458562.Spec : Prop :=
  ∀ n, P13702279914959458562.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P6972299756089939777

`A053001(n+2)+A056927(n+2)-A007491(n+1)`
-/

namespace A144831.P6972299756089939777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2) + (A056927 (n + 2) - A007491 (n + 1))

end

end A144831.P6972299756089939777

namespace A144831

/-- `A053001(n+2)+A056927(n+2)-A007491(n+1)` -/
def P6972299756089939777.Spec : Prop :=
  ∀ n, P6972299756089939777.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P16053534784524913056

`A056928(n+2)+A056929(n+2)-A007491(n+1)`
-/

namespace A144831.P16053534784524913056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2) + (A056929 (n + 2) - A007491 (n + 1))

end

end A144831.P16053534784524913056

namespace A144831

/-- `A056928(n+2)+A056929(n+2)-A007491(n+1)` -/
def P16053534784524913056.Spec : Prop :=
  ∀ n, P16053534784524913056.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P16548544142034510726

`A180724(n+2)-(A053001(n+2)+A007491(n+1))`
-/

namespace A144831.P16548544142034510726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180724 (n + 2) - (A053001 (n + 2) + A007491 (n + 1))

end

end A144831.P16548544142034510726

namespace A144831

/-- `A180724(n+2)-(A053001(n+2)+A007491(n+1))` -/
def P16548544142034510726.Spec : Prop :=
  ∀ n, P16548544142034510726.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P381643469862612380

`A172989(n+2)+A304874(n+2)-A007491(n+1)`
-/

namespace A144831.P381643469862612380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172989 (n + 2) + (A304874 (n + 2) - A007491 (n + 1))

end

end A144831.P381643469862612380

namespace A144831

/-- `A172989(n+2)+A304874(n+2)-A007491(n+1)` -/
def P381643469862612380.Spec : Prop :=
  ∀ n, P381643469862612380.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P11521923857686832933

`A304875(n+2)-(A172989(n+2)+A007491(n+1))`
-/

namespace A144831.P11521923857686832933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304875 (n + 2) - (A172989 (n + 2) + A007491 (n + 1))

end

end A144831.P11521923857686832933

namespace A144831

/-- `A304875(n+2)-(A172989(n+2)+A007491(n+1))` -/
def P11521923857686832933.Spec : Prop :=
  ∀ n, P11521923857686832933.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P6522393964829154438

`(n+2)²-A151800((n+1)²)`
-/

namespace A144831.P6522393964829154438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A151800 ((n + 1) ^ 2)

end

end A144831.P6522393964829154438

namespace A144831

/-- `(n+2)²-A151800((n+1)²)` -/
def P6522393964829154438.Spec : Prop :=
  ∀ n, P6522393964829154438.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P15426371137594927916

`(n+2)²-A007918((n+1)²)`
-/

namespace A144831.P15426371137594927916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A007918 ((n + 1) ^ 2)

end

end A144831.P15426371137594927916

namespace A144831

/-- `(n+2)²-A007918((n+1)²)` -/
def P15426371137594927916.Spec : Prop :=
  ∀ n, P15426371137594927916.a n = A144831 (n + 1)

end A144831

/-! ## A144831.P1435874003277418658

`(n+2)²-A266620((n+1)²)`
-/

namespace A144831.P1435874003277418658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A266620 ((n + 1) ^ 2)

end

end A144831.P1435874003277418658

namespace A144831

/-- `(n+2)²-A266620((n+1)²)` -/
def P1435874003277418658.Spec : Prop :=
  ∀ n, P1435874003277418658.a n = A144831 (n + 1)

end A144831

/-!
# A144832: Distance from nxtprm(n^2) to (n+1)^2 in A144831 is prime.

The programs for A144832, there is no canonical definition to state claims against.
-/

/-! ## A144832.P11008662730022983274

`p?[A144831(n+1)]`
-/

namespace A144832.P11008662730022983274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144832.P11008662730022983274

/-! ## A144832.P3303082354460068677

`p?[Δ[n²]-A053000(n)]`
-/

namespace A144832.P3303082354460068677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A053000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144832.P3303082354460068677

/-! ## A144832.P5857864929535258612

`p?[(n+1)²-A151800(n²)]`
-/

namespace A144832.P5857864929535258612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A151800 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144832.P5857864929535258612

/-! ## A144832.P18080816178352702295

`p?[(n+2)²-A007491(n+1)]`
-/

namespace A144832.P18080816178352702295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A007491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144832.P18080816178352702295

/-! ## A144832.P6323993551407380703

`filter[A144831(n+1), A010051(#)]`
-/

namespace A144832.P6323993551407380703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A144832.P6323993551407380703

/-! ## A144832.P11298230849967532178

`filter[A144831(n+1), A080339(#)]`
-/

namespace A144832.P11298230849967532178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A144832.P11298230849967532178

/-! ## A144832.P1508840552217655482

`p?[abs(A005408(n)-A053000(n))]`
-/

namespace A144832.P1508840552217655482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A053000 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144832.P1508840552217655482

/-! ## A144832.P17295524001919308475

`filter[A144831(2*n+1), A010055(#)]`
-/

namespace A144832.P17295524001919308475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144831 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A144832.P17295524001919308475

/-! ## A144832.P13191835566018424447

`filter[A144831(2*n+1), A069513(#)]`
-/

namespace A144832.P13191835566018424447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144831 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A144832.P13191835566018424447

/-! ## A144832.P17620472485888707345

`filter[A144831(2*n+1), A174282(#)]`
-/

namespace A144832.P17620472485888707345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144831 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174282 (f1 j).toNat = 1) n)

end

end A144832.P17620472485888707345

/-!
# A144833: Lucas numbers with an equal number of odd and even digits.

The programs for A144833, there is no canonical definition to state claims against.
-/

/-! ## A144833.P14931819438838871559

`A000032(∑[6^A001883(n)])`
-/

namespace A144833.P14931819438838871559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001883 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A144833.P14931819438838871559

/-!
# A144834: Numbers n such that the two numbers n+1 and n+3 are both prime.

The programs for A144834, the canonical program `A144834.P8121320371945032170` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144834 has offset 1).

The definition of A144834 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144834.P8121320371945032170

`A001359(n+1)-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A144834

/-- `A001359(n+1)-1` -/
def P8121320371945032170.Spec : Prop :=
  ∀ n, P8121320371945032170.a n = A144834 (n + 1)

theorem P8121320371945032170.correct : P8121320371945032170.Spec := by
  intro n
  simp only [A144834, Nat.add_sub_cancel]

end A144834

/-! ## A144834.P8202609564272377433

`A014574(n+1)-2`
-/

namespace A144834.P8202609564272377433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 2

end

end A144834.P8202609564272377433

namespace A144834

/-- `A014574(n+1)-2` -/
def P8202609564272377433.Spec : Prop :=
  ∀ n, P8202609564272377433.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P16907692151075763277

`A006512(n+1)-3`
-/

namespace A144834.P16907692151075763277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 3

end

end A144834.P16907692151075763277

namespace A144834

/-- `A006512(n+1)-3` -/
def P16907692151075763277.Spec : Prop :=
  ∀ n, P16907692151075763277.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P11133507662992333816

`sqrt(A075369(n+1))-2`
-/

namespace A144834.P11133507662992333816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ) - 2

end

end A144834.P11133507662992333816

namespace A144834

/-- `sqrt(A075369(n+1))-2` -/
def P11133507662992333816.Spec : Prop :=
  ∀ n, P11133507662992333816.a n = (A144834 (n + 1) : ℝ)

end A144834

/-! ## A144834.P16415742973248719000

`sqrt(A108604(n+1))-3`
-/

namespace A144834.P16415742973248719000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A108604 (n + 1) : ℝ) - 3

end

end A144834.P16415742973248719000

namespace A144834

/-- `sqrt(A108604(n+1))-3` -/
def P16415742973248719000.Spec : Prop :=
  ∀ n, P16415742973248719000.a n = (A144834 (n + 1) : ℝ)

end A144834

/-! ## A144834.P4376441070204665835

`2*(A243811(n+1)+1)`
-/

namespace A144834.P4376441070204665835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A243811 (n + 1) + 1)

end

end A144834.P4376441070204665835

namespace A144834

/-- `2*(A243811(n+1)+1)` -/
def P4376441070204665835.Spec : Prop :=
  ∀ n, P4376441070204665835.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P10487572681403093301

`2*(A040040(n+1)-1)`
-/

namespace A144834.P10487572681403093301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040040 (n + 1) - 1)

end

end A144834.P10487572681403093301

namespace A144834

/-- `2*(A040040(n+1)-1)` -/
def P10487572681403093301.Spec : Prop :=
  ∀ n, P10487572681403093301.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P12704541692129201978

`A108605(n+1)/2-1`
-/

namespace A144834.P12704541692129201978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108605 (n + 1) : ℚ) / 2 - 1

end

end A144834.P12704541692129201978

namespace A144834

/-- `A108605(n+1)/2-1` -/
def P12704541692129201978.Spec : Prop :=
  ∀ n, P12704541692129201978.a n = (A144834 (n + 1) : ℚ)

end A144834

/-! ## A144834.P514188751396610577

`A054735(n+1)/2-2`
-/

namespace A144834.P514188751396610577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 2 - 2

end

end A144834.P514188751396610577

namespace A144834

/-- `A054735(n+1)/2-2` -/
def P514188751396610577.Spec : Prop :=
  ∀ n, P514188751396610577.a n = (A144834 (n + 1) : ℚ)

end A144834

/-! ## A144834.P6808202530947986412

`(A082496(n+1)-3)/2`
-/

namespace A144834.P6808202530947986412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082496 (n + 1) - 3 : ℚ) / 2

end

end A144834.P6808202530947986412

namespace A144834

/-- `(A082496(n+1)-3)/2` -/
def P6808202530947986412.Spec : Prop :=
  ∀ n, P6808202530947986412.a n = (A144834 (n + 1) : ℚ)

end A144834

/-! ## A144834.P12764638721633033856

`A176810(n+1)/2-3`
-/

namespace A144834.P12764638721633033856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176810 (n + 1) : ℚ) / 2 - 3

end

end A144834.P12764638721633033856

namespace A144834

/-- `A176810(n+1)/2-3` -/
def P12764638721633033856.Spec : Prop :=
  ∀ n, P12764638721633033856.a n = (A144834 (n + 1) : ℚ)

end A144834

/-! ## A144834.P591656280105235197

`A111046(n+1)/4-2`
-/

namespace A144834.P591656280105235197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111046 (n + 1) : ℚ) / 4 - 2

end

end A144834.P591656280105235197

namespace A144834

/-- `A111046(n+1)/4-2` -/
def P591656280105235197.Spec : Prop :=
  ∀ n, P591656280105235197.a n = (A144834 (n + 1) : ℚ)

end A144834

/-! ## A144834.P11755184711894285703

`A053319(n)+a(n-1)` with `a(0)=2`
-/

namespace A144834.P11755184711894285703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A053319 n + a (n - 1)

end

end A144834.P11755184711894285703

namespace A144834

/-- `A053319(n)+a(n-1)` -/
def P11755184711894285703.Spec : Prop :=
  ∀ n, P11755184711894285703.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P6527251461441751262

`A111166(n+1)+A057428(n)`
-/

namespace A144834.P6527251461441751262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1) + A057428 n

end

end A144834.P6527251461441751262

namespace A144834

/-- `A111166(n+1)+A057428(n)` -/
def P6527251461441751262.Spec : Prop :=
  ∀ n, P6527251461441751262.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P6430244298109735422

`A111166(n+1)-A057427(n)`
-/

namespace A144834.P6430244298109735422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1) - A057427 n

end

end A144834.P6430244298109735422

namespace A144834

/-- `A111166(n+1)-A057427(n)` -/
def P6430244298109735422.Spec : Prop :=
  ∀ n, P6430244298109735422.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P5168925154645047489

`A243811(n+1)+A040040(n+1)`
-/

namespace A144834.P5168925154645047489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 1) + A040040 (n + 1)

end

end A144834.P5168925154645047489

namespace A144834

/-- `A243811(n+1)+A040040(n+1)` -/
def P5168925154645047489.Spec : Prop :=
  ∀ n, P5168925154645047489.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P1372101278018161418

`A169643(n+1)+A155752(n+1)`
-/

namespace A144834.P1372101278018161418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169643 (n + 1) + A155752 (n + 1)

end

end A144834.P1372101278018161418

namespace A144834

/-- `A169643(n+1)+A155752(n+1)` -/
def P1372101278018161418.Spec : Prop :=
  ∀ n, P1372101278018161418.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P4509913473340688242

`A071142(n+1)%A014574(n+1)`
-/

namespace A144834.P4509913473340688242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071142 (n + 1)) (A014574 (n + 1))

end

end A144834.P4509913473340688242

namespace A144834

/-- `A071142(n+1)%A014574(n+1)` -/
def P4509913473340688242.Spec : Prop :=
  ∀ n, P4509913473340688242.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P16666569324143594960

`A082496(n+1)%A006512(n+1)`
-/

namespace A144834.P16666569324143594960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082496 (n + 1)) (A006512 (n + 1))

end

end A144834.P16666569324143594960

namespace A144834

/-- `A082496(n+1)%A006512(n+1)` -/
def P16666569324143594960.Spec : Prop :=
  ∀ n, P16666569324143594960.a n = A144834 (n + 1)

end A144834

/-! ## A144834.P12990746731066999772

`A094949(n+1)%A006512(n+1)`
-/

namespace A144834.P12990746731066999772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094949 (n + 1)) (A006512 (n + 1))

end

end A144834.P12990746731066999772

namespace A144834

/-- `A094949(n+1)%A006512(n+1)` -/
def P12990746731066999772.Spec : Prop :=
  ∀ n, P12990746731066999772.a n = A144834 (n + 1)

end A144834

/-!
# A144836: 

The programs for A144836, there is no canonical definition to state claims against.
-/

/-! ## A144836.P5062825948965525266

`ceil(ϕ^4^n)`
-/

namespace A144836.P5062825948965525266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ 4 ^ n⌉

end

end A144836.P5062825948965525266

/-!
# A144840: Numbers k such that the three numbers k-1, k+3 and k+5 are all prime.

The programs for A144840, there is no canonical definition to state claims against.
-/

/-! ## A144840.P13518258723299643154

`A022005(n+1)+1`
-/

namespace A144840.P13518258723299643154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1) + 1

end

end A144840.P13518258723299643154

/-! ## A144840.P13022109683422221499

`A073649(n+1)-3`
-/

namespace A144840.P13022109683422221499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1) - 3

end

end A144840.P13022109683422221499

/-! ## A144840.P14788492549917949713

`A098413(n+1)-5`
-/

namespace A144840.P14788492549917949713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098413 (n + 1) - 5

end

end A144840.P14788492549917949713

/-! ## A144840.P7544810939566831631

`3*A062767(n+1)+2`
-/

namespace A144840.P7544810939566831631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A062767 (n + 1) + 2

end

end A144840.P7544810939566831631

/-! ## A144840.P17389205113059251482

`A300823(A000040(n+1))+3*2*A215918(n+1)+1`
-/

namespace A144840.P17389205113059251482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300823 (A000040 (n + 1)).toNat + (3 * (2 * A215918 (n + 1)) + 1)

end

end A144840.P17389205113059251482

/-! ## A144840.P9252455041997461483

`∩[A007529(n+1), A029710(n+1)]+1`
-/

namespace A144840.P9252455041997461483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144840.P9252455041997461483

/-! ## A144840.P77999366915494941

`∩[A007529(n+1), A015913(n+1)]+1`
-/

namespace A144840.P77999366915494941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144840.P77999366915494941

/-! ## A144840.P478899503975035432

`∩[A007529(n+1), A088175(n+1)]+1`
-/

namespace A144840.P478899503975035432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144840.P478899503975035432

/-! ## A144840.P7841705062664989464

`∩[A029710(n+1), A088175(n+1)]+1`
-/

namespace A144840.P7841705062664989464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144840.P7841705062664989464

/-! ## A144840.P2198907803357131393

`∩[A007529(n+1), A056772(n+1)]+1`
-/

namespace A144840.P2198907803357131393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144840.P2198907803357131393

/-! ## A144840.P12685662041591044906

`p?[A001359(n+1)-4]+1`
-/

namespace A144840.P12685662041591044906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A144840.P12685662041591044906

/-! ## A144840.P6523802042441726049

`p?[A007529(n+1)+4]-3`
-/

namespace A144840.P6523802042441726049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3

end

end A144840.P6523802042441726049

/-! ## A144840.P5644708006291856606

`p?[abs(5-A014574(n+1))]+1`
-/

namespace A144840.P5644708006291856606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A014574 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A144840.P5644708006291856606

/-! ## A144840.P8813369534600246310

`p?[A001097(n+4)-4]+1`
-/

namespace A144840.P8813369534600246310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 4) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A144840.P8813369534600246310

/-! ## A144840.P2129179224103421635

`p?[A087695(n+2)+1]-3`
-/

namespace A144840.P2129179224103421635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3

end

end A144840.P2129179224103421635

/-! ## A144840.P14817553961669268866

`∩[A015913(n+1), A023201(n+1)]+1`
-/

namespace A144840.P14817553961669268866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144840.P14817553961669268866

/-! ## A144840.P2041932216635676372

`∩[A023201(n+1), A029710(n+1)]+1`
-/

namespace A144840.P2041932216635676372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144840.P2041932216635676372

/-! ## A144840.P11724023000301945012

`∩[A023201(n+1), A056772(n+1)]+1`
-/

namespace A144840.P11724023000301945012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144840.P11724023000301945012

/-! ## A144840.P6847598609033110317

`∩[A023201(n+1), A172238(n+1)]+1`
-/

namespace A144840.P6847598609033110317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144840.P6847598609033110317

/-! ## A144840.P16821650374952111332

`∩[A015913(n+1), A015914(n+1)]+1`
-/

namespace A144840.P16821650374952111332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144840.P16821650374952111332

/-!
# A144841: a(n) = 280*C(n,9)+10*C(n,6)+6*C(n,4)+C(n,3)+1 where C = binomial.

The programs for A144841, the canonical program `A144841.P11216067567063470455` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144841 has offset 1).

The definition of A144841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `280*C(n+1, 9)+10*C(n+1, 6)+6*C(n+1, 4)+C(n+1, 3)+1` (program `A144841.P11216067567063470455`, by `A144841.P11216067567063470455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144841.P11216067567063470455

`280*C(n+1, 9)+10*C(n+1, 6)+6*C(n+1, 4)+C(n+1, 3)+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144841

/-- `280*C(n+1, 9)+10*C(n+1, 6)+6*C(n+1, 4)+C(n+1, 3)+1` -/
def P11216067567063470455.Spec : Prop :=
  ∀ n, (P11216067567063470455.a n : ℤ) = A144841 (n + 1)

theorem P11216067567063470455.correct : P11216067567063470455.Spec := by
  intro n
  simp only [A144841, Nat.add_sub_cancel]

end A144841

/-! ## A144841.P15321850493253297863

`A338295(C((1-n)²+n, round(2*n/3)))`
-/

namespace A144841.P15321850493253297863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (Nat.choose ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat)

end

end A144841.P15321850493253297863

namespace A144841

/-- `A338295(C((1-n)²+n, round(2*n/3)))` -/
def P15321850493253297863.Spec : Prop :=
  ∀ n, P15321850493253297863.a n = A144841 (n + 1)

end A144841

/-!
# A144842: Numbers k such that the three numbers k+3, k-3 and k+5 are all prime.

The programs for A144842, there is no canonical definition to state claims against.
-/

/-! ## A144842.P17059516432190543201

`A046138(n+1)+3`
-/

namespace A144842.P17059516432190543201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1) + 3

end

end A144842.P17059516432190543201

/-! ## A144842.P6935474610225561147

`p?[A001359(n+1)-6]+3`
-/

namespace A144842.P6935474610225561147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A144842.P6935474610225561147

/-! ## A144842.P4033971238757757948

`p?[A014574(n+1)-7]+3`
-/

namespace A144842.P4033971238757757948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A144842.P4033971238757757948

/-! ## A144842.P13424544865673007927

`p?[A006512(n+1)-8]+3`
-/

namespace A144842.P13424544865673007927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A144842.P13424544865673007927

/-! ## A144842.P16850093976269574121

`p?[A001838(n+1)-6]+3`
-/

namespace A144842.P16850093976269574121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A144842.P16850093976269574121

/-! ## A144842.P6040801821805792876

`∩[A087695(n+1), A173064(n+3)]`
-/

namespace A144842.P6040801821805792876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173064 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144842.P6040801821805792876

/-! ## A144842.P11180539832552320285

`p?[A094743(n+2)-8]+3`
-/

namespace A144842.P11180539832552320285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094743 (n + 2) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A144842.P11180539832552320285

/-! ## A144842.P9664894625300902507

`p?[A005818(A088763(n+1)+1)]-5`
-/

namespace A144842.P9664894625300902507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A088763 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5

end

end A144842.P9664894625300902507

/-! ## A144842.P13072211092458841172

`record[A006530(A185718(n+1))+3]`
-/

namespace A144842.P13072211092458841172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A185718 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144842.P13072211092458841172

/-! ## A144842.P622329140812732352

`A007430(A046138(n+1))`
-/

namespace A144842.P622329140812732352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007430 (A046138 (n + 1)).toNat

end

end A144842.P622329140812732352

/-!
# A144843: a(n) = (6^n - 2^n)^2 / 16.

The programs for A144843, the canonical program `A144843.P11444026047298682305` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144843 has offset 1).

The definition of A144843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144843.P17817614274881081594

`4^(n-1)*(3^(n+1)-1)²`
-/

namespace A144843.P17817614274881081594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (((3 ^ (n + 1) : ℤ) - 1) ^ 2 : ℚ)

end

end A144843.P17817614274881081594

namespace A144843

/-- `4^(n-1)*(3^(n+1)-1)²` -/
def P17817614274881081594.Spec : Prop :=
  ∀ n, P17817614274881081594.a n = (A144843 (n + 1) : ℚ)

end A144843

/-! ## A144843.P11444026047298682305

`A016129(n)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144843

/-- `A016129(n)²` -/
def P11444026047298682305.Spec : Prop :=
  ∀ n, P11444026047298682305.a n = A144843 (n + 1)

theorem P11444026047298682305.correct : P11444026047298682305.Spec := by
  intro n
  simp only [A144843, Nat.add_sub_cancel]

end A144843

/-! ## A144843.P18370248249592332351

`(6^(n+1)-2^(n+1))²/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144843.P18370248249592332351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((6 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ)) ^ 2 : ℚ) / 16

end

end A144843.P18370248249592332351

namespace A144843

/-- `(6^(n+1)-2^(n+1))²/16` -/
def P18370248249592332351.Spec : Prop :=
  ∀ n, P18370248249592332351.a n = (A144843 (n + 1) : ℚ)

end A144843

/-! ## A144843.P5808541751661978787

`A071951(∑[n+1]+2)²`
-/

namespace A144843.P5808541751661978787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A144843.P5808541751661978787

namespace A144843

/-- `A071951(∑[n+1]+2)²` -/
def P5808541751661978787.Spec : Prop :=
  ∀ n, P5808541751661978787.a n = A144843 (n + 1)

end A144843

/-! ## A144843.P16703679440813529422

`A191935(∑[n+2])²`
-/

namespace A144843.P16703679440813529422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191935 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A144843.P16703679440813529422

namespace A144843

/-- `A191935(∑[n+2])²` -/
def P16703679440813529422.Spec : Prop :=
  ∀ n, P16703679440813529422.a n = A144843 (n + 1)

end A144843

/-!
# A144844: a(n) = ((2 + sqrt(2))^n - (2 - sqrt(2))^n)^2/8.

The programs for A144844, the canonical program `A144844.P5517475767698692087` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144844 has offset 0).

The definition of A144844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144844.P5517475767698692087

`14*a(n-1)-28*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=16`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144844

/-- `14*a(n-1)-28*a(n-2)+8*a(n-3)` -/
def P5517475767698692087.Spec : Prop :=
  ∀ n, P5517475767698692087.a n = A144844 n

theorem P5517475767698692087.correct : P5517475767698692087.Spec := by
  intro n
  simp only [A144844]

end A144844

/-! ## A144844.P4075913637380894482

`2^(n-1)*A001108(n)`
-/

namespace A144844.P4075913637380894482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001108 n : ℚ)

end

end A144844.P4075913637380894482

namespace A144844

/-- `2^(n-1)*A001108(n)` -/
def P4075913637380894482.Spec : Prop :=
  ∀ n, P4075913637380894482.a n = (A144844 n : ℚ)

end A144844

/-! ## A144844.P15947188278881055579

`2^(n-2)*(A001109(n+1)-3*A001109(n)-1)`
-/

namespace A144844.P15947188278881055579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A001109 (n + 1) - 3 * A001109 n - 1 : ℚ)

end

end A144844.P15947188278881055579

namespace A144844

/-- `2^(n-2)*(A001109(n+1)-3*A001109(n)-1)` -/
def P15947188278881055579.Spec : Prop :=
  ∀ n, P15947188278881055579.a n = (A144844 n : ℚ)

end A144844

/-! ## A144844.P15620383623054642916

`((2+sqrt(2))^n-(2-sqrt(2))^n)²/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144844.P15620383623054642916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) ^ n - (2 - Real.sqrt (2 : ℝ)) ^ n) ^ 2 / 8

end

end A144844.P15620383623054642916

namespace A144844

/-- `((2+sqrt(2))^n-(2-sqrt(2))^n)²/8` -/
def P15620383623054642916.Spec : Prop :=
  ∀ n, P15620383623054642916.a n = (A144844 n : ℝ)

end A144844

/-! ## A144844.P11703611280208082854

`∑[floor((sqrt(2)+2)*a(n-1))]²` with `a(0)=0, a(1)=1`
-/

namespace A144844.P11703611280208082854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A144844.P11703611280208082854

namespace A144844

/-- `∑[floor((sqrt(2)+2)*a(n-1))]²` -/
def P11703611280208082854.Spec : Prop :=
  ∀ n, P11703611280208082854.a n = A144844 n

end A144844

/-! ## A144844.P4519424507785110575

`∑[round((sqrt(2)+2)*a(n-1))]²` with `a(0)=0, a(1)=1`
-/

namespace A144844.P4519424507785110575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A144844.P4519424507785110575

namespace A144844

/-- `∑[round((sqrt(2)+2)*a(n-1))]²` -/
def P4519424507785110575.Spec : Prop :=
  ∀ n, P4519424507785110575.a n = A144844 n

end A144844

/-! ## A144844.P251849371558232820

`Δ[floor((sqrt(2)+2)*a(n-1))]²` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A144844.P251849371558232820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A144844.P251849371558232820

namespace A144844

/-- `Δ[floor((sqrt(2)+2)*a(n-1))]²` -/
def P251849371558232820.Spec : Prop :=
  ∀ n, P251849371558232820.a n = A144844 n

end A144844

/-! ## A144844.P4044290974122328195

`∑[floor(2*a(n-1)/(2-sqrt(2)))]²` with `a(0)=0, a(1)=1`
-/

namespace A144844.P4044290974122328195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊(2 * f1 (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A144844.P4044290974122328195

namespace A144844

/-- `∑[floor(2*a(n-1)/(2-sqrt(2)))]²` -/
def P4044290974122328195.Spec : Prop :=
  ∀ n, P4044290974122328195.a n = A144844 n

end A144844

/-! ## A144844.P5295330199168173308

`A062112(2*n)²`
-/

namespace A144844.P5295330199168173308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n) ^ 2

end

end A144844.P5295330199168173308

namespace A144844

/-- `A062112(2*n)²` -/
def P5295330199168173308.Spec : Prop :=
  ∀ n, P5295330199168173308.a n = A144844 n

end A144844

/-! ## A144844.P6536777117211543327

`(A106731(n)/2)²`
-/

namespace A144844.P6536777117211543327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A106731 n : ℚ) / 2) ^ 2

end

end A144844.P6536777117211543327

namespace A144844

/-- `(A106731(n)/2)²` -/
def P6536777117211543327.Spec : Prop :=
  ∀ n, P6536777117211543327.a n = (A144844 n : ℚ)

end A144844

/-!
# A144845: Least number k such that all coefficients of k*B(n,x), the n-th Bernoulli polynomial, are integers.

The programs for A144845, there is no canonical definition to state claims against.
-/

/-! ## A144845.P8902449229426134795

`A195441(n)*A324371(n+1)`
-/

namespace A144845.P8902449229426134795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 n * A324371 (n + 1)

end

end A144845.P8902449229426134795

/-! ## A144845.P16446441956309046179

`lcm(A007947(n+1), A195441(n))`
-/

namespace A144845.P16446441956309046179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A195441 n)

end

end A144845.P16446441956309046179

/-! ## A144845.P1975679297727284496

`A007947(n+1)/A324369(n+1)*A195441(n)`
-/

namespace A144845.P1975679297727284496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A324369 (n + 1) : ℚ) * (A195441 n : ℚ)

end

end A144845.P1975679297727284496

/-! ## A144845.P1131139552157300548

`A027642(n)*A286515(n)`
-/

namespace A144845.P1131139552157300548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n * A286515 n

end

end A144845.P1131139552157300548

/-! ## A144845.P11962501934079024578

`A007947(n+1)*A318256(n)`
-/

namespace A144845.P11962501934079024578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A318256 n

end

end A144845.P11962501934079024578

/-! ## A144845.P10307033603793434436

`∏{d}[n+1, A089026(#)]*A318256(n)`
-/

namespace A144845.P10307033603793434436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), A089026 d) * A318256 n

end

end A144845.P10307033603793434436

/-! ## A144845.P12674674072255472573

`A015052(A015052(n+1))*A318256(n)`
-/

namespace A144845.P12674674072255472573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat * A318256 n

end

end A144845.P12674674072255472573

/-! ## A144845.P5257817316126249791

`A015053(A015053(n+1))*A318256(n)`
-/

namespace A144845.P5257817316126249791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat * A318256 n

end

end A144845.P5257817316126249791

/-! ## A144845.P17861607727313976195

`A019555(A019555(n+1))*A318256(n)`
-/

namespace A144845.P17861607727313976195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A019555 (n + 1)).toNat * A318256 n

end

end A144845.P17861607727313976195

/-! ## A144845.P515288740557484444

`gcd(A064538(n), A068510(n+1))`
-/

namespace A144845.P515288740557484444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064538 n) (A068510 (n + 1))

end

end A144845.P515288740557484444

/-! ## A144845.P3825915120279913875

`A001898(n)/A341109(n)`
-/

namespace A144845.P3825915120279913875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (A341109 n : ℚ)

end

end A144845.P3825915120279913875

/-! ## A144845.P2533147656067781395

`A213615(∑[n])`
-/

namespace A144845.P2533147656067781395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144845.P2533147656067781395

/-! ## A144845.P18056360103797487880

`A218853(∑[n]+n)`
-/

namespace A144845.P18056360103797487880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218853 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A144845.P18056360103797487880

/-! ## A144845.P4692435398173206300

`lcm(A195441(n), A225481(n))`
-/

namespace A144845.P4692435398173206300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A195441 n) (A225481 n)

end

end A144845.P4692435398173206300

/-!
# A144849: Coefficients in the expansion of the squared sine lemniscate function.

The programs for A144849, there is no canonical definition to state claims against.
-/

/-! ## A144849.P7020791457612649059

`A258659(2*n+1)/A000244(n)`
-/

namespace A144849.P7020791457612649059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258659 (2 * n + 1) : ℚ) / (A000244 n : ℚ)

end

end A144849.P7020791457612649059

/-! ## A144849.P1239181979135062054

`A144853(n)/A283831(n)*A260779(n)`
-/

namespace A144849.P1239181979135062054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144853 n : ℚ) / (A283831 n : ℚ) * (A260779 n : ℚ)

end

end A144849.P1239181979135062054

/-!
# A144853: Coefficients in the expansion of the sine lemniscate function.

The programs for A144853, there is no canonical definition to state claims against.
-/

/-! ## A144853.P15040008231704546765

`A261000(n)/3^n`
-/

namespace A144853.P15040008231704546765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261000 n : ℚ) / (3 ^ n : ℚ)

end

end A144853.P15040008231704546765

/-! ## A144853.P12876566731477513930

`floor(A261000(n)/A000244(n))`
-/

namespace A144853.P12876566731477513930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A261000 n : ℚ) / (A000244 n : ℚ)⌋

end

end A144853.P12876566731477513930

/-! ## A144853.P8272197337111325912

`ceil(A261000(n)/Δ[A003462(n)])`
-/

namespace A144853.P8272197337111325912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261000 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A144853.P8272197337111325912

/-! ## A144853.P6512662774020523272

`A000007(n+1)+A261000(n)/Δ[A003462(n)]`
-/

namespace A144853.P6512662774020523272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + (A261000 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A144853.P6512662774020523272

/-! ## A144853.P2798125324182311744

`A144849(n)/A260779(n)*A283831(n)`
-/

namespace A144853.P2798125324182311744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144849 n : ℚ) / (A260779 n : ℚ) * (A283831 n : ℚ)

end

end A144853.P2798125324182311744

/-!
# A144856: Semiprimes that are a product of distinct Mersenne primes.

The programs for A144856, there is no canonical definition to state claims against.
-/

/-! ## A144856.P10294091021299071017

`∩[A046528(n+1), A144482(n+1)]`
-/

namespace A144856.P10294091021299071017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144856.P10294091021299071017

/-! ## A144856.P10538660951690502142

`∩[A046528(n+1), A163205(n+1)]`
-/

namespace A144856.P10538660951690502142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144856.P10538660951690502142

/-! ## A144856.P11661454329898971021

`∩[A144482(n+1), A254603(n+1)]`
-/

namespace A144856.P11661454329898971021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144856.P11661454329898971021

/-! ## A144856.P13507847115011084115

`∩[A163205(n+1), A254603(n+1)]`
-/

namespace A144856.P13507847115011084115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144856.P13507847115011084115

/-! ## A144856.P15875511628962004125

`∩[A054784(n+1), A144482(n+1)]`
-/

namespace A144856.P15875511628962004125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144856.P15875511628962004125

/-!
# A144857: Numbers k that divide Sum_{i=1..k} phi(i)^2, where phi(i) = totient function A000010.

The programs for A144857, there is no canonical definition to state claims against.
-/

/-! ## A144857.P13336373229215363943

`record[∏{p}[A289710(n)², #]]`
-/

namespace A144857.P13336373229215363943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289710 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144857.P13336373229215363943

/-! ## A144857.P4955936580194275577

`A053873(A007097(n))`
-/

namespace A144857.P4955936580194275577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053873 (A007097 n).toNat

end

end A144857.P4955936580194275577

/-!
# A144858: Numbers of the form 2^(n-1)*(2^n - 1) which aren't perfect numbers.

The programs for A144858, there is no canonical definition to state claims against.
-/

/-! ## A144858.P2103352561853801920

`C(A135972(n+1)+1, 2)`
-/

namespace A144858.P2103352561853801920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135972 (n + 1) + 1).toNat 2

end

end A144858.P2103352561853801920

/-! ## A144858.P16454075087137491958

`C(2^A045762(n+1), 2)`
-/

namespace A144858.P16454075087137491958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A045762 (n + 1) : ℤ))).toNat 2

end

end A144858.P16454075087137491958

/-! ## A144858.P4150231458528057012

`C(2^comp[A000043(n+1)], 2)`
-/

namespace A144858.P4150231458528057012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A144858.P4150231458528057012

/-! ## A144858.P5198068987567854296

`A006516(comp[A237057(n)])`
-/

namespace A144858.P5198068987567854296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A144858.P5198068987567854296

/-! ## A144858.P13325192109903447318

`A006516(A045762(n+1))`
-/

namespace A144858.P13325192109903447318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (A045762 (n + 1)).toNat

end

end A144858.P13325192109903447318

/-!
# A144861: Primitive prime factors of the sequence 2k^2 - 1 in the order in which they are first found.

The programs for A144861, there is no canonical definition to state claims against.
-/

/-! ## A144861.P9780576135531747243

`p?[A059772(2*(n+1))]`
-/

namespace A144861.P9780576135531747243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144861.P9780576135531747243

/-! ## A144861.P2930997279523258961

`p?[A059772(n+2)+n%2]`
-/

namespace A144861.P2930997279523258961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (n + 2) + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144861.P2930997279523258961

/-! ## A144861.P13908556607486389020

`p?[A059772(n+2)+A000035(n)]`
-/

namespace A144861.P13908556607486389020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (n + 2) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144861.P13908556607486389020

/-! ## A144861.P2390741995531694640

`p?[A073097(n)+A059772(n+2)]`
-/

namespace A144861.P2390741995531694640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n + A059772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144861.P2390741995531694640

/-! ## A144861.P11731837272069529639

`p?[A117569(n)+A059772(n+2)]`
-/

namespace A144861.P11731837272069529639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n + A059772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144861.P11731837272069529639

/-! ## A144861.P392054990798917705

`p?[A059772(n+2)-A010674(n)]`
-/

namespace A144861.P392054990798917705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (n + 2) - A010674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144861.P392054990798917705

/-! ## A144861.P14579406652767124928

`p?[lcm(A000034(n), A059772(n+2))]`
-/

namespace A144861.P14579406652767124928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A059772 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144861.P14579406652767124928

/-! ## A144861.P5417444747574507259

`filter[A059772(2*(n+1)), A000035(#)]`
-/

namespace A144861.P5417444747574507259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A144861.P5417444747574507259

/-! ## A144861.P4841313886517530248

`filter[A059772(2*(n+1)), A011558(#)]`
-/

namespace A144861.P4841313886517530248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A144861.P4841313886517530248

/-!
# A144862: Composite numbers n such that sqrt(n) > f(n), where f(n) = 2 * rad(n) if 4 divides n and rad(n) otherwise.

The programs for A144862, there is no canonical definition to state claims against.
-/

/-! ## A144862.P10346890326277451178

`filter[A088449(n+3), A354924(#)]`
-/

namespace A144862.P10346890326277451178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088449 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A144862.P10346890326277451178

/-! ## A144862.P13399985279076986254

`filter[A325261(n+3), A354924(#)]`
-/

namespace A144862.P13399985279076986254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325261 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A144862.P13399985279076986254

/-! ## A144862.P3228239627273951304

`A059172(A089038(n+3)%A057864(n+4))`
-/

namespace A144862.P3228239627273951304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (Int.tmod (A089038 (n + 3)) (A057864 (n + 4))).toNat

end

end A144862.P3228239627273951304

/-! ## A144862.P3636103409274183261

`∩[A059172(n+1), A328189(A004709(n+3))]`
-/

namespace A144862.P3636103409274183261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328189 (A004709 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144862.P3636103409274183261

/-!
# A144863: 

The programs for A144863, there is no canonical definition to state claims against.
-/

/-! ## A144863.P1983776880060538247

`A094028(2*n)`
-/

namespace A144863.P1983776880060538247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094028 (2 * n)

end

end A144863.P1983776880060538247

/-! ## A144863.P5320961116604318901

`A266872(2*n)`
-/

namespace A144863.P5320961116604318901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266872 (2 * n)

end

end A144863.P5320961116604318901

/-! ## A144863.P12464832452984710088

`A266508(4*n)`
-/

namespace A144863.P12464832452984710088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266508 (4 * n)

end

end A144863.P12464832452984710088

/-! ## A144863.P7315229877221580055

`A279028(4*n)`
-/

namespace A144863.P7315229877221580055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 (4 * n)

end

end A144863.P7315229877221580055

/-! ## A144863.P5966760608548940362

`A279053(4*n)`
-/

namespace A144863.P5966760608548940362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279053 (4 * n)

end

end A144863.P5966760608548940362

/-!
# A144864: a(n) = (4*16^(n-1)-1)/3.

The programs for A144864, the canonical program `A144864.P17008004331978144058` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144864 has offset 1).

The definition of A144864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*16^n-1)/3` (program `A144864.P13428117746098901565`, by `A144864.P13428117746098901565.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144864.P13428117746098901565

`(4*16^n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144864.P13428117746098901565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 16 ^ n : ℤ) - 1 : ℚ) / 3

end

end A144864.P13428117746098901565

namespace A144864

/-- `(4*16^n-1)/3` -/
def P13428117746098901565.Spec : Prop :=
  ∀ n, P13428117746098901565.a n = (A144864 (n + 1) : ℚ)

theorem P13428117746098901565.correct : P13428117746098901565.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A144864, Nat.add_sub_cancel, A144864.P13428117746098901565.a, A144864.P17008004331978144058.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A144864, Nat.add_sub_cancel, A144864.P13428117746098901565.a, A144864.P17008004331978144058.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A144864

/-! ## A144864.P17008004331978144058

`16*a(n-1)+5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144864

/-- `16*a(n-1)+5` -/
def P17008004331978144058.Spec : Prop :=
  ∀ n, (P17008004331978144058.a n : ℤ) = A144864 (n + 1)

theorem P17008004331978144058.correct : P17008004331978144058.Spec := by
  intro n
  simp only [A144864, Nat.add_sub_cancel]

end A144864

/-! ## A144864.P13712847354568754188

`A002450(2*(n+1)-1)`
-/

namespace A144864.P13712847354568754188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (2 * (n + 1) - 1)

end

end A144864.P13712847354568754188

namespace A144864

/-- `A002450(2*(n+1)-1)` -/
def P13712847354568754188.Spec : Prop :=
  ∀ n, P13712847354568754188.a n = A144864 (n + 1)

end A144864

/-! ## A144864.P10910849326159911898

`A001045(4*(n+1)-2)`
-/

namespace A144864.P10910849326159911898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (4 * (n + 1) - 2)

end

end A144864.P10910849326159911898

namespace A144864

/-- `A001045(4*(n+1)-2)` -/
def P10910849326159911898.Spec : Prop :=
  ∀ n, P10910849326159911898.a n = A144864 (n + 1)

end A144864

/-! ## A144864.P11459624372918941489

`ogf((1+4x)/(1-17x+16x^2))`
-/

namespace A144864.P11459624372918941489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -17, 16] n

end

end A144864.P11459624372918941489

namespace A144864

/-- `ogf((1+4x)/(1-17x+16x^2))` -/
def P11459624372918941489.Spec : Prop :=
  ∀ n, P11459624372918941489.a n = A144864 (n + 1)

end A144864

/-! ## A144864.P11714611119658641698

`lcm(16, a(n-1))+5` with `a(0)=1`
-/

namespace A144864.P11714611119658641698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 16 (a (n - 1)) + 5

end

end A144864.P11714611119658641698

namespace A144864

/-- `lcm(16, a(n-1))+5` -/
def P11714611119658641698.Spec : Prop :=
  ∀ n, (P11714611119658641698.a n : ℤ) = A144864 (n + 1)

end A144864

/-! ## A144864.P3183454887000124358

`or(5, 16*a(n-1))` with `a(0)=1`
-/

namespace A144864.P3183454887000124358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 5 (16 * a (n - 1))

end

end A144864.P3183454887000124358

namespace A144864

/-- `or(5, 16*a(n-1))` -/
def P3183454887000124358.Spec : Prop :=
  ∀ n, (P3183454887000124358.a n : ℤ) = A144864 (n + 1)

end A144864

/-! ## A144864.P52741619855746178

`xor(5, 16*a(n-1))` with `a(0)=1`
-/

namespace A144864.P52741619855746178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 5 (16 * a (n - 1))

end

end A144864.P52741619855746178

namespace A144864

/-- `xor(5, 16*a(n-1))` -/
def P52741619855746178.Spec : Prop :=
  ∀ n, (P52741619855746178.a n : ℤ) = A144864 (n + 1)

end A144864

/-! ## A144864.P11115295815267542263

`∑[16*a(n-1)]` with `a(0)=1, a(1)=20`
-/

namespace A144864.P11115295815267542263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144864.P11115295815267542263

namespace A144864

/-- `∑[16*a(n-1)]` -/
def P11115295815267542263.Spec : Prop :=
  ∀ n, (P11115295815267542263.a n : ℤ) = A144864 (n + 1)

end A144864

/-! ## A144864.P14282753850947177006

`round(4^or(1, 2*n)/3)`
-/

namespace A144864.P14282753850947177006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ Nat.lor 1 (2 * n) : ℚ) / 3)

end

end A144864.P14282753850947177006

namespace A144864

/-- `round(4^or(1, 2*n)/3)` -/
def P14282753850947177006.Spec : Prop :=
  ∀ n, P14282753850947177006.a n = A144864 (n + 1)

end A144864

/-!
# A144865: Shadow transform of C(n+3,4) = A000332(n+3).

The programs for A144865, there is no canonical definition to state claims against.
-/

/-! ## A144865.P4586892654996587086

`A144871(∑[n+4]+3)`
-/

namespace A144865.P4586892654996587086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A144865.P4586892654996587086

/-! ## A144865.P16574380362607103781

`A144871(A027379(n+2))%28`
-/

namespace A144865.P16574380362607103781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144871 (A027379 (n + 2)).toNat) 28

end

end A144865.P16574380362607103781

/-! ## A144865.P17477100881355992723

`A144871(A155212(n)+5)%29`
-/

namespace A144865.P17477100881355992723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144871 (A155212 n + 5).toNat) 29

end

end A144865.P17477100881355992723

/-! ## A144865.P4722065854235430403

`gcd(A000038(n), A144871(A155212(n)+5))`
-/

namespace A144865.P4722065854235430403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144871 (A155212 n + 5).toNat)

end

end A144865.P4722065854235430403

/-! ## A144865.P10417204235075661979

`or(A000007(n), A144871(A027379(n+2)))`
-/

namespace A144865.P10417204235075661979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144871 (A027379 (n + 2)).toNat)

end

end A144865.P10417204235075661979

/-! ## A144865.P8639810188442373427

`or(A000007(n), A144871(A155212(n)+5))`
-/

namespace A144865.P8639810188442373427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144871 (A155212 n + 5).toNat)

end

end A144865.P8639810188442373427

/-! ## A144865.P1827592090143320110

`∑{d}[A144871(A027379(n+2)), A000010(#)]`
-/

namespace A144865.P1827592090143320110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A027379 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A144865.P1827592090143320110

/-! ## A144865.P1119757068362355763

`∑{d}[A144871(A155212(n)+5), A000010(#)]`
-/

namespace A144865.P1119757068362355763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A155212 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A144865.P1119757068362355763

/-! ## A144865.P3059608917676101755

`A144871(A155212(n)+5)^A000041(C(2, n))`
-/

namespace A144865.P3059608917676101755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144871 (A155212 n + 5).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A144865.P3059608917676101755

/-! ## A144865.P14612838188304421562

`A144871(A027379(n+2))^A014963(2*(n+1))`
-/

namespace A144865.P14612838188304421562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144871 (A027379 (n + 2)).toNat : ℚ) ^ (A014963 (2 * (n + 1)) : ℤ)

end

end A144865.P14612838188304421562

/-! ## A144865.P2966886942990856283

`A000108(C(2, n+2))*A144871(A027379(n+2))`
-/

namespace A144865.P2966886942990856283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A144871 (A027379 (n + 2)).toNat

end

end A144865.P2966886942990856283

/-! ## A144865.P16426887878501310907

`A000041(C(2, 2*n))*A144871(A027379(n+2))`
-/

namespace A144865.P16426887878501310907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A144871 (A027379 (n + 2)).toNat

end

end A144865.P16426887878501310907

/-! ## A144865.P8706807179958630845

`A144871(A027379(n+2))+A008683(32*(n+1))`
-/

namespace A144865.P8706807179958630845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A027379 (n + 2)).toNat + A008683 (32 * (n + 1))

end

end A144865.P8706807179958630845

/-! ## A144865.P9777022200612565955

`A000041(1-C(n, n²))*A144871(A155212(n)+5)`
-/

namespace A144865.P9777022200612565955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (1 - Nat.choose n (n ^ 2)) * A144871 (A155212 n + 5).toNat

end

end A144865.P9777022200612565955

/-! ## A144865.P17285644832021595522

`A007318(1-C(n, n²))*A144871(A155212(n)+5)`
-/

namespace A144865.P17285644832021595522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (1 - Nat.choose n (n ^ 2)) * A144871 (A155212 n + 5).toNat

end

end A144865.P17285644832021595522

/-!
# A144866: Shadow transform of C(n+4,5) = A000389(n+4).

The programs for A144866, there is no canonical definition to state claims against.
-/

/-! ## A144866.P6038317422176359785

`A144871(Δ[A264443(n)])`
-/

namespace A144866.P6038317422176359785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (f1 (n + 1) - f1 n).toNat

end

end A144866.P6038317422176359785

/-! ## A144866.P4349518163169765324

`A144871(A046691(n+3))`
-/

namespace A144866.P4349518163169765324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A046691 (n + 3)).toNat

end

end A144866.P4349518163169765324

/-! ## A144866.P11636180643644690665

`A144871(A056115(n)+11)`
-/

namespace A144866.P11636180643644690665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A056115 n + 11).toNat

end

end A144866.P11636180643644690665

/-! ## A144866.P8275236648509636419

`A144871(eq[3, A152157(n)])`
-/

namespace A144866.P8275236648509636419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144866.P8275236648509636419

/-! ## A144866.P16636073726496444427

`A144871(Δ[A023545(n+1)])`
-/

namespace A144866.P16636073726496444427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (f1 (n + 1) - f1 n).toNat

end

end A144866.P16636073726496444427

/-! ## A144866.P17818853727543460879

`A144871(A055999(n+2)+2)`
-/

namespace A144866.P17818853727543460879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A055999 (n + 2) + 2).toNat

end

end A144866.P17818853727543460879

/-! ## A144866.P4846576873889904303

`A144871(A027379(n+3)-1)`
-/

namespace A144866.P4846576873889904303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A027379 (n + 3) - 1).toNat

end

end A144866.P4846576873889904303

/-! ## A144866.P13992284549253889131

`A144871(A000096(n+4)-3)`
-/

namespace A144866.P13992284549253889131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000096 (n + 4) - 3).toNat

end

end A144866.P13992284549253889131

/-! ## A144866.P5575080016947299445

`A144871(A000217(n+5)-4)`
-/

namespace A144866.P5575080016947299445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000217 (n + 5) - 4).toNat

end

end A144866.P5575080016947299445

/-! ## A144866.P16506483481347535553

`A144871(A000124(n+5)-5)`
-/

namespace A144866.P16506483481347535553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000124 (n + 5) - 5).toNat

end

end A144866.P16506483481347535553

/-! ## A144866.P5277181108768181392

`A144871(Δ[A026054(n+3)]-(n+4))`
-/

namespace A144866.P5277181108768181392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (f1 (n + 1) - f1 n - (n + 4 : ℤ)).toNat

end

end A144866.P5277181108768181392

/-! ## A144866.P10106981683927112183

`A144871(A264443(n+1)-A264443(n))`
-/

namespace A144866.P10106981683927112183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A264443 (n + 1) - A264443 n).toNat

end

end A144866.P10106981683927112183

/-! ## A144866.P613087668132389291

`A144871(eq[4, A193592(n)])`
-/

namespace A144866.P613087668132389291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144866.P613087668132389291

/-!
# A144867: Shadow transform of C(n+5,6) = A000579(n+5).

The programs for A144867, there is no canonical definition to state claims against.
-/

/-! ## A144867.P16290430864440474857

`A144871(A052905(n+3))`
-/

namespace A144867.P16290430864440474857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A052905 (n + 3)).toNat

end

end A144867.P16290430864440474857

/-! ## A144867.P7784252715808264131

`A144871(A056119(n)+16)`
-/

namespace A144867.P7784252715808264131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A056119 n + 16).toNat

end

end A144867.P7784252715808264131

/-! ## A144867.P6097790057669663351

`A144871(eq[5, A152157(n)])`
-/

namespace A144867.P6097790057669663351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144867.P6097790057669663351

/-! ## A144867.P5202113307748565111

`A144871(Δ[A103145(n)]-n)`
-/

namespace A144867.P5202113307748565111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A144867.P5202113307748565111

/-! ## A144867.P786155135312339283

`A144871(A055999(n+3)+1)`
-/

namespace A144867.P786155135312339283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A055999 (n + 3) + 1).toNat

end

end A144867.P786155135312339283

/-! ## A144867.P7428476926675157398

`A144871(A046691(n+4)-1)`
-/

namespace A144867.P7428476926675157398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A046691 (n + 4) - 1).toNat

end

end A144867.P7428476926675157398

/-! ## A144867.P17120408193524697875

`A144871(A000217(n+6)-5)`
-/

namespace A144867.P17120408193524697875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000217 (n + 6) - 5).toNat

end

end A144867.P17120408193524697875

/-! ## A144867.P6449787066532365279

`A144871(A000124(n+6)-6)`
-/

namespace A144867.P6449787066532365279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000124 (n + 6) - 6).toNat

end

end A144867.P6449787066532365279

/-! ## A144867.P10833999527089747734

`A144871(Δ[A023551(n+1)]+1)`
-/

namespace A144867.P10833999527089747734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (f1 (n + 1) - f1 n + 1).toNat

end

end A144867.P10833999527089747734

/-! ## A144867.P1769921056919200756

`A144871(Δ[A026054(n+3)]+1)`
-/

namespace A144867.P1769921056919200756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (f1 (n + 1) - f1 n + 1).toNat

end

end A144867.P1769921056919200756

/-! ## A144867.P7080051608925237586

`A144871(eq[3, A219347(n)])`
-/

namespace A144867.P7080051608925237586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144867.P7080051608925237586

/-!
# A144868: Shadow transform of C(n+6,7) = A000580(n+6).

The programs for A144868, there is no canonical definition to state claims against.
-/

/-! ## A144868.P6288501727350282452

`A144871(A055999(n+4))`
-/

namespace A144868.P6288501727350282452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A055999 (n + 4)).toNat

end

end A144868.P6288501727350282452

/-! ## A144868.P10868946591018753710

`A144871(Δ[A023551(n+2)])`
-/

namespace A144868.P10868946591018753710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (f1 (n + 1) - f1 n).toNat

end

end A144868.P10868946591018753710

/-! ## A144868.P14128712410826978182

`A144871(Δ[A026054(n+4)])`
-/

namespace A144868.P14128712410826978182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (f1 (n + 1) - f1 n).toNat

end

end A144868.P14128712410826978182

/-! ## A144868.P10042378089750435679

`A144871(Δ[A103145(n)]+6)`
-/

namespace A144868.P10042378089750435679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (f1 (n + 1) - f1 n + 6).toNat

end

end A144868.P10042378089750435679

/-! ## A144868.P12578132176457174282

`A144871(A052905(n+4)-1)`
-/

namespace A144868.P12578132176457174282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A052905 (n + 4) - 1).toNat

end

end A144868.P12578132176457174282

/-! ## A144868.P14767810378712498137

`A144871(A000096(n+6)-5)`
-/

namespace A144868.P14767810378712498137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000096 (n + 6) - 5).toNat

end

end A144868.P14767810378712498137

/-! ## A144868.P18021117370652550371

`A144871(A000217(n+7)-6)`
-/

namespace A144868.P18021117370652550371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000217 (n + 7) - 6).toNat

end

end A144868.P18021117370652550371

/-! ## A144868.P6034165106483874639

`A144871(A000124(n+7)-7)`
-/

namespace A144868.P6034165106483874639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000124 (n + 7) - 7).toNat

end

end A144868.P6034165106483874639

/-! ## A144868.P15491807799985620742

`A144871(eq[4, A219347(n)])`
-/

namespace A144868.P15491807799985620742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144868.P15491807799985620742

/-!
# A144869: Shadow transform of C(n+7,8) = A000581(n+7).

The programs for A144869, there is no canonical definition to state claims against.
-/

/-! ## A144869.P15403335553372892288

`A144871(A155212(n+4)+1)`
-/

namespace A144869.P15403335553372892288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A155212 (n + 4) + 1).toNat

end

end A144869.P15403335553372892288

/-! ## A144869.P14348913514236035662

`A144871(A055999(n+5)-1)`
-/

namespace A144869.P14348913514236035662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A055999 (n + 5) - 1).toNat

end

end A144869.P14348913514236035662

/-! ## A144869.P8131582183120955037

`A144871(A000217(n+8)-7)`
-/

namespace A144869.P8131582183120955037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000217 (n + 8) - 7).toNat

end

end A144869.P8131582183120955037

/-! ## A144869.P1694490364618755317

`A144871(A000124(n+8)-8)`
-/

namespace A144869.P1694490364618755317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000124 (n + 8) - 8).toNat

end

end A144869.P1694490364618755317

/-! ## A144869.P7121187063530075681

`A144871(A000096(n+6)+n+2)`
-/

namespace A144869.P7121187063530075681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000096 (n + 6) + (n + 2 : ℤ)).toNat

end

end A144869.P7121187063530075681

/-! ## A144869.P7801323183290301783

`A144871(A167487(n+5)+2*n+1)`
-/

namespace A144869.P7801323183290301783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A167487 (n + 5) + (2 * n + 1 : ℤ)).toNat

end

end A144869.P7801323183290301783

/-! ## A144869.P7009958986251950328

`A144871(A005408(n)+A000217(n+6)+7)`
-/

namespace A144869.P7009958986251950328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A005408 n + (A000217 (n + 6) + 7)).toNat

end

end A144869.P7009958986251950328

/-!
# A144870: Shadow transform of C(n+8,9) = A000582(n+8).

The programs for A144870, there is no canonical definition to state claims against.
-/

/-! ## A144870.P9531799974856868264

`A144871(A155212(n+5))`
-/

namespace A144870.P9531799974856868264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A155212 (n + 5)).toNat

end

end A144870.P9531799974856868264

/-! ## A144870.P1481855413063421356

`A144871(A056115(n+4)+7)`
-/

namespace A144870.P1481855413063421356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A056115 (n + 4) + 7).toNat

end

end A144870.P1481855413063421356

/-! ## A144870.P768066229831544623

`A144871(A000217(n+9)-8)`
-/

namespace A144870.P768066229831544623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000217 (n + 9) - 8).toNat

end

end A144870.P768066229831544623

/-! ## A144870.P15716543695945562612

`A144871(A000124(n+9)-9)`
-/

namespace A144870.P15716543695945562612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A000124 (n + 9) - 9).toNat

end

end A144870.P15716543695945562612

/-! ## A144870.P8660608828636315330

`A144871(eq[6, A219347(n)])`
-/

namespace A144870.P8660608828636315330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144870.P8660608828636315330

/-! ## A144870.P2753772384233891609

`A144871(eq[8, A193592(n)])`
-/

namespace A144870.P2753772384233891609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144870.P2753772384233891609

/-! ## A144870.P17145623046220733454

`A144871(eq[14, A185782(n+1)])`
-/

namespace A144870.P17145623046220733454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144870.P17145623046220733454

/-!
# A144871: Square array A(n,k), n>=1, k>=1, read by antidiagonals, where sequence a_k of column k is shadow transform of C(n+k-1,k).

The programs for A144871, there is no canonical definition to state claims against.
-/

/-! ## A144871.P17359322710133607435

`A000005(gcd(A066799(n+1), A334325(n+1)))`
-/

namespace A144871.P17359322710133607435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A066799 (n + 1)) (A334325 (n + 1)))

end

end A144871.P17359322710133607435

/-! ## A144871.P7112206756198991706

`A038565(A094638(n+1)+A005384(3*n+5))`
-/

namespace A144871.P7112206756198991706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038565 (A094638 (n + 1) + A005384 (3 * n + 5)).toNat

end

end A144871.P7112206756198991706

/-! ## A144871.P6298921273276189858

`A090000(A066799(n+1)^A331921(n+1))`
-/

namespace A144871.P6298921273276189858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090000 (SequenceMachineLib.roundAway ((A066799 (n + 1) : ℚ) ^ (A331921 (n + 1) : ℤ))).toNat

end

end A144871.P6298921273276189858

/-! ## A144871.P9958408837022545853

`A103586(A034185(n+1)%A066799(n+1))`
-/

namespace A144871.P9958408837022545853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 (Int.tmod (A034185 (n + 1)) (A066799 (n + 1))).toNat

end

end A144871.P9958408837022545853

/-! ## A144871.P624149086966189393

`A118383(lcm(A118383(n+1), A183917(n+1)))`
-/

namespace A144871.P624149086966189393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118383 (Int.lcm (A118383 (n + 1)) (A183917 (n + 1)))

end

end A144871.P624149086966189393

/-!
# A144872: Periods of the rows of A144871.

The programs for A144872, there is no canonical definition to state claims against.
-/

/-! ## A144872.P3031947996602379038

`A349593(abs(A056220(n)))`
-/

namespace A144872.P3031947996602379038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349593 |A056220 n|.toNat

end

end A144872.P3031947996602379038

/-! ## A144872.P5668335408683499517

`A349593(A004273(n²))`
-/

namespace A144872.P5668335408683499517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349593 (A004273 (n ^ 2)).toNat

end

end A144872.P5668335408683499517

/-! ## A144872.P12656614045243356422

`A349593(A163985(n²))`
-/

namespace A144872.P12656614045243356422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349593 (A163985 (n ^ 2)).toNat

end

end A144872.P12656614045243356422

/-! ## A144872.P6564232745710955587

`A349593(abs(1-A001105(n)))`
-/

namespace A144872.P6564232745710955587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349593 |1 - A001105 n|.toNat

end

end A144872.P6564232745710955587

/-! ## A144872.P5899641864112007896

`A396574(n+1)+A159075(n)`
-/

namespace A144872.P5899641864112007896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396574 (n + 1) + A159075 n

end

end A144872.P5899641864112007896

/-!
# A144873: If n mod 8 = 0 or n mod 10 = 0 then floor(n^2/4)+n otherwise floor(n^2/4)+n-1.

The programs for A144873, there is no canonical definition to state claims against.
-/

/-! ## A144873.P5524470580280272611

`A024206(n+1)-A316345(A120157(n+1))`
-/

namespace A144873.P5524470580280272611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1) - A316345 (A120157 (n + 1)).toNat

end

end A144873.P5524470580280272611

/-! ## A144873.P6883964018570620036

`A024206(n+1)-A059841(A057275(2*(n+2)))`
-/

namespace A144873.P6883964018570620036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1) - A059841 (A057275 (2 * (n + 2))).toNat

end

end A144873.P6883964018570620036

/-! ## A144873.P16532600875567020742

`∑[A335885(∑[A059826(n)])]`
-/

namespace A144873.P16532600875567020742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059826 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144873.P16532600875567020742

/-! ## A144873.P12761840130955557018

`A213706(n)-A202954(A202954(n))`
-/

namespace A144873.P12761840130955557018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213706 n - A202954 (A202954 n).toNat

end

end A144873.P12761840130955557018

/-!
# A144876: Maximal number of distinct polyominoes into which an n X n square can be divided.

The programs for A144876, there is no canonical definition to state claims against.
-/

/-! ## A144876.P15775734289459904389

`floor((n+ϕ)^ϕ/2)`
-/

namespace A144876.P15775734289459904389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) + Real.goldenRatio) ^ Real.goldenRatio / 2⌋

end

end A144876.P15775734289459904389

/-! ## A144876.P10032443475194349652

`∑[ceil(log2(A162753(n)))]`
-/

namespace A144876.P10032443475194349652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A162753 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144876.P10032443475194349652

/-! ## A144876.P13325663834485977710

`ceil(log2(A084785(n)))+1`
-/

namespace A144876.P13325663834485977710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A084785 n : ℝ)⌉ + 1

end

end A144876.P13325663834485977710

/-! ## A144876.P14328459758791916905

`A186347(n+1)-char[3]`
-/

namespace A144876.P14328459758791916905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186347 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A144876.P14328459758791916905

/-! ## A144876.P2646976459914621805

`ceil(∑[sqrt(A310419(n))]/2)`
-/

namespace A144876.P2646976459914621805
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A310419 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / 2⌉

end

end A144876.P2646976459914621805

/-!
# A144877: Partition number array, called M31(-3), related to A049410(n,m) = S1(-3;n,m) (generalized Stirling triangle).

The programs for A144877, there is no canonical definition to state claims against.
-/

/-! ## A144877.P16105049741785537253

`A036040(n+1)*A145366(n+1)`
-/

namespace A144877.P16105049741785537253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A145366 (n + 1)

end

end A144877.P16105049741785537253

/-! ## A144877.P4605378117899259988

`A124794(A185974(n+1))*A145366(n+1)`
-/

namespace A144877.P4605378117899259988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A145366 (n + 1)

end

end A144877.P4605378117899259988

/-! ## A144877.P17398610585795514665

`A049009(n+1)/A178888(n+1)*A145366(n+1)`
-/

namespace A144877.P17398610585795514665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ) * (A145366 (n + 1) : ℚ)

end

end A144877.P17398610585795514665

/-! ## A144877.P17459028582357595021

`A127671(n+1)*A145366(n+1)/A264753(n+1)`
-/

namespace A144877.P17459028582357595021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127671 (n + 1) * A145366 (n + 1) : ℚ) / (A264753 (n + 1) : ℚ)

end

end A144877.P17459028582357595021

/-! ## A144877.P14461484694650333832

`A036038(n+1)/∏{e}[A185974(n+1), #!]*A145366(n+1)`
-/

namespace A144877.P14461484694650333832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℚ) * (A145366 (n + 1) : ℚ)

end

end A144877.P14461484694650333832

/-! ## A144877.P16581326749953529875

`A318810(2*A185974(n+1))/A096162(n+1)*A145366(n+1)`
-/

namespace A144877.P16581326749953529875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318810 (2 * A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A145366 (n + 1) : ℚ)

end

end A144877.P16581326749953529875

/-! ## A144877.P6183131482244671845

`A049009(n+1)/(A035206(n+1)*A096162(n+1))*A145366(n+1)`
-/

namespace A144877.P6183131482244671845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A035206 (n + 1) * A096162 (n + 1) : ℚ) * (A145366 (n + 1) : ℚ)

end

end A144877.P6183131482244671845

/-! ## A144877.P12184786405515537747

`A035206(n+1)*A036038(n+1)/A178888(n+1)*A145366(n+1)`
-/

namespace A144877.P12184786405515537747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035206 (n + 1) * A036038 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ) * (A145366 (n + 1) : ℚ)

end

end A144877.P12184786405515537747

/-!
# A144878: Partition number array, called M31(-4), related to A049424(n,m) = S1(-4;n,m) (generalized Stirling triangle).

The programs for A144878, there is no canonical definition to state claims against.
-/

/-! ## A144878.P3460264981241936582

`A036040(n+1)*A145369(n+1)`
-/

namespace A144878.P3460264981241936582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A145369 (n + 1)

end

end A144878.P3460264981241936582

/-! ## A144878.P16636739406417294706

`A124794(A185974(n+1))*A145369(n+1)`
-/

namespace A144878.P16636739406417294706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A145369 (n + 1)

end

end A144878.P16636739406417294706

/-! ## A144878.P14103307493668695372

`A036039(n+1)/A107106(n+1)*A145369(n+1)`
-/

namespace A144878.P14103307493668695372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A145369 (n + 1) : ℚ)

end

end A144878.P14103307493668695372

/-! ## A144878.P1296641497990767270

`A143171(n+1)/A144269(n+1)*A145369(n+1)`
-/

namespace A144878.P1296641497990767270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A144269 (n + 1) : ℚ) * (A145369 (n + 1) : ℚ)

end

end A144878.P1296641497990767270

/-! ## A144878.P14765233649197466097

`A127671(n+1)*A145369(n+1)/A264753(n+1)`
-/

namespace A144878.P14765233649197466097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127671 (n + 1) * A145369 (n + 1) : ℚ) / (A264753 (n + 1) : ℚ)

end

end A144878.P14765233649197466097

/-! ## A144878.P6278178936958959201

`A036038(n+1)/A112624(A185974(n+1))*A145369(n+1)`
-/

namespace A144878.P6278178936958959201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A112624 (A185974 (n + 1)).toNat : ℚ) * (A145369 (n + 1) : ℚ)

end

end A144878.P6278178936958959201

/-! ## A144878.P8496351639212722808

`A318762(A185974(n+1))/A096162(n+1)*A145369(n+1)`
-/

namespace A144878.P8496351639212722808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318762 (A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A145369 (n + 1) : ℚ)

end

end A144878.P8496351639212722808

/-! ## A144878.P4787249457313151224

`A318808(2*A185974(n+1))/A096162(n+1)*A145369(n+1)`
-/

namespace A144878.P4787249457313151224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318808 (2 * A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A145369 (n + 1) : ℚ)

end

end A144878.P4787249457313151224

/-! ## A144878.P4429667609913183316

`A144353(n+1)/A144880(n+1)*A145369(n+1)`
-/

namespace A144878.P4429667609913183316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144353 (n + 1) : ℚ) / (A144880 (n + 1) : ℚ) * (A145369 (n + 1) : ℚ)

end

end A144878.P4429667609913183316

/-!
# A144879: Partition number array, called M31(-5), related to A049411(n,m) = S1(-5;n,m) (generalized Stirling triangle).

The programs for A144879, there is no canonical definition to state claims against.
-/

/-! ## A144879.P4553662316115357571

`A036040(n+1)*A145372(n+1)`
-/

namespace A144879.P4553662316115357571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A145372 (n + 1)

end

end A144879.P4553662316115357571

/-! ## A144879.P15977070164386017526

`A124794(A185974(n+1))*A145372(n+1)`
-/

namespace A144879.P15977070164386017526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A145372 (n + 1)

end

end A144879.P15977070164386017526

/-! ## A144879.P1906237596861547779

`A036038(n+1)/A112624(A185974(n+1))*A145372(n+1)`
-/

namespace A144879.P1906237596861547779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A112624 (A185974 (n + 1)).toNat : ℚ) * (A145372 (n + 1) : ℚ)

end

end A144879.P1906237596861547779

/-! ## A144879.P16559565974262018903

`A318762(A185974(n+1))/A096162(n+1)*A145372(n+1)`
-/

namespace A144879.P16559565974262018903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318762 (A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A145372 (n + 1) : ℚ)

end

end A144879.P16559565974262018903

/-! ## A144879.P14388986040904429006

`A318808(2*A185974(n+1))/A096162(n+1)*A145372(n+1)`
-/

namespace A144879.P14388986040904429006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318808 (2 * A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A145372 (n + 1) : ℚ)

end

end A144879.P14388986040904429006

/-! ## A144879.P2890553230092453512

`A318810(2*A185974(n+1))/A096162(n+1)*A145372(n+1)`
-/

namespace A144879.P2890553230092453512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318810 (2 * A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A145372 (n + 1) : ℚ)

end

end A144879.P2890553230092453512

/-! ## A144879.P15501796814445494068

`A144353(n+1)/A144880(n+1)*A145372(n+1)`
-/

namespace A144879.P15501796814445494068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144353 (n + 1) : ℚ) / (A144880 (n + 1) : ℚ) * (A145372 (n + 1) : ℚ)

end

end A144879.P15501796814445494068

/-!
# A144880: Partition number array, called M31hat(3).

The programs for A144880, there is no canonical definition to state claims against.
-/

/-! ## A144880.P2625110898039028077

`A144353(n+1)/A036040(n+1)`
-/

namespace A144880.P2625110898039028077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144353 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A144880.P2625110898039028077

/-! ## A144880.P11781501958387077097

`A144353(n+1)/A124794(A185974(n+1))`
-/

namespace A144880.P11781501958387077097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144353 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A144880.P11781501958387077097

/-! ## A144880.P5554841603690202734

`A107106(n+1)/A036039(n+1)*A144353(n+1)`
-/

namespace A144880.P5554841603690202734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A144353 (n + 1) : ℚ)

end

end A144880.P5554841603690202734

/-! ## A144880.P2526839388300015544

`A134133(n+1)/A130561(n+1)*A144353(n+1)`
-/

namespace A144880.P2526839388300015544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A130561 (n + 1) : ℚ) * (A144353 (n + 1) : ℚ)

end

end A144880.P2526839388300015544

/-! ## A144880.P5369998683756378926

`A144269(n+1)/A143171(n+1)*A144353(n+1)`
-/

namespace A144880.P5369998683756378926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144269 (n + 1) : ℚ) / (A143171 (n + 1) : ℚ) * (A144353 (n + 1) : ℚ)

end

end A144880.P5369998683756378926

/-! ## A144880.P7909547496446173400

`A144353(n+1)/floor(A049009(n+1)/A178888(n+1))`
-/

namespace A144880.P7909547496446173400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144353 (n + 1) : ℚ) / (⌊(A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ)⌋ : ℚ)

end

end A144880.P7909547496446173400

/-! ## A144880.P3206255173365798963

`A144353(n+1)/A028310(A130561(n+1)/A134133(n+1))`
-/

namespace A144880.P3206255173365798963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144353 (n + 1) : ℚ) / (A028310 (SequenceMachineLib.roundAway ((A130561 (n + 1) : ℚ) / (A134133 (n + 1) : ℚ))).toNat : ℚ)

end

end A144880.P3206255173365798963

/-! ## A144880.P18390815993262621694

`A144274(n+1)/A143172(n+1)*A144353(n+1)`
-/

namespace A144880.P18390815993262621694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144274 (n + 1) : ℚ) / (A143172 (n + 1) : ℚ) * (A144353 (n + 1) : ℚ)

end

end A144880.P18390815993262621694

/-! ## A144880.P8408785591273360259

`A144353(n+1)/A144354(n+1)*A144885(n+1)`
-/

namespace A144880.P8408785591273360259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144353 (n + 1) : ℚ) / (A144354 (n + 1) : ℚ) * (A144885 (n + 1) : ℚ)

end

end A144880.P8408785591273360259

/-!
# A144881: Lower triangular array called S1hat(3) related to partition number array A144880.

The programs for A144881, there is no canonical definition to state claims against.
-/

/-! ## A144881.P16918955934542342651

`∑{d}[A335109(n+1), #^A275062(2*(n+2))]`
-/

namespace A144881.P16918955934542342651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335109 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A275062 (2 * (n + 2)) : ℤ)

end

end A144881.P16918955934542342651

/-! ## A144881.P10129979348348860831

`A122844(n+1)-A122875(A122897(n))`
-/

namespace A144881.P10129979348348860831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122844 (n + 1) - A122875 (A122897 n).toNat

end

end A144881.P10129979348348860831

/-!
# A144882: Row sums of triangle A144881 (S1hat(3)) and of array A144880 (M31hat(3)).

The programs for A144882, there is no canonical definition to state claims against.
-/

/-! ## A144882.P17856587372584606513

`A127379(A027618(n))`
-/

namespace A144882.P17856587372584606513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127379 (A027618 n).toNat

end

end A144882.P17856587372584606513

/-!
# A144883: Second column (m=2) of triangle A144881 (S1hat(3)).

The programs for A144883, there is no canonical definition to state claims against.
-/

/-! ## A144883.P17278049059385558245

`A144881(∑[n+1]+2)`
-/

namespace A144883.P17278049059385558245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144881 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144883.P17278049059385558245

/-! ## A144883.P8310006653372304550

`record[A144881(A080036(n))]`
-/

namespace A144883.P8310006653372304550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144881 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144883.P8310006653372304550

/-! ## A144883.P6374744860484649350

`record[A144881(A022856(n+1))]`
-/

namespace A144883.P6374744860484649350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144881 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144883.P6374744860484649350

/-! ## A144883.P16519354844452421204

`record[A144881(A072233(n)+n)]`
-/

namespace A144883.P16519354844452421204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144881 (A072233 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144883.P16519354844452421204

/-! ## A144883.P8202254660309929766

`record[A051168(n)*A144881(n+1)]`
-/

namespace A144883.P8202254660309929766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A144881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144883.P8202254660309929766

/-!
# A144884: Third column (m=3) of triangle A144881 (S1hat(3)).

The programs for A144884, there is no canonical definition to state claims against.
-/

/-! ## A144884.P16893944716592531154

`A144881(∑[n+2]+4)`
-/

namespace A144884.P16893944716592531154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144881 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144884.P16893944716592531154

/-! ## A144884.P14660720824972972888

`and(-1, A144881(A167614(n+1)))`
-/

namespace A144884.P14660720824972972888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A144881 (A167614 (n + 1)).toNat)

end

end A144884.P14660720824972972888

/-! ## A144884.P5886144377484076316

`record[gcd(A144881(n+1), A334568(n))]`
-/

namespace A144884.P5886144377484076316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144881 (n + 1)) (A334568 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144884.P5886144377484076316

/-! ## A144884.P16418352569395381097

`A144881(A167614(n+1))+A025437(n)`
-/

namespace A144884.P16418352569395381097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144881 (A167614 (n + 1)).toNat + A025437 n

end

end A144884.P16418352569395381097

/-!
# A144885: Partition number array, called M31hat(4).

The programs for A144885, there is no canonical definition to state claims against.
-/

/-! ## A144885.P13361789978449447787

`A144354(n+1)/A036040(n+1)`
-/

namespace A144885.P13361789978449447787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144354 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A144885.P13361789978449447787

/-! ## A144885.P9671983727634376500

`A144354(n+1)/A124794(A185974(n+1))`
-/

namespace A144885.P9671983727634376500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144354 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A144885.P9671983727634376500

/-! ## A144885.P9354172516583905137

`A107106(n+1)/A036039(n+1)*A144354(n+1)`
-/

namespace A144885.P9354172516583905137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A144354 (n + 1) : ℚ)

end

end A144885.P9354172516583905137

/-! ## A144885.P18151792076828956784

`A144354(n+1)/A049019(n+1)*A178803(n+1)`
-/

namespace A144885.P18151792076828956784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144354 (n + 1) : ℚ) / (A049019 (n + 1) : ℚ) * (A178803 (n + 1) : ℚ)

end

end A144885.P18151792076828956784

/-! ## A144885.P13943885338565235076

`A134133(n+1)/A130561(n+1)*A144354(n+1)`
-/

namespace A144885.P13943885338565235076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A130561 (n + 1) : ℚ) * (A144354 (n + 1) : ℚ)

end

end A144885.P13943885338565235076

/-! ## A144885.P6992413615301934390

`A144269(n+1)/A143171(n+1)*A144354(n+1)`
-/

namespace A144885.P6992413615301934390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144269 (n + 1) : ℚ) / (A143171 (n + 1) : ℚ) * (A144354 (n + 1) : ℚ)

end

end A144885.P6992413615301934390

/-! ## A144885.P10507950341330679719

`A144274(n+1)/A143172(n+1)*A144354(n+1)`
-/

namespace A144885.P10507950341330679719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144274 (n + 1) : ℚ) / (A143172 (n + 1) : ℚ) * (A144354 (n + 1) : ℚ)

end

end A144885.P10507950341330679719

/-! ## A144885.P13500581854153063998

`A144354(n+1)/A144353(n+1)*A144880(n+1)`
-/

namespace A144885.P13500581854153063998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144354 (n + 1) : ℚ) / (A144353 (n + 1) : ℚ) * (A144880 (n + 1) : ℚ)

end

end A144885.P13500581854153063998

/-!
# A144886: Lower triangular array called S1hat(4) related to partition number array A144885.

The programs for A144886, there is no canonical definition to state claims against.
-/

/-! ## A144886.P12100730229588108767

`A144885(gcd((2-(-1)^n)*(n+1)*3^n, (n+1)*∑{e}[n+1, #]^(n+1)))`
-/

namespace A144886.P12100730229588108767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144885 (Int.gcd ((2 - (-1) ^ n) * ((n + 1) * 3 ^ n : ℤ)) (((n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ (n + 1) : ℕ) : ℤ))

end

end A144886.P12100730229588108767

/-! ## A144886.P2229640683177321713

`A144885(∑[A053497(n)])`
-/

namespace A144886.P2229640683177321713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144886.P2229640683177321713

/-! ## A144886.P8530264509399562927

`A144885(A024648(n+1))`
-/

namespace A144886.P8530264509399562927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144885 (A024648 (n + 1)).toNat

end

end A144886.P8530264509399562927

/-!
# A144887: Row sums of triangle A144886 (S1hat(4)).

The programs for A144887, there is no canonical definition to state claims against.
-/

/-! ## A144887.P5193682473486150686

`A117484(7^n)+∑[3^(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A144887.P5193682473486150686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117484 (7 ^ n) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144887.P5193682473486150686

/-!
# A144888: Second column (m=2) of triangle A144886 (S1hat(4)).

The programs for A144888, there is no canonical definition to state claims against.
-/

/-! ## A144888.P10115697611960983064

`A144886(∑[n+1]+2)`
-/

namespace A144888.P10115697611960983064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144886 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144888.P10115697611960983064

/-! ## A144888.P11893857674885757334

`record[A144886(A080036(n))]`
-/

namespace A144888.P11893857674885757334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144886 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144888.P11893857674885757334

/-! ## A144888.P354252155485123105

`record[A144886(A022856(n+1))]`
-/

namespace A144888.P354252155485123105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144886 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144888.P354252155485123105

/-! ## A144888.P696570769362588860

`record[A051168(n)*A144886(n+1)]`
-/

namespace A144888.P696570769362588860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A144886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144888.P696570769362588860

/-! ## A144888.P15176949205498130056

`record[A072233(n)*A144886(n+1)]`
-/

namespace A144888.P15176949205498130056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A144886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144888.P15176949205498130056

/-!
# A144889: Third column (m=3) of triangle A144886 (S1hat(4)).

The programs for A144889, there is no canonical definition to state claims against.
-/

/-! ## A144889.P17452826393193700207

`A144886(∑[n+2]+4)`
-/

namespace A144889.P17452826393193700207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144886 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144889.P17452826393193700207

/-! ## A144889.P14812596376948248920

`record[and(A144874(n), A144886(n+1))]`
-/

namespace A144889.P14812596376948248920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144874 n) (A144886 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144889.P14812596376948248920

/-! ## A144889.P203747372711181535

`abs(1-A144886(A167614(n+1)))+1`
-/

namespace A144889.P203747372711181535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A144886 (A167614 (n + 1)).toNat| + 1

end

end A144889.P203747372711181535

/-! ## A144889.P10883314507518960793

`A144886(A167614(n+1))+A025466(n)`
-/

namespace A144889.P10883314507518960793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144886 (A167614 (n + 1)).toNat + A025466 n

end

end A144889.P10883314507518960793

/-!
# A144890: Partition number array, called M31hat(5).

The programs for A144890, there is no canonical definition to state claims against.
-/

/-! ## A144890.P12107431938836768634

`A144355(n+1)/A036040(n+1)`
-/

namespace A144890.P12107431938836768634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144355 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A144890.P12107431938836768634

/-! ## A144890.P11636890537075500946

`A144355(n+1)/A124794(A185974(n+1))`
-/

namespace A144890.P11636890537075500946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144355 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A144890.P11636890537075500946

/-! ## A144890.P11863214707597754914

`A107106(n+1)/A036039(n+1)*A144355(n+1)`
-/

namespace A144890.P11863214707597754914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A144355 (n + 1) : ℚ)

end

end A144890.P11863214707597754914

/-! ## A144890.P14870682043560812910

`A144355(n+1)/A144354(n+1)*A144885(n+1)`
-/

namespace A144890.P14870682043560812910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144355 (n + 1) : ℚ) / (A144354 (n + 1) : ℚ) * (A144885 (n + 1) : ℚ)

end

end A144890.P14870682043560812910

/-! ## A144890.P11834949412449510896

`A144355(n+1)/A181415(n+1)*A181512(n+1)`
-/

namespace A144890.P11834949412449510896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144355 (n + 1) : ℚ) / (A181415 (n + 1) : ℚ) * (A181512 (n + 1) : ℚ)

end

end A144890.P11834949412449510896

/-!
# A144891: Lower triangular array called S1hat(5) related to partition number array A144890.

The programs for A144891, there is no canonical definition to state claims against.
-/

/-! ## A144891.P8702426251900748031

`A144890(A024648(n+1))`
-/

namespace A144891.P8702426251900748031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144890 (A024648 (n + 1)).toNat

end

end A144891.P8702426251900748031

/-! ## A144891.P6466951824237903335

`A144890(A024649(n+1))`
-/

namespace A144891.P6466951824237903335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144890 (A024649 (n + 1)).toNat

end

end A144891.P6466951824237903335

/-! ## A144891.P14851870835451303694

`A144890(A028429(n+1))`
-/

namespace A144891.P14851870835451303694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144890 (A028429 (n + 1)).toNat

end

end A144891.P14851870835451303694

/-!
# A144892: Row sums of triangle A144891 (S1hat(5)).

The programs for A144892, there is no canonical definition to state claims against.
-/

/-! ## A144892.P13959065941454303563

`xor(n, A008624(A228067(n+1)))`
-/

namespace A144892.P13959065941454303563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008624 (A228067 (n + 1)).toNat)

end

end A144892.P13959065941454303563

/-!
# A144893: Second column (m=2) of triangle A144891 (S1hat(5)).

The programs for A144893, there is no canonical definition to state claims against.
-/

/-! ## A144893.P17927873750628534557

`A144891(∑[n+1]+2)`
-/

namespace A144893.P17927873750628534557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144891 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144893.P17927873750628534557

/-! ## A144893.P13057419590180878856

`record[A144891(A080036(n))]`
-/

namespace A144893.P13057419590180878856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144891 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144893.P13057419590180878856

/-! ## A144893.P4917917570806942684

`record[A144891(∑[A250266(n)])]`
-/

namespace A144893.P4917917570806942684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144891 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144893.P4917917570806942684

/-! ## A144893.P7446792344742638078

`record[A144891(A022856(n+1))]`
-/

namespace A144893.P7446792344742638078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144891 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144893.P7446792344742638078

/-! ## A144893.P8604525375320587458

`record[A144891(record[A194904(n+1)])]`
-/

namespace A144893.P8604525375320587458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194904 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144891 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144893.P8604525375320587458

/-!
# A144894: Third column (m=3) of triangle A144891 (S1hat(5)).

The programs for A144894, there is no canonical definition to state claims against.
-/

/-! ## A144894.P15673239369021803671

`A144891(∑[n+2]+4)`
-/

namespace A144894.P15673239369021803671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144891 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144894.P15673239369021803671

/-! ## A144894.P10206594419622532098

`record[A144891(n+1)*A159854(n)]`
-/

namespace A144894.P10206594419622532098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144891 (n + 1) * A159854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144894.P10206594419622532098

/-! ## A144894.P4973511901943791020

`record[gcd(A144891(n+4), A261780(n))]`
-/

namespace A144894.P4973511901943791020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144891 (n + 4)) (A261780 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144894.P4973511901943791020

/-! ## A144894.P6664370724582691237

`A144891(A167614(n+1))+A025466(n)`
-/

namespace A144894.P6664370724582691237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144891 (A167614 (n + 1)).toNat + A025466 n

end

end A144894.P6664370724582691237

/-!
# A144895: Second column of triangle A134134 (S2'(2) = S1hat(2)).

The programs for A144895, there is no canonical definition to state claims against.
-/

/-! ## A144895.P13866102560457852174

`A000142(n+2)-A024421(n+2)`
-/

namespace A144895.P13866102560457852174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 2) - A024421 (n + 2)

end

end A144895.P13866102560457852174

/-! ## A144895.P7278269412535101306

`A024419(n+2)-A000142(n+2)`
-/

namespace A144895.P7278269412535101306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024419 (n + 2) - A000142 (n + 2)

end

end A144895.P7278269412535101306

/-! ## A144895.P9347229515241747842

`A134134(∑[n+1]+2)`
-/

namespace A144895.P9347229515241747842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134134 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144895.P9347229515241747842

/-! ## A144895.P836158598514819993

`record[A134134(A080036(n))]`
-/

namespace A144895.P836158598514819993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134134 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144895.P836158598514819993

/-!
# A144896: Third column of triangle A134134 (S2'(2)= S1hat(2)).

The programs for A144896, there is no canonical definition to state claims against.
-/

/-! ## A144896.P11142521220363770675

`A144352(n+3)-A024419(n+3)`
-/

namespace A144896.P11142521220363770675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144352 (n + 3) - A024419 (n + 3)

end

end A144896.P11142521220363770675

/-! ## A144896.P11576624545225493408

`A134134(∑[n+2]+4)`
-/

namespace A144896.P11576624545225493408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134134 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144896.P11576624545225493408

/-! ## A144896.P7076348850681550351

`record[A134134(A376354(n+1))]`
-/

namespace A144896.P7076348850681550351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134134 (A376354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144896.P7076348850681550351

/-! ## A144896.P6204409046104344775

`record[A134134(A376356(n+1)+1)]`
-/

namespace A144896.P6204409046104344775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134134 (A376356 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144896.P6204409046104344775

/-!
# A144897: Expansion of x/(1 - 4*x + 6*x^2 - 5*x^3 + 4*x^4 - 3*x^5).

The programs for A144897, the canonical program `A144897.P18131749799959075657` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144897 has offset 0).

The definition of A144897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-4x+6x^2-5x^3+4x^4-3x^5))` (program `A144897.P18131749799959075657`, by `A144897.P18131749799959075657.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144897.P18131749799959075657

`ogf(x/(1-4x+6x^2-5x^3+4x^4-3x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144897

/-- `ogf(x/(1-4x+6x^2-5x^3+4x^4-3x^5))` -/
def P18131749799959075657.Spec : Prop :=
  ∀ n, P18131749799959075657.a n = A144897 n

theorem P18131749799959075657.correct : P18131749799959075657.Spec := by
  intro n
  simp only [A144897]

end A144897

/-! ## A144897.P125448069688685485

`∑[A130696(∑[A274199(n)])]`
-/

namespace A144897.P125448069688685485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144897.P125448069688685485

namespace A144897

/-- `∑[A130696(∑[A274199(n)])]` -/
def P125448069688685485.Spec : Prop :=
  ∀ n, P125448069688685485.a n = A144897 n

end A144897

/-! ## A144897.P15295953077567758947

`∑[A130696(∑[A358335(n)])]`
-/

namespace A144897.P15295953077567758947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144897.P15295953077567758947

namespace A144897

/-- `∑[A130696(∑[A358335(n)])]` -/
def P15295953077567758947.Spec : Prop :=
  ∀ n, P15295953077567758947.a n = A144897 n

end A144897

/-! ## A144897.P13308499853553482360

`A000041(2*n)-A336168(A000332(n))`
-/

namespace A144897.P13308499853553482360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A336168 (A000332 n).toNat

end

end A144897.P13308499853553482360

namespace A144897

/-- `A000041(2*n)-A336168(A000332(n))` -/
def P13308499853553482360.Spec : Prop :=
  ∀ n, P13308499853553482360.a n = A144897 n

end A144897

/-! ## A144897.P8774041350446312790

`A026819(A127982(n+1))-A001221(A281500(n))`
-/

namespace A144897.P8774041350446312790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A127982 (n + 1)).toNat - A001221 (A281500 n).toNat

end

end A144897.P8774041350446312790

namespace A144897

/-- `A026819(A127982(n+1))-A001221(A281500(n))` -/
def P8774041350446312790.Spec : Prop :=
  ∀ n, P8774041350446312790.a n = A144897 n

end A144897

/-!
# A144898: Expansion of x/((1-x-x^3)*(1-x)^4).

The programs for A144898, the canonical program `A144898.P12393827291955063982` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144898 has offset 0).

The definition of A144898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-5x+10x^2-11x^3+9x^4-7x^5+4x^6-x^7))` (program `A144898.P12393827291955063982`, by `A144898.P12393827291955063982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144898.P12393827291955063982

`ogf(x/(1-5x+10x^2-11x^3+9x^4-7x^5+4x^6-x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144898

/-- `ogf(x/(1-5x+10x^2-11x^3+9x^4-7x^5+4x^6-x^7))` -/
def P12393827291955063982.Spec : Prop :=
  ∀ n, P12393827291955063982.a n = A144898 n

theorem P12393827291955063982.correct : P12393827291955063982.Spec := by
  intro n
  simp only [A144898]

end A144898

/-! ## A144898.P6639578152777329541

`∑[∑[a(n-1)+a(n-3)+n]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A144898.P6639578152777329541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 3) + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144898.P6639578152777329541

namespace A144898

/-- `∑[∑[a(n-1)+a(n-3)+n]]` -/
def P6639578152777329541.Spec : Prop :=
  ∀ n, (P6639578152777329541.a n : ℤ) = A144898 n

end A144898

/-! ## A144898.P14212923175822037532

`∑[A226405(n)]`
-/

namespace A144898.P14212923175822037532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144898.P14212923175822037532

namespace A144898

/-- `∑[A226405(n)]` -/
def P14212923175822037532.Spec : Prop :=
  ∀ n, P14212923175822037532.a n = A144898 n

end A144898

/-! ## A144898.P3831902351631160600

`∑[∑[A020745(n)-(n+3)]]`
-/

namespace A144898.P3831902351631160600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 n - (n + 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144898.P3831902351631160600

namespace A144898

/-- `∑[∑[A020745(n)-(n+3)]]` -/
def P3831902351631160600.Spec : Prop :=
  ∀ n, P3831902351631160600.a n = A144898 n

end A144898

/-! ## A144898.P14451822209093692454

`∑[∑[∑[A068921(n+1)-1]]]`
-/

namespace A144898.P14451822209093692454
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144898.P14451822209093692454

namespace A144898

/-- `∑[∑[∑[A068921(n+1)-1]]]` -/
def P14451822209093692454.Spec : Prop :=
  ∀ n, P14451822209093692454.a n = A144898 n

end A144898

/-! ## A144898.P971685292135033711

`∑[∑[∑[A000930(n+2)-1]]]`
-/

namespace A144898.P971685292135033711
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144898.P971685292135033711

namespace A144898

/-- `∑[∑[∑[A000930(n+2)-1]]]` -/
def P971685292135033711.Spec : Prop :=
  ∀ n, P971685292135033711.a n = A144898 n

end A144898

/-! ## A144898.P16057216378476547842

`∑[∑[A050228(n+1)]-A050228(n+1)]`
-/

namespace A144898.P16057216378476547842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050228 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A050228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144898.P16057216378476547842

namespace A144898

/-- `∑[∑[A050228(n+1)]-A050228(n+1)]` -/
def P16057216378476547842.Spec : Prop :=
  ∀ n, P16057216378476547842.a n = A144898 n

end A144898

/-! ## A144898.P2525275024321899776

`A144899(n+1)-(A226405(n+1)+A144899(n))`
-/

namespace A144898.P2525275024321899776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144899 (n + 1) - (A226405 (n + 1) + A144899 n)

end

end A144898.P2525275024321899776

namespace A144898

/-- `A144899(n+1)-(A226405(n+1)+A144899(n))` -/
def P2525275024321899776.Spec : Prop :=
  ∀ n, P2525275024321899776.a n = A144898 n

end A144898

/-!
# A144899: Expansion of x/((1-x-x^3)*(1-x)^5).

The programs for A144899, the canonical program `A144899.P14618242848504533038` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144899 has offset 0).

The definition of A144899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-6x+15x^2-21x^3+20x^4-16x^5+11x^6-5x^7+x^8))` (program `A144899.P14618242848504533038`, by `A144899.P14618242848504533038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144899.P14618242848504533038

`ogf(x/(1-6x+15x^2-21x^3+20x^4-16x^5+11x^6-5x^7+x^8))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144899

/-- `ogf(x/(1-6x+15x^2-21x^3+20x^4-16x^5+11x^6-5x^7+x^8))` -/
def P14618242848504533038.Spec : Prop :=
  ∀ n, P14618242848504533038.a n = A144899 n

theorem P14618242848504533038.correct : P14618242848504533038.Spec := by
  intro n
  simp only [A144899]

end A144899

/-! ## A144899.P10041838205428943910

`∑[∑[∑[a(n-1)+a(n-3)+n]]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A144899.P10041838205428943910
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f3 =>
  f3 (n - 1) + (f3 (n - 3) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144899.P10041838205428943910

namespace A144899

/-- `∑[∑[∑[a(n-1)+a(n-3)+n]]]` -/
def P10041838205428943910.Spec : Prop :=
  ∀ n, (P10041838205428943910.a n : ℤ) = A144899 n

end A144899

/-! ## A144899.P8677349745965318479

`∑[A144898(n)]`
-/

namespace A144899.P8677349745965318479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144899.P8677349745965318479

namespace A144899

/-- `∑[A144898(n)]` -/
def P8677349745965318479.Spec : Prop :=
  ∀ n, P8677349745965318479.a n = A144899 n

end A144899

/-! ## A144899.P15544227332404928635

`∑[∑[A226405(n)]]`
-/

namespace A144899.P15544227332404928635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144899.P15544227332404928635

namespace A144899

/-- `∑[∑[A226405(n)]]` -/
def P15544227332404928635.Spec : Prop :=
  ∀ n, P15544227332404928635.a n = A144899 n

end A144899

/-! ## A144899.P7152682274930865696

`∑[∑[∑[A020745(n)-(n+3)]]]`
-/

namespace A144899.P7152682274930865696
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 n - (n + 3 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144899.P7152682274930865696

namespace A144899

/-- `∑[∑[∑[A020745(n)-(n+3)]]]` -/
def P7152682274930865696.Spec : Prop :=
  ∀ n, P7152682274930865696.a n = A144899 n

end A144899

/-! ## A144899.P638984741082617470

`record[Δ[A144900(A002265(n))]]`
-/

namespace A144899.P638984741082617470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144900 (A002265 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144899.P638984741082617470

namespace A144899

/-- `record[Δ[A144900(A002265(n))]]` -/
def P638984741082617470.Spec : Prop :=
  ∀ n, P638984741082617470.a n = A144899 n

end A144899

/-! ## A144899.P3811776053055415510

`Δ[A144900(n)]-A144898(n+1)`
-/

namespace A144899.P3811776053055415510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A144898 (n + 1)

end

end A144899.P3811776053055415510

namespace A144899

/-- `Δ[A144900(n)]-A144898(n+1)` -/
def P3811776053055415510.Spec : Prop :=
  ∀ n, P3811776053055415510.a n = A144899 n

end A144899

/-! ## A144899.P13005525366465692499

`Δ[A144900(n)-A144898(n)]-A144898(n)`
-/

namespace A144899.P13005525366465692499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144900 n - A144898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A144898 n

end

end A144899.P13005525366465692499

namespace A144899

/-- `Δ[A144900(n)-A144898(n)]-A144898(n)` -/
def P13005525366465692499.Spec : Prop :=
  ∀ n, P13005525366465692499.a n = A144899 n

end A144899

/-! ## A144899.P7073503625971965454

`A144900(n+1)-(A144900(n)+A144898(n+1))`
-/

namespace A144899.P7073503625971965454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144900 (n + 1) - (A144900 n + A144898 (n + 1))

end

end A144899.P7073503625971965454

namespace A144899

/-- `A144900(n+1)-(A144900(n)+A144898(n+1))` -/
def P7073503625971965454.Spec : Prop :=
  ∀ n, P7073503625971965454.a n = A144899 n

end A144899

/-! ## A144899.P5512310218514797145

`record[A144903(n+1+A000096(n+1)+n)]`
-/

namespace A144899.P5512310218514797145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 ((n + 1 : ℤ) + (A000096 (n + 1) + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144899.P5512310218514797145

namespace A144899

/-- `record[A144903(n+1+A000096(n+1)+n)]` -/
def P5512310218514797145.Spec : Prop :=
  ∀ n, P5512310218514797145.a n = A144899 n

end A144899

