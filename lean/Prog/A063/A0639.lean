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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B003.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A063901: Numbers k such that Sum_{j=1..k} A001065(j) is divisible by k.

The programs for A063901, there is no canonical definition to state claims against.
-/

/-! ## A063901.P10970396639899311167

`record[gcd(n+1, A049766(n+1))]`
-/

namespace A063901.P10970396639899311167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A049766 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063901.P10970396639899311167

/-! ## A063901.P10828061951710660504

`record[gcd(n+2, A153485(n+2))]`
-/

namespace A063901.P10828061951710660504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A153485 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063901.P10828061951710660504

/-! ## A063901.P10153087779003657823

`record[gcd(2*n+1-n, A244048(n+2))]`
-/

namespace A063901.P10153087779003657823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A244048 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063901.P10153087779003657823

/-! ## A063901.P16866146227829835783

`record[A028310(gcd(n, A244048(n+1)))]`
-/

namespace A063901.P16866146227829835783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A244048 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063901.P16866146227829835783

/-! ## A063901.P16401423969448140328

`record[gcd(A244048(n+2), A318518(2*(n+1)))]`
-/

namespace A063901.P16401423969448140328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244048 (n + 2)) (A318518 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063901.P16401423969448140328

/-!
# A063902: a(n+1) = sum{j = 0,...n}[C(2n,2j)a(j)a(n-j)] with a(0) = 1.

The programs for A063902, there is no canonical definition to state claims against.
-/

/-! ## A063902.P1629536400331443160

`A083219(n²*a(n-1))` with `a(0)=1`
-/

namespace A063902.P1629536400331443160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083219 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A063902.P1629536400331443160

/-! ## A063902.P2950499660155632378

`A085003(n²*a(n-1))` with `a(0)=1`
-/

namespace A063902.P2950499660155632378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085003 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A063902.P2950499660155632378

/-!
# A063903: Numbers k such that ud(k)*phi(k) = sigma(k), ud(k) = A034444.

The programs for A063903, there is no canonical definition to state claims against.
-/

/-! ## A063903.P2409367058000550472

`eq[A000203(n+1), A029935(A055653(n+1))]+1`
-/

namespace A063903.P2409367058000550472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (A055653 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063903.P2409367058000550472

/-!
# A063904: a(1) = 2, a(2) = 3 and a(k+1) is the least prime not already chosen that divides some a(i)*a(j)+1, where 1<=i

The programs for A063904, there is no canonical definition to state claims against.
-/

/-! ## A063904.P7907547438578913081

`p?[A089853(A130348(n))-4]`
-/

namespace A063904.P7907547438578913081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089853 (A130348 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063904.P7907547438578913081

/-! ## A063904.P2069648133634189886

`p?[A123695(A074680(n))-5]`
-/

namespace A063904.P2069648133634189886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123695 (A074680 n).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063904.P2069648133634189886

/-! ## A063904.P1206574447947589764

`p?[A122336(A122330(n))-5]`
-/

namespace A063904.P1206574447947589764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122336 (A122330 n).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063904.P1206574447947589764

/-! ## A063904.P16069927799519840378

`p?[A123695(A129610(n))-5]`
-/

namespace A063904.P16069927799519840378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123695 (A129610 n).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063904.P16069927799519840378

/-!
# A063905: Each prime p appears p times.

The programs for A063905, the canonical program `A063905.P6640284831248930620` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063905 has offset 1).

The definition of A063905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063905.P6640284831248930620

`p?[round(sqrt(2*n))]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063905

/-- `p?[round(sqrt(2*n))]` -/
def P6640284831248930620.Spec : Prop :=
  ∀ n, P6640284831248930620.a n = A063905 (n + 1)

theorem P6640284831248930620.correct : P6640284831248930620.Spec := by
  intro n
  simp only [A063905, Nat.add_sub_cancel]

end A063905

/-! ## A063905.P10327252849141693654

`∏{d}[p?[round(sqrt(n+n))], #]`
-/

namespace A063905.P10327252849141693654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A063905.P10327252849141693654

namespace A063905

/-- `∏{d}[p?[round(sqrt(n+n))], #]` -/
def P10327252849141693654.Spec : Prop :=
  ∀ n, (P10327252849141693654.a n : ℤ) = A063905 (n + 1)

end A063905

/-! ## A063905.P11687106109604596932

`∑{p}[p?[round(sqrt(n+1+n))], #]`
-/

namespace A063905.P11687106109604596932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 + n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063905.P11687106109604596932

namespace A063905

/-- `∑{p}[p?[round(sqrt(n+1+n))], #]` -/
def P11687106109604596932.Spec : Prop :=
  ∀ n, (P11687106109604596932.a n : ℤ) = A063905 (n + 1)

end A063905

/-! ## A063905.P6613099145856235382

`comp[A034387(n+1)+n]+1-n`
-/

namespace A063905.P6613099145856235382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)

end

end A063905.P6613099145856235382

namespace A063905

/-- `comp[A034387(n+1)+n]+1-n` -/
def P6613099145856235382.Spec : Prop :=
  ∀ n, P6613099145856235382.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P16921210916792829738

`A000040(A083375(n+1))`
-/

namespace A063905.P16921210916792829738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A083375 (n + 1)).toNat

end

end A063905.P16921210916792829738

namespace A063905

/-- `A000040(A083375(n+1))` -/
def P16921210916792829738.Spec : Prop :=
  ∀ n, P16921210916792829738.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P9734732319951938641

`A026239(A111657(n+1))`
-/

namespace A063905.P9734732319951938641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A111657 (n + 1)).toNat

end

end A063905.P9734732319951938641

namespace A063905

/-- `A026239(A111657(n+1))` -/
def P9734732319951938641.Spec : Prop :=
  ∀ n, P9734732319951938641.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P2499392435471673985

`A000040(A350174(n)+1)`
-/

namespace A063905.P2499392435471673985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A350174 n + 1).toNat

end

end A063905.P2499392435471673985

namespace A063905

/-- `A000040(A350174(n)+1)` -/
def P2499392435471673985.Spec : Prop :=
  ∀ n, P2499392435471673985.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P11169734577772594013

`A216884(A350174(n)+1)`
-/

namespace A063905.P11169734577772594013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (A350174 n + 1).toNat

end

end A063905.P11169734577772594013

namespace A063905

/-- `A216884(A350174(n)+1)` -/
def P11169734577772594013.Spec : Prop :=
  ∀ n, P11169734577772594013.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P17756485996319965007

`A000040(∑[char[A007504(n)]])`
-/

namespace A063905.P17756485996319965007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063905.P17756485996319965007

namespace A063905

/-- `A000040(∑[char[A007504(n)]])` -/
def P17756485996319965007.Spec : Prop :=
  ∀ n, P17756485996319965007.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P7711216695696682722

`A008578(A083375(n+1)+1)`
-/

namespace A063905.P7711216695696682722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A083375 (n + 1) + 1).toNat

end

end A063905.P7711216695696682722

namespace A063905

/-- `A008578(A083375(n+1)+1)` -/
def P7711216695696682722.Spec : Prop :=
  ∀ n, P7711216695696682722.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P13666015074530656975

`A008578(∑[char[A007504(n)]]+1)`
-/

namespace A063905.P13666015074530656975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A063905.P13666015074530656975

namespace A063905

/-- `A008578(∑[char[A007504(n)]]+1)` -/
def P13666015074530656975.Spec : Prop :=
  ∀ n, P13666015074530656975.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P14281565591962638677

`A000040(∑[1-A226520(n+1)²])`
-/

namespace A063905.P14281565591962638677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A226520 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063905.P14281565591962638677

namespace A063905

/-- `A000040(∑[1-A226520(n+1)²])` -/
def P14281565591962638677.Spec : Prop :=
  ∀ n, P14281565591962638677.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P15958651129744040992

`A000040(∑[char[∑[A000040(n+1)]]]+1)`
-/

namespace A063905.P15958651129744040992
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A063905.P15958651129744040992

namespace A063905

/-- `A000040(∑[char[∑[A000040(n+1)]]]+1)` -/
def P15958651129744040992.Spec : Prop :=
  ∀ n, P15958651129744040992.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P10284695986435634241

`A175944(n+2)`
-/

namespace A063905.P10284695986435634241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (n + 2)

end

end A063905.P10284695986435634241

namespace A063905

/-- `A175944(n+2)` -/
def P10284695986435634241.Spec : Prop :=
  ∀ n, P10284695986435634241.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P569515374019604090

`A008578(A162988(n+2))`
-/

namespace A063905.P569515374019604090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A162988 (n + 2)).toNat

end

end A063905.P569515374019604090

namespace A063905

/-- `A008578(A162988(n+2))` -/
def P569515374019604090.Spec : Prop :=
  ∀ n, P569515374019604090.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P3322306579489422328

`A158611(A162988(n+2)+1)`
-/

namespace A063905.P3322306579489422328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A162988 (n + 2) + 1).toNat

end

end A063905.P3322306579489422328

namespace A063905

/-- `A158611(A162988(n+2)+1)` -/
def P3322306579489422328.Spec : Prop :=
  ∀ n, P3322306579489422328.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P10483303282728619881

`A000026(p?[A002024(n+1)])`
-/

namespace A063905.P10483303282728619881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A063905.P10483303282728619881

namespace A063905

/-- `A000026(p?[A002024(n+1)])` -/
def P10483303282728619881.Spec : Prop :=
  ∀ n, P10483303282728619881.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P11363787298045699074

`A000027(p?[A002024(n+1)])`
-/

namespace A063905.P11363787298045699074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A063905.P11363787298045699074

namespace A063905

/-- `A000027(p?[A002024(n+1)])` -/
def P11363787298045699074.Spec : Prop :=
  ∀ n, P11363787298045699074.a n = A063905 (n + 1)

end A063905

/-! ## A063905.P9597985074021732808

`A001414(p?[A002024(n+1)])`
-/

namespace A063905.P9597985074021732808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A063905.P9597985074021732808

namespace A063905

/-- `A001414(p?[A002024(n+1)])` -/
def P9597985074021732808.Spec : Prop :=
  ∀ n, P9597985074021732808.a n = A063905 (n + 1)

end A063905

/-!
# A063906: Numbers m such that m = 2*sigma(m)/3 - 1.

The programs for A063906, there is no canonical definition to state claims against.
-/

/-! ## A063906.P13902139402854681822

`2*A190786(n+1)-1`
-/

namespace A063906.P13902139402854681822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190786 (n + 1) - 1

end

end A063906.P13902139402854681822

/-! ## A063906.P1356668232220234449

`A008683(A060834(n))+2*A190786(n+1)`
-/

namespace A063906.P1356668232220234449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060834 n).toNat + 2 * A190786 (n + 1)

end

end A063906.P1356668232220234449

/-! ## A063906.P8843200642954186959

`A008683(A038884(n+1))+2*A190786(n+1)`
-/

namespace A063906.P8843200642954186959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A038884 (n + 1)).toNat + 2 * A190786 (n + 1)

end

end A063906.P8843200642954186959

/-! ## A063906.P11521372229771467755

`A008683(A039649(n+1))+2*A190786(n+1)`
-/

namespace A063906.P11521372229771467755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A039649 (n + 1)).toNat + 2 * A190786 (n + 1)

end

end A063906.P11521372229771467755

/-! ## A063906.P4682724449482488338

`A008683(record[A014963(n+2)])+2*A190786(n+1)`
-/

namespace A063906.P4682724449482488338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2 * A190786 (n + 1)

end

end A063906.P4682724449482488338

/-!
# A063907: Lesser of twin numbers (differing by 1) of the form F(i)^2 + F(j)^3 (A045704), where F() are Fibonacci numbers.

The programs for A063907, there is no canonical definition to state claims against.
-/

/-! ## A063907.P9415393447564601336

`∩[A045704(n+1)-1, A045704(n+1)]`
-/

namespace A063907.P9415393447564601336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063907.P9415393447564601336

/-! ## A063907.P11201969306908057799

`∩[A045704(n+1), A023443(A045704(n+1))]`
-/

namespace A063907.P11201969306908057799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A045704 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063907.P11201969306908057799

/-! ## A063907.P11050980071893313668

`eq[A002034(A145271(n+3)), A061554(n)]`
-/

namespace A063907.P11050980071893313668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A145271 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063907.P11050980071893313668

/-!
# A063908: Numbers k such that k and 2*k-3 are primes.

The programs for A063908, there is no canonical definition to state claims against.
-/

/-! ## A063908.P13011809969518579761

`A241817(n+1)/2`
-/

namespace A063908.P13011809969518579761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241817 (n + 1) : ℚ) / 2

end

end A063908.P13011809969518579761

/-! ## A063908.P5020714821692451246

`(A092109(n+1)+3)/2`
-/

namespace A063908.P5020714821692451246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092109 (n + 1) + 3 : ℚ) / 2

end

end A063908.P5020714821692451246

/-! ## A063908.P3067262707820539022

`A226755(n+1)%A241817(n+1)`
-/

namespace A063908.P3067262707820539022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226755 (n + 1)) (A241817 (n + 1))

end

end A063908.P3067262707820539022

/-! ## A063908.P14863831157605372160

`p?[A090670(n+1)]`
-/

namespace A063908.P14863831157605372160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063908.P14863831157605372160

/-! ## A063908.P9771363847180576069

`p?[A104635(n+1)+2]`
-/

namespace A063908.P9771363847180576069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063908.P9771363847180576069

/-! ## A063908.P1405364157465516576

`p?[2*A156287(n+1)-1]`
-/

namespace A063908.P1405364157465516576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156287 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063908.P1405364157465516576

/-! ## A063908.P18220320608973417056

`∩[A042986(n+1), A090670(n+1)]`
-/

namespace A063908.P18220320608973417056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P18220320608973417056

/-! ## A063908.P1135813616258828136

`∩[A000040(n+1), A090670(n+1)]`
-/

namespace A063908.P1135813616258828136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P1135813616258828136

/-! ## A063908.P1228152925131940428

`∩[A006005(n+1), A090670(n+1)]`
-/

namespace A063908.P1228152925131940428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P1228152925131940428

/-! ## A063908.P12728161616398426837

`∩[A008578(n+1), A090670(n+1)]`
-/

namespace A063908.P12728161616398426837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P12728161616398426837

/-! ## A063908.P6246017436357835830

`∩[A046022(n+1), A090670(n+1)]`
-/

namespace A063908.P6246017436357835830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P6246017436357835830

/-! ## A063908.P4283691282545615204

`∩[A182986(n+1), A090670(n+1)]`
-/

namespace A063908.P4283691282545615204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P4283691282545615204

/-! ## A063908.P18302080425124363738

`∩[A051948(n+1), A090670(n+1)]`
-/

namespace A063908.P18302080425124363738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P18302080425124363738

/-! ## A063908.P1753058950070644425

`∩[A053813(n+1), A090670(n+1)]`
-/

namespace A063908.P1753058950070644425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P1753058950070644425

/-! ## A063908.P6529083173666934728

`∩[A062972(n+1), A090670(n+1)]`
-/

namespace A063908.P6529083173666934728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P6529083173666934728

/-! ## A063908.P8262853125015603859

`∩[A067126(n+1), A090670(n+1)]`
-/

namespace A063908.P8262853125015603859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P8262853125015603859

/-! ## A063908.P2103384260854007435

`∩[A140826(n+1), A090670(n+1)]`
-/

namespace A063908.P2103384260854007435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P2103384260854007435

/-! ## A063908.P17174586918810685742

`∩[A055977(n+1), A090670(n+1)]`
-/

namespace A063908.P17174586918810685742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P17174586918810685742

/-! ## A063908.P997211649929437314

`∩[A053577(n+1), A090670(n+1)]`
-/

namespace A063908.P997211649929437314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P997211649929437314

/-! ## A063908.P9416353673896504582

`∩[A117346(n+1), A090670(n+1)]`
-/

namespace A063908.P9416353673896504582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063908.P9416353673896504582

/-!
# A063909: Primes p such that 2*p - 5 is also prime.

The programs for A063909, the canonical program `A063909.P3011731433848719074` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063909 has offset 1).

The definition of A063909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145471, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063909.P3011731433848719074

`(A145471(n+1)+5)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063909

/-- `(A145471(n+1)+5)/2` -/
def P3011731433848719074.Spec : Prop :=
  ∀ n, P3011731433848719074.a n = (A063909 (n + 1) : ℚ)

end A063909

/-! ## A063909.P7447231497054824424

`p?[A089255(n+1)]`
-/

namespace A063909.P7447231497054824424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063909.P7447231497054824424

namespace A063909

/-- `p?[A089255(n+1)]` -/
def P7447231497054824424.Spec : Prop :=
  ∀ n, P7447231497054824424.a n = A063909 (n + 1)

end A063909

/-! ## A063909.P12199458304681088395

`p?[A119681(n+1)+2]`
-/

namespace A063909.P12199458304681088395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119681 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063909.P12199458304681088395

namespace A063909

/-- `p?[A119681(n+1)+2]` -/
def P12199458304681088395.Spec : Prop :=
  ∀ n, P12199458304681088395.a n = A063909 (n + 1)

end A063909

/-! ## A063909.P305849898561076627

`p?[2*A005098(n+1)+3]`
-/

namespace A063909.P305849898561076627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005098 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063909.P305849898561076627

namespace A063909

/-- `p?[2*A005098(n+1)+3]` -/
def P305849898561076627.Spec : Prop :=
  ∀ n, P305849898561076627.a n = A063909 (n + 1)

end A063909

/-! ## A063909.P7125345199361348800

`∩[A089255(n+1), A042988(n)]`
-/

namespace A063909.P7125345199361348800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P7125345199361348800

namespace A063909

/-- `∩[A089255(n+1), A042988(n)]` -/
def P7125345199361348800.Spec : Prop :=
  ∀ n, (P7125345199361348800.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P3818285318855509238

`∩[A003627(n+1), A089255(n+1)]`
-/

namespace A063909.P3818285318855509238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P3818285318855509238

namespace A063909

/-- `∩[A003627(n+1), A089255(n+1)]` -/
def P3818285318855509238.Spec : Prop :=
  ∀ n, (P3818285318855509238.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P3846874267991218803

`∩[A007528(n+1), A089255(n+1)]`
-/

namespace A063909.P3846874267991218803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P3846874267991218803

namespace A063909

/-- `∩[A007528(n+1), A089255(n+1)]` -/
def P3846874267991218803.Spec : Prop :=
  ∀ n, (P3846874267991218803.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P1586064050976803409

`∩[A040028(n+1), A089255(n+1)]`
-/

namespace A063909.P1586064050976803409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P1586064050976803409

namespace A063909

/-- `∩[A040028(n+1), A089255(n+1)]` -/
def P1586064050976803409.Spec : Prop :=
  ∀ n, (P1586064050976803409.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P4584679541050488001

`∩[A040036(n+1), A089255(n+1)]`
-/

namespace A063909.P4584679541050488001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P4584679541050488001

namespace A063909

/-- `∩[A040036(n+1), A089255(n+1)]` -/
def P4584679541050488001.Spec : Prop :=
  ∀ n, (P4584679541050488001.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P7807385478818290458

`∩[A040044(n+1), A089255(n+1)]`
-/

namespace A063909.P7807385478818290458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P7807385478818290458

namespace A063909

/-- `∩[A040044(n+1), A089255(n+1)]` -/
def P7807385478818290458.Spec : Prop :=
  ∀ n, (P7807385478818290458.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P11400276864376503310

`∩[A040046(n+1), A089255(n+1)]`
-/

namespace A063909.P11400276864376503310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P11400276864376503310

namespace A063909

/-- `∩[A040046(n+1), A089255(n+1)]` -/
def P11400276864376503310.Spec : Prop :=
  ∀ n, (P11400276864376503310.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P11223740099501596008

`∩[A040049(n+1), A089255(n+1)]`
-/

namespace A063909.P11223740099501596008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P11223740099501596008

namespace A063909

/-- `∩[A040049(n+1), A089255(n+1)]` -/
def P11223740099501596008.Spec : Prop :=
  ∀ n, (P11223740099501596008.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P7603160927275379235

`∩[A040054(n+1), A089255(n+1)]`
-/

namespace A063909.P7603160927275379235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P7603160927275379235

namespace A063909

/-- `∩[A040054(n+1), A089255(n+1)]` -/
def P7603160927275379235.Spec : Prop :=
  ∀ n, (P7603160927275379235.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P5899960940926745619

`∩[A040060(n+1), A089255(n+1)]`
-/

namespace A063909.P5899960940926745619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P5899960940926745619

namespace A063909

/-- `∩[A040060(n+1), A089255(n+1)]` -/
def P5899960940926745619.Spec : Prop :=
  ∀ n, (P5899960940926745619.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P18162382979555446074

`∩[A040062(n+1), A089255(n+1)]`
-/

namespace A063909.P18162382979555446074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P18162382979555446074

namespace A063909

/-- `∩[A040062(n+1), A089255(n+1)]` -/
def P18162382979555446074.Spec : Prop :=
  ∀ n, (P18162382979555446074.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P869689842310262146

`∩[A040065(n+1), A089255(n+1)]`
-/

namespace A063909.P869689842310262146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P869689842310262146

namespace A063909

/-- `∩[A040065(n+1), A089255(n+1)]` -/
def P869689842310262146.Spec : Prop :=
  ∀ n, (P869689842310262146.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P8992965724425786002

`∩[A040078(n+1), A089255(n+1)]`
-/

namespace A063909.P8992965724425786002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P8992965724425786002

namespace A063909

/-- `∩[A040078(n+1), A089255(n+1)]` -/
def P8992965724425786002.Spec : Prop :=
  ∀ n, (P8992965724425786002.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P4509997355354262231

`∩[A040085(n+1), A089255(n+1)]`
-/

namespace A063909.P4509997355354262231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P4509997355354262231

namespace A063909

/-- `∩[A040085(n+1), A089255(n+1)]` -/
def P4509997355354262231.Spec : Prop :=
  ∀ n, (P4509997355354262231.a n : ℤ) = A063909 (n + 1)

end A063909

/-! ## A063909.P9079892969722742416

`∩[A049596(n+1), A089255(n+1)]`
-/

namespace A063909.P9079892969722742416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063909.P9079892969722742416

namespace A063909

/-- `∩[A049596(n+1), A089255(n+1)]` -/
def P9079892969722742416.Spec : Prop :=
  ∀ n, (P9079892969722742416.a n : ℤ) = A063909 (n + 1)

end A063909

/-!
# A063910: Primes p such that 2*p - 7 is also prime.

The programs for A063910, the canonical program `A063910.P3796173184105421740` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063910 has offset 1).

The definition of A063910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1545 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063910.P907947569425025311

`p?[A089193(n+1)]`
-/

namespace A063910.P907947569425025311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063910.P907947569425025311

namespace A063910

/-- `p?[A089193(n+1)]` -/
def P907947569425025311.Spec : Prop :=
  ∀ n, P907947569425025311.a n = A063910 (n + 1)

end A063910

/-! ## A063910.P12734836408252827714

`p?[A090670(n+1)+2]`
-/

namespace A063910.P12734836408252827714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063910.P12734836408252827714

namespace A063910

/-- `p?[A090670(n+1)+2]` -/
def P12734836408252827714.Spec : Prop :=
  ∀ n, P12734836408252827714.a n = A063910 (n + 1)

end A063910

/-! ## A063910.P7562872790866499444

`p?[2*A156287(n+1)+1]`
-/

namespace A063910.P7562872790866499444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156287 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063910.P7562872790866499444

namespace A063910

/-- `p?[2*A156287(n+1)+1]` -/
def P7562872790866499444.Spec : Prop :=
  ∀ n, P7562872790866499444.a n = A063910 (n + 1)

end A063910

/-! ## A063910.P3796173184105421740

`p?[2*A005099(n+1)+3]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063910

/-- `p?[2*A005099(n+1)+3]` -/
def P3796173184105421740.Spec : Prop :=
  ∀ n, P3796173184105421740.a n = A063910 (n + 1)

theorem P3796173184105421740.correct : P3796173184105421740.Spec := by
  intro n
  simp only [A063910, Nat.add_sub_cancel]

end A063910

/-! ## A063910.P872697059230380505

`∩[A040159(n+1), A089193(n+1)]`
-/

namespace A063910.P872697059230380505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P872697059230380505

namespace A063910

/-- `∩[A040159(n+1), A089193(n+1)]` -/
def P872697059230380505.Spec : Prop :=
  ∀ n, (P872697059230380505.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P1011895683156053665

`∩[A040161(n+1), A089193(n+1)]`
-/

namespace A063910.P1011895683156053665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P1011895683156053665

namespace A063910

/-- `∩[A040161(n+1), A089193(n+1)]` -/
def P1011895683156053665.Spec : Prop :=
  ∀ n, (P1011895683156053665.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P4606333119212897411

`∩[A040165(n+1), A089193(n+1)]`
-/

namespace A063910.P4606333119212897411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P4606333119212897411

namespace A063910

/-- `∩[A040165(n+1), A089193(n+1)]` -/
def P4606333119212897411.Spec : Prop :=
  ∀ n, (P4606333119212897411.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P13767173037523687796

`∩[A040169(n+1), A089193(n+1)]`
-/

namespace A063910.P13767173037523687796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P13767173037523687796

namespace A063910

/-- `∩[A040169(n+1), A089193(n+1)]` -/
def P13767173037523687796.Spec : Prop :=
  ∀ n, (P13767173037523687796.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P13223856260790729711

`∩[A040171(n+1), A089193(n+1)]`
-/

namespace A063910.P13223856260790729711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P13223856260790729711

namespace A063910

/-- `∩[A040171(n+1), A089193(n+1)]` -/
def P13223856260790729711.Spec : Prop :=
  ∀ n, (P13223856260790729711.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P10674848358258918659

`∩[A040177(n+1), A089193(n+1)]`
-/

namespace A063910.P10674848358258918659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P10674848358258918659

namespace A063910

/-- `∩[A040177(n+1), A089193(n+1)]` -/
def P10674848358258918659.Spec : Prop :=
  ∀ n, (P10674848358258918659.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P431580363485873141

`∩[A040179(n+1), A089193(n+1)]`
-/

namespace A063910.P431580363485873141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P431580363485873141

namespace A063910

/-- `∩[A040179(n+1), A089193(n+1)]` -/
def P431580363485873141.Spec : Prop :=
  ∀ n, (P431580363485873141.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P9248764485388212492

`∩[A040184(n+1), A089193(n+1)]`
-/

namespace A063910.P9248764485388212492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P9248764485388212492

namespace A063910

/-- `∩[A040184(n+1), A089193(n+1)]` -/
def P9248764485388212492.Spec : Prop :=
  ∀ n, (P9248764485388212492.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P2793238410382429198

`∩[A040970(n+1), A089193(n+1)]`
-/

namespace A063910.P2793238410382429198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P2793238410382429198

namespace A063910

/-- `∩[A040970(n+1), A089193(n+1)]` -/
def P2793238410382429198.Spec : Prop :=
  ∀ n, (P2793238410382429198.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P16367481115567330537

`∩[A040972(n+1), A089193(n+1)]`
-/

namespace A063910.P16367481115567330537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P16367481115567330537

namespace A063910

/-- `∩[A040972(n+1), A089193(n+1)]` -/
def P16367481115567330537.Spec : Prop :=
  ∀ n, (P16367481115567330537.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P3901282975646597563

`∩[A040974(n+1), A089193(n+1)]`
-/

namespace A063910.P3901282975646597563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P3901282975646597563

namespace A063910

/-- `∩[A040974(n+1), A089193(n+1)]` -/
def P3901282975646597563.Spec : Prop :=
  ∀ n, (P3901282975646597563.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P97105311142523472

`∩[A040978(n+1), A089193(n+1)]`
-/

namespace A063910.P97105311142523472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P97105311142523472

namespace A063910

/-- `∩[A040978(n+1), A089193(n+1)]` -/
def P97105311142523472.Spec : Prop :=
  ∀ n, (P97105311142523472.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P12539421928923144993

`∩[A040980(n+1), A089193(n+1)]`
-/

namespace A063910.P12539421928923144993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P12539421928923144993

namespace A063910

/-- `∩[A040980(n+1), A089193(n+1)]` -/
def P12539421928923144993.Spec : Prop :=
  ∀ n, (P12539421928923144993.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P9217023132963416618

`∩[A040982(n+1), A089193(n+1)]`
-/

namespace A063910.P9217023132963416618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P9217023132963416618

namespace A063910

/-- `∩[A040982(n+1), A089193(n+1)]` -/
def P9217023132963416618.Spec : Prop :=
  ∀ n, (P9217023132963416618.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P16824786969385845723

`∩[A040986(n+1), A089193(n+1)]`
-/

namespace A063910.P16824786969385845723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P16824786969385845723

namespace A063910

/-- `∩[A040986(n+1), A089193(n+1)]` -/
def P16824786969385845723.Spec : Prop :=
  ∀ n, (P16824786969385845723.a n : ℤ) = A063910 (n + 1)

end A063910

/-! ## A063910.P4504281876885013187

`∩[A040990(n+1), A089193(n+1)]`
-/

namespace A063910.P4504281876885013187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063910.P4504281876885013187

namespace A063910

/-- `∩[A040990(n+1), A089193(n+1)]` -/
def P4504281876885013187.Spec : Prop :=
  ∀ n, (P4504281876885013187.a n : ℤ) = A063910 (n + 1)

end A063910

/-!
# A063911: Primes p such that 2*p - 9 is also prime.

The programs for A063911, the canonical program `A063911.P1303039430308054328` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063911 has offset 1).

The definition of A063911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063911.P2305502309134436673

`p?[2*A005098(n+1)+5]`
-/

namespace A063911.P2305502309134436673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005098 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063911.P2305502309134436673

namespace A063911

/-- `p?[2*A005098(n+1)+5]` -/
def P2305502309134436673.Spec : Prop :=
  ∀ n, P2305502309134436673.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P1303039430308054328

`p?[A097069(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063911

/-- `p?[A097069(n+1)]` -/
def P1303039430308054328.Spec : Prop :=
  ∀ n, P1303039430308054328.a n = A063911 (n + 1)

theorem P1303039430308054328.correct : P1303039430308054328.Spec := by
  intro n
  simp only [A063911, Nat.add_sub_cancel]

end A063911

/-! ## A063911.P1032290558545927396

`p?[A089192(n+1)+1]`
-/

namespace A063911.P1032290558545927396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063911.P1032290558545927396

namespace A063911

/-- `p?[A089192(n+1)+1]` -/
def P1032290558545927396.Spec : Prop :=
  ∀ n, P1032290558545927396.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P4816390776176053113

`p?[A089253(n+1)+2]`
-/

namespace A063911.P4816390776176053113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063911.P4816390776176053113

namespace A063911

/-- `p?[A089253(n+1)+2]` -/
def P4816390776176053113.Spec : Prop :=
  ∀ n, P4816390776176053113.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P5000981082672475183

`p?[A097338(n+1)-1]`
-/

namespace A063911.P5000981082672475183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063911.P5000981082672475183

namespace A063911

/-- `p?[A097338(n+1)-1]` -/
def P5000981082672475183.Spec : Prop :=
  ∀ n, P5000981082672475183.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P16373231111221722182

`p?[A097363(n+1)-2]`
-/

namespace A063911.P16373231111221722182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063911.P16373231111221722182

namespace A063911

/-- `p?[A097363(n+1)-2]` -/
def P16373231111221722182.Spec : Prop :=
  ∀ n, P16373231111221722182.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P10271797974430276546

`p?[A098090(n+1)+3]`
-/

namespace A063911.P10271797974430276546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063911.P10271797974430276546

namespace A063911

/-- `p?[A098090(n+1)+3]` -/
def P10271797974430276546.Spec : Prop :=
  ∀ n, P10271797974430276546.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P3169958218050815841

`p?[A124678(n+2)+2]`
-/

namespace A063911.P3169958218050815841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063911.P3169958218050815841

namespace A063911

/-- `p?[A124678(n+2)+2]` -/
def P3169958218050815841.Spec : Prop :=
  ∀ n, P3169958218050815841.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P1804748122722530587

`p?[A005097(n+1)+5]`
-/

namespace A063911.P1804748122722530587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063911.P1804748122722530587

namespace A063911

/-- `p?[A005097(n+1)+5]` -/
def P1804748122722530587.Spec : Prop :=
  ∀ n, P1804748122722530587.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P17033178394692680586

`record[A006530(A097069(n+2))]`
-/

namespace A063911.P17033178394692680586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A097069 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063911.P17033178394692680586

namespace A063911

/-- `record[A006530(A097069(n+2))]` -/
def P17033178394692680586.Spec : Prop :=
  ∀ n, P17033178394692680586.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P10260967421203442588

`filter[A097069(n+1), A010051(#)]`
-/

namespace A063911.P10260967421203442588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A063911.P10260967421203442588

namespace A063911

/-- `filter[A097069(n+1), A010051(#)]` -/
def P10260967421203442588.Spec : Prop :=
  ∀ n, P10260967421203442588.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P178968801298988225

`record[A006530(A089253(n+2)+2)]`
-/

namespace A063911.P178968801298988225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089253 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063911.P178968801298988225

namespace A063911

/-- `record[A006530(A089253(n+2)+2)]` -/
def P178968801298988225.Spec : Prop :=
  ∀ n, P178968801298988225.a n = A063911 (n + 1)

end A063911

/-! ## A063911.P15270212201553221818

`∩[A000040(n+1), A097069(n+1)]`
-/

namespace A063911.P15270212201553221818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063911.P15270212201553221818

namespace A063911

/-- `∩[A000040(n+1), A097069(n+1)]` -/
def P15270212201553221818.Spec : Prop :=
  ∀ n, (P15270212201553221818.a n : ℤ) = A063911 (n + 1)

end A063911

/-! ## A063911.P12412712291198428591

`∩[A004139(n+1), A097069(n+1)]`
-/

namespace A063911.P12412712291198428591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063911.P12412712291198428591

namespace A063911

/-- `∩[A004139(n+1), A097069(n+1)]` -/
def P12412712291198428591.Spec : Prop :=
  ∀ n, (P12412712291198428591.a n : ℤ) = A063911 (n + 1)

end A063911

/-! ## A063911.P7818610235935391964

`∩[A006005(n+1), A097069(n+1)]`
-/

namespace A063911.P7818610235935391964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063911.P7818610235935391964

namespace A063911

/-- `∩[A006005(n+1), A097069(n+1)]` -/
def P7818610235935391964.Spec : Prop :=
  ∀ n, (P7818610235935391964.a n : ℤ) = A063911 (n + 1)

end A063911

/-! ## A063911.P2328863660702913494

`∩[A008578(n+1), A097069(n+1)]`
-/

namespace A063911.P2328863660702913494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063911.P2328863660702913494

namespace A063911

/-- `∩[A008578(n+1), A097069(n+1)]` -/
def P2328863660702913494.Spec : Prop :=
  ∀ n, (P2328863660702913494.a n : ℤ) = A063911 (n + 1)

end A063911

/-! ## A063911.P8296502303820688491

`∩[A042966(n+1), A097069(n+1)]`
-/

namespace A063911.P8296502303820688491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063911.P8296502303820688491

namespace A063911

/-- `∩[A042966(n+1), A097069(n+1)]` -/
def P8296502303820688491.Spec : Prop :=
  ∀ n, (P8296502303820688491.a n : ℤ) = A063911 (n + 1)

end A063911

/-! ## A063911.P10101285584741120008

`∩[A045319(n+1), A097069(n+1)]`
-/

namespace A063911.P10101285584741120008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063911.P10101285584741120008

namespace A063911

/-- `∩[A045319(n+1), A097069(n+1)]` -/
def P10101285584741120008.Spec : Prop :=
  ∀ n, (P10101285584741120008.a n : ℤ) = A063911 (n + 1)

end A063911

/-!
# A063912: Primes p such that 2*p - 11 is also prime.

The programs for A063912, the canonical program `A063912.P3574652520992359286` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063912 has offset 1).

The definition of A063912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6017 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063912.P3574652520992359286

`p?[A001281(A001223(n+1))+a(n-1)]` with `a(0)=7`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A063912

/-- `p?[A001281(A001223(n+1))+a(n-1)]` -/
def P3574652520992359286.Spec : Prop :=
  ∀ n, P3574652520992359286.a n = A063912 (n + 1)

theorem P3574652520992359286.correct : P3574652520992359286.Spec := by
  intro n
  simp only [A063912, Nat.add_sub_cancel]

end A063912

/-! ## A063912.P6510821469027980184

`p?[A097338(n+1)]`
-/

namespace A063912.P6510821469027980184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063912.P6510821469027980184

namespace A063912

/-- `p?[A097338(n+1)]` -/
def P6510821469027980184.Spec : Prop :=
  ∀ n, P6510821469027980184.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P14564924972258343361

`p?[A097069(n+1)+1]`
-/

namespace A063912.P14564924972258343361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063912.P14564924972258343361

namespace A063912

/-- `p?[A097069(n+1)+1]` -/
def P14564924972258343361.Spec : Prop :=
  ∀ n, P14564924972258343361.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P17170288089470637345

`p?[A089192(n+1)+2]`
-/

namespace A063912.P17170288089470637345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063912.P17170288089470637345

namespace A063912

/-- `p?[A089192(n+1)+2]` -/
def P17170288089470637345.Spec : Prop :=
  ∀ n, P17170288089470637345.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P4368700866817483356

`p?[A097363(n+1)-1]`
-/

namespace A063912.P4368700866817483356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063912.P4368700866817483356

namespace A063912

/-- `p?[A097363(n+1)-1]` -/
def P4368700866817483356.Spec : Prop :=
  ∀ n, P4368700866817483356.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P6560869760322387944

`p?[A097480(n+1)-2]`
-/

namespace A063912.P6560869760322387944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063912.P6560869760322387944

namespace A063912

/-- `p?[A097480(n+1)-2]` -/
def P6560869760322387944.Spec : Prop :=
  ∀ n, P6560869760322387944.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P645291134109876977

`p?[A098090(n+1)+4]`
-/

namespace A063912.P645291134109876977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063912.P645291134109876977

namespace A063912

/-- `p?[A098090(n+1)+4]` -/
def P645291134109876977.Spec : Prop :=
  ∀ n, P645291134109876977.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P18378099598859591053

`p?[A005097(n+1)+6]`
-/

namespace A063912.P18378099598859591053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063912.P18378099598859591053

namespace A063912

/-- `p?[A005097(n+1)+6]` -/
def P18378099598859591053.Spec : Prop :=
  ∀ n, P18378099598859591053.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P653089578335143391

`p?[floor(A000040(n+2)/2)+6]`
-/

namespace A063912.P653089578335143391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / 2⌋ + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063912.P653089578335143391

namespace A063912

/-- `p?[floor(A000040(n+2)/2)+6]` -/
def P653089578335143391.Spec : Prop :=
  ∀ n, P653089578335143391.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P2382231337247766529

`filter[A097338(n+1), A010051(#)]`
-/

namespace A063912.P2382231337247766529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A063912.P2382231337247766529

namespace A063912

/-- `filter[A097338(n+1), A010051(#)]` -/
def P2382231337247766529.Spec : Prop :=
  ∀ n, P2382231337247766529.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P12248852438771916431

`filter[A097338(n+1), A323153(#)]`
-/

namespace A063912.P12248852438771916431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A063912.P12248852438771916431

namespace A063912

/-- `filter[A097338(n+1), A323153(#)]` -/
def P12248852438771916431.Spec : Prop :=
  ∀ n, P12248852438771916431.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P13424515955387026135

`record[A006530(A097069(n+1)+1)]`
-/

namespace A063912.P13424515955387026135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A097069 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063912.P13424515955387026135

namespace A063912

/-- `record[A006530(A097069(n+1)+1)]` -/
def P13424515955387026135.Spec : Prop :=
  ∀ n, P13424515955387026135.a n = A063912 (n + 1)

end A063912

/-! ## A063912.P11876732464642440141

`∩[A000040(n+1), A097338(n+1)]`
-/

namespace A063912.P11876732464642440141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063912.P11876732464642440141

namespace A063912

/-- `∩[A000040(n+1), A097338(n+1)]` -/
def P11876732464642440141.Spec : Prop :=
  ∀ n, (P11876732464642440141.a n : ℤ) = A063912 (n + 1)

end A063912

/-! ## A063912.P3485904710204725267

`∩[A004139(n+1), A097338(n+1)]`
-/

namespace A063912.P3485904710204725267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063912.P3485904710204725267

namespace A063912

/-- `∩[A004139(n+1), A097338(n+1)]` -/
def P3485904710204725267.Spec : Prop :=
  ∀ n, (P3485904710204725267.a n : ℤ) = A063912 (n + 1)

end A063912

/-! ## A063912.P6116319693188399817

`∩[A006005(n+1), A097338(n+1)]`
-/

namespace A063912.P6116319693188399817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063912.P6116319693188399817

namespace A063912

/-- `∩[A006005(n+1), A097338(n+1)]` -/
def P6116319693188399817.Spec : Prop :=
  ∀ n, (P6116319693188399817.a n : ℤ) = A063912 (n + 1)

end A063912

/-! ## A063912.P13540127745716641197

`∩[A008578(n+1), A097338(n+1)]`
-/

namespace A063912.P13540127745716641197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063912.P13540127745716641197

namespace A063912

/-- `∩[A008578(n+1), A097338(n+1)]` -/
def P13540127745716641197.Spec : Prop :=
  ∀ n, (P13540127745716641197.a n : ℤ) = A063912 (n + 1)

end A063912

/-! ## A063912.P9010854746238108778

`∩[A034849(n+1), A097338(n+1)]`
-/

namespace A063912.P9010854746238108778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063912.P9010854746238108778

namespace A063912

/-- `∩[A034849(n+1), A097338(n+1)]` -/
def P9010854746238108778.Spec : Prop :=
  ∀ n, (P9010854746238108778.a n : ℤ) = A063912 (n + 1)

end A063912

/-! ## A063912.P16522614814437859855

`∩[A040046(n+1), A097338(n+1)]`
-/

namespace A063912.P16522614814437859855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063912.P16522614814437859855

namespace A063912

/-- `∩[A040046(n+1), A097338(n+1)]` -/
def P16522614814437859855.Spec : Prop :=
  ∀ n, (P16522614814437859855.a n : ℤ) = A063912 (n + 1)

end A063912

/-! ## A063912.P7595214651693889460

`∩[A040049(n+1), A097338(n+1)]`
-/

namespace A063912.P7595214651693889460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063912.P7595214651693889460

namespace A063912

/-- `∩[A040049(n+1), A097338(n+1)]` -/
def P7595214651693889460.Spec : Prop :=
  ∀ n, (P7595214651693889460.a n : ℤ) = A063912 (n + 1)

end A063912

/-! ## A063912.P2158076929136457882

`∩[A040065(n+1), A097338(n+1)]`
-/

namespace A063912.P2158076929136457882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063912.P2158076929136457882

namespace A063912

/-- `∩[A040065(n+1), A097338(n+1)]` -/
def P2158076929136457882.Spec : Prop :=
  ∀ n, (P2158076929136457882.a n : ℤ) = A063912 (n + 1)

end A063912

/-!
# A063913: Primes p such that 2*p - 13 is also prime.

The programs for A063913, the canonical program `A063913.P6791684763187366622` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063913 has offset 1).

The definition of A063913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063913.P4133562718870002345

`p?[2*A005098(n+1)+7]`
-/

namespace A063913.P4133562718870002345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005098 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P4133562718870002345

namespace A063913

/-- `p?[2*A005098(n+1)+7]` -/
def P4133562718870002345.Spec : Prop :=
  ∀ n, P4133562718870002345.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P1674539211964374147

`p?[floor((A108546(n+1)+14)/2)]`
-/

namespace A063913.P1674539211964374147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108546 (n + 1) + 14 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P1674539211964374147

namespace A063913

/-- `p?[floor((A108546(n+1)+14)/2)]` -/
def P1674539211964374147.Spec : Prop :=
  ∀ n, P1674539211964374147.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P6791684763187366622

`p?[A097363(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A063913

/-- `p?[A097363(n+1)]` -/
def P6791684763187366622.Spec : Prop :=
  ∀ n, P6791684763187366622.a n = A063913 (n + 1)

theorem P6791684763187366622.correct : P6791684763187366622.Spec := by
  intro n
  simp only [A063913, Nat.add_sub_cancel]

end A063913

/-! ## A063913.P5382157945790124968

`p?[A097338(n+1)+1]`
-/

namespace A063913.P5382157945790124968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P5382157945790124968

namespace A063913

/-- `p?[A097338(n+1)+1]` -/
def P5382157945790124968.Spec : Prop :=
  ∀ n, P5382157945790124968.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P3243036494489711201

`p?[A097069(n+1)+2]`
-/

namespace A063913.P3243036494489711201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P3243036494489711201

namespace A063913

/-- `p?[A097069(n+1)+2]` -/
def P3243036494489711201.Spec : Prop :=
  ∀ n, P3243036494489711201.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P511233462311424331

`p?[A097480(n+1)-1]`
-/

namespace A063913.P511233462311424331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P511233462311424331

namespace A063913

/-- `p?[A097480(n+1)-1]` -/
def P511233462311424331.Spec : Prop :=
  ∀ n, P511233462311424331.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P13781638866467351118

`p?[A089192(n+1)+3]`
-/

namespace A063913.P13781638866467351118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P13781638866467351118

namespace A063913

/-- `p?[A089192(n+1)+3]` -/
def P13781638866467351118.Spec : Prop :=
  ∀ n, P13781638866467351118.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P10585181982434204742

`p?[A098605(n+1)-2]`
-/

namespace A063913.P10585181982434204742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P10585181982434204742

namespace A063913

/-- `p?[A098605(n+1)-2]` -/
def P10585181982434204742.Spec : Prop :=
  ∀ n, P10585181982434204742.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P11722327615550973240

`p?[A089253(n+1)+4]`
-/

namespace A063913.P11722327615550973240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P11722327615550973240

namespace A063913

/-- `p?[A089253(n+1)+4]` -/
def P11722327615550973240.Spec : Prop :=
  ∀ n, P11722327615550973240.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P5762926655891210073

`p?[A098090(n+1)+5]`
-/

namespace A063913.P5762926655891210073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P5762926655891210073

namespace A063913

/-- `p?[A098090(n+1)+5]` -/
def P5762926655891210073.Spec : Prop :=
  ∀ n, P5762926655891210073.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P11065423076033088086

`p?[A006254(n+1)+6]`
-/

namespace A063913.P11065423076033088086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P11065423076033088086

namespace A063913

/-- `p?[A006254(n+1)+6]` -/
def P11065423076033088086.Spec : Prop :=
  ∀ n, P11065423076033088086.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P15411158972555719318

`p?[A005097(n+1)+7]`
-/

namespace A063913.P15411158972555719318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P15411158972555719318

namespace A063913

/-- `p?[A005097(n+1)+7]` -/
def P15411158972555719318.Spec : Prop :=
  ∀ n, P15411158972555719318.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P10971498722938985765

`p?[A177018(n+1)+5+n]`
-/

namespace A063913.P10971498722938985765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + 5 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P10971498722938985765

namespace A063913

/-- `p?[A177018(n+1)+5+n]` -/
def P10971498722938985765.Spec : Prop :=
  ∀ n, P10971498722938985765.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P4584763636547915674

`p?[floor(A000040(n+2)/2)+7]`
-/

namespace A063913.P4584763636547915674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / 2⌋ + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P4584763636547915674

namespace A063913

/-- `p?[floor(A000040(n+2)/2)+7]` -/
def P4584763636547915674.Spec : Prop :=
  ∀ n, P4584763636547915674.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P154561254577729249

`filter[A097363(n+1), A010051(#)]`
-/

namespace A063913.P154561254577729249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A063913.P154561254577729249

namespace A063913

/-- `filter[A097363(n+1), A010051(#)]` -/
def P154561254577729249.Spec : Prop :=
  ∀ n, P154561254577729249.a n = A063913 (n + 1)

end A063913

/-! ## A063913.P415513379534768457

`∩[A000040(n+1), A097363(n+1)]`
-/

namespace A063913.P415513379534768457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063913.P415513379534768457

namespace A063913

/-- `∩[A000040(n+1), A097363(n+1)]` -/
def P415513379534768457.Spec : Prop :=
  ∀ n, (P415513379534768457.a n : ℤ) = A063913 (n + 1)

end A063913

/-! ## A063913.P5268748975666373484

`∩[A002476(n+1), A097363(n+1)]`
-/

namespace A063913.P5268748975666373484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063913.P5268748975666373484

namespace A063913

/-- `∩[A002476(n+1), A097363(n+1)]` -/
def P5268748975666373484.Spec : Prop :=
  ∀ n, (P5268748975666373484.a n : ℤ) = A063913 (n + 1)

end A063913

/-! ## A063913.P6471895699625478317

`∩[A004139(n+1), A097363(n+1)]`
-/

namespace A063913.P6471895699625478317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063913.P6471895699625478317

namespace A063913

/-- `∩[A004139(n+1), A097363(n+1)]` -/
def P6471895699625478317.Spec : Prop :=
  ∀ n, (P6471895699625478317.a n : ℤ) = A063913 (n + 1)

end A063913

/-! ## A063913.P7864969640673822902

`∩[A006005(n+1), A097363(n+1)]`
-/

namespace A063913.P7864969640673822902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063913.P7864969640673822902

namespace A063913

/-- `∩[A006005(n+1), A097363(n+1)]` -/
def P7864969640673822902.Spec : Prop :=
  ∀ n, (P7864969640673822902.a n : ℤ) = A063913 (n + 1)

end A063913

/-!
# A063914: Odd numbers interlaced with numbers 3m+2.

The programs for A063914, the canonical program `A063914.P8080515543989543871` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063914 has offset 1).

The definition of A063914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063914.P8080515543989543871

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063914

/-- `2*a(n-2)-a(n-4)` -/
def P8080515543989543871.Spec : Prop :=
  ∀ n, P8080515543989543871.a n = A063914 (n + 1)

theorem P8080515543989543871.correct : P8080515543989543871.Spec := by
  intro n
  simp only [A063914, Nat.add_sub_cancel]

end A063914

/-! ## A063914.P572078172618207297

`(5*(n+1)-2+(-1)^(n+1)*(n-1))/4`
-/

namespace A063914.P572078172618207297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (n + 1) : ℤ) - 2 + (-1) ^ (n + 1) * ((n : ℤ) - 1) : ℚ) / 4

end

end A063914.P572078172618207297

namespace A063914

/-- `(5*(n+1)-2+(-1)^(n+1)*(n-1))/4` -/
def P572078172618207297.Spec : Prop :=
  ∀ n, P572078172618207297.a n = (A063914 (n + 1) : ℚ)

theorem P572078172618207297.correct : P572078172618207297.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A063914, Nat.add_sub_cancel, A063914.P572078172618207297.a, A063914.P8080515543989543871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A063914, Nat.add_sub_cancel, A063914.P572078172618207297.a, A063914.P8080515543989543871.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A063914

/-! ## A063914.P14152307781123859227

`gcd(xor(1, -n), ∑[n])+n`
-/

namespace A063914.P14152307781123859227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + n

end

end A063914.P14152307781123859227

namespace A063914

/-- `gcd(xor(1, -n), ∑[n])+n` -/
def P14152307781123859227.Spec : Prop :=
  ∀ n, (P14152307781123859227.a n : ℤ) = A063914 (n + 1)

end A063914

/-! ## A063914.P4705673632582730614

`ceil((lcm(2, n)+1+n)/2)`
-/

namespace A063914.P4705673632582730614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 n + 1 + n : ℚ) / 2⌉

end

end A063914.P4705673632582730614

namespace A063914

/-- `ceil((lcm(2, n)+1+n)/2)` -/
def P4705673632582730614.Spec : Prop :=
  ∀ n, P4705673632582730614.a n = A063914 (n + 1)

end A063914

/-! ## A063914.P10246969545731808946

`gcd(n+1, ceil(n/2))+n`
-/

namespace A063914.P10246969545731808946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉ + n

end

end A063914.P10246969545731808946

namespace A063914

/-- `gcd(n+1, ceil(n/2))+n` -/
def P10246969545731808946.Spec : Prop :=
  ∀ n, (P10246969545731808946.a n : ℤ) = A063914 (n + 1)

end A063914

/-! ## A063914.P6638740001689062590

`ceil(n/2)^(n%2)+n`
-/

namespace A063914.P6638740001689062590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ ^ (n % 2) + (n : ℤ)

end

end A063914.P6638740001689062590

namespace A063914

/-- `ceil(n/2)^(n%2)+n` -/
def P6638740001689062590.Spec : Prop :=
  ∀ n, P6638740001689062590.a n = A063914 (n + 1)

end A063914

/-! ## A063914.P6311477429487738721

`ceil(n^and(1, n)/2)+n`
-/

namespace A063914.P6311477429487738721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ Nat.land 1 n : ℚ) / 2⌉ + (n : ℤ)

end

end A063914.P6311477429487738721

namespace A063914

/-- `ceil(n^and(1, n)/2)+n` -/
def P6311477429487738721.Spec : Prop :=
  ∀ n, P6311477429487738721.a n = A063914 (n + 1)

end A063914

/-! ## A063914.P7916102777874816985

`or(1, n)+∑[n]%(n+1)`
-/

namespace A063914.P7916102777874816985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A063914.P7916102777874816985

namespace A063914

/-- `or(1, n)+∑[n]%(n+1)` -/
def P7916102777874816985.Spec : Prop :=
  ∀ n, (P7916102777874816985.a n : ℤ) = A063914 (n + 1)

end A063914

/-! ## A063914.P15562157427417413757

`Δ[C(floor(n/2), 2)]+n+1`
-/

namespace A063914.P15562157427417413757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A063914.P15562157427417413757

namespace A063914

/-- `Δ[C(floor(n/2), 2)]+n+1` -/
def P15562157427417413757.Spec : Prop :=
  ∀ n, P15562157427417413757.a n = A063914 (n + 1)

end A063914

/-! ## A063914.P4641285175200985139

`ogf((1+2x+x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A063914.P4641285175200985139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 1] [1, 0, -2, 0, 1] n

end

end A063914.P4641285175200985139

namespace A063914

/-- `ogf((1+2x+x^2+x^3)/(1-2x^2+x^4))` -/
def P4641285175200985139.Spec : Prop :=
  ∀ n, P4641285175200985139.a n = A063914 (n + 1)

end A063914

/-! ## A063914.P13630260690020140614

`floor((∑[n]+n²)/a(n-1))` with `a(0)=1`
-/

namespace A063914.P13630260690020140614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A063914.P13630260690020140614

namespace A063914

/-- `floor((∑[n]+n²)/a(n-1))` -/
def P13630260690020140614.Spec : Prop :=
  ∀ n, P13630260690020140614.a n = A063914 (n + 1)

end A063914

/-! ## A063914.P1567236886089398012

`∑[a(n-2)-(-1)^n]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A063914.P1567236886089398012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063914.P1567236886089398012

namespace A063914

/-- `∑[a(n-2)-(-1)^n]` -/
def P1567236886089398012.Spec : Prop :=
  ∀ n, P1567236886089398012.a n = A063914 (n + 1)

end A063914

/-! ## A063914.P12739320773806905766

`abs((n-1)/gcd(2, n-1)-2*n)`
-/

namespace A063914.P12739320773806905766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1 : ℚ) / (Int.gcd 2 ((n : ℤ) - 1) : ℚ) - (2 * n : ℚ)|

end

end A063914.P12739320773806905766

namespace A063914

/-- `abs((n-1)/gcd(2, n-1)-2*n)` -/
def P12739320773806905766.Spec : Prop :=
  ∀ n, P12739320773806905766.a n = (A063914 (n + 1) : ℚ)

end A063914

/-! ## A063914.P5261793088100280571

`∑[2-∑[A099570(n)]]`
-/

namespace A063914.P5261793088100280571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063914.P5261793088100280571

namespace A063914

/-- `∑[2-∑[A099570(n)]]` -/
def P5261793088100280571.Spec : Prop :=
  ∀ n, P5261793088100280571.a n = A063914 (n + 1)

end A063914

/-! ## A063914.P7509315065950633697

`ceil(A029579(n)+n/2)`
-/

namespace A063914.P7509315065950633697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029579 n : ℚ) + (n : ℚ) / 2⌉

end

end A063914.P7509315065950633697

namespace A063914

/-- `ceil(A029579(n)+n/2)` -/
def P7509315065950633697.Spec : Prop :=
  ∀ n, P7509315065950633697.a n = A063914 (n + 1)

end A063914

/-! ## A063914.P12849570796665584365

`ceil(A093178(n)/2+n)`
-/

namespace A063914.P12849570796665584365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093178 n : ℚ) / 2 + (n : ℚ)⌉

end

end A063914.P12849570796665584365

namespace A063914

/-- `ceil(A093178(n)/2+n)` -/
def P12849570796665584365.Spec : Prop :=
  ∀ n, P12849570796665584365.a n = A063914 (n + 1)

end A063914

/-! ## A063914.P8067951626430201672

`A028387(n)%A321220(n)`
-/

namespace A063914.P8067951626430201672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028387 n) (A321220 n)

end

end A063914.P8067951626430201672

namespace A063914

/-- `A028387(n)%A321220(n)` -/
def P8067951626430201672.Spec : Prop :=
  ∀ n, P8067951626430201672.a n = A063914 (n + 1)

end A063914

/-!
# A063915: Expansion of g.f. (1 + Sum_{ i >= 0 } 2^i*x^(2^(i+1)-1)) / (1-x)^2.

The programs for A063915, the canonical program `A063915.P14827254206405701185` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063915 has offset 0).

The definition of A063915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063915.P15278679677652407443

`∑[2^floor(log2(n+1))]`
-/

namespace A063915.P15278679677652407443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063915.P15278679677652407443

namespace A063915

/-- `∑[2^floor(log2(n+1))]` -/
def P15278679677652407443.Spec : Prop :=
  ∀ n, (P15278679677652407443.a n : ℤ) = A063915 n

end A063915

/-! ## A063915.P14746012930636154462

`a(n-1)+2^floor(log2(n+1))` with `a(0)=1`
-/

namespace A063915.P14746012930636154462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 ^ Nat.log 2 (n + 1)

end

end A063915.P14746012930636154462

namespace A063915

/-- `a(n-1)+2^floor(log2(n+1))` -/
def P14746012930636154462.Spec : Prop :=
  ∀ n, (P14746012930636154462.a n : ℤ) = A063915 n

end A063915

/-! ## A063915.P14827254206405701185

`∑[n-and(n+1, a(n-1))]+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063915

/-- `∑[n-and(n+1, a(n-1))]+n` -/
def P14827254206405701185.Spec : Prop :=
  ∀ n, P14827254206405701185.a n = A063915 n

theorem P14827254206405701185.correct : P14827254206405701185.Spec := by
  intro n
  simp only [A063915]

end A063915

/-! ## A063915.P9886183792476430055

`or(1, ∑[A053644(n+1)])`
-/

namespace A063915.P9886183792476430055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063915.P9886183792476430055

namespace A063915

/-- `or(1, ∑[A053644(n+1)])` -/
def P9886183792476430055.Spec : Prop :=
  ∀ n, P9886183792476430055.a n = A063915 n

end A063915

/-! ## A063915.P4530387195879777746

`∑[A092323(n+1)]+n+1`
-/

namespace A063915.P4530387195879777746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A063915.P4530387195879777746

namespace A063915

/-- `∑[A092323(n+1)]+n+1` -/
def P4530387195879777746.Spec : Prop :=
  ∀ n, P4530387195879777746.a n = A063915 n

end A063915

/-! ## A063915.P8343046960029622425

`-∑[n+1-A004754(n+1)]`
-/

namespace A063915.P8343046960029622425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063915.P8343046960029622425

namespace A063915

/-- `-∑[n+1-A004754(n+1)]` -/
def P8343046960029622425.Spec : Prop :=
  ∀ n, P8343046960029622425.a n = A063915 n

end A063915

/-! ## A063915.P13586732774032203372

`∑[n+1]-∑[A053645(n+1)]`
-/

namespace A063915.P13586732774032203372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A063915.P13586732774032203372

namespace A063915

/-- `∑[n+1]-∑[A053645(n+1)]` -/
def P13586732774032203372.Spec : Prop :=
  ∀ n, P13586732774032203372.a n = A063915 n

end A063915

/-! ## A063915.P2965630499595164703

`∑[2*A131577(floor(log2(n+1)))]+1`
-/

namespace A063915.P2965630499595164703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131577 (Nat.log 2 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A063915.P2965630499595164703

namespace A063915

/-- `∑[2*A131577(floor(log2(n+1)))]+1` -/
def P2965630499595164703.Spec : Prop :=
  ∀ n, P2965630499595164703.a n = A063915 n

end A063915

/-! ## A063915.P14056631415072233647

`∑[∏[gcd(2, A014963(n+1))]]%((n+1)²+1)`
-/

namespace A063915.P14056631415072233647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A014963 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % ((n + 1) ^ 2 + 1)

end

end A063915.P14056631415072233647

namespace A063915

/-- `∑[∏[gcd(2, A014963(n+1))]]%((n+1)²+1)` -/
def P14056631415072233647.Spec : Prop :=
  ∀ n, (P14056631415072233647.a n : ℤ) = A063915 n

end A063915

/-! ## A063915.P11971042891855664557

`or(1, ∑[A000079(A000523(n+1))])`
-/

namespace A063915.P11971042891855664557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063915.P11971042891855664557

namespace A063915

/-- `or(1, ∑[A000079(A000523(n+1))])` -/
def P11971042891855664557.Spec : Prop :=
  ∀ n, P11971042891855664557.a n = A063915 n

end A063915

/-! ## A063915.P999040064418704188

`A053644(n+1)+∑[A053644(n)]`
-/

namespace A063915.P999040064418704188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063915.P999040064418704188

namespace A063915

/-- `A053644(n+1)+∑[A053644(n)]` -/
def P999040064418704188.Spec : Prop :=
  ∀ n, P999040064418704188.a n = A063915 n

end A063915

/-! ## A063915.P9030041422452129012

`∑[A000079(A000523(n+1))]%(A055999(n)+10)`
-/

namespace A063915.P9030041422452129012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A055999 n + 10)

end

end A063915.P9030041422452129012

namespace A063915

/-- `∑[A000079(A000523(n+1))]%(A055999(n)+10)` -/
def P9030041422452129012.Spec : Prop :=
  ∀ n, P9030041422452129012.a n = A063915 n

end A063915

/-! ## A063915.P3864249432190840996

`∑[A062383(n+1)]/2`
-/

namespace A063915.P3864249432190840996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A063915.P3864249432190840996

namespace A063915

/-- `∑[A062383(n+1)]/2` -/
def P3864249432190840996.Spec : Prop :=
  ∀ n, P3864249432190840996.a n = (A063915 n : ℚ)

end A063915

/-! ## A063915.P15070010830136680810

`(A181497(n+2)-1)/2`
-/

namespace A063915.P15070010830136680810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181497 (n + 2) - 1 : ℚ) / 2

end

end A063915.P15070010830136680810

namespace A063915

/-- `(A181497(n+2)-1)/2` -/
def P15070010830136680810.Spec : Prop :=
  ∀ n, P15070010830136680810.a n = (A063915 n : ℚ)

end A063915

/-! ## A063915.P7761210090487450093

`(A073121(n+2)-1)/3`
-/

namespace A063915.P7761210090487450093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073121 (n + 2) - 1 : ℚ) / 3

end

end A063915.P7761210090487450093

namespace A063915

/-- `(A073121(n+2)-1)/3` -/
def P7761210090487450093.Spec : Prop :=
  ∀ n, P7761210090487450093.a n = (A063915 n : ℚ)

end A063915

/-! ## A063915.P6181363585872435979

`∑[∏[A014963(2*(n+1))]]/2`
-/

namespace A063915.P6181363585872435979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A063915.P6181363585872435979

namespace A063915

/-- `∑[∏[A014963(2*(n+1))]]/2` -/
def P6181363585872435979.Spec : Prop :=
  ∀ n, P6181363585872435979.a n = (A063915 n : ℚ)

end A063915

/-! ## A063915.P6877928575910127603

`-∑[A001057(∏[A014963(2*(n+1))])]`
-/

namespace A063915.P6877928575910127603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063915.P6877928575910127603

namespace A063915

/-- `-∑[A001057(∏[A014963(2*(n+1))])]` -/
def P6877928575910127603.Spec : Prop :=
  ∀ n, P6877928575910127603.a n = A063915 n

end A063915

/-! ## A063915.P15664992653726326677

`∑[A002265(A062383(2*(n+1))+4)]-(n+1)`
-/

namespace A063915.P15664992653726326677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A062383 (2 * (n + 1)) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A063915.P15664992653726326677

namespace A063915

/-- `∑[A002265(A062383(2*(n+1))+4)]-(n+1)` -/
def P15664992653726326677.Spec : Prop :=
  ∀ n, P15664992653726326677.a n = A063915 n

end A063915

/-! ## A063915.P4533873091666011360

`A000265(∑[A062383(n+1)])`
-/

namespace A063915.P4533873091666011360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063915.P4533873091666011360

namespace A063915

/-- `A000265(∑[A062383(n+1)])` -/
def P4533873091666011360.Spec : Prop :=
  ∀ n, P4533873091666011360.a n = A063915 n

end A063915

/-! ## A063915.P7076385125650301184

`∑[n+1]-A363166(n+1)`
-/

namespace A063915.P7076385125650301184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A363166 (n + 1)

end

end A063915.P7076385125650301184

namespace A063915

/-- `∑[n+1]-A363166(n+1)` -/
def P7076385125650301184.Spec : Prop :=
  ∀ n, P7076385125650301184.a n = A063915 n

end A063915

/-!
# A063916: G.f.: (1 + Sum_{ i >= 0 } 2^i*x^(2^(i+1)-1)) / (1-x)^3.

The programs for A063916, the canonical program `A063916.P11540467349423169323` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063916 has offset 0).

The definition of A063916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063916.P5139957438221991536

`∑[∑[2^floor(log2(n+1))]]`
-/

namespace A063916.P5139957438221991536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063916.P5139957438221991536

namespace A063916

/-- `∑[∑[2^floor(log2(n+1))]]` -/
def P5139957438221991536.Spec : Prop :=
  ∀ n, (P5139957438221991536.a n : ℤ) = A063916 n

end A063916

/-! ## A063916.P11540467349423169323

`∑[and(n+1, -a(n-1))]+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063916

/-- `∑[and(n+1, -a(n-1))]+a(n-1)` -/
def P11540467349423169323.Spec : Prop :=
  ∀ n, P11540467349423169323.a n = A063916 n

theorem P11540467349423169323.correct : P11540467349423169323.Spec := by
  intro n
  simp only [A063916]

end A063916

/-! ## A063916.P2978634577930913684

`∑[2*A063915(n)]/2`
-/

namespace A063916.P2978634577930913684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063915 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A063916.P2978634577930913684

namespace A063916

/-- `∑[2*A063915(n)]/2` -/
def P2978634577930913684.Spec : Prop :=
  ∀ n, P2978634577930913684.a n = (A063916 n : ℚ)

end A063916

/-! ## A063916.P1108646653208314221

`∑[∑[A003817(n+1)+1]]/2`
-/

namespace A063916.P1108646653208314221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A063916.P1108646653208314221

namespace A063916

/-- `∑[∑[A003817(n+1)+1]]/2` -/
def P1108646653208314221.Spec : Prop :=
  ∀ n, P1108646653208314221.a n = (A063916 n : ℚ)

end A063916

/-! ## A063916.P6230270652752873078

`∑[∑[A206332(n+1)-n]]/2`
-/

namespace A063916.P6230270652752873078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A063916.P6230270652752873078

namespace A063916

/-- `∑[∑[A206332(n+1)-n]]/2` -/
def P6230270652752873078.Spec : Prop :=
  ∀ n, P6230270652752873078.a n = (A063916 n : ℚ)

end A063916

/-! ## A063916.P16469993157796809901

`∑[A053644(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A063916.P16469993157796809901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A063916.P16469993157796809901

namespace A063916

/-- `∑[A053644(n+1)]+a(n-1)` -/
def P16469993157796809901.Spec : Prop :=
  ∀ n, P16469993157796809901.a n = A063916 n

end A063916

/-! ## A063916.P10173704534097187385

`∑[A063915(n)]+n*A000007(n)`
-/

namespace A063916.P10173704534097187385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A000007 n

end

end A063916.P10173704534097187385

namespace A063916

/-- `∑[A063915(n)]+n*A000007(n)` -/
def P10173704534097187385.Spec : Prop :=
  ∀ n, P10173704534097187385.a n = A063916 n

end A063916

/-! ## A063916.P3450791180164285045

`∑[∑[A053644(n+1)]]%(A157924(n+1)-n)²`
-/

namespace A063916.P3450791180164285045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((A157924 (n + 1) - (n : ℤ)) ^ 2)

end

end A063916.P3450791180164285045

namespace A063916

/-- `∑[∑[A053644(n+1)]]%(A157924(n+1)-n)²` -/
def P3450791180164285045.Spec : Prop :=
  ∀ n, P3450791180164285045.a n = A063916 n

end A063916

/-! ## A063916.P1545955732362320891

`∑[∑[A062383(n+1)]]/2`
-/

namespace A063916.P1545955732362320891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A063916.P1545955732362320891

namespace A063916

/-- `∑[∑[A062383(n+1)]]/2` -/
def P1545955732362320891.Spec : Prop :=
  ∀ n, P1545955732362320891.a n = (A063916 n : ℚ)

end A063916

/-! ## A063916.P10061886655337138046

`A000027(∑[∑[A053644(n+1)]])`
-/

namespace A063916.P10061886655337138046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063916.P10061886655337138046

namespace A063916

/-- `A000027(∑[∑[A053644(n+1)]])` -/
def P10061886655337138046.Spec : Prop :=
  ∀ n, P10061886655337138046.a n = A063916 n

end A063916

/-!
# A063918: a(1) = 1 and - applying the sieve of Eratosthenes - for n > 1: a(n) = if n is prime then 0 else the first prime p which marks n as composite.

The programs for A063918, there is no canonical definition to state claims against.
-/

/-! ## A063918.P12197668028450994743

`floor((n+1)/A322982(n+1))`
-/

namespace A063918.P12197668028450994743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A322982 (n + 1) : ℚ)⌋

end

end A063918.P12197668028450994743

/-! ## A063918.P14356724540491030936

`∏{p}[A020639(n+1), #%(n+1)]`
-/

namespace A063918.P14356724540491030936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p % (n + 1)

end

end A063918.P14356724540491030936

/-! ## A063918.P8400690936723542308

`A107286(A191558(n+1))`
-/

namespace A063918.P8400690936723542308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A191558 (n + 1)).toNat

end

end A063918.P8400690936723542308

/-! ## A063918.P3495718919672876962

`A397412(A068794(n+1))`
-/

namespace A063918.P3495718919672876962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397412 (A068794 (n + 1)).toNat

end

end A063918.P3495718919672876962

/-! ## A063918.P17572631332331506835

`A074828(n+1)%A007918(n)`
-/

namespace A063918.P17572631332331506835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074828 (n + 1)) (A007918 n)

end

end A063918.P17572631332331506835

/-! ## A063918.P14994394006529267463

`A020639(n+1)%A151800(n)`
-/

namespace A063918.P14994394006529267463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 1)) (A151800 n)

end

end A063918.P14994394006529267463

/-! ## A063918.P11277508322194026385

`A020639(n+1)-A061397(n+1)`
-/

namespace A063918.P11277508322194026385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - A061397 (n + 1)

end

end A063918.P11277508322194026385

/-! ## A063918.P3241483936213107533

`A061228(n+1)-A143545(n+1)`
-/

namespace A063918.P3241483936213107533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - A143545 (n + 1)

end

end A063918.P3241483936213107533

/-! ## A063918.P10825160632439423724

`A005171(n+1)*A020639(n+1)`
-/

namespace A063918.P10825160632439423724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A020639 (n + 1)

end

end A063918.P10825160632439423724

/-! ## A063918.P8236927267540312569

`A005171(n+1)*A074828(n+1)`
-/

namespace A063918.P8236927267540312569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A074828 (n + 1)

end

end A063918.P8236927267540312569

/-! ## A063918.P4840630467881748272

`A107286((n+1)*A005171(n+1))`
-/

namespace A063918.P4840630467881748272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((n + 1 : ℤ) * A005171 (n + 1)).toNat

end

end A063918.P4840630467881748272

/-! ## A063918.P11057891494250517043

`A191558(n+1)/A032742(n+1)`
-/

namespace A063918.P11057891494250517043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A063918.P11057891494250517043

/-! ## A063918.P5294197147846691627

`A191558(n+1)/A117818(n+1)`
-/

namespace A063918.P5294197147846691627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 1) : ℚ) / (A117818 (n + 1) : ℚ)

end

end A063918.P5294197147846691627

/-! ## A063918.P17149602905804568308

`A191558(n+1)/A322982(n+1)`
-/

namespace A063918.P17149602905804568308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 1) : ℚ) / (A322982 (n + 1) : ℚ)

end

end A063918.P17149602905804568308

/-! ## A063918.P4827313607823450824

`A159475(n+1)%A066560(n+1)`
-/

namespace A063918.P4827313607823450824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159475 (n + 1)) (A066560 (n + 1))

end

end A063918.P4827313607823450824

/-! ## A063918.P2840813866182917597

`gcd(A191558(n+1), A249744(n+1))`
-/

namespace A063918.P2840813866182917597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191558 (n + 1)) (A249744 (n + 1))

end

end A063918.P2840813866182917597

/-! ## A063918.P10234468539050736642

`C(A020639(n+1), A089026(n+1)²)`
-/

namespace A063918.P10234468539050736642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat (A089026 (n + 1) ^ 2).toNat

end

end A063918.P10234468539050736642

/-! ## A063918.P17952253638490245165

`(A250480(n+1)+1)*A005171(n+1)`
-/

namespace A063918.P17952253638490245165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A250480 (n + 1) + 1) * A005171 (n + 1)

end

end A063918.P17952253638490245165

/-! ## A063918.P10117748409495444461

`(1-A010051(n+1))*A020639(n+1)`
-/

namespace A063918.P10117748409495444461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A020639 (n + 1)

end

end A063918.P10117748409495444461

/-! ## A063918.P3010012944192503840

`(1-A010051(n+1))*A074828(n+1)`
-/

namespace A063918.P3010012944192503840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A074828 (n + 1)

end

end A063918.P3010012944192503840

/-!
# A063919: Sum of proper unitary divisors (or unitary aliquot parts) of n, including 1.

The programs for A063919, the canonical program `A063919.P11181265949704613022` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063919 has offset 1).

The definition of A063919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063919.P700142224590890242

`A034460(ceil(sqrt(n²+4)))`
-/

namespace A063919.P700142224590890242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

end

end A063919.P700142224590890242

namespace A063919

/-- `A034460(ceil(sqrt(n²+4)))` -/
def P700142224590890242.Spec : Prop :=
  ∀ n, P700142224590890242.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P8470188843843381433

`round(sqrt(A034460(n+1)²+1))`
-/

namespace A063919.P8470188843843381433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A034460 (n + 1) ^ 2 + 1 : ℝ))

end

end A063919.P8470188843843381433

namespace A063919

/-- `round(sqrt(A034460(n+1)²+1))` -/
def P8470188843843381433.Spec : Prop :=
  ∀ n, P8470188843843381433.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P8163008884427742044

`A034448(n+1)-ceil(sqrt(∑[2*n]))`
-/

namespace A063919.P8163008884427742044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A063919.P8163008884427742044

namespace A063919

/-- `A034448(n+1)-ceil(sqrt(∑[2*n]))` -/
def P8163008884427742044.Spec : Prop :=
  ∀ n, P8163008884427742044.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P11181265949704613022

`A034460(n+1)+A000007(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A063919

/-- `A034460(n+1)+A000007(n)` -/
def P11181265949704613022.Spec : Prop :=
  ∀ n, P11181265949704613022.a n = A063919 (n + 1)

theorem P11181265949704613022.correct : P11181265949704613022.Spec := by
  intro n
  simp only [A063919, Nat.add_sub_cancel]

end A063919

/-! ## A063919.P2923472952147315381

`or(A034460(n+1), A036987(n))`
-/

namespace A063919.P2923472952147315381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034460 (n + 1)) (A036987 n)

end

end A063919.P2923472952147315381

namespace A063919

/-- `or(A034460(n+1), A036987(n))` -/
def P2923472952147315381.Spec : Prop :=
  ∀ n, P2923472952147315381.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P13725355855762909839

`or(A034460(n+1), A059841(n))`
-/

namespace A063919.P13725355855762909839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034460 (n + 1)) (A059841 n)

end

end A063919.P13725355855762909839

namespace A063919

/-- `or(A034460(n+1), A059841(n))` -/
def P13725355855762909839.Spec : Prop :=
  ∀ n, P13725355855762909839.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P10710780053570073845

`A034460(n+1)^abs(A057428(n))`
-/

namespace A063919.P10710780053570073845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) : ℚ) ^ (|A057428 n| : ℤ)

end

end A063919.P10710780053570073845

namespace A063919

/-- `A034460(n+1)^abs(A057428(n))` -/
def P10710780053570073845.Spec : Prop :=
  ∀ n, P10710780053570073845.a n = (A063919 (n + 1) : ℚ)

end A063919

/-! ## A063919.P6659445870313518291

`or(char[A055112(n)], A034460(n+1))`
-/

namespace A063919.P6659445870313518291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A034460 (n + 1))

end

end A063919.P6659445870313518291

namespace A063919

/-- `or(char[A055112(n)], A034460(n+1))` -/
def P6659445870313518291.Spec : Prop :=
  ∀ n, P6659445870313518291.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P1846079493136092031

`A129468(n+1)+A028310(n)+1`
-/

namespace A063919.P1846079493136092031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1) + (A028310 n + 1)

end

end A063919.P1846079493136092031

namespace A063919

/-- `A129468(n+1)+A028310(n)+1` -/
def P1846079493136092031.Spec : Prop :=
  ∀ n, P1846079493136092031.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P8943557651076821435

`A173455(n+1)-A048146(n+1)`
-/

namespace A063919.P8943557651076821435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - A048146 (n + 1)

end

end A063919.P8943557651076821435

namespace A063919

/-- `A173455(n+1)-A048146(n+1)` -/
def P8943557651076821435.Spec : Prop :=
  ∀ n, P8943557651076821435.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P6159056987499189675

`A034460(n+1)+A034444(n+1)%2`
-/

namespace A063919.P6159056987499189675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + Int.tmod (A034444 (n + 1)) 2

end

end A063919.P6159056987499189675

namespace A063919

/-- `A034460(n+1)+A034444(n+1)%2` -/
def P6159056987499189675.Spec : Prop :=
  ∀ n, P6159056987499189675.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P7244690107560511727

`A034460(n+1)+1-char[A324400(n+1)]`
-/

namespace A063919.P7244690107560511727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A063919.P7244690107560511727

namespace A063919

/-- `A034460(n+1)+1-char[A324400(n+1)]` -/
def P7244690107560511727.Spec : Prop :=
  ∀ n, P7244690107560511727.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P18381914320354107250

`A034460(n+1)^A034460(A332476(n+1))`
-/

namespace A063919.P18381914320354107250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) : ℚ) ^ (A034460 (A332476 (n + 1)).toNat : ℤ)

end

end A063919.P18381914320354107250

namespace A063919

/-- `A034460(n+1)^A034460(A332476(n+1))` -/
def P18381914320354107250.Spec : Prop :=
  ∀ n, P18381914320354107250.a n = (A063919 (n + 1) : ℚ)

end A063919

/-! ## A063919.P17515957361008916465

`A034460(n+1)+A010052(A010052(n)+n)`
-/

namespace A063919.P17515957361008916465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + A010052 (A010052 n + (n : ℤ)).toNat

end

end A063919.P17515957361008916465

namespace A063919

/-- `A034460(n+1)+A010052(A010052(n)+n)` -/
def P17515957361008916465.Spec : Prop :=
  ∀ n, P17515957361008916465.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P13555144594959167060

`A034460(n+1)+1-A034460(A020639(n+1))`
-/

namespace A063919.P13555144594959167060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (1 - A034460 (A020639 (n + 1)).toNat)

end

end A063919.P13555144594959167060

namespace A063919

/-- `A034460(n+1)+1-A034460(A020639(n+1))` -/
def P13555144594959167060.Spec : Prop :=
  ∀ n, P13555144594959167060.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P10431407232698301420

`A325814(n+1)-A326068(A103517(n))`
-/

namespace A063919.P10431407232698301420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1) - A326068 (A103517 n).toNat

end

end A063919.P10431407232698301420

namespace A063919

/-- `A325814(n+1)-A326068(A103517(n))` -/
def P10431407232698301420.Spec : Prop :=
  ∀ n, P10431407232698301420.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P2033299827623214357

`A028310(A034460(n+1))`
-/

namespace A063919.P2033299827623214357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A034460 (n + 1)).toNat

end

end A063919.P2033299827623214357

namespace A063919

/-- `A028310(A034460(n+1))` -/
def P2033299827623214357.Spec : Prop :=
  ∀ n, P2033299827623214357.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P9896066006064590604

`A028310(A345451(n+1)-n)`
-/

namespace A063919.P9896066006064590604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A345451 (n + 1) - (n : ℤ)).toNat

end

end A063919.P9896066006064590604

namespace A063919

/-- `A028310(A345451(n+1)-n)` -/
def P9896066006064590604.Spec : Prop :=
  ∀ n, P9896066006064590604.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P4418893366842635610

`A254667(A034460(n+1)+1)-1`
-/

namespace A063919.P4418893366842635610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A034460 (n + 1) + 1).toNat - 1

end

end A063919.P4418893366842635610

namespace A063919

/-- `A254667(A034460(n+1)+1)-1` -/
def P4418893366842635610.Spec : Prop :=
  ∀ n, P4418893366842635610.a n = A063919 (n + 1)

end A063919

/-! ## A063919.P14572708535685490248

`gcd(A034460(n+1), A073618(n))`
-/

namespace A063919.P14572708535685490248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034460 (n + 1)) (A073618 n)

end

end A063919.P14572708535685490248

namespace A063919

/-- `gcd(A034460(n+1), A073618(n))` -/
def P14572708535685490248.Spec : Prop :=
  ∀ n, (P14572708535685490248.a n : ℤ) = A063919 (n + 1)

end A063919

/-!
# A063920: Numbers k such that k = 2*phi(k) + phi(phi(k)).

The programs for A063920, the canonical program `A063920.P8569464319641913210` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063920 has offset 0).

The definition of A063920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063920.P8569464319641913210

`(12-2*(-1)^n)*2^floor(n/2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063920

/-- `(12-2*(-1)^n)*2^floor(n/2)` -/
def P8569464319641913210.Spec : Prop :=
  ∀ n, P8569464319641913210.a n = (A063920 n : ℚ)

end A063920

/-! ## A063920.P14664279381463576642

`ogf((10+14x)/(1-2x^2))`
-/

namespace A063920.P14664279381463576642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 14] [1, 0, -2] n

end

end A063920.P14664279381463576642

namespace A063920

/-- `ogf((10+14x)/(1-2x^2))` -/
def P14664279381463576642.Spec : Prop :=
  ∀ n, P14664279381463576642.a n = A063920 n

end A063920

/-! ## A063920.P11423487282077009978

`a(n-2)+a(n-2)` with `a(0)=10, a(1)=14`
-/

namespace A063920.P11423487282077009978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 14] fun n a =>
  a (n - 2) + a (n - 2)

end

end A063920.P11423487282077009978

namespace A063920

/-- `a(n-2)+a(n-2)` -/
def P11423487282077009978.Spec : Prop :=
  ∀ n, (P11423487282077009978.a n : ℤ) = A063920 n

end A063920

/-! ## A063920.P5455018924904312652

`a(n-2)/(1-1/2)` with `a(0)=10, a(1)=14`
-/

namespace A063920.P5455018924904312652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10, 14] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A063920.P5455018924904312652

namespace A063920

/-- `a(n-2)/(1-1/2)` -/
def P5455018924904312652.Spec : Prop :=
  ∀ n, P5455018924904312652.a n = (A063920 n : ℚ)

end A063920

/-! ## A063920.P758550094929925265

`A070875(n+2)`
-/

namespace A063920.P758550094929925265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (n + 2)

end

end A063920.P758550094929925265

namespace A063920

/-- `A070875(n+2)` -/
def P758550094929925265.Spec : Prop :=
  ∀ n, P758550094929925265.a n = A063920 n

end A063920

/-! ## A063920.P4080363266279492968

`A010737(n+2)+1`
-/

namespace A063920.P4080363266279492968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (n + 2) + 1

end

end A063920.P4080363266279492968

namespace A063920

/-- `A010737(n+2)+1` -/
def P4080363266279492968.Spec : Prop :=
  ∀ n, P4080363266279492968.a n = A063920 n

end A063920

/-! ## A063920.P4797514977467794311

`A133257(n+1)+3`
-/

namespace A063920.P4797514977467794311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133257 (n + 1) + 3

end

end A063920.P4797514977467794311

namespace A063920

/-- `A133257(n+1)+3` -/
def P4797514977467794311.Spec : Prop :=
  ∀ n, P4797514977467794311.a n = A063920 n

end A063920

/-! ## A063920.P15022386575937551783

`A063757(n+1)+6`
-/

namespace A063920.P15022386575937551783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063757 (n + 1) + 6

end

end A063920.P15022386575937551783

namespace A063920

/-- `A063757(n+1)+6` -/
def P15022386575937551783.Spec : Prop :=
  ∀ n, P15022386575937551783.a n = A063920 n

end A063920

/-! ## A063920.P13774004869967085234

`A029750(2*n+9)`
-/

namespace A063920.P13774004869967085234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (2 * n + 9)

end

end A063920.P13774004869967085234

namespace A063920

/-- `A029750(2*n+9)` -/
def P13774004869967085234.Spec : Prop :=
  ∀ n, P13774004869967085234.a n = A063920 n

end A063920

/-! ## A063920.P5780590929752633239

`record[A070875(abs(2-n))]`
-/

namespace A063920.P5780590929752633239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063920.P5780590929752633239

namespace A063920

/-- `record[A070875(abs(2-n))]` -/
def P5780590929752633239.Spec : Prop :=
  ∀ n, P5780590929752633239.a n = A063920 n

end A063920

/-! ## A063920.P14612193511384203953

`abs(Δ[Δ[A152166(n+1)]])`
-/

namespace A063920.P14612193511384203953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A063920.P14612193511384203953

namespace A063920

/-- `abs(Δ[Δ[A152166(n+1)]])` -/
def P14612193511384203953.Spec : Prop :=
  ∀ n, P14612193511384203953.a n = A063920 n

end A063920

/-! ## A063920.P10864945997347398569

`A246074(3*(n+3)+1)`
-/

namespace A063920.P10864945997347398569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (3 * (n + 3) + 1)

end

end A063920.P10864945997347398569

namespace A063920

/-- `A246074(3*(n+3)+1)` -/
def P10864945997347398569.Spec : Prop :=
  ∀ n, P10864945997347398569.a n = A063920 n

end A063920

/-! ## A063920.P4450686771329893429

`A288732(2*n+1)+6`
-/

namespace A063920.P4450686771329893429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288732 (2 * n + 1) + 6

end

end A063920.P4450686771329893429

namespace A063920

/-- `A288732(2*n+1)+6` -/
def P4450686771329893429.Spec : Prop :=
  ∀ n, P4450686771329893429.a n = A063920 n

end A063920

/-! ## A063920.P6904927188804616329

`A246076(Δ[2*(n+2)²])`
-/

namespace A063920.P6904927188804616329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246076 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063920.P6904927188804616329

namespace A063920

/-- `A246076(Δ[2*(n+2)²])` -/
def P6904927188804616329.Spec : Prop :=
  ∀ n, P6904927188804616329.a n = A063920 n

end A063920

/-! ## A063920.P4905211308509501225

`A354785(n+3)+A060546(n)`
-/

namespace A063920.P4905211308509501225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354785 (n + 3) + A060546 n

end

end A063920.P4905211308509501225

namespace A063920

/-- `A354785(n+3)+A060546(n)` -/
def P4905211308509501225.Spec : Prop :=
  ∀ n, P4905211308509501225.a n = A063920 n

end A063920

/-! ## A063920.P14009143023621664533

`A164682(n+1)+A164095(n+1)`
-/

namespace A063920.P14009143023621664533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164682 (n + 1) + A164095 (n + 1)

end

end A063920.P14009143023621664533

namespace A063920

/-- `A164682(n+1)+A164095(n+1)` -/
def P14009143023621664533.Spec : Prop :=
  ∀ n, P14009143023621664533.a n = A063920 n

end A063920

/-! ## A063920.P4019840663912160008

`A090989(n+1)+A090989(n+2)`
-/

namespace A063920.P4019840663912160008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (n + 1) + A090989 (n + 2)

end

end A063920.P4019840663912160008

namespace A063920

/-- `A090989(n+1)+A090989(n+2)` -/
def P4019840663912160008.Spec : Prop :=
  ∀ n, P4019840663912160008.a n = A063920 n

end A063920

/-! ## A063920.P3964034571017298655

`A343177(n+2)+A136252(n+1)`
-/

namespace A063920.P3964034571017298655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 (n + 2) + A136252 (n + 1)

end

end A063920.P3964034571017298655

namespace A063920

/-- `A343177(n+2)+A136252(n+1)` -/
def P3964034571017298655.Spec : Prop :=
  ∀ n, P3964034571017298655.a n = A063920 n

end A063920

/-! ## A063920.P2259929206188659386

`A354785(n+3)+A016116(n+1)`
-/

namespace A063920.P2259929206188659386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354785 (n + 3) + A016116 (n + 1)

end

end A063920.P2259929206188659386

namespace A063920

/-- `A354785(n+3)+A016116(n+1)` -/
def P2259929206188659386.Spec : Prop :=
  ∀ n, P2259929206188659386.a n = A063920 n

end A063920

/-! ## A063920.P14058113500352608986

`A354788(n+2)+A343177(n+2)`
-/

namespace A063920.P14058113500352608986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 (n + 2) + A343177 (n + 2)

end

end A063920.P14058113500352608986

namespace A063920

/-- `A354788(n+2)+A343177(n+2)` -/
def P14058113500352608986.Spec : Prop :=
  ∀ n, P14058113500352608986.a n = A063920 n

end A063920

/-!
# A063922: Numbers k such that k^5 = a^5 + b^5 + c^5 + d^5 + e^5 has a nontrivial solution in nonnegative integers.

The programs for A063922, there is no canonical definition to state claims against.
-/

/-! ## A063922.P10772389129698130873

`lt[A161885(n+2), 6]+2`
-/

namespace A063922.P10772389129698130873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161885 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A063922.P10772389129698130873

/-! ## A063922.P17065769666701374683

`lt[A161885(A233583(n+1)), 6]`
-/

namespace A063922.P17065769666701374683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161885 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A063922.P17065769666701374683

/-!
# A063923: Numbers k such that k^5 = a^5 + b^5 + c^5 + d^5 + e^5 has a nontrivial primitive solution in nonnegative integers.

The programs for A063923, there is no canonical definition to state claims against.
-/

/-! ## A063923.P2443273534979239045

`A063922(∪[A328210(n+1), A001023(n)])`
-/

namespace A063923.P2443273534979239045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063922 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A063923.P2443273534979239045

/-! ## A063923.P13858233383631437002

`A063922(∪[A328210(n+1), A016233(n)])`
-/

namespace A063923.P13858233383631437002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016233 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063922 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A063923.P13858233383631437002

/-!
# A063924: Number of 3-dimensional cells in the regular 4-dimensional polytopes.

The programs for A063924, there is no canonical definition to state claims against.
-/

/-! ## A063924.P5387472550548186292

`A063925(n+1)-A063926(n+1)+A063927(n+1)`
-/

namespace A063924.P5387472550548186292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063925 (n + 1) - A063926 (n + 1) + A063927 (n + 1)

end

end A063924.P5387472550548186292

/-!
# A063925: Number of 2-dimensional faces in the regular 4-dimensional polytopes.

The programs for A063925, there is no canonical definition to state claims against.
-/

/-! ## A063925.P16709642156234734341

`A063924(n+1)+A063926(n+1)-A063927(n+1)`
-/

namespace A063925.P16709642156234734341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063924 (n + 1) + A063926 (n + 1) - A063927 (n + 1)

end

end A063925.P16709642156234734341

/-!
# A063926: Number of edges in the six regular 4-dimensional polytopes.

The programs for A063926, there is no canonical definition to state claims against.
-/

/-! ## A063926.P17598640534571865376

`A063927(n+1)+A063925(n+1)-A063924(n+1)`
-/

namespace A063926.P17598640534571865376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063927 (n + 1) + A063925 (n + 1) - A063924 (n + 1)

end

end A063926.P17598640534571865376

/-!
# A063927: Number of vertices in the regular 4-dimensional polytopes.

The programs for A063927, there is no canonical definition to state claims against.
-/

/-! ## A063927.P5431179333856002822

`A063926(n+1)-A063925(n+1)+A063924(n+1)`
-/

namespace A063927.P5431179333856002822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063926 (n + 1) - A063925 (n + 1) + A063924 (n + 1)

end

end A063927.P5431179333856002822

/-!
# A063928: Largest nonprime proper divisor of n (with a(1)=1).

The programs for A063928, there is no canonical definition to state claims against.
-/

/-! ## A063928.P14956243446771406699

`A005451(A032742(n+1))`
-/

namespace A063928.P14956243446771406699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A032742 (n + 1)).toNat

end

end A063928.P14956243446771406699

/-! ## A063928.P9817749402623421429

`A005451(A117818(n+1))`
-/

namespace A063928.P9817749402623421429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A117818 (n + 1)).toNat

end

end A063928.P9817749402623421429

/-! ## A063928.P11967571963752828643

`gcd(A032742(n+1), A230594(n+1))`
-/

namespace A063928.P11967571963752828643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (n + 1)) (A230594 (n + 1))

end

end A063928.P11967571963752828643

/-! ## A063928.P1608406988677817249

`A032742(n*(1-A064911(n+1))+1)`
-/

namespace A063928.P1608406988677817249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((n : ℤ) * (1 - A064911 (n + 1)) + 1).toNat

end

end A063928.P1608406988677817249

/-! ## A063928.P4195557026844775843

`A032742(n%∏{d}[A032742(n+1), #]+1)`
-/

namespace A063928.P4195557026844775843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n % (∏ d ∈ Nat.divisors (f1 n).natAbs, d) + 1)

end

end A063928.P4195557026844775843

/-! ## A063928.P6803371568454427504

`A005451(xor(A005451(n+1), A106409(n+1)))`
-/

namespace A063928.P6803371568454427504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (Int.xor (A005451 (n + 1)) (A106409 (n + 1))).toNat

end

end A063928.P6803371568454427504

/-! ## A063928.P381768823620825318

`A032742((2-A101040(n+1))*A032742(n+1))`
-/

namespace A063928.P381768823620825318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((2 - A101040 (n + 1)) * A032742 (n + 1)).toNat

end

end A063928.P381768823620825318

/-! ## A063928.P5647590998191573629

`gcd(n+1-A060681(n+1), A318886(A075660(n+1)))`
-/

namespace A063928.P5647590998191573629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A060681 (n + 1)) (A318886 (A075660 (n + 1)).toNat)

end

end A063928.P5647590998191573629

/-! ## A063928.P10850315726961194269

`gcd((n+1)/A020639(n+1), A070536(A075660(n+1)))`
-/

namespace A063928.P10850315726961194269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A070536 (A075660 (n + 1)).toNat)

end

end A063928.P10850315726961194269

/-! ## A063928.P16944553864209941113

`A032742(n+1)+A085392(A032742(n+1))-A085392(n+1)`
-/

namespace A063928.P16944553864209941113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + (A085392 (A032742 (n + 1)).toNat - A085392 (n + 1))

end

end A063928.P16944553864209941113

/-! ## A063928.P5811776367301208848

`A054576((n+1)*A300226(A115561(n+1)))`
-/

namespace A063928.P5811776367301208848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 ((n + 1 : ℤ) * A300226 (A115561 (n + 1)).toNat).toNat

end

end A063928.P5811776367301208848

/-! ## A063928.P8219233536045059455

`A054576((n+1)*A300249(A115561(n+1)))`
-/

namespace A063928.P8219233536045059455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 ((n + 1 : ℤ) * A300249 (A115561 (n + 1)).toNat).toNat

end

end A063928.P8219233536045059455

/-! ## A063928.P12478497241106872169

`A032742(A032742(n+1)²)/A117818(A032742(n+1))`
-/

namespace A063928.P12478497241106872169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (A032742 (n + 1) ^ 2).toNat : ℚ) / (A117818 (A032742 (n + 1)).toNat : ℚ)

end

end A063928.P12478497241106872169

/-! ## A063928.P12970681013840587941

`A117818(A117818(n+1)²)/A117818(A117818(n+1))`
-/

namespace A063928.P12970681013840587941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117818 (A117818 (n + 1) ^ 2).toNat : ℚ) / (A117818 (A117818 (n + 1)).toNat : ℚ)

end

end A063928.P12970681013840587941

/-!
# A063929: Radius of A-excircle of Pythagorean triangle with a = (n+1)^2 - m^2, b = 2*(n+1)*m and c = (n+1)^2 + m^2.

The programs for A063929, the canonical program `A063929.P8531949189101213059` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063929 has offset 1).

The definition of A063929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063929.P1599671956642800482

`(C(comp[∑[n]]-n, 2)-n)*(comp[∑[n]]-n)`
-/

namespace A063929.P1599671956642800482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))

end

end A063929.P1599671956642800482

namespace A063929

/-- `(C(comp[∑[n]]-n, 2)-n)*(comp[∑[n]]-n)` -/
def P1599671956642800482.Spec : Prop :=
  ∀ n, P1599671956642800482.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P9184037053284711487

`A131784(n+1)+1`
-/

namespace A063929.P9184037053284711487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131784 (n + 1) + 1

end

end A063929.P9184037053284711487

namespace A063929

/-- `A131784(n+1)+1` -/
def P9184037053284711487.Spec : Prop :=
  ∀ n, P9184037053284711487.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P3594916963483264306

`(comp[∑[n]]-n)*A004736(n+1)`
-/

namespace A063929.P3594916963483264306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A004736 (n + 1)

end

end A063929.P3594916963483264306

namespace A063929

/-- `(comp[∑[n]]-n)*A004736(n+1)` -/
def P3594916963483264306.Spec : Prop :=
  ∀ n, P3594916963483264306.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P10535381594038473268

`(A025581(n)+1)*(comp[∑[n]]-n)`
-/

namespace A063929.P10535381594038473268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A063929.P10535381594038473268

namespace A063929

/-- `(A025581(n)+1)*(comp[∑[n]]-n)` -/
def P10535381594038473268.Spec : Prop :=
  ∀ n, P10535381594038473268.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P735388949832899728

`(comp[∑[n]]-n)*sqrt(A055461(n+1))`
-/

namespace A063929.P735388949832899728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℝ) * Real.sqrt (A055461 (n + 1) : ℝ)

end

end A063929.P735388949832899728

namespace A063929

/-- `(comp[∑[n]]-n)*sqrt(A055461(n+1))` -/
def P735388949832899728.Spec : Prop :=
  ∀ n, P735388949832899728.a n = (A063929 (n + 1) : ℝ)

end A063929

/-! ## A063929.P6331095967314025866

`A003991(n+1)+(C(comp[∑[n]]-n, 2)-n)²`
-/

namespace A063929.P6331095967314025866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2

end

end A063929.P6331095967314025866

namespace A063929

/-- `A003991(n+1)+(C(comp[∑[n]]-n, 2)-n)²` -/
def P6331095967314025866.Spec : Prop :=
  ∀ n, P6331095967314025866.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P5438065835848484294

`A140880(n)/A074909(n)`
-/

namespace A063929.P5438065835848484294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140880 n : ℚ) / (A074909 n : ℚ)

end

end A063929.P5438065835848484294

namespace A063929

/-- `A140880(n)/A074909(n)` -/
def P5438065835848484294.Spec : Prop :=
  ∀ n, P5438065835848484294.a n = (A063929 (n + 1) : ℚ)

end A063929

/-! ## A063929.P1780713314121973808

`A128140(n+1)+A099375(n)`
-/

namespace A063929.P1780713314121973808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) + A099375 n

end

end A063929.P1780713314121973808

namespace A063929

/-- `A128140(n+1)+A099375(n)` -/
def P1780713314121973808.Spec : Prop :=
  ∀ n, P1780713314121973808.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P11113927588723607911

`A131782(n+1)+A128139(n)`
-/

namespace A063929.P11113927588723607911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131782 (n + 1) + A128139 n

end

end A063929.P11113927588723607911

namespace A063929

/-- `A131782(n+1)+A128139(n)` -/
def P11113927588723607911.Spec : Prop :=
  ∀ n, P11113927588723607911.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P8531949189101213059

`A055461(n+1)+A003991(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A063929

/-- `A055461(n+1)+A003991(n+1)` -/
def P8531949189101213059.Spec : Prop :=
  ∀ n, P8531949189101213059.a n = A063929 (n + 1)

theorem P8531949189101213059.correct : P8531949189101213059.Spec := by
  intro n
  simp only [A063929, Nat.add_sub_cancel]

end A063929

/-! ## A063929.P13925038578310351766

`A095833(n+1)+A004736(n+1)`
-/

namespace A063929.P13925038578310351766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) + A004736 (n + 1)

end

end A063929.P13925038578310351766

namespace A063929

/-- `A095833(n+1)+A004736(n+1)` -/
def P13925038578310351766.Spec : Prop :=
  ∀ n, P13925038578310351766.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P10803615235459360250

`A055461(n+1)+A059036(n)+1`
-/

namespace A063929.P10803615235459360250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + (A059036 n + 1)

end

end A063929.P10803615235459360250

namespace A063929

/-- `A055461(n+1)+A059036(n)+1` -/
def P10803615235459360250.Spec : Prop :=
  ∀ n, P10803615235459360250.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P7491556148844866482

`A095833(n+1)+A025581(n)+1`
-/

namespace A063929.P7491556148844866482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) + (A025581 n + 1)

end

end A063929.P7491556148844866482

namespace A063929

/-- `A095833(n+1)+A025581(n)+1` -/
def P7491556148844866482.Spec : Prop :=
  ∀ n, P7491556148844866482.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P13045032792307340228

`A131914(n+1)+A091435(n)+1`
-/

namespace A063929.P13045032792307340228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (n + 1) + (A091435 n + 1)

end

end A063929.P13045032792307340228

namespace A063929

/-- `A131914(n+1)+A091435(n)+1` -/
def P13045032792307340228.Spec : Prop :=
  ∀ n, P13045032792307340228.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P12927353282201847298

`A141429(n+1)+A095832(n+1)`
-/

namespace A063929.P12927353282201847298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1) + A095832 (n + 1)

end

end A063929.P12927353282201847298

namespace A063929

/-- `A141429(n+1)+A095832(n+1)` -/
def P12927353282201847298.Spec : Prop :=
  ∀ n, P12927353282201847298.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P8849017017272026910

`A158841(n+1)+A143956(n+1)`
-/

namespace A063929.P8849017017272026910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158841 (n + 1) + A143956 (n + 1)

end

end A063929.P8849017017272026910

namespace A063929

/-- `A158841(n+1)+A143956(n+1)` -/
def P8849017017272026910.Spec : Prop :=
  ∀ n, P8849017017272026910.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P5040973196469041962

`A323956(n+1)+A128076(n+1)`
-/

namespace A063929.P5040973196469041962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (n + 1) + A128076 (n + 1)

end

end A063929.P5040973196469041962

namespace A063929

/-- `A323956(n+1)+A128076(n+1)` -/
def P5040973196469041962.Spec : Prop :=
  ∀ n, P5040973196469041962.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P4140472699672241679

`A323956(n+1)+A294317(n)+1`
-/

namespace A063929.P4140472699672241679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (n + 1) + (A294317 n + 1)

end

end A063929.P4140472699672241679

namespace A063929

/-- `A323956(n+1)+A294317(n)+1` -/
def P4140472699672241679.Spec : Prop :=
  ∀ n, P4140472699672241679.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P10866967892861802966

`A063930(n+1)-A057105(n+1)`
-/

namespace A063929.P10866967892861802966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063930 (n + 1) - A057105 (n + 1)

end

end A063929.P10866967892861802966

namespace A063929

/-- `A063930(n+1)-A057105(n+1)` -/
def P10866967892861802966.Spec : Prop :=
  ∀ n, P10866967892861802966.a n = A063929 (n + 1)

end A063929

/-! ## A063929.P14279531147193347888

`A205016(n+1)-A141429(n+1)`
-/

namespace A063929.P14279531147193347888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205016 (n + 1) - A141429 (n + 1)

end

end A063929.P14279531147193347888

namespace A063929

/-- `A205016(n+1)-A141429(n+1)` -/
def P14279531147193347888.Spec : Prop :=
  ∀ n, P14279531147193347888.a n = A063929 (n + 1)

end A063929

/-!
# A063930: Radius of B-excircle of Pythagorean triangle with a=(n+1)^2-m^2, b=2*(n+1)*m and c=(n+1)^2+m^2.

The programs for A063930, the canonical program `A063930.P17082922277373076399` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063930 has offset 1).

The definition of A063930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063930.P6004715851603769511

`(1-C(∑[char[∑[n]]], 2)+n)*A020725(n-C(∑[char[∑[n+1]]], 2)+2)`
-/

namespace A063930.P6004715851603769511
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A020725 ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + 2).toNat

end

end A063930.P6004715851603769511

namespace A063930

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A020725(n-C(∑[char[∑[n+1]]], 2)+2)` -/
def P6004715851603769511.Spec : Prop :=
  ∀ n, P6004715851603769511.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P17954852215212711914

`A120070(n+2)/ratio[A074909(n)]`
-/

namespace A063930.P17954852215212711914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A063930.P17954852215212711914

namespace A063930

/-- `A120070(n+2)/ratio[A074909(n)]` -/
def P17954852215212711914.Spec : Prop :=
  ∀ n, P17954852215212711914.a n = (A063930 (n + 1) : ℚ)

end A063930

/-! ## A063930.P17082922277373076399

`A063929(n+1)+A057105(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A063930

/-- `A063929(n+1)+A057105(n+1)` -/
def P17082922277373076399.Spec : Prop :=
  ∀ n, P17082922277373076399.a n = A063930 (n + 1)

theorem P17082922277373076399.correct : P17082922277373076399.Spec := by
  intro n
  simp only [A063930, Nat.add_sub_cancel]

end A063930

/-! ## A063930.P6632974746508130862

`A083487(n+1)-A127738(n+1)`
-/

namespace A063930.P6632974746508130862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - A127738 (n + 1)

end

end A063930.P6632974746508130862

namespace A063930

/-- `A083487(n+1)-A127738(n+1)` -/
def P6632974746508130862.Spec : Prop :=
  ∀ n, P6632974746508130862.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P13873591686010345777

`A144650(n+1)-A141429(n+1)`
-/

namespace A063930.P13873591686010345777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - A141429 (n + 1)

end

end A063930.P13873591686010345777

namespace A063930

/-- `A144650(n+1)-A141429(n+1)` -/
def P13873591686010345777.Spec : Prop :=
  ∀ n, P13873591686010345777.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P9233013817263735884

`A055096(n+2)-A063929(n+1)`
-/

namespace A063930.P9233013817263735884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) - A063929 (n + 1)

end

end A063930.P9233013817263735884

namespace A063930

/-- `A055096(n+2)-A063929(n+1)` -/
def P9233013817263735884.Spec : Prop :=
  ∀ n, P9233013817263735884.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P59688131722184488

`A001283(n+2)-A120070(n+2)`
-/

namespace A063930.P59688131722184488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) - A120070 (n + 2)

end

end A063930.P59688131722184488

namespace A063930

/-- `A001283(n+2)-A120070(n+2)` -/
def P59688131722184488.Spec : Prop :=
  ∀ n, P59688131722184488.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P11359382996697033117

`(A108872(n+1)+1)*A002260(n+1)`
-/

namespace A063930.P11359382996697033117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) + 1) * A002260 (n + 1)

end

end A063930.P11359382996697033117

namespace A063930

/-- `(A108872(n+1)+1)*A002260(n+1)` -/
def P11359382996697033117.Spec : Prop :=
  ∀ n, P11359382996697033117.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P17219603256140550650

`(A094727(n+1)+2)*A002260(n+1)`
-/

namespace A063930.P17219603256140550650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) + 2) * A002260 (n + 1)

end

end A063930.P17219603256140550650

namespace A063930

/-- `(A094727(n+1)+2)*A002260(n+1)` -/
def P17219603256140550650.Spec : Prop :=
  ∀ n, P17219603256140550650.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P301529474599979533

`A003991(n+1)+2*A133819(n+1)`
-/

namespace A063930.P301529474599979533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + 2 * A133819 (n + 1)

end

end A063930.P301529474599979533

namespace A063930

/-- `A003991(n+1)+2*A133819(n+1)` -/
def P301529474599979533.Spec : Prop :=
  ∀ n, P301529474599979533.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P15956331960070291671

`A001283(n+2)-(A063929(n+1)+A003991(n+1))`
-/

namespace A063930.P15956331960070291671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) - (A063929 (n + 1) + A003991 (n + 1))

end

end A063930.P15956331960070291671

namespace A063930

/-- `A001283(n+2)-(A063929(n+1)+A003991(n+1))` -/
def P15956331960070291671.Spec : Prop :=
  ∀ n, P15956331960070291671.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P16409899508630886239

`(A003057(n+2)+A002260(n+1))*A002260(n+1)`
-/

namespace A063930.P16409899508630886239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) + A002260 (n + 1)) * A002260 (n + 1)

end

end A063930.P16409899508630886239

namespace A063930

/-- `(A003057(n+2)+A002260(n+1))*A002260(n+1)` -/
def P16409899508630886239.Spec : Prop :=
  ∀ n, P16409899508630886239.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P15383697142096417220

`A209297(n+1)+A092283(n+1)`
-/

namespace A063930.P15383697142096417220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209297 (n + 1) + A092283 (n + 1)

end

end A063930.P15383697142096417220

namespace A063930

/-- `A209297(n+1)+A092283(n+1)` -/
def P15383697142096417220.Spec : Prop :=
  ∀ n, P15383697142096417220.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P10681566741047996815

`A073675(A002260(n+1)²)+A003991(n+1)`
-/

namespace A063930.P10681566741047996815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A002260 (n + 1) ^ 2).toNat + A003991 (n + 1)

end

end A063930.P10681566741047996815

namespace A063930

/-- `A073675(A002260(n+1)²)+A003991(n+1)` -/
def P10681566741047996815.Spec : Prop :=
  ∀ n, P10681566741047996815.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P4230004365251178024

`A075362(A245300(comp[∑[n]]))`
-/

namespace A063930.P4230004365251178024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A245300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A063930.P4230004365251178024

namespace A063930

/-- `A075362(A245300(comp[∑[n]]))` -/
def P4230004365251178024.Spec : Prop :=
  ∀ n, P4230004365251178024.a n = A063930 (n + 1)

end A063930

/-! ## A063930.P9661786424998692248

`A077012(n+1)/A094310(n+1)*A120070(n+2)`
-/

namespace A063930.P9661786424998692248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077012 (n + 1) : ℚ) / (A094310 (n + 1) : ℚ) * (A120070 (n + 2) : ℚ)

end

end A063930.P9661786424998692248

namespace A063930

/-- `A077012(n+1)/A094310(n+1)*A120070(n+2)` -/
def P9661786424998692248.Spec : Prop :=
  ∀ n, P9661786424998692248.a n = (A063930 (n + 1) : ℚ)

end A063930

/-! ## A063930.P10427730891348267648

`(A051162(n)+3)*A000005(A059268(n))`
-/

namespace A063930.P10427730891348267648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 3) * A000005 (A059268 n).toNat

end

end A063930.P10427730891348267648

namespace A063930

/-- `(A051162(n)+3)*A000005(A059268(n))` -/
def P10427730891348267648.Spec : Prop :=
  ∀ n, P10427730891348267648.a n = A063930 (n + 1)

end A063930

/-!
# A063932: Average of largest prime less than or equal to n and smallest prime greater than or equal to n.

The programs for A063932, the canonical program `A063932.P11424779668290983480` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063932 has offset 2).

The definition of A063932 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063932.P49700357728264133

`n+2-A063933(n+2)`
-/

namespace A063932.P49700357728264133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A063933 (n + 2)

end

end A063932.P49700357728264133

namespace A063932

/-- `n+2-A063933(n+2)` -/
def P49700357728264133.Spec : Prop :=
  ∀ n, P49700357728264133.a n = A063932 (n + 2)

end A063932

/-! ## A063932.P11424779668290983480

`(A007917(n+2)+A007918(n+2))/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A063932

/-- `(A007917(n+2)+A007918(n+2))/2` -/
def P11424779668290983480.Spec : Prop :=
  ∀ n, P11424779668290983480.a n = (A063932 (n + 2) : ℚ)

end A063932

/-! ## A063932.P6079798275063522306

`(A119257(n+2)+n+2)/2`
-/

namespace A063932.P6079798275063522306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119257 (n + 2) + (n + 2 : ℤ) : ℚ) / 2

end

end A063932.P6079798275063522306

namespace A063932

/-- `(A119257(n+2)+n+2)/2` -/
def P6079798275063522306.Spec : Prop :=
  ∀ n, P6079798275063522306.a n = (A063932 (n + 2) : ℚ)

end A063932

/-! ## A063932.P3790384417126871133

`A359300(n+2)/2+n+2`
-/

namespace A063932.P3790384417126871133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359300 (n + 2) : ℚ) / 2 + (n + 2 : ℚ)

end

end A063932.P3790384417126871133

namespace A063932

/-- `A359300(n+2)/2+n+2` -/
def P3790384417126871133.Spec : Prop :=
  ∀ n, P3790384417126871133.a n = (A063932 (n + 2) : ℚ)

end A063932

/-! ## A063932.P14302774237129225962

`(A151800(n+1)+A007917(n+2))/2`
-/

namespace A063932.P14302774237129225962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 (n + 1) + A007917 (n + 2) : ℚ) / 2

end

end A063932.P14302774237129225962

namespace A063932

/-- `(A151800(n+1)+A007917(n+2))/2` -/
def P14302774237129225962.Spec : Prop :=
  ∀ n, P14302774237129225962.a n = (A063932 (n + 2) : ℚ)

end A063932

/-! ## A063932.P1312303665761366334

`ceil(sqrt(A030664(n+2)))`
-/

namespace A063932.P1312303665761366334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A030664 (n + 2) : ℝ)⌉

end

end A063932.P1312303665761366334

namespace A063932

/-- `ceil(sqrt(A030664(n+2)))` -/
def P1312303665761366334.Spec : Prop :=
  ∀ n, P1312303665761366334.a n = A063932 (n + 2)

end A063932

/-! ## A063932.P6879820947756491104

`A110654(n+1)+A110654(A119257(n+2))`
-/

namespace A063932.P6879820947756491104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) + A110654 (A119257 (n + 2)).toNat

end

end A063932.P6879820947756491104

namespace A063932

/-- `A110654(n+1)+A110654(A119257(n+2))` -/
def P6879820947756491104.Spec : Prop :=
  ∀ n, P6879820947756491104.a n = A063932 (n + 2)

end A063932

/-! ## A063932.P13912768599177348802

`(A151800(n+1)+A055377(2*(n+2)))/2`
-/

namespace A063932.P13912768599177348802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 (n + 1) + A055377 (2 * (n + 2)) : ℚ) / 2

end

end A063932.P13912768599177348802

namespace A063932

/-- `(A151800(n+1)+A055377(2*(n+2)))/2` -/
def P13912768599177348802.Spec : Prop :=
  ∀ n, P13912768599177348802.a n = (A063932 (n + 2) : ℚ)

end A063932

/-! ## A063932.P1167623801065873131

`A110654(A119257(n+2)+n+1)`
-/

namespace A063932.P1167623801065873131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A119257 (n + 2) + (n + 1 : ℤ)).toNat

end

end A063932.P1167623801065873131

namespace A063932

/-- `A110654(A119257(n+2)+n+1)` -/
def P1167623801065873131.Spec : Prop :=
  ∀ n, P1167623801065873131.a n = A063932 (n + 2)

end A063932

/-! ## A063932.P15913790238845264922

`A008619(A151800(n+1)+A070320(n+2))`
-/

namespace A063932.P15913790238845264922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A151800 (n + 1) + A070320 (n + 2)).toNat

end

end A063932.P15913790238845264922

namespace A063932

/-- `A008619(A151800(n+1)+A070320(n+2))` -/
def P15913790238845264922.Spec : Prop :=
  ∀ n, P15913790238845264922.a n = A063932 (n + 2)

end A063932

/-! ## A063932.P12057002076713060107

`A065262(A007918(n+2)+A007917(n+2))`
-/

namespace A063932.P12057002076713060107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (A007918 (n + 2) + A007917 (n + 2)).toNat

end

end A063932.P12057002076713060107

namespace A063932

/-- `A065262(A007918(n+2)+A007917(n+2))` -/
def P12057002076713060107.Spec : Prop :=
  ∀ n, P12057002076713060107.a n = A063932 (n + 2)

end A063932

/-! ## A063932.P11346438054848733375

`A065262(A139421(2*(n+2))+A007918(n+2))`
-/

namespace A063932.P11346438054848733375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (A139421 (2 * (n + 2)) + A007918 (n + 2)).toNat

end

end A063932.P11346438054848733375

namespace A063932

/-- `A065262(A139421(2*(n+2))+A007918(n+2))` -/
def P11346438054848733375.Spec : Prop :=
  ∀ n, P11346438054848733375.a n = A063932 (n + 2)

end A063932

/-!
# A063933: Difference between n and the average of largest prime less than or equal to n and smallest prime greater than or equal to n.

The programs for A063933, the canonical program `A063933.P964808002848698662` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063933 has offset 2).

The definition of A063933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063932, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063933.P964808002848698662

`n+2-A063932(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063933

/-- `n+2-A063932(n+2)` -/
def P964808002848698662.Spec : Prop :=
  ∀ n, P964808002848698662.a n = A063933 (n + 2)

theorem P964808002848698662.correct : P964808002848698662.Spec := by
  intro n
  simp only [A063933, Nat.add_sub_cancel]

end A063933

/-! ## A063933.P15708852453397057536

`n+2-(A007917(n+2)+A007918(n+2))/2`
-/

namespace A063933.P15708852453397057536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - (A007917 (n + 2) + A007918 (n + 2) : ℚ) / 2

end

end A063933.P15708852453397057536

namespace A063933

/-- `n+2-(A007917(n+2)+A007918(n+2))/2` -/
def P15708852453397057536.Spec : Prop :=
  ∀ n, P15708852453397057536.a n = (A063933 (n + 2) : ℚ)

end A063933

/-! ## A063933.P1640852318031648011

`(n-A119257(n+2))/2+1`
-/

namespace A063933.P1640852318031648011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A119257 (n + 2) : ℚ) / 2 + 1

end

end A063933.P1640852318031648011

namespace A063933

/-- `(n-A119257(n+2))/2+1` -/
def P1640852318031648011.Spec : Prop :=
  ∀ n, P1640852318031648011.a n = (A063933 (n + 2) : ℚ)

end A063933

/-! ## A063933.P5659681125123601239

`A022958(A063932(n+2))+n`
-/

namespace A063933.P5659681125123601239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A063932 (n + 2)).toNat + (n : ℤ)

end

end A063933.P5659681125123601239

namespace A063933

/-- `A022958(A063932(n+2))+n` -/
def P5659681125123601239.Spec : Prop :=
  ∀ n, P5659681125123601239.a n = A063933 (n + 2)

end A063933

/-! ## A063933.P15541070367687392671

`round(A056139(n+2)/A003485(n))`
-/

namespace A063933.P15541070367687392671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056139 (n + 2) : ℚ) / (A003485 n : ℚ))

end

end A063933.P15541070367687392671

namespace A063933

/-- `round(A056139(n+2)/A003485(n))` -/
def P15541070367687392671.Spec : Prop :=
  ∀ n, P15541070367687392671.a n = A063933 (n + 2)

end A063933

/-! ## A063933.P11551832467791897634

`round(A056139(n+2)/A005408(n))`
-/

namespace A063933.P11551832467791897634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056139 (n + 2) : ℚ) / (A005408 n : ℚ))

end

end A063933.P11551832467791897634

namespace A063933

/-- `round(A056139(n+2)/A005408(n))` -/
def P11551832467791897634.Spec : Prop :=
  ∀ n, P11551832467791897634.a n = A063933 (n + 2)

end A063933

/-! ## A063933.P12515299164086272538

`round(A056139(n+2)/A059010(n))`
-/

namespace A063933.P12515299164086272538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056139 (n + 2) : ℚ) / (A059010 n : ℚ))

end

end A063933.P12515299164086272538

namespace A063933

/-- `round(A056139(n+2)/A059010(n))` -/
def P12515299164086272538.Spec : Prop :=
  ∀ n, P12515299164086272538.a n = A063933 (n + 2)

end A063933

/-! ## A063933.P16675757360253351710

`round(A056139(n+2)/A024977(n+1))`
-/

namespace A063933.P16675757360253351710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056139 (n + 2) : ℚ) / (A024977 (n + 1) : ℚ))

end

end A063933.P16675757360253351710

namespace A063933

/-- `round(A056139(n+2)/A024977(n+1))` -/
def P16675757360253351710.Spec : Prop :=
  ∀ n, P16675757360253351710.a n = A063933 (n + 2)

end A063933

/-! ## A063933.P14604280922920454982

`A359300(n+2)/2-A359300(n+2)`
-/

namespace A063933.P14604280922920454982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359300 (n + 2) : ℚ) / 2 - (A359300 (n + 2) : ℚ)

end

end A063933.P14604280922920454982

namespace A063933

/-- `A359300(n+2)/2-A359300(n+2)` -/
def P14604280922920454982.Spec : Prop :=
  ∀ n, P14604280922920454982.a n = (A063933 (n + 2) : ℚ)

end A063933

/-! ## A063933.P7412263117712585001

`2-ceil(sqrt(A030664(n+2)))+n`
-/

namespace A063933.P7412263117712585001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈Real.sqrt (A030664 (n + 2) : ℝ)⌉ + (n : ℤ)

end

end A063933.P7412263117712585001

namespace A063933

/-- `2-ceil(sqrt(A030664(n+2)))+n` -/
def P7412263117712585001.Spec : Prop :=
  ∀ n, P7412263117712585001.a n = A063933 (n + 2)

end A063933

/-! ## A063933.P8653593162115545381

`round(A056139(n+2)/A195437(n))`
-/

namespace A063933.P8653593162115545381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056139 (n + 2) : ℚ) / (A195437 n : ℚ))

end

end A063933.P8653593162115545381

namespace A063933

/-- `round(A056139(n+2)/A195437(n))` -/
def P8653593162115545381.Spec : Prop :=
  ∀ n, P8653593162115545381.a n = A063933 (n + 2)

end A063933

/-!
# A063934: Numbers which are either prime or the average of consecutive odd primes.

The programs for A063934, the canonical program `A063934.P17638281874553653123` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063934 has offset 1).

The definition of A063934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063934.P17638281874553653123

`a(n-1)+ceil(A166597(a(n-1))/2)` with `a(0)=2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A063934

/-- `a(n-1)+ceil(A166597(a(n-1))/2)` -/
def P17638281874553653123.Spec : Prop :=
  ∀ n, P17638281874553653123.a n = A063934 (n + 1)

theorem P17638281874553653123.correct : P17638281874553653123.Spec := by
  intro n
  simp only [A063934, Nat.add_sub_cancel]

end A063934

/-! ## A063934.P11590655626058630286

`∪[A000040(n+1), A024675(n+1)]`
-/

namespace A063934.P11590655626058630286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063934.P11590655626058630286

namespace A063934

/-- `∪[A000040(n+1), A024675(n+1)]` -/
def P11590655626058630286.Spec : Prop :=
  ∀ n, (P11590655626058630286.a n : ℤ) = A063934 (n + 1)

end A063934

/-! ## A063934.P15272092414945961932

`∪[A024675(n+1), A116974(n+1)]`
-/

namespace A063934.P15272092414945961932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063934.P15272092414945961932

namespace A063934

/-- `∪[A024675(n+1), A116974(n+1)]` -/
def P15272092414945961932.Spec : Prop :=
  ∀ n, (P15272092414945961932.a n : ℤ) = A063934 (n + 1)

end A063934

/-! ## A063934.P2995339989647053577

`∪[A000040(n+1), A145025(n+1)]`
-/

namespace A063934.P2995339989647053577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063934.P2995339989647053577

namespace A063934

/-- `∪[A000040(n+1), A145025(n+1)]` -/
def P2995339989647053577.Spec : Prop :=
  ∀ n, (P2995339989647053577.a n : ℤ) = A063934 (n + 1)

end A063934

/-! ## A063934.P5158880783291465990

`∪[A045319(n+1), A145025(n+1)]`
-/

namespace A063934.P5158880783291465990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063934.P5158880783291465990

namespace A063934

/-- `∪[A045319(n+1), A145025(n+1)]` -/
def P5158880783291465990.Spec : Prop :=
  ∀ n, (P5158880783291465990.a n : ℤ) = A063934 (n + 1)

end A063934

/-! ## A063934.P16062933030567290094

`∪[A024675(n+1), A008578(n+2)]`
-/

namespace A063934.P16062933030567290094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063934.P16062933030567290094

namespace A063934

/-- `∪[A024675(n+1), A008578(n+2)]` -/
def P16062933030567290094.Spec : Prop :=
  ∀ n, (P16062933030567290094.a n : ℤ) = A063934 (n + 1)

end A063934

/-! ## A063934.P16382362508549208101

`round(sqrt(A033476(n+1)))`
-/

namespace A063934.P16382362508549208101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A033476 (n + 1) : ℝ))

end

end A063934.P16382362508549208101

namespace A063934

/-- `round(sqrt(A033476(n+1)))` -/
def P16382362508549208101.Spec : Prop :=
  ∀ n, P16382362508549208101.a n = A063934 (n + 1)

end A063934

/-! ## A063934.P10674009602550860129

`round(sqrt(A057602(n+3)))`
-/

namespace A063934.P10674009602550860129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A057602 (n + 3) : ℝ))

end

end A063934.P10674009602550860129

namespace A063934

/-- `round(sqrt(A057602(n+3)))` -/
def P10674009602550860129.Spec : Prop :=
  ∀ n, P10674009602550860129.a n = A063934 (n + 1)

end A063934

/-! ## A063934.P15643736712471899218

`(A119257(A093515(n+1))+A093515(n+1))/2`
-/

namespace A063934.P15643736712471899218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119257 (A093515 (n + 1)).toNat + A093515 (n + 1) : ℚ) / 2

end

end A063934.P15643736712471899218

namespace A063934

/-- `(A119257(A093515(n+1))+A093515(n+1))/2` -/
def P15643736712471899218.Spec : Prop :=
  ∀ n, P15643736712471899218.a n = (A063934 (n + 1) : ℚ)

end A063934

/-! ## A063934.P6072040845222831175

`A119257(eq[n+1, A119257(n+1)%A119257(n+1)²]+1)`
-/

namespace A063934.P6072040845222831175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119257 (n + 1)) (A119257 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A063934.P6072040845222831175

namespace A063934

/-- `A119257(eq[n+1, A119257(n+1)%A119257(n+1)²]+1)` -/
def P6072040845222831175.Spec : Prop :=
  ∀ n, P6072040845222831175.a n = A063934 (n + 1)

end A063934

/-! ## A063934.P6824464881594434924

`A063932(A093515(n+1))`
-/

namespace A063934.P6824464881594434924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (A093515 (n + 1)).toNat

end

end A063934.P6824464881594434924

namespace A063934

/-- `A063932(A093515(n+1))` -/
def P6824464881594434924.Spec : Prop :=
  ∀ n, P6824464881594434924.a n = A063934 (n + 1)

end A063934

/-! ## A063934.P5667966754511234739

`eq[A051699(n), A325142(n)]`
-/

namespace A063934.P5667966754511234739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063934.P5667966754511234739

namespace A063934

/-- `eq[A051699(n), A325142(n)]` -/
def P5667966754511234739.Spec : Prop :=
  ∀ n, (P5667966754511234739.a n : ℤ) = A063934 (n + 1)

end A063934

/-! ## A063934.P3609114096366892465

`A063932(A173919(n+1)+1)`
-/

namespace A063934.P3609114096366892465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (A173919 (n + 1) + 1).toNat

end

end A063934.P3609114096366892465

namespace A063934

/-- `A063932(A173919(n+1)+1)` -/
def P3609114096366892465.Spec : Prop :=
  ∀ n, P3609114096366892465.a n = A063934 (n + 1)

end A063934

/-! ## A063934.P17947541676536544141

`eq[n, A051697(n)+A007920(n)]`
-/

namespace A063934.P17947541676536544141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n + A007920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063934.P17947541676536544141

namespace A063934

/-- `eq[n, A051697(n)+A007920(n)]` -/
def P17947541676536544141.Spec : Prop :=
  ∀ n, (P17947541676536544141.a n : ℤ) = A063934 (n + 1)

end A063934

/-! ## A063934.P6071010049738087260

`eq[A051700(n)*A325142(n), A325142(n)²]`
-/

namespace A063934.P6071010049738087260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n * A325142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063934.P6071010049738087260

namespace A063934

/-- `eq[A051700(n)*A325142(n), A325142(n)²]` -/
def P6071010049738087260.Spec : Prop :=
  ∀ n, (P6071010049738087260.a n : ℤ) = A063934 (n + 1)

end A063934

/-! ## A063934.P14632539655311363424

`A063932(A173919(n+2))`
-/

namespace A063934.P14632539655311363424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (A173919 (n + 2)).toNat

end

end A063934.P14632539655311363424

namespace A063934

/-- `A063932(A173919(n+2))` -/
def P14632539655311363424.Spec : Prop :=
  ∀ n, P14632539655311363424.a n = A063934 (n + 1)

end A063934

/-! ## A063934.P7645309190523743057

`eq[A007920(A210882(n+1)), A007920(n)]`
-/

namespace A063934.P7645309190523743057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A210882 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063934.P7645309190523743057

namespace A063934

/-- `eq[A007920(A210882(n+1)), A007920(n)]` -/
def P7645309190523743057.Spec : Prop :=
  ∀ n, (P7645309190523743057.a n : ℤ) = A063934 (n + 1)

end A063934

/-! ## A063934.P114415120971512605

`A004526(A144043(n+2))`
-/

namespace A063934.P114415120971512605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A144043 (n + 2)).toNat

end

end A063934.P114415120971512605

namespace A063934

/-- `A004526(A144043(n+2))` -/
def P114415120971512605.Spec : Prop :=
  ∀ n, P114415120971512605.a n = A063934 (n + 1)

end A063934

/-! ## A063934.P2312810324519589542

`eq[A214918(A063932(n+2)), A214918(n+2)]+2`
-/

namespace A063934.P2312810324519589542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214918 (A063932 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214918 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A063934.P2312810324519589542

namespace A063934

/-- `eq[A214918(A063932(n+2)), A214918(n+2)]+2` -/
def P2312810324519589542.Spec : Prop :=
  ∀ n, (P2312810324519589542.a n : ℤ) = A063934 (n + 1)

end A063934

/-!
# A063937: Sum of unitary divisors of n is a square > 1.

The programs for A063937, the canonical program `A063937.P5103970872536131558` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063937 has offset 1).

The definition of A063937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063937.P5103970872536131558

`eq[A010052(A034448(n+1)), A057427(n)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A063937

/-- `eq[A010052(A034448(n+1)), A057427(n)]+1` -/
def P5103970872536131558.Spec : Prop :=
  ∀ n, (P5103970872536131558.a n : ℤ) = A063937 (n + 1)

theorem P5103970872536131558.correct : P5103970872536131558.Spec := by
  intro n
  simp only [A063937, Nat.add_sub_cancel]

end A063937

/-!
# A063938: Numbers k that divide tau(k), where tau(k)=A000594(k) is Ramanujan's tau function.

The programs for A063938, there is no canonical definition to state claims against.
-/

/-! ## A063938.P1775611795128168994

`∪[A002473(n+1), A147317(n+1)]`
-/

namespace A063938.P1775611795128168994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063938.P1775611795128168994

/-! ## A063938.P4387742219836370056

`record[gcd(n+1, A000594(n+1))]`
-/

namespace A063938.P4387742219836370056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000594 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063938.P4387742219836370056

/-! ## A063938.P17187609637233931862

`eq[0, A273650(n+1)]+1`
-/

namespace A063938.P17187609637233931862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063938.P17187609637233931862

/-! ## A063938.P13633513510822837655

`eq[6, 6*a(A273650(n))]` with `a(0)=1`
-/

namespace A063938.P13633513510822837655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  6 * f2 (A273650 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063938.P13633513510822837655

/-! ## A063938.P8689411100661157913

`lt[2, A054546(a(A273650(n))+1)]` with `a(0)=1`
-/

namespace A063938.P8689411100661157913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A054546 (f2 (A273650 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A063938.P8689411100661157913

/-! ## A063938.P14704764676300135130

`record[(n+1)/A018252(A273650(n+1)+1)]`
-/

namespace A063938.P14704764676300135130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A018252 (A273650 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063938.P14704764676300135130

/-! ## A063938.P2314442988706383415

`record[(n+1)/A020639(A273650(n+1)+1)]`
-/

namespace A063938.P2314442988706383415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A273650 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063938.P2314442988706383415

/-! ## A063938.P10526286050913765712

`record[n+1-A055120(n)*A273650(n+1)]`
-/

namespace A063938.P10526286050913765712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055120 n * A273650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063938.P10526286050913765712

/-!
# A063939: Numbers p from A001125 such that 2*p-3 is prime.

The programs for A063939, there is no canonical definition to state claims against.
-/

/-! ## A063939.P2778940960532887759

`∩[A001125(n+1), A063908(n+1)]`
-/

namespace A063939.P2778940960532887759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063939.P2778940960532887759

/-!
# A063940: Composite numbers k such that Ramanujan's function tau(k) (A000594) is not divisible by k.

The programs for A063940, there is no canonical definition to state claims against.
-/

/-! ## A063940.P8802890895615737697

`filter[A191599(n+1), A005171(#)]`
-/

namespace A063940.P8802890895615737697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A063940.P8802890895615737697

/-! ## A063940.P8248329275788674174

`filter[A191599(n+1), A066247(#)]`
-/

namespace A063940.P8248329275788674174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A063940.P8248329275788674174

/-! ## A063940.P366891704997892707

`filter[A191599(n+1), A202238(#)]`
-/

namespace A063940.P366891704997892707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A063940.P366891704997892707

/-! ## A063940.P12603259311863941847

`∩[A002808(n+1), A191599(n+1)]`
-/

namespace A063940.P12603259311863941847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P12603259311863941847

/-! ## A063940.P8788171597884848434

`∩[A018252(n+1), A191599(n+1)]`
-/

namespace A063940.P8788171597884848434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P8788171597884848434

/-! ## A063940.P10018367551701659297

`∩[A056653(n+1), A191599(n+1)]`
-/

namespace A063940.P10018367551701659297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P10018367551701659297

/-! ## A063940.P15159248031601587673

`∩[A065090(n+1), A191599(n+1)]`
-/

namespace A063940.P15159248031601587673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P15159248031601587673

/-! ## A063940.P15286063124706978386

`∩[A138592(n+1), A191599(n+1)]`
-/

namespace A063940.P15286063124706978386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P15286063124706978386

/-! ## A063940.P1051830297378104260

`∩[A141468(n+1), A191599(n+1)]`
-/

namespace A063940.P1051830297378104260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P1051830297378104260

/-! ## A063940.P6959086864802098341

`∩[A171581(n+1), A191599(n+1)]`
-/

namespace A063940.P6959086864802098341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P6959086864802098341

/-! ## A063940.P13446236144941931421

`∩[A173905(n+1), A191599(n+1)]`
-/

namespace A063940.P13446236144941931421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P13446236144941931421

/-! ## A063940.P11247538568282980954

`∩[A176423(n+1), A191599(n+1)]`
-/

namespace A063940.P11247538568282980954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P11247538568282980954

/-! ## A063940.P7172150406275012747

`∩[A191599(n+1), A343311(n+1)]`
-/

namespace A063940.P7172150406275012747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P7172150406275012747

/-! ## A063940.P7866593606227885177

`∩[A191599(n+1), A387319(n+1)]`
-/

namespace A063940.P7866593606227885177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P7866593606227885177

/-! ## A063940.P722556763581857728

`record[A191558(A191599(n+5))]`
-/

namespace A063940.P722556763581857728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A191599 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063940.P722556763581857728

/-! ## A063940.P8336017778297622896

`∩[A111774(n+1), A191599(n+1)]`
-/

namespace A063940.P8336017778297622896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063940.P8336017778297622896

/-!
# A063941: a(n) = 17*39^n.

The programs for A063941, the canonical program `A063941.P11538279312247182265` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063941 has offset 0).

The definition of A063941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*39^n` (program `A063941.P11538279312247182265`, by `A063941.P11538279312247182265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063941.P11538279312247182265

`17*39^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063941

/-- `17*39^n` -/
def P11538279312247182265.Spec : Prop :=
  ∀ n, (P11538279312247182265.a n : ℤ) = A063941 n

theorem P11538279312247182265.correct : P11538279312247182265.Spec := by
  intro n
  simp only [A063941]

end A063941

/-!
# A063942: Follow k with k-1 and k-2.

The programs for A063942, the canonical program `A063942.P17986453813200706380` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063942 has offset 0).

The definition of A063942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063942.P18272549895570695993

`∑[char[3*n]]-n%3`
-/

namespace A063942.P18272549895570695993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n % 3 : ℕ) : ℤ)

end

end A063942.P18272549895570695993

namespace A063942

/-- `∑[char[3*n]]-n%3` -/
def P18272549895570695993.Spec : Prop :=
  ∀ n, P18272549895570695993.a n = A063942 n

end A063942

/-! ## A063942.P17986453813200706380

`a(n-3)+1` with `a(0)=1, a(1)=0, a(2)=-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063942

/-- `a(n-3)+1` -/
def P17986453813200706380.Spec : Prop :=
  ∀ n, P17986453813200706380.a n = A063942 n

theorem P17986453813200706380.correct : P17986453813200706380.Spec := by
  intro n
  simp only [A063942]

end A063942

/-! ## A063942.P11294784559954570333

`∑[2*gcd(3, n)-3]-2`
-/

namespace A063942.P11294784559954570333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.gcd 3 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A063942.P11294784559954570333

namespace A063942

/-- `∑[2*gcd(3, n)-3]-2` -/
def P11294784559954570333.Spec : Prop :=
  ∀ n, P11294784559954570333.a n = A063942 n

end A063942

/-! ## A063942.P10542296395309240774

`4*floor(n/3)+1-n`
-/

namespace A063942.P10542296395309240774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n : ℚ) / 3⌋ + (1 - (n : ℤ))

end

end A063942.P10542296395309240774

namespace A063942

/-- `4*floor(n/3)+1-n` -/
def P10542296395309240774.Spec : Prop :=
  ∀ n, P10542296395309240774.a n = A063942 n

end A063942

/-! ## A063942.P312914322703144603

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A063942.P312914322703144603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063942.P312914322703144603

namespace A063942

/-- `∑[floor(a(n-3))]` -/
def P312914322703144603.Spec : Prop :=
  ∀ n, P312914322703144603.a n = A063942 n

end A063942

/-! ## A063942.P240997756548471670

`ogf((1-x-x^2+2x^3)/(1-x-x^3+x^4))`
-/

namespace A063942.P240997756548471670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 2] [1, -1, 0, -1, 1] n

end

end A063942.P240997756548471670

namespace A063942

/-- `ogf((1-x-x^2+2x^3)/(1-x-x^3+x^4))` -/
def P240997756548471670.Spec : Prop :=
  ∀ n, P240997756548471670.a n = A063942 n

end A063942

/-! ## A063942.P18074427815317573745

`-Δ[a(n-3)-(n-3)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A063942.P18074427815317573745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A063942.P18074427815317573745

namespace A063942

/-- `-Δ[a(n-3)-(n-3)]` -/
def P18074427815317573745.Spec : Prop :=
  ∀ n, P18074427815317573745.a n = A063942 n

end A063942

/-! ## A063942.P5478694621925435949

`∑[3/(a(n-3)-2)]` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=3`
-/

namespace A063942.P5478694621925435949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, -1, 3] fun n f1 =>
  3 / (f1 (n - 3) - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063942.P5478694621925435949

namespace A063942

/-- `∑[3/(a(n-3)-2)]` -/
def P5478694621925435949.Spec : Prop :=
  ∀ n, P5478694621925435949.a n = (A063942 n : ℚ)

end A063942

/-! ## A063942.P4983232327681475129

`∑[(a(n-3)^(-1))^(-1)]` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=3`
-/

namespace A063942.P4983232327681475129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, -1, 3] fun n f1 =>
  (f1 (n - 3) ^ (-1 : ℤ)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063942.P4983232327681475129

namespace A063942

/-- `∑[(a(n-3)^(-1))^(-1)]` -/
def P4983232327681475129.Spec : Prop :=
  ∀ n, P4983232327681475129.a n = (A063942 n : ℚ)

end A063942

/-! ## A063942.P17027010439957317745

`floor(n-2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A063942.P17027010439957317745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - 2 - a (n - 1) - a (n - 2)

end

end A063942.P17027010439957317745

namespace A063942

/-- `floor(n-2-a(n-1)-a(n-2))` -/
def P17027010439957317745.Spec : Prop :=
  ∀ n, P17027010439957317745.a n = A063942 n

end A063942

/-! ## A063942.P9552305000723638030

`(n-2-a(n-1)-a(n-2))%n` with `a(0)=1, a(1)=0`
-/

namespace A063942.P9552305000723638030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.tmod ((n : ℤ) - 2 - a (n - 1) - a (n - 2)) (n : ℤ)

end

end A063942.P9552305000723638030

namespace A063942

/-- `(n-2-a(n-1)-a(n-2))%n` -/
def P9552305000723638030.Spec : Prop :=
  ∀ n, P9552305000723638030.a n = A063942 n

end A063942

/-! ## A063942.P15762635063601461583

`∑[or(1, A099837(n))]`
-/

namespace A063942.P15762635063601461583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A099837 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063942.P15762635063601461583

namespace A063942

/-- `∑[or(1, A099837(n))]` -/
def P15762635063601461583.Spec : Prop :=
  ∀ n, P15762635063601461583.a n = A063942 n

end A063942

/-! ## A063942.P12805466422801942464

`∑[round(sqrt(A040252(n)+1))-3]`
-/

namespace A063942.P12805466422801942464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A040252 n + 1 : ℝ)) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063942.P12805466422801942464

namespace A063942

/-- `∑[round(sqrt(A040252(n)+1))-3]` -/
def P12805466422801942464.Spec : Prop :=
  ∀ n, P12805466422801942464.a n = A063942 n

end A063942

/-! ## A063942.P16858235586330017299

`A097065(A272071(n))`
-/

namespace A063942.P16858235586330017299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A272071 n).toNat

end

end A063942.P16858235586330017299

namespace A063942

/-- `A097065(A272071(n))` -/
def P16858235586330017299.Spec : Prop :=
  ∀ n, P16858235586330017299.a n = A063942 n

end A063942

/-! ## A063942.P16356994829859252772

`A023445(A047311(n+1)-2*n)`
-/

namespace A063942.P16356994829859252772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A047311 (n + 1) - (2 * n : ℤ)).toNat

end

end A063942.P16356994829859252772

namespace A063942

/-- `A023445(A047311(n+1)-2*n)` -/
def P16356994829859252772.Spec : Prop :=
  ∀ n, P16356994829859252772.a n = A063942 n

end A063942

/-! ## A063942.P5754502876488219827

`Δ[A301654(n+2)-Δ[A301654(2*(n+1))]]`
-/

namespace A063942.P5754502876488219827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301654 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301654 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063942.P5754502876488219827

namespace A063942

/-- `Δ[A301654(n+2)-Δ[A301654(2*(n+1))]]` -/
def P5754502876488219827.Spec : Prop :=
  ∀ n, P5754502876488219827.a n = A063942 n

end A063942

/-! ## A063942.P1765894250982927639

`A194514(A047364(n+1))`
-/

namespace A063942.P1765894250982927639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194514 (A047364 (n + 1)).toNat

end

end A063942.P1765894250982927639

namespace A063942

/-- `A194514(A047364(n+1))` -/
def P1765894250982927639.Spec : Prop :=
  ∀ n, P1765894250982927639.a n = A063942 n

end A063942

/-! ## A063942.P13441386344986011586

`A194517(A047455(n+1))`
-/

namespace A063942.P13441386344986011586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194517 (A047455 (n + 1)).toNat

end

end A063942.P13441386344986011586

namespace A063942

/-- `A194517(A047455(n+1))` -/
def P13441386344986011586.Spec : Prop :=
  ∀ n, P13441386344986011586.a n = A063942 n

end A063942

/-! ## A063942.P4974318920360023403

`A194516(A047484(n+1))`
-/

namespace A063942.P4974318920360023403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194516 (A047484 (n + 1)).toNat

end

end A063942.P4974318920360023403

namespace A063942

/-- `A194516(A047484(n+1))` -/
def P4974318920360023403.Spec : Prop :=
  ∀ n, P4974318920360023403.a n = A063942 n

end A063942

/-! ## A063942.P11749031095594181931

`A194523(3*n+1)`
-/

namespace A063942.P11749031095594181931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (3 * n + 1)

end

end A063942.P11749031095594181931

namespace A063942

/-- `A194523(3*n+1)` -/
def P11749031095594181931.Spec : Prop :=
  ∀ n, P11749031095594181931.a n = A063942 n

end A063942

/-!
# A063945: Number of nonnegative integers with n digits.

The programs for A063945, the canonical program `A063945.P12643452236985488154` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063945 has offset 1).

The definition of A063945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063945.P12643452236985488154

`a(n-1)*10` with `a(0)=10, a(1)=90`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063945

/-- `a(n-1)*10` -/
def P12643452236985488154.Spec : Prop :=
  ∀ n, (P12643452236985488154.a n : ℤ) = A063945 (n + 1)

theorem P12643452236985488154.correct : P12643452236985488154.Spec := by
  intro n
  simp only [A063945, Nat.add_sub_cancel]

end A063945

/-! ## A063945.P4511331629133595443

`Δ[and(10^n, -2)]`
-/

namespace A063945.P4511331629133595443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 ^ n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063945.P4511331629133595443

namespace A063945

/-- `Δ[and(10^n, -2)]` -/
def P4511331629133595443.Spec : Prop :=
  ∀ n, P4511331629133595443.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P17358719943626869334

`ogf((10-10x)/(1-10x))`
-/

namespace A063945.P17358719943626869334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -10] [1, -10] n

end

end A063945.P17358719943626869334

namespace A063945

/-- `ogf((10-10x)/(1-10x))` -/
def P17358719943626869334.Spec : Prop :=
  ∀ n, P17358719943626869334.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P3555107728743105930

`Δ[10^n]+floor(acot(n))`
-/

namespace A063945.P3555107728743105930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A063945.P3555107728743105930

namespace A063945

/-- `Δ[10^n]+floor(acot(n))` -/
def P3555107728743105930.Spec : Prop :=
  ∀ n, P3555107728743105930.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P8542170905058805821

`Δ[10^n-floor(acot(n))]`
-/

namespace A063945.P8542170905058805821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063945.P8542170905058805821

namespace A063945

/-- `Δ[10^n-floor(acot(n))]` -/
def P8542170905058805821.Spec : Prop :=
  ∀ n, P8542170905058805821.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P355201811866915193

`Δ[10*floor(10^(n-1))]`
-/

namespace A063945.P355201811866915193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063945.P355201811866915193

namespace A063945

/-- `Δ[10*floor(10^(n-1))]` -/
def P355201811866915193.Spec : Prop :=
  ∀ n, P355201811866915193.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P8792174158594199632

`A070252(Δ[n²])`
-/

namespace A063945.P8792174158594199632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063945.P8792174158594199632

namespace A063945

/-- `A070252(Δ[n²])` -/
def P8792174158594199632.Spec : Prop :=
  ∀ n, P8792174158594199632.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P5082766710953550368

`A216653(∑[n+1])`
-/

namespace A063945.P5082766710953550368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216653 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063945.P5082766710953550368

namespace A063945

/-- `A216653(∑[n+1])` -/
def P5082766710953550368.Spec : Prop :=
  ∀ n, P5082766710953550368.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P4347831460036025679

`record[A070252(n+1)]`
-/

namespace A063945.P4347831460036025679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063945.P4347831460036025679

namespace A063945

/-- `record[A070252(n+1)]` -/
def P4347831460036025679.Spec : Prop :=
  ∀ n, P4347831460036025679.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P9122221079418290865

`record[A216653(n+1)]`
-/

namespace A063945.P9122221079418290865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063945.P9122221079418290865

namespace A063945

/-- `record[A216653(n+1)]` -/
def P9122221079418290865.Spec : Prop :=
  ∀ n, P9122221079418290865.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P8428500687417722930

`A109002(n+1)+1`
-/

namespace A063945.P8428500687417722930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109002 (n + 1) + 1

end

end A063945.P8428500687417722930

namespace A063945

/-- `A109002(n+1)+1` -/
def P8428500687417722930.Spec : Prop :=
  ∀ n, P8428500687417722930.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P16871276470121381283

`2*A137233(n+1)`
-/

namespace A063945.P16871276470121381283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137233 (n + 1)

end

end A063945.P16871276470121381283

namespace A063945

/-- `2*A137233(n+1)` -/
def P16871276470121381283.Spec : Prop :=
  ∀ n, P16871276470121381283.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P13755484595579738104

`5*A337855(n+2)`
-/

namespace A063945.P13755484595579738104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A337855 (n + 2)

end

end A063945.P13755484595579738104

namespace A063945

/-- `5*A337855(n+2)` -/
def P13755484595579738104.Spec : Prop :=
  ∀ n, P13755484595579738104.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P13557879217668522087

`A083490(8*n+4)`
-/

namespace A063945.P13557879217668522087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083490 (8 * n + 4)

end

end A063945.P13557879217668522087

namespace A063945

/-- `A083490(8*n+4)` -/
def P13557879217668522087.Spec : Prop :=
  ∀ n, P13557879217668522087.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P9221161112742419761

`or(1, Δ[A024115(n)])+1`
-/

namespace A063945.P9221161112742419761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n) + 1

end

end A063945.P9221161112742419761

namespace A063945

/-- `or(1, Δ[A024115(n)])+1` -/
def P9221161112742419761.Spec : Prop :=
  ∀ n, P9221161112742419761.a n = A063945 (n + 1)

end A063945

/-! ## A063945.P8918374006182888725

`lcm(2, A070252(2*n+1))`
-/

namespace A063945.P8918374006182888725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A070252 (2 * n + 1))

end

end A063945.P8918374006182888725

namespace A063945

/-- `lcm(2, A070252(2*n+1))` -/
def P8918374006182888725.Spec : Prop :=
  ∀ n, (P8918374006182888725.a n : ℤ) = A063945 (n + 1)

end A063945

/-!
# A063946: Write n in binary and complement second bit (from the left), with a(0)=0 and a(1)=1.

The programs for A063946, the canonical program `A063946.P14831572246508618093` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063946 has offset 0).

The definition of A063946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063946.P14831572246508618093

`xor(n, A053644(floor(n/2)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063946

/-- `xor(n, A053644(floor(n/2)))` -/
def P14831572246508618093.Spec : Prop :=
  ∀ n, P14831572246508618093.a n = A063946 n

theorem P14831572246508618093.correct : P14831572246508618093.Spec := by
  intro n
  simp only [A063946]

end A063946

/-! ## A063946.P18339381757038647412

`xor(floor(n/2), A233280(n))`
-/

namespace A063946.P18339381757038647412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 2⌋ (A233280 n)

end

end A063946.P18339381757038647412

namespace A063946

/-- `xor(floor(n/2), A233280(n))` -/
def P18339381757038647412.Spec : Prop :=
  ∀ n, P18339381757038647412.a n = A063946 n

end A063946

/-! ## A063946.P16527692200540905240

`2*a(floor(n/2))+A000035(n)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A063946.P16527692200540905240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + A000035 n

end

end A063946.P16527692200540905240

namespace A063946

/-- `2*a(floor(n/2))+A000035(n)` -/
def P16527692200540905240.Spec : Prop :=
  ∀ n, P16527692200540905240.a n = A063946 n

end A063946

/-! ## A063946.P3438585555952490698

`A003188(A233279(n))`
-/

namespace A063946.P3438585555952490698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A233279 n).toNat

end

end A063946.P3438585555952490698

namespace A063946

/-- `A003188(A233279(n))` -/
def P3438585555952490698.Spec : Prop :=
  ∀ n, P3438585555952490698.a n = A063946 n

end A063946

/-! ## A063946.P1786215548846089119

`xor(n, A004526(A053644(n)))`
-/

namespace A063946.P1786215548846089119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004526 (A053644 n).toNat)

end

end A063946.P1786215548846089119

namespace A063946

/-- `xor(n, A004526(A053644(n)))` -/
def P1786215548846089119.Spec : Prop :=
  ∀ n, P1786215548846089119.a n = A063946 n

end A063946

/-! ## A063946.P13085290914657230245

`xor(n, A072376(A199969(n+1)))`
-/

namespace A063946.P13085290914657230245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A072376 (A199969 (n + 1)).toNat)

end

end A063946.P13085290914657230245

namespace A063946

/-- `xor(n, A072376(A199969(n+1)))` -/
def P13085290914657230245.Spec : Prop :=
  ∀ n, P13085290914657230245.a n = A063946 n

end A063946

/-! ## A063946.P16611285057376107650

`xor(A233279(floor(n/2)), A233279(n))`
-/

namespace A063946.P16611285057376107650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A233279 ⌊(n : ℚ) / 2⌋.toNat) (A233279 n)

end

end A063946.P16611285057376107650

namespace A063946

/-- `xor(A233279(floor(n/2)), A233279(n))` -/
def P16611285057376107650.Spec : Prop :=
  ∀ n, P16611285057376107650.a n = A063946 n

end A063946

/-! ## A063946.P3205244621213945291

`or(n-A053644(A004526(n)), A053644(n))`
-/

namespace A063946.P3205244621213945291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - A053644 (A004526 n).toNat) (A053644 n)

end

end A063946.P3205244621213945291

namespace A063946

/-- `or(n-A053644(A004526(n)), A053644(n))` -/
def P3205244621213945291.Spec : Prop :=
  ∀ n, P3205244621213945291.a n = A063946 n

end A063946

/-! ## A063946.P3956684470918434943

`xor(A025480(A053644(n)), A249122(2*n+1))`
-/

namespace A063946.P3956684470918434943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025480 (A053644 n).toNat) (A249122 (2 * n + 1))

end

end A063946.P3956684470918434943

namespace A063946

/-- `xor(A025480(A053644(n)), A249122(2*n+1))` -/
def P3956684470918434943.Spec : Prop :=
  ∀ n, P3956684470918434943.a n = A063946 n

end A063946

/-! ## A063946.P8001432207869144015

`A003188(A038554(n)+A038558(n)-A003188(n))`
-/

namespace A063946.P8001432207869144015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A038554 n + (A038558 n - A003188 n)).toNat

end

end A063946.P8001432207869144015

namespace A063946

/-- `A003188(A038554(n)+A038558(n)-A003188(n))` -/
def P8001432207869144015.Spec : Prop :=
  ∀ n, P8001432207869144015.a n = A063946 n

end A063946

/-! ## A063946.P8400037667820531798

`A053644(n)+A003188(A006068(n)-A053644(n))`
-/

namespace A063946.P8400037667820531798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + A003188 (A006068 n - A053644 n).toNat

end

end A063946.P8400037667820531798

namespace A063946

/-- `A053644(n)+A003188(A006068(n)-A053644(n))` -/
def P8400037667820531798.Spec : Prop :=
  ∀ n, P8400037667820531798.a n = A063946 n

end A063946

/-! ## A063946.P719058688346082566

`A003188(A038554(n)-(A003188(n)-A038558(n)))`
-/

namespace A063946.P719058688346082566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A038554 n - (A003188 n - A038558 n)).toNat

end

end A063946.P719058688346082566

namespace A063946

/-- `A003188(A038554(n)-(A003188(n)-A038558(n)))` -/
def P719058688346082566.Spec : Prop :=
  ∀ n, P719058688346082566.a n = A063946 n

end A063946

/-! ## A063946.P16466973311599552656

`A233280(A006068(n))`
-/

namespace A063946.P16466973311599552656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A006068 n).toNat

end

end A063946.P16466973311599552656

namespace A063946

/-- `A233280(A006068(n))` -/
def P16466973311599552656.Spec : Prop :=
  ∀ n, P16466973311599552656.a n = A063946 n

end A063946

/-! ## A063946.P1361910675444757892

`A233280(A268716(n)/2)`
-/

namespace A063946.P1361910675444757892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A063946.P1361910675444757892

namespace A063946

/-- `A233280(A268716(n)/2)` -/
def P1361910675444757892.Spec : Prop :=
  ∀ n, P1361910675444757892.a n = A063946 n

end A063946

/-! ## A063946.P2674340294296379203

`A233280(A286546(n)+n)`
-/

namespace A063946.P2674340294296379203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A286546 n + (n : ℤ)).toNat

end

end A063946.P2674340294296379203

namespace A063946

/-- `A233280(A286546(n)+n)` -/
def P2674340294296379203.Spec : Prop :=
  ∀ n, P2674340294296379203.a n = A063946 n

end A063946

/-! ## A063946.P6170653772365425124

`xor(n, A002265(A003817(n)+1))`
-/

namespace A063946.P6170653772365425124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A002265 (A003817 n + 1).toNat)

end

end A063946.P6170653772365425124

namespace A063946

/-- `xor(n, A002265(A003817(n)+1))` -/
def P6170653772365425124.Spec : Prop :=
  ∀ n, P6170653772365425124.a n = A063946 n

end A063946

/-! ## A063946.P10563245569189321128

`xor(n, A257697(A053644(n)+1))`
-/

namespace A063946.P10563245569189321128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A257697 (A053644 n + 1).toNat)

end

end A063946.P10563245569189321128

namespace A063946

/-- `xor(n, A257697(A053644(n)+1))` -/
def P10563245569189321128.Spec : Prop :=
  ∀ n, P10563245569189321128.a n = A063946 n

end A063946

/-! ## A063946.P3570196408548778747

`xor(n, A038570(2*A053644(n)))`
-/

namespace A063946.P3570196408548778747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A038570 (2 * A053644 n).toNat)

end

end A063946.P3570196408548778747

namespace A063946

/-- `xor(n, A038570(2*A053644(n)))` -/
def P3570196408548778747.Spec : Prop :=
  ∀ n, P3570196408548778747.a n = A063946 n

end A063946

/-! ## A063946.P7533416592126416404

`xor(n, A257697(xor(1, A053644(n))))`
-/

namespace A063946.P7533416592126416404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A257697 (Int.xor 1 (A053644 n)).toNat)

end

end A063946.P7533416592126416404

namespace A063946

/-- `xor(n, A257697(xor(1, A053644(n))))` -/
def P7533416592126416404.Spec : Prop :=
  ∀ n, P7533416592126416404.a n = A063946 n

end A063946

/-! ## A063946.P1284944835401034856

`xor(n, A072376(xor(n, A072376(n))))`
-/

namespace A063946.P1284944835401034856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A072376 (Int.xor (n : ℤ) (A072376 n)).toNat)

end

end A063946.P1284944835401034856

namespace A063946

/-- `xor(n, A072376(xor(n, A072376(n))))` -/
def P1284944835401034856.Spec : Prop :=
  ∀ n, P1284944835401034856.a n = A063946 n

end A063946

/-!
# A063947: Infinitary harmonic numbers: harmonic mean of infinitary divisors is an integer.

The programs for A063947, there is no canonical definition to state claims against.
-/

/-! ## A063947.P5975811308328563796

`A335387(A335376(n+1)%A335389(n+3))`
-/

namespace A063947.P5975811308328563796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335387 (Int.tmod (A335376 (n + 1)) (A335389 (n + 3))).toNat

end

end A063947.P5975811308328563796

/-! ## A063947.P8566814524549081791

`A335387(A335376(n+1))+A005171(A000043(n+1))`
-/

namespace A063947.P8566814524549081791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335387 (A335376 (n + 1)).toNat + A005171 (A000043 (n + 1)).toNat

end

end A063947.P8566814524549081791

/-! ## A063947.P8812068595923525268

`A335387(A335376(n+1))%A122229(n+1)`
-/

namespace A063947.P8812068595923525268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335387 (A335376 (n + 1)).toNat) (A122229 (n + 1))

end

end A063947.P8812068595923525268

/-! ## A063947.P2414776188274650032

`A005171(A335387(n+1))*A335387(A335376(n+1))`
-/

namespace A063947.P2414776188274650032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A335387 (n + 1)).toNat * A335387 (A335376 (n + 1)).toNat

end

end A063947.P2414776188274650032

/-!
# A063948: Unitary untouchable numbers: us(x) = n has no solution where us(x) (A063919) is the sum of the proper unitary divisors of x.

The programs for A063948, there is no canonical definition to state claims against.
-/

/-! ## A063948.P11255025831473812700

`∑[A191248(2^(2-n)²)]`
-/

namespace A063948.P11255025831473812700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191248 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((2 - (n : ℤ)) ^ 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063948.P11255025831473812700

/-! ## A063948.P13147343193534820072

`∑[A237638((n+1)^a(n-1)+3)]` with `a(0)=2`
-/

namespace A063948.P13147343193534820072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A237638 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (f1 (n - 1) : ℤ) + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063948.P13147343193534820072

/-!
# A063949: Every number is the sum of 4 squares; these are the numbers n for which the first square can be taken to be any positive square < n.

The programs for A063949, there is no canonical definition to state claims against.
-/

/-! ## A063949.P3716254704871563887

`eq[char[A063950(n+1)], A152822(n)]`
-/

namespace A063949.P3716254704871563887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063950 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A063949.P3716254704871563887

/-! ## A063949.P18162363478752308453

`lt[A271837(n), A271159(n)]`
-/

namespace A063949.P18162363478752308453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063949.P18162363478752308453

/-! ## A063949.P7628381158245468154

`lt[A000032(A351978(n+1)), A271159(n)]`
-/

namespace A063949.P7628381158245468154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A351978 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063949.P7628381158245468154

/-! ## A063949.P16594379808811834306

`lt[A351978(A063952(n+1)), A271159(n)]`
-/

namespace A063949.P16594379808811834306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351978 (A063952 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063949.P16594379808811834306

/-! ## A063949.P15343905980976738873

`lt[A144825(n+4), A162209(A027623(n))]`
-/

namespace A063949.P15343905980976738873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144825 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162209 (A027623 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063949.P15343905980976738873

/-!
# A063950: Of course every number is the sum of 4 squares; these are the numbers not of the form 4m+2 such that the first square can be taken to be any positive square < n.

The programs for A063950, there is no canonical definition to state claims against.
-/

/-! ## A063950.P7351830788324478663

`filter[A063949(n+1), A152822(#)]`
-/

namespace A063950.P7351830788324478663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A063950.P7351830788324478663

/-! ## A063950.P5708499915890267538

`eq[char[A063949(n+1)], A152822(n)]`
-/

namespace A063950.P5708499915890267538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A063950.P5708499915890267538

/-! ## A063950.P17399599273365311034

`∩[A042965(n+1), A063949(n+1)]`
-/

namespace A063950.P17399599273365311034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063950.P17399599273365311034

/-! ## A063950.P17394175480670298171

`∩[comp[A004277(2*n+1)], A063949(n+1)]`
-/

namespace A063950.P17394175480670298171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A063950.P17394175480670298171

/-! ## A063950.P7180176251572765782

`lt[A036968(n+1), Δ[A287705(n+3)]]`
-/

namespace A063950.P7180176251572765782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287705 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063950.P7180176251572765782

/-!
# A063951: Every number is the sum of 4 squares; these are the odd numbers n such that the first square can be taken to be any positive square < n.

The programs for A063951, there is no canonical definition to state claims against.
-/

/-! ## A063951.P2255582798170882944

`∩[comp[2*n], A063949(n+1)]`
-/

namespace A063951.P2255582798170882944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A063951.P2255582798170882944

/-! ## A063951.P6315319790725450874

`record[A029579(A063950(n+1))]`
-/

namespace A063951.P6315319790725450874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A063950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063951.P6315319790725450874

/-! ## A063951.P8619520306377886634

`record[A093178(A063949(n+1))]`
-/

namespace A063951.P8619520306377886634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A063949 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063951.P8619520306377886634

/-! ## A063951.P2685675124378314494

`record[A000265(A063949(n+2))]`
-/

namespace A063951.P2685675124378314494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A063949 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063951.P2685675124378314494

/-! ## A063951.P4987122190646113768

`record[A000265(A063950(n+2))]`
-/

namespace A063951.P4987122190646113768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A063950 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063951.P4987122190646113768

/-! ## A063951.P5181297042565419658

`record[A054576(A063950(n+3))]`
-/

namespace A063951.P5181297042565419658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A063950 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063951.P5181297042565419658

/-! ## A063951.P3712085115246891810

`filter[A063949(n+1), A000035(#)]`
-/

namespace A063951.P3712085115246891810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A063951.P3712085115246891810

/-! ## A063951.P2575902582689425471

`filter[A063950(n+1), A000035(#)]`
-/

namespace A063951.P2575902582689425471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A063951.P2575902582689425471

/-! ## A063951.P5044794411793278228

`filter[A063950(n+1), A098725(#)]`
-/

namespace A063951.P5044794411793278228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A063951.P5044794411793278228

/-! ## A063951.P2568045825453747387

`filter[A063950(n+1), A166486(#)]`
-/

namespace A063951.P2568045825453747387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A063951.P2568045825453747387

/-!
# A063952: Of course every number is the sum of 4 squares; for these numbers the first square can be taken to be any square < n.

The programs for A063952, there is no canonical definition to state claims against.
-/

/-! ## A063952.P253280807822059537

`filter[A063949(n+1), A071374(#)]`
-/

namespace A063952.P253280807822059537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A063952.P253280807822059537

/-! ## A063952.P18120206311959460287

`∩[A000378(n+1), A063949(n+1)]`
-/

namespace A063952.P18120206311959460287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063952.P18120206311959460287

/-! ## A063952.P10662669731241933193

`∩[A063949(n+1), eq[0, A072401(n)]]`
-/

namespace A063952.P10662669731241933193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A063952.P10662669731241933193

/-! ## A063952.P13318399119662325133

`∩[comp[A004215(n+1)], A063949(n+1)]`
-/

namespace A063952.P13318399119662325133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A063952.P13318399119662325133

/-! ## A063952.P3702790658090610230

`eq[char[A063953(n)], A152822(n)]`
-/

namespace A063952.P3702790658090610230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063953 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A063952.P3702790658090610230

/-!
# A063953: Of course every number is the sum of 4 squares; these are the numbers not of the form 4m+2 such that the first square can be taken to be any square < n.

The programs for A063953, there is no canonical definition to state claims against.
-/

/-! ## A063953.P10194199272118304604

`filter[A063950(n+1), A071374(#)]`
-/

namespace A063953.P10194199272118304604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A063953.P10194199272118304604

/-! ## A063953.P14708491215803390405

`filter[A063952(n+1), A152822(#)]`
-/

namespace A063953.P14708491215803390405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A063953.P14708491215803390405

/-! ## A063953.P14326194888375050191

`∩[A042965(n+1), A063952(n+1)]`
-/

namespace A063953.P14326194888375050191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063953.P14326194888375050191

/-! ## A063953.P16352067865620442660

`∩[A047601(n+1), A063952(n+1)]`
-/

namespace A063953.P16352067865620442660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063953.P16352067865620442660

/-! ## A063953.P812700193634877661

`∩[A063950(n+1), A063952(n+1)]`
-/

namespace A063953.P812700193634877661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063953.P812700193634877661

/-!
# A063954: Every number is the sum of 4 squares; these are the odd numbers such that the first square can be taken to be any square < n.

The programs for A063954, there is no canonical definition to state claims against.
-/

/-! ## A063954.P2175639259780060566

`∩[2*n+1, A063952(n+1)]`
-/

namespace A063954.P2175639259780060566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063954.P2175639259780060566

/-! ## A063954.P14421021444765195929

`record[A029579(A063953(n))]`
-/

namespace A063954.P14421021444765195929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A063953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063954.P14421021444765195929

/-! ## A063954.P9403137842308559729

`filter[A063953(n), A000035(#)]`
-/

namespace A063954.P9403137842308559729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A063954.P9403137842308559729

/-! ## A063954.P10625616820559871527

`filter[A063953(n), A098725(#)]`
-/

namespace A063954.P10625616820559871527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A063954.P10625616820559871527

/-! ## A063954.P14539476448757393267

`filter[A063953(n), A166486(#)]`
-/

namespace A063954.P14539476448757393267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A063954.P14539476448757393267

/-! ## A063954.P2519298814746267692

`record[A000265(A063953(n+1))]`
-/

namespace A063954.P2519298814746267692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A063953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063954.P2519298814746267692

/-! ## A063954.P13906894401291148722

`record[A093178(A063952(n+1))]`
-/

namespace A063954.P13906894401291148722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A063952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063954.P13906894401291148722

/-! ## A063954.P3639955465575507825

`record[A000265(A063952(n+2))]`
-/

namespace A063954.P3639955465575507825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A063952 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063954.P3639955465575507825

/-! ## A063954.P17695372308353849612

`record[A054576(A063953(n+2))]`
-/

namespace A063954.P17695372308353849612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A063953 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063954.P17695372308353849612

/-! ## A063954.P12557056065150502122

`record[A026741(A063952(n+3))]`
-/

namespace A063954.P12557056065150502122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A063952 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063954.P12557056065150502122

/-!
# A063955: Sum of the unitary prime divisors of n!.

The programs for A063955, the canonical program `A063955.P15955011138369882518` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063955 has offset 1).

The definition of A063955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063955.P11239266844341093221

`∑[A251561(n+1)-(n+1)]`
-/

namespace A063955.P11239266844341093221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251561 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063955.P11239266844341093221

namespace A063955

/-- `∑[A251561(n+1)-(n+1)]` -/
def P11239266844341093221.Spec : Prop :=
  ∀ n, P11239266844341093221.a n = A063955 (n + 1)

end A063955

/-! ## A063955.P16429294060568410614

`A294487(n+1)+A061397(n+1)`
-/

namespace A063955.P16429294060568410614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294487 (n + 1) + A061397 (n + 1)

end

end A063955.P16429294060568410614

namespace A063955

/-- `A294487(n+1)+A061397(n+1)` -/
def P16429294060568410614.Spec : Prop :=
  ∀ n, P16429294060568410614.a n = A063955 (n + 1)

end A063955

/-! ## A063955.P946993203546210020

`A034387(n+1)-A063960(n+1)`
-/

namespace A063955.P946993203546210020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - A063960 (n + 1)

end

end A063955.P946993203546210020

namespace A063955

/-- `A034387(n+1)-A063960(n+1)` -/
def P946993203546210020.Spec : Prop :=
  ∀ n, P946993203546210020.a n = A063955 (n + 1)

end A063955

/-! ## A063955.P15955011138369882518

`A034387(n+1)-A034387(A065033(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063955

/-- `A034387(n+1)-A034387(A065033(n))` -/
def P15955011138369882518.Spec : Prop :=
  ∀ n, P15955011138369882518.a n = A063955 (n + 1)

theorem P15955011138369882518.correct : P15955011138369882518.Spec := by
  intro n
  simp only [A063955, Nat.add_sub_cancel]

end A063955

/-! ## A063955.P6495920077533861678

`A007504(A000720(n+1))-A063960(n+1)`
-/

namespace A063955.P6495920077533861678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (n + 1)).toNat - A063960 (n + 1)

end

end A063955.P6495920077533861678

namespace A063955

/-- `A007504(A000720(n+1))-A063960(n+1)` -/
def P6495920077533861678.Spec : Prop :=
  ∀ n, P6495920077533861678.a n = A063955 (n + 1)

end A063955

/-! ## A063955.P15912824612017417166

`A034387(n+1)-A034387(A056039(n+1))`
-/

namespace A063955.P15912824612017417166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - A034387 (A056039 (n + 1)).toNat

end

end A063955.P15912824612017417166

namespace A063955

/-- `A034387(n+1)-A034387(A056039(n+1))` -/
def P15912824612017417166.Spec : Prop :=
  ∀ n, P15912824612017417166.a n = A063955 (n + 1)

end A063955

/-! ## A063955.P7567722261937243020

`A294111(n+2)+A294487(n+2)-A368058(n+2)`
-/

namespace A063955.P7567722261937243020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294111 (n + 2) + (A294487 (n + 2) - A368058 (n + 2))

end

end A063955.P7567722261937243020

namespace A063955

/-- `A294111(n+2)+A294487(n+2)-A368058(n+2)` -/
def P7567722261937243020.Spec : Prop :=
  ∀ n, P7567722261937243020.a n = A063955 (n + 1)

end A063955

/-! ## A063955.P11325770959101362116

`A063960(2*(n+1))-A063960(n+1)`
-/

namespace A063955.P11325770959101362116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * (n + 1)) - A063960 (n + 1)

end

end A063955.P11325770959101362116

namespace A063955

/-- `A063960(2*(n+1))-A063960(n+1)` -/
def P11325770959101362116.Spec : Prop :=
  ∀ n, P11325770959101362116.a n = A063955 (n + 1)

end A063955

/-! ## A063955.P18203518763527302913

`A034387(n+1)-A034387(A098667(n+1))`
-/

namespace A063955.P18203518763527302913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - A034387 (A098667 (n + 1)).toNat

end

end A063955.P18203518763527302913

namespace A063955

/-- `A034387(n+1)-A034387(A098667(n+1))` -/
def P18203518763527302913.Spec : Prop :=
  ∀ n, P18203518763527302913.a n = A063955 (n + 1)

end A063955

/-!
# A063956: Sum of the unitary prime divisors of n.

The programs for A063956, the canonical program `A063956.P13509344762830228615` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063956 has offset 1).

The definition of A063956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063956.P10696679261973728554

`A008472(n+1)-A063958(n+1)`
-/

namespace A063956.P10696679261973728554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A063958 (n + 1)

end

end A063956.P10696679261973728554

namespace A063956

/-- `A008472(n+1)-A063958(n+1)` -/
def P10696679261973728554.Spec : Prop :=
  ∀ n, P10696679261973728554.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P13509344762830228615

`∑{p}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063956

/-- `∑{p}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], #]` -/
def P13509344762830228615.Spec : Prop :=
  ∀ n, (P13509344762830228615.a n : ℤ) = A063956 (n + 1)

theorem P13509344762830228615.correct : P13509344762830228615.Spec := by
  intro n
  simp only [A063956, Nat.add_sub_cancel]

end A063956

/-! ## A063956.P12579263191376970896

`∑{p}[A055231(n+1), #]`
-/

namespace A063956.P12579263191376970896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063956.P12579263191376970896

namespace A063956

/-- `∑{p}[A055231(n+1), #]` -/
def P12579263191376970896.Spec : Prop :=
  ∀ n, (P12579263191376970896.a n : ℤ) = A063956 (n + 1)

end A063956

/-! ## A063956.P11434965975753456994

`A008475((n+1)/gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))`
-/

namespace A063956.P11434965975753456994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ))).toNat

end

end A063956.P11434965975753456994

namespace A063956

/-- `A008475((n+1)/gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))` -/
def P11434965975753456994.Spec : Prop :=
  ∀ n, P11434965975753456994.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P3471431290802988971

`A001414(A055231(n+1))`
-/

namespace A063956.P3471431290802988971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A055231 (n + 1)).toNat

end

end A063956.P3471431290802988971

namespace A063956

/-- `A001414(A055231(n+1))` -/
def P3471431290802988971.Spec : Prop :=
  ∀ n, P3471431290802988971.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P16775009968846722586

`∑{p}[A007913(A007948(n+1)), #]`
-/

namespace A063956.P16775009968846722586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007948 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063956.P16775009968846722586

namespace A063956

/-- `∑{p}[A007913(A007948(n+1)), #]` -/
def P16775009968846722586.Spec : Prop :=
  ∀ n, (P16775009968846722586.a n : ℤ) = A063956 (n + 1)

end A063956

/-! ## A063956.P18013220666035068103

`A008475(n+1)-A286875(n+1)`
-/

namespace A063956.P18013220666035068103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A286875 (n + 1)

end

end A063956.P18013220666035068103

namespace A063956

/-- `A008475(n+1)-A286875(n+1)` -/
def P18013220666035068103.Spec : Prop :=
  ∀ n, P18013220666035068103.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P16712500211090244361

`A345303(n+1)-A071327(n+1)`
-/

namespace A063956.P16712500211090244361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345303 (n + 1) - A071327 (n + 1)

end

end A063956.P16712500211090244361

namespace A063956

/-- `A345303(n+1)-A071327(n+1)` -/
def P16712500211090244361.Spec : Prop :=
  ∀ n, P16712500211090244361.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P2290780837305597454

`A001414((n+1)/A057521(n+1))`
-/

namespace A063956.P2290780837305597454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A063956.P2290780837305597454

namespace A063956

/-- `A001414((n+1)/A057521(n+1))` -/
def P2290780837305597454.Spec : Prop :=
  ∀ n, P2290780837305597454.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P1326560635788473586

`A008472((n+1)/A057521(n+1))`
-/

namespace A063956.P1326560635788473586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A063956.P1326560635788473586

namespace A063956

/-- `A008472((n+1)/A057521(n+1))` -/
def P1326560635788473586.Spec : Prop :=
  ∀ n, P1326560635788473586.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P3249669079869133974

`A008475((n+1)/A057521(n+1))`
-/

namespace A063956.P3249669079869133974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A063956.P3249669079869133974

namespace A063956

/-- `A008475((n+1)/A057521(n+1))` -/
def P3249669079869133974.Spec : Prop :=
  ∀ n, P3249669079869133974.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P8992276175363450588

`A001414(A197863(n+1)/(n+1))`
-/

namespace A063956.P8992276175363450588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A063956.P8992276175363450588

namespace A063956

/-- `A001414(A197863(n+1)/(n+1))` -/
def P8992276175363450588.Spec : Prop :=
  ∀ n, P8992276175363450588.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P10808633228486480471

`A008472(A197863(n+1)/(n+1))`
-/

namespace A063956.P10808633228486480471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A063956.P10808633228486480471

namespace A063956

/-- `A008472(A197863(n+1)/(n+1))` -/
def P10808633228486480471.Spec : Prop :=
  ∀ n, P10808633228486480471.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P11656718672706148833

`A159077(n+1)-(A286875(n+1)+1)`
-/

namespace A063956.P11656718672706148833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - (A286875 (n + 1) + 1)

end

end A063956.P11656718672706148833

namespace A063956

/-- `A159077(n+1)-(A286875(n+1)+1)` -/
def P11656718672706148833.Spec : Prop :=
  ∀ n, P11656718672706148833.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P3317096747725947159

`A008472(n+1)-A008472(A000188(n+1))`
-/

namespace A063956.P3317096747725947159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A008472 (A000188 (n + 1)).toNat

end

end A063956.P3317096747725947159

namespace A063956

/-- `A008472(n+1)-A008472(A000188(n+1))` -/
def P3317096747725947159.Spec : Prop :=
  ∀ n, P3317096747725947159.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P15688402779139203867

`A008472(n+1)-A008472(A000189(n+1))`
-/

namespace A063956.P15688402779139203867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A008472 (A000189 (n + 1)).toNat

end

end A063956.P15688402779139203867

namespace A063956

/-- `A008472(n+1)-A008472(A000189(n+1))` -/
def P15688402779139203867.Spec : Prop :=
  ∀ n, P15688402779139203867.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P11632087950596360375

`A008472(n+1)-A008472(A000190(n+1))`
-/

namespace A063956.P11632087950596360375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A008472 (A000190 (n + 1)).toNat

end

end A063956.P11632087950596360375

namespace A063956

/-- `A008472(n+1)-A008472(A000190(n+1))` -/
def P11632087950596360375.Spec : Prop :=
  ∀ n, P11632087950596360375.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P15851153467551351085

`A008472(n+1)-A008472(A003557(n+1))`
-/

namespace A063956.P15851153467551351085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A008472 (A003557 (n + 1)).toNat

end

end A063956.P15851153467551351085

namespace A063956

/-- `A008472(n+1)-A008472(A003557(n+1))` -/
def P15851153467551351085.Spec : Prop :=
  ∀ n, P15851153467551351085.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P705769840987184270

`A008472(n+1)-A008472(A008833(n+1))`
-/

namespace A063956.P705769840987184270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A008472 (A008833 (n + 1)).toNat

end

end A063956.P705769840987184270

namespace A063956

/-- `A008472(n+1)-A008472(A008833(n+1))` -/
def P705769840987184270.Spec : Prop :=
  ∀ n, P705769840987184270.a n = A063956 (n + 1)

end A063956

/-! ## A063956.P18432564232111258624

`A001414(n+1)-A001414(A057521(n+1))`
-/

namespace A063956.P18432564232111258624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001414 (A057521 (n + 1)).toNat

end

end A063956.P18432564232111258624

namespace A063956

/-- `A001414(n+1)-A001414(A057521(n+1))` -/
def P18432564232111258624.Spec : Prop :=
  ∀ n, P18432564232111258624.a n = A063956 (n + 1)

end A063956

/-!
# A063957: Numbers not of the form round(m*sqrt(2)) for any integer m, i.e., complement of A022846.

The programs for A063957, the canonical program `A063957.P2911444210877799103` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063957 has offset 1).

The definition of A063957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063957.P2911444210877799103

`round((n+1-1/2)*(2+sqrt(2)))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063957

/-- `round((n+1-1/2)*(2+sqrt(2)))` -/
def P2911444210877799103.Spec : Prop :=
  ∀ n, P2911444210877799103.a n = A063957 (n + 1)

theorem P2911444210877799103.correct : P2911444210877799103.Spec := by
  intro n
  simp only [A063957, Nat.add_sub_cancel]

end A063957

/-! ## A063957.P14112234533223122751

`round(sqrt(A001844(n)))+2*n+1`
-/

namespace A063957.P14112234533223122751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001844 n : ℝ)) + (2 * n + 1 : ℤ)

end

end A063957.P14112234533223122751

namespace A063957

/-- `round(sqrt(A001844(n)))+2*n+1` -/
def P14112234533223122751.Spec : Prop :=
  ∀ n, P14112234533223122751.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P239747169160050952

`A342280(n)-A001954(n)`
-/

namespace A063957.P239747169160050952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342280 n - A001954 n

end

end A063957.P239747169160050952

namespace A063957

/-- `A342280(n)-A001954(n)` -/
def P239747169160050952.Spec : Prop :=
  ∀ n, P239747169160050952.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P1339185285211473036

`A215247(n+1)-A001953(n)`
-/

namespace A063957.P1339185285211473036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215247 (n + 1) - A001953 n

end

end A063957.P1339185285211473036

namespace A063957

/-- `A215247(n+1)-A001953(n)` -/
def P1339185285211473036.Spec : Prop :=
  ∀ n, P1339185285211473036.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P11484401657217776125

`∩[A190764(n+1), A288214(n+1)]`
-/

namespace A063957.P11484401657217776125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063957.P11484401657217776125

namespace A063957

/-- `∩[A190764(n+1), A288214(n+1)]` -/
def P11484401657217776125.Spec : Prop :=
  ∀ n, (P11484401657217776125.a n : ℤ) = A063957 (n + 1)

end A063957

/-! ## A063957.P14199629463866153970

`A081477(Δ[n²])`
-/

namespace A063957.P14199629463866153970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063957.P14199629463866153970

namespace A063957

/-- `A081477(Δ[n²])` -/
def P14199629463866153970.Spec : Prop :=
  ∀ n, P14199629463866153970.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P14647373756927323848

`A189573(2*(n+1))-1`
-/

namespace A063957.P14647373756927323848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (2 * (n + 1)) - 1

end

end A063957.P14647373756927323848

namespace A063957

/-- `A189573(2*(n+1))-1` -/
def P14647373756927323848.Spec : Prop :=
  ∀ n, P14647373756927323848.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P8492750467148097732

`ceil(A001952(2*n+1)/2)`
-/

namespace A063957.P8492750467148097732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001952 (2 * n + 1) : ℚ) / 2⌉

end

end A063957.P8492750467148097732

namespace A063957

/-- `ceil(A001952(2*n+1)/2)` -/
def P8492750467148097732.Spec : Prop :=
  ∀ n, P8492750467148097732.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P1401191071659881999

`floor(A080754(2*n+1)/sqrt(2))`
-/

namespace A063957.P1401191071659881999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080754 (2 * n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A063957.P1401191071659881999

namespace A063957

/-- `floor(A080754(2*n+1)/sqrt(2))` -/
def P1401191071659881999.Spec : Prop :=
  ∀ n, P1401191071659881999.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P527287997746110431

`A049473(2*n+1)+Δ[n²]`
-/

namespace A063957.P527287997746110431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063957.P527287997746110431

namespace A063957

/-- `A049473(2*n+1)+Δ[n²]` -/
def P527287997746110431.Spec : Prop :=
  ∀ n, P527287997746110431.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P18078349153104414319

`A001952(2*n+1)-A001954(n)`
-/

namespace A063957.P18078349153104414319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (2 * n + 1) - A001954 n

end

end A063957.P18078349153104414319

namespace A063957

/-- `A001952(2*n+1)-A001954(n)` -/
def P18078349153104414319.Spec : Prop :=
  ∀ n, P18078349153104414319.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P7345845148535605212

`A003151(2*n+1)-A001953(n)`
-/

namespace A063957.P7345845148535605212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (2 * n + 1) - A001953 n

end

end A063957.P7345845148535605212

namespace A063957

/-- `A003151(2*n+1)-A001953(n)` -/
def P7345845148535605212.Spec : Prop :=
  ∀ n, P7345845148535605212.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P18379974553180839153

`A342280(n)-A003152(2*n+1)`
-/

namespace A063957.P18379974553180839153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342280 n - A003152 (2 * n + 1)

end

end A063957.P18379974553180839153

namespace A063957

/-- `A342280(n)-A003152(2*n+1)` -/
def P18379974553180839153.Spec : Prop :=
  ∀ n, P18379974553180839153.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P6539988076491075265

`∑{d}[A081477(2*n+1), A000010(#)]`
-/

namespace A063957.P6539988076491075265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A063957.P6539988076491075265

namespace A063957

/-- `∑{d}[A081477(2*n+1), A000010(#)]` -/
def P6539988076491075265.Spec : Prop :=
  ∀ n, P6539988076491075265.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P2813176638075238998

`∩[A081477(n+1), A190764(n+1)]`
-/

namespace A063957.P2813176638075238998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063957.P2813176638075238998

namespace A063957

/-- `∩[A081477(n+1), A190764(n+1)]` -/
def P2813176638075238998.Spec : Prop :=
  ∀ n, (P2813176638075238998.a n : ℤ) = A063957 (n + 1)

end A063957

/-! ## A063957.P1824837471435735648

`∩[A081477(n+1), A190768(n+1)]`
-/

namespace A063957.P1824837471435735648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063957.P1824837471435735648

namespace A063957

/-- `∩[A081477(n+1), A190768(n+1)]` -/
def P1824837471435735648.Spec : Prop :=
  ∀ n, (P1824837471435735648.a n : ℤ) = A063957 (n + 1)

end A063957

/-! ## A063957.P8790740943612557621

`∩[A081477(n+1), A288214(n+1)]`
-/

namespace A063957.P8790740943612557621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063957.P8790740943612557621

namespace A063957

/-- `∩[A081477(n+1), A288214(n+1)]` -/
def P8790740943612557621.Spec : Prop :=
  ∀ n, (P8790740943612557621.a n : ℤ) = A063957 (n + 1)

end A063957

/-! ## A063957.P10920497751149834409

`A258703(2*n+1)+A005843(n+1)`
-/

namespace A063957.P10920497751149834409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (2 * n + 1) + A005843 (n + 1)

end

end A063957.P10920497751149834409

namespace A063957

/-- `A258703(2*n+1)+A005843(n+1)` -/
def P10920497751149834409.Spec : Prop :=
  ∀ n, P10920497751149834409.a n = A063957 (n + 1)

end A063957

/-! ## A063957.P9398580004433528085

`A083051(2*n+1)-A184119(n+1)`
-/

namespace A063957.P9398580004433528085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 (2 * n + 1) - A184119 (n + 1)

end

end A063957.P9398580004433528085

namespace A063957

/-- `A083051(2*n+1)-A184119(n+1)` -/
def P9398580004433528085.Spec : Prop :=
  ∀ n, P9398580004433528085.a n = A063957 (n + 1)

end A063957

/-!
# A063958: Sum of the non-unitary prime divisors of n: sum of those prime divisors for which the exponent in the prime factorization exceeds 1.

The programs for A063958, the canonical program `A063958.P8283110959988242133` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063958 has offset 1).

The definition of A063958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063958.P8283110959988242133

`A008472(n+1)-A063956(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063958

/-- `A008472(n+1)-A063956(n+1)` -/
def P8283110959988242133.Spec : Prop :=
  ∀ n, P8283110959988242133.a n = A063958 (n + 1)

theorem P8283110959988242133.correct : P8283110959988242133.Spec := by
  intro n
  simp only [A063958, Nat.add_sub_cancel]

end A063958

/-! ## A063958.P18301894577637993596

`∑{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A063958.P18301894577637993596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A063958.P18301894577637993596

namespace A063958

/-- `∑{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P18301894577637993596.Spec : Prop :=
  ∀ n, (P18301894577637993596.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P2639741111268355267

`∑{p}[∏{p}[n+1, #^val(n+1, #²)], #]`
-/

namespace A063958.P2639741111268355267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A063958.P2639741111268355267

namespace A063958

/-- `∑{p}[∏{p}[n+1, #^val(n+1, #²)], #]` -/
def P2639741111268355267.Spec : Prop :=
  ∀ n, (P2639741111268355267.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P4888449938941717684

`∑{p}[gcd(n+1, ∑{p}[n+1, (n+1)/#]), #]`
-/

namespace A063958.P4888449938941717684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A063958.P4888449938941717684

namespace A063958

/-- `∑{p}[gcd(n+1, ∑{p}[n+1, (n+1)/#]), #]` -/
def P4888449938941717684.Spec : Prop :=
  ∀ n, (P4888449938941717684.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P12774960774327258480

`∑{p}[A000188(n+1), #]`
-/

namespace A063958.P12774960774327258480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P12774960774327258480

namespace A063958

/-- `∑{p}[A000188(n+1), #]` -/
def P12774960774327258480.Spec : Prop :=
  ∀ n, (P12774960774327258480.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P11211605978827950353

`∑{p}[A000189(n+1), #]`
-/

namespace A063958.P11211605978827950353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P11211605978827950353

namespace A063958

/-- `∑{p}[A000189(n+1), #]` -/
def P11211605978827950353.Spec : Prop :=
  ∀ n, (P11211605978827950353.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P1230361065970715465

`∑{p}[A000190(n+1), #]`
-/

namespace A063958.P1230361065970715465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P1230361065970715465

namespace A063958

/-- `∑{p}[A000190(n+1), #]` -/
def P1230361065970715465.Spec : Prop :=
  ∀ n, (P1230361065970715465.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P8703390848596647619

`∑{p}[A003557(n+1), #]`
-/

namespace A063958.P8703390848596647619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P8703390848596647619

namespace A063958

/-- `∑{p}[A003557(n+1), #]` -/
def P8703390848596647619.Spec : Prop :=
  ∀ n, (P8703390848596647619.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P359147931917788247

`∑{p}[A008833(n+1), #]`
-/

namespace A063958.P359147931917788247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P359147931917788247

namespace A063958

/-- `∑{p}[A008833(n+1), #]` -/
def P359147931917788247.Spec : Prop :=
  ∀ n, (P359147931917788247.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P5483036110867770296

`∑{p}[A011264(n+1), #]`
-/

namespace A063958.P5483036110867770296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P5483036110867770296

namespace A063958

/-- `∑{p}[A011264(n+1), #]` -/
def P5483036110867770296.Spec : Prop :=
  ∀ n, (P5483036110867770296.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P12692931712319959477

`∑{p}[A057521(n+1), #]`
-/

namespace A063958.P12692931712319959477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P12692931712319959477

namespace A063958

/-- `∑{p}[A057521(n+1), #]` -/
def P12692931712319959477.Spec : Prop :=
  ∀ n, (P12692931712319959477.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P18305475459242522150

`∑{p}[A071773(n+1), #]`
-/

namespace A063958.P18305475459242522150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P18305475459242522150

namespace A063958

/-- `∑{p}[A071773(n+1), #]` -/
def P18305475459242522150.Spec : Prop :=
  ∀ n, (P18305475459242522150.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P15653812939926827735

`∑{p}[A085731(n+1), #]`
-/

namespace A063958.P15653812939926827735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P15653812939926827735

namespace A063958

/-- `∑{p}[A085731(n+1), #]` -/
def P15653812939926827735.Spec : Prop :=
  ∀ n, (P15653812939926827735.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P11044306524663479128

`∑{p}[A308993(n+1), #]`
-/

namespace A063958.P11044306524663479128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P11044306524663479128

namespace A063958

/-- `∑{p}[A308993(n+1), #]` -/
def P11044306524663479128.Spec : Prop :=
  ∀ n, (P11044306524663479128.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P11007323205946341657

`∑{p}[A358272(n+1), #]`
-/

namespace A063958.P11007323205946341657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P11007323205946341657

namespace A063958

/-- `∑{p}[A358272(n+1), #]` -/
def P11007323205946341657.Spec : Prop :=
  ∀ n, (P11007323205946341657.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P6179959028782335672

`∑{p}[A366993(n+1), #]`
-/

namespace A063958.P6179959028782335672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P6179959028782335672

namespace A063958

/-- `∑{p}[A366993(n+1), #]` -/
def P6179959028782335672.Spec : Prop :=
  ∀ n, (P6179959028782335672.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P12767027149797330757

`∑{p}[A336551(n+1)+1, #]`
-/

namespace A063958.P12767027149797330757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P12767027149797330757

namespace A063958

/-- `∑{p}[A336551(n+1)+1, #]` -/
def P12767027149797330757.Spec : Prop :=
  ∀ n, (P12767027149797330757.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P182937920625399595

`∑{p}[A337101(2*(n+1)), #]`
-/

namespace A063958.P182937920625399595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P182937920625399595

namespace A063958

/-- `∑{p}[A337101(2*(n+1)), #]` -/
def P182937920625399595.Spec : Prop :=
  ∀ n, (P182937920625399595.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P8252783230889328929

`∑{p}[round(n/A007947(n+1)), #]`
-/

namespace A063958.P8252783230889328929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A007947 (n + 1) : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A063958.P8252783230889328929

namespace A063958

/-- `∑{p}[round(n/A007947(n+1)), #]` -/
def P8252783230889328929.Spec : Prop :=
  ∀ n, (P8252783230889328929.a n : ℤ) = A063958 (n + 1)

end A063958

/-! ## A063958.P6631824941991123257

`A008472(A000188(n+1))`
-/

namespace A063958.P6631824941991123257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000188 (n + 1)).toNat

end

end A063958.P6631824941991123257

namespace A063958

/-- `A008472(A000188(n+1))` -/
def P6631824941991123257.Spec : Prop :=
  ∀ n, P6631824941991123257.a n = A063958 (n + 1)

end A063958

/-!
# A063959: Sum of the primes from 1 to n!.

The programs for A063959, the canonical program `A063959.P710531058493753582` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063959 has offset 0).

The definition of A063959 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063959.P710531058493753582

`A034387(A000142(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063959

/-- `A034387(A000142(n))` -/
def P710531058493753582.Spec : Prop :=
  ∀ n, P710531058493753582.a n = A063959 n

theorem P710531058493753582.correct : P710531058493753582.Spec := by
  intro n
  simp only [A063959]

end A063959

/-! ## A063959.P16996767497872139227

`∑[A294194(A172275(n))]`
-/

namespace A063959.P16996767497872139227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294194 (A172275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063959.P16996767497872139227

namespace A063959

/-- `∑[A294194(A172275(n))]` -/
def P16996767497872139227.Spec : Prop :=
  ∀ n, P16996767497872139227.a n = A063959 n

end A063959

/-! ## A063959.P16990794249476028100

`∑[A294194(log2(A011782(n)))]`
-/

namespace A063959.P16990794249476028100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294194 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063959.P16990794249476028100

namespace A063959

/-- `∑[A294194(log2(A011782(n)))]` -/
def P16990794249476028100.Spec : Prop :=
  ∀ n, P16990794249476028100.a n = A063959 n

end A063959

/-! ## A063959.P17363978933481338208

`∑[A294194(A028310(n)-1)]`
-/

namespace A063959.P17363978933481338208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294194 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063959.P17363978933481338208

namespace A063959

/-- `∑[A294194(A028310(n)-1)]` -/
def P17363978933481338208.Spec : Prop :=
  ∀ n, P17363978933481338208.a n = A063959 n

end A063959

/-! ## A063959.P13215774329529659040

`∑[A294194(n)]-A294194(n)`
-/

namespace A063959.P13215774329529659040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294194 n

end

end A063959.P13215774329529659040

namespace A063959

/-- `∑[A294194(n)]-A294194(n)` -/
def P13215774329529659040.Spec : Prop :=
  ∀ n, P13215774329529659040.a n = A063959 n

end A063959

/-!
# A063960: Sum of non-unitary prime divisors of n!: sum of those prime divisors for which the exponent in the prime factorization exceeds 1.

The programs for A063960, the canonical program `A063960.P16738888457334796570` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063960 has offset 1).

The definition of A063960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063960.P16606128406371971533

`∑[A251561(n+1)%(n+1)]`
-/

namespace A063960.P16606128406371971533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251561 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063960.P16606128406371971533

namespace A063960

/-- `∑[A251561(n+1)%(n+1)]` -/
def P16606128406371971533.Spec : Prop :=
  ∀ n, P16606128406371971533.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P16738888457334796570

`A034387(n%∑[and(1, n+1)]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063960

/-- `A034387(n%∑[and(1, n+1)]+1)` -/
def P16738888457334796570.Spec : Prop :=
  ∀ n, P16738888457334796570.a n = A063960 (n + 1)

theorem P16738888457334796570.correct : P16738888457334796570.Spec := by
  intro n
  simp only [A063960, Nat.add_sub_cancel]

end A063960

/-! ## A063960.P12826718199691780467

`∑[(∑[n]*A002126(n+1))%(n+1)]`
-/

namespace A063960.P12826718199691780467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A002126 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063960.P12826718199691780467

namespace A063960

/-- `∑[(∑[n]*A002126(n+1))%(n+1)]` -/
def P12826718199691780467.Spec : Prop :=
  ∀ n, P12826718199691780467.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P10849658428588712008

`A034387(A065033(n))`
-/

namespace A063960.P10849658428588712008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A065033 n).toNat

end

end A063960.P10849658428588712008

namespace A063960

/-- `A034387(A065033(n))` -/
def P10849658428588712008.Spec : Prop :=
  ∀ n, P10849658428588712008.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P66648670319857776

`A007504(A056172(n+1))`
-/

namespace A063960.P66648670319857776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A056172 (n + 1)).toNat

end

end A063960.P66648670319857776

namespace A063960

/-- `A007504(A056172(n+1))` -/
def P66648670319857776.Spec : Prop :=
  ∀ n, P66648670319857776.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P15534481958942443552

`A034387(A056039(n+1))`
-/

namespace A063960.P15534481958942443552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A056039 (n + 1)).toNat

end

end A063960.P15534481958942443552

namespace A063960

/-- `A034387(A056039(n+1))` -/
def P15534481958942443552.Spec : Prop :=
  ∀ n, P15534481958942443552.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P13695216706527202806

`A034387(n+1)-A063955(n+1)`
-/

namespace A063960.P13695216706527202806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - A063955 (n + 1)

end

end A063960.P13695216706527202806

namespace A063960

/-- `A034387(n+1)-A063955(n+1)` -/
def P13695216706527202806.Spec : Prop :=
  ∀ n, P13695216706527202806.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P5477904973423353353

`A294109(n+1)-A294023(n+1)`
-/

namespace A063960.P5477904973423353353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294109 (n + 1) - A294023 (n + 1)

end

end A063960.P5477904973423353353

namespace A063960

/-- `A294109(n+1)-A294023(n+1)` -/
def P5477904973423353353.Spec : Prop :=
  ∀ n, P5477904973423353353.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P6644501270175111358

`A066911(A308052(n+2))`
-/

namespace A063960.P6644501270175111358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A308052 (n + 2)).toNat

end

end A063960.P6644501270175111358

namespace A063960

/-- `A066911(A308052(n+2))` -/
def P6644501270175111358.Spec : Prop :=
  ∀ n, P6644501270175111358.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P5931175160527364722

`A343759(n+2)-A343758(n+1)`
-/

namespace A063960.P5931175160527364722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343759 (n + 2) - A343758 (n + 1)

end

end A063960.P5931175160527364722

namespace A063960

/-- `A343759(n+2)-A343758(n+1)` -/
def P5931175160527364722.Spec : Prop :=
  ∀ n, P5931175160527364722.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P4944296470850841008

`∑[A101605(2*(n+1))*A142150(n+1)]`
-/

namespace A063960.P4944296470850841008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (2 * (n + 1)) * A142150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063960.P4944296470850841008

namespace A063960

/-- `∑[A101605(2*(n+1))*A142150(n+1)]` -/
def P4944296470850841008.Spec : Prop :=
  ∀ n, P4944296470850841008.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P2824111448038274385

`∑[A061397(floor(n*(A176895(2*n)-1)/2)+1)]`
-/

namespace A063960.P2824111448038274385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (⌊(n : ℚ) * ((A176895 (2 * n) - 1 : ℚ) / 2)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063960.P2824111448038274385

namespace A063960

/-- `∑[A061397(floor(n*(A176895(2*n)-1)/2)+1)]` -/
def P2824111448038274385.Spec : Prop :=
  ∀ n, P2824111448038274385.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P10041541451261486298

`∑[A061397(ratio[A300951(n)])]`
-/

namespace A063960.P10041541451261486298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063960.P10041541451261486298

namespace A063960

/-- `∑[A061397(ratio[A300951(n)])]` -/
def P10041541451261486298.Spec : Prop :=
  ∀ n, P10041541451261486298.a n = A063960 (n + 1)

end A063960

/-! ## A063960.P14264627436781792821

`∑[A000203(ratio[A300951(n)])-1]`
-/

namespace A063960.P14264627436781792821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063960.P14264627436781792821

namespace A063960

/-- `∑[A000203(ratio[A300951(n)])-1]` -/
def P14264627436781792821.Spec : Prop :=
  ∀ n, P14264627436781792821.a n = A063960 (n + 1)

end A063960

/-!
# A063962: Number of distinct prime divisors of n that are <= sqrt(n).

The programs for A063962, the canonical program `A063962.P11030534656895760199` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063962 has offset 1).

The definition of A063962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063962.P11030534656895760199

`∑{e}[A382486(n+1), #]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A063962

/-- `∑{e}[A382486(n+1), #]` -/
def P11030534656895760199.Spec : Prop :=
  ∀ n, (P11030534656895760199.a n : ℤ) = A063962 (n + 1)

theorem P11030534656895760199.correct : P11030534656895760199.Spec := by
  intro n
  simp only [A063962, Nat.add_sub_cancel]

end A063962

/-! ## A063962.P13579988206130678545

`A001221(A072504(n+1))`
-/

namespace A063962.P13579988206130678545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A072504 (n + 1)).toNat

end

end A063962.P13579988206130678545

namespace A063962

/-- `A001221(A072504(n+1))` -/
def P13579988206130678545.Spec : Prop :=
  ∀ n, P13579988206130678545.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P2558068645818139789

`A001221(A382486(n+1))`
-/

namespace A063962.P2558068645818139789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A382486 (n + 1)).toNat

end

end A063962.P2558068645818139789

namespace A063962

/-- `A001221(A382486(n+1))` -/
def P2558068645818139789.Spec : Prop :=
  ∀ n, P2558068645818139789.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P14432767372083038663

`∑{p}[A072504(n+1), A072504(#)]`
-/

namespace A063962.P14432767372083038663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A072504 p

end

end A063962.P14432767372083038663

namespace A063962

/-- `∑{p}[A072504(n+1), A072504(#)]` -/
def P14432767372083038663.Spec : Prop :=
  ∀ n, P14432767372083038663.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P8618966724183104454

`A001222(∏{p}[A072504(n+1), #])`
-/

namespace A063962.P8618966724183104454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A063962.P8618966724183104454

namespace A063962

/-- `A001222(∏{p}[A072504(n+1), #])` -/
def P8618966724183104454.Spec : Prop :=
  ∀ n, P8618966724183104454.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P9644330876674924463

`∑{e}[A072504(n+1), A011847(#)]`
-/

namespace A063962.P9644330876674924463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011847 (Nat.factorization (f1 n).natAbs p)

end

end A063962.P9644330876674924463

namespace A063962

/-- `∑{e}[A072504(n+1), A011847(#)]` -/
def P9644330876674924463.Spec : Prop :=
  ∀ n, P9644330876674924463.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P15685902531253938757

`A262262(n+1)+A056170(n+1)`
-/

namespace A063962.P15685902531253938757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262262 (n + 1) + A056170 (n + 1)

end

end A063962.P15685902531253938757

namespace A063962

/-- `A262262(n+1)+A056170(n+1)` -/
def P15685902531253938757.Spec : Prop :=
  ∀ n, P15685902531253938757.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P468137216590311527

`A001221(n+1)-A341642(n+1)`
-/

namespace A063962.P468137216590311527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A341642 (n + 1)

end

end A063962.P468137216590311527

namespace A063962

/-- `A001221(n+1)-A341642(n+1)` -/
def P468137216590311527.Spec : Prop :=
  ∀ n, P468137216590311527.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P5716889045288662098

`A038548(n+1)-A333748(n+1)`
-/

namespace A063962.P5716889045288662098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - A333748 (n + 1)

end

end A063962.P5716889045288662098

namespace A063962

/-- `A038548(n+1)-A333748(n+1)` -/
def P5716889045288662098.Spec : Prop :=
  ∀ n, P5716889045288662098.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P10210723186587695229

`A072670(n)+1-A333748(n+1)`
-/

namespace A063962.P10210723186587695229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + (1 - A333748 (n + 1))

end

end A063962.P10210723186587695229

namespace A063962

/-- `A072670(n)+1-A333748(n+1)` -/
def P10210723186587695229.Spec : Prop :=
  ∀ n, P10210723186587695229.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P2978807839584649464

`A001221((n+1)/A072505(n+1))`
-/

namespace A063962.P2978807839584649464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072505 (n + 1) : ℚ))).toNat

end

end A063962.P2978807839584649464

namespace A063962

/-- `A001221((n+1)/A072505(n+1))` -/
def P2978807839584649464.Spec : Prop :=
  ∀ n, P2978807839584649464.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P7164657523683288823

`A001221(floor(n/(A097975(n+1)+1))+1)`
-/

namespace A063962.P7164657523683288823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (⌊(n : ℚ) / (A097975 (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A063962.P7164657523683288823

namespace A063962

/-- `A001221(floor(n/(A097975(n+1)+1))+1)` -/
def P7164657523683288823.Spec : Prop :=
  ∀ n, P7164657523683288823.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P3218822458157610502

`A001222(gcd(A007947(n+1), A072499(n+1)))`
-/

namespace A063962.P3218822458157610502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A007947 (n + 1)) (A072499 (n + 1)))

end

end A063962.P3218822458157610502

namespace A063962

/-- `A001222(gcd(A007947(n+1), A072499(n+1)))` -/
def P3218822458157610502.Spec : Prop :=
  ∀ n, P3218822458157610502.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P13871876583466861093

`A333806((n+1)*A056926(n+1))`
-/

namespace A063962.P13871876583466861093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 ((n + 1 : ℤ) * A056926 (n + 1)).toNat

end

end A063962.P13871876583466861093

namespace A063962

/-- `A333806((n+1)*A056926(n+1))` -/
def P13871876583466861093.Spec : Prop :=
  ∀ n, P13871876583466861093.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P16370775242392727891

`A333806(A175068(n+1))`
-/

namespace A063962.P16370775242392727891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (A175068 (n + 1)).toNat

end

end A063962.P16370775242392727891

namespace A063962

/-- `A333806(A175068(n+1))` -/
def P16370775242392727891.Spec : Prop :=
  ∀ n, P16370775242392727891.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P7238601381655344076

`∑{p}[A072499(n+1), gcd(n, #)]`
-/

namespace A063962.P7238601381655344076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd n p

end

end A063962.P7238601381655344076

namespace A063962

/-- `∑{p}[A072499(n+1), gcd(n, #)]` -/
def P7238601381655344076.Spec : Prop :=
  ∀ n, (P7238601381655344076.a n : ℤ) = A063962 (n + 1)

end A063962

/-! ## A063962.P10279505813899381169

`∑{p}[A072499(n+1), A048671(#)]`
-/

namespace A063962.P10279505813899381169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048671 p

end

end A063962.P10279505813899381169

namespace A063962

/-- `∑{p}[A072499(n+1), A048671(#)]` -/
def P10279505813899381169.Spec : Prop :=
  ∀ n, P10279505813899381169.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P3725011239182679313

`∑{p}[A072499(n+1), A072499(#)]`
-/

namespace A063962.P3725011239182679313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A072499 p

end

end A063962.P3725011239182679313

namespace A063962

/-- `∑{p}[A072499(n+1), A072499(#)]` -/
def P3725011239182679313.Spec : Prop :=
  ∀ n, P3725011239182679313.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P4316329726123550072

`A001222(∏{p}[A072499(n+1), #])`
-/

namespace A063962.P4316329726123550072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A063962.P4316329726123550072

namespace A063962

/-- `A001222(∏{p}[A072499(n+1), #])` -/
def P4316329726123550072.Spec : Prop :=
  ∀ n, P4316329726123550072.a n = A063962 (n + 1)

end A063962

/-! ## A063962.P7116103601577053134

`A001221(A396068(n+1))`
-/

namespace A063962.P7116103601577053134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A396068 (n + 1)).toNat

end

end A063962.P7116103601577053134

namespace A063962

/-- `A001221(A396068(n+1))` -/
def P7116103601577053134.Spec : Prop :=
  ∀ n, P7116103601577053134.a n = A063962 (n + 1)

end A063962

/-!
# A063965: Size of the automorphism group of the group S_n x S_n (where S_n is the symmetric group).

The programs for A063965, there is no canonical definition to state claims against.
-/

/-! ## A063965.P14335376404512249381

`A000010(lcm(3, n*2*a(n-2)*(n+1)²+1))` with `a(0)=1, a(1)=6`
-/

namespace A063965.P14335376404512249381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A000010 (Int.lcm 3 ((n : ℤ) * (2 * a (n - 2)) * ((n + 1) ^ 2 : ℤ) + 1))

end

end A063965.P14335376404512249381

/-!
# A063966: Number of Abelian groups of order <= n.

The programs for A063966, there is no canonical definition to state claims against.
-/

/-! ## A063966.P7544228005861785342

`∑[A000688(n+1)]`
-/

namespace A063966.P7544228005861785342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P7544228005861785342

/-! ## A063966.P4115408507134381616

`∑[∏{e}[n+1, A000041(#)]]`
-/

namespace A063966.P4115408507134381616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000041 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P4115408507134381616

/-! ## A063966.P5218074858659867593

`∑[∏{e}[n+1, A213598(#)]]`
-/

namespace A063966.P5218074858659867593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A213598 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P5218074858659867593

/-! ## A063966.P15409977445822665732

`∑[∏{e}[n+1, A242699(#)]]`
-/

namespace A063966.P15409977445822665732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A242699 (Nat.factorization (f2 n) p + 64)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P15409977445822665732

/-! ## A063966.P7392505830477423486

`∑[∏{e}[n+1, A332746(#)]]`
-/

namespace A063966.P7392505830477423486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A332746 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P7392505830477423486

/-! ## A063966.P16080834355237309945

`∑[A101872(A026741(n+1))]`
-/

namespace A063966.P16080834355237309945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P16080834355237309945

/-! ## A063966.P11233617875756364396

`∑[A050360(A101296(n+1))]`
-/

namespace A063966.P11233617875756364396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050360 (A101296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P11233617875756364396

/-! ## A063966.P13100658114467111341

`A104452(n+1)-A104407(n+1)`
-/

namespace A063966.P13100658114467111341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104452 (n + 1) - A104407 (n + 1)

end

end A063966.P13100658114467111341

/-! ## A063966.P1233992180842784814

`∑[A066060(n+1)-A088806(n+1)]`
-/

namespace A063966.P1233992180842784814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A088806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P1233992180842784814

/-! ## A063966.P5248845681013732316

`∑[A238877(Δ[n²])]`
-/

namespace A063966.P5248845681013732316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P5248845681013732316

/-! ## A063966.P4309776273825222376

`∑[A101872(A003961(n+1))]`
-/

namespace A063966.P4309776273825222376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P4309776273825222376

/-! ## A063966.P8008694332330088841

`∑[A101872(A064988(n+1))]`
-/

namespace A063966.P8008694332330088841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P8008694332330088841

/-! ## A063966.P18413874471821872901

`∑[A104404(A045965(n+1))]`
-/

namespace A063966.P18413874471821872901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (A045965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P18413874471821872901

/-! ## A063966.P10937648002976628232

`∑[A101872(A045966(n+1))]`
-/

namespace A063966.P10937648002976628232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A045966 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063966.P10937648002976628232

/-!
# A063967: Triangle read by rows, T(n,k) = T(n-1,k) + T(n-2,k) + T(n-1,k-1) + T(n-2,k-1) and T(0,0) = 1.

The programs for A063967, there is no canonical definition to state claims against.
-/

/-! ## A063967.P11944658473166990737

`A155112(n+1)+A155112(n)`
-/

namespace A063967.P11944658473166990737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (n + 1) + A155112 n

end

end A063967.P11944658473166990737

/-! ## A063967.P1311775634582412772

`abs(Δ[A033999(n)*A155112(n)])`
-/

namespace A063967.P1311775634582412772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A155112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A063967.P1311775634582412772

/-! ## A063967.P9719082227353575729

`abs(Δ[A097807(n)*A155112(n)])`
-/

namespace A063967.P9719082227353575729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A155112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A063967.P9719082227353575729

/-! ## A063967.P11855042993390231195

`abs(Δ[A105812(n)*A155112(n)])`
-/

namespace A063967.P11855042993390231195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n * A155112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A063967.P11855042993390231195

/-! ## A063967.P553549495032220123

`A329888(Δ[A097807(n)*A155112(n)]²)`
-/

namespace A063967.P553549495032220123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A155112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A063967.P553549495032220123

/-!
# A063971: Values of n for which A013939(n)/n is an integer.

The programs for A063971, there is no canonical definition to state claims against.
-/

/-! ## A063971.P4431608772319043827

`A090929(A348806(n)+A090929(n+1))`
-/

namespace A063971.P4431608772319043827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A348806 n + A090929 (n + 1)).toNat

end

end A063971.P4431608772319043827

/-!
# A063972: a(n) is the smallest m such that usigma(m) = n (or 0 if no such m).

The programs for A063972, there is no canonical definition to state claims against.
-/

/-! ## A063972.P2602764009155764353

`A063973(n+1)-A296441(A301331(n))`
-/

namespace A063972.P2602764009155764353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 1) - A296441 (A301331 n).toNat

end

end A063972.P2602764009155764353

/-! ## A063972.P7141931850327425487

`A063973(n+1)-A296441(A301333(n))`
-/

namespace A063972.P7141931850327425487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 1) - A296441 (A301333 n).toNat

end

end A063972.P7141931850327425487

/-! ## A063972.P4673853077168044682

`A063973(n+1)-A326685(A142589(n))`
-/

namespace A063972.P4673853077168044682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 1) - A326685 (A142589 n).toNat

end

end A063972.P4673853077168044682

/-!
# A063973: a(n) is the largest m such that usigma(m) = n (or 0 if no such m).

The programs for A063973, there is no canonical definition to state claims against.
-/

/-! ## A063973.P4019235411271510041

`A008437(n)^A063698(n)*A028310(n)`
-/

namespace A063973.P4019235411271510041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008437 n : ℚ) ^ (A063698 n : ℤ) * (A028310 n : ℚ)

end

end A063973.P4019235411271510041

/-! ## A063973.P11159423319697979076

`A063972(n+1)^A063698(n)*A028310(n)`
-/

namespace A063973.P11159423319697979076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063972 (n + 1) : ℚ) ^ (A063698 n : ℤ) * (A028310 n : ℚ)

end

end A063973.P11159423319697979076

/-! ## A063973.P12041887641404692117

`(n*A035444(a(A001221(n))))%A141214(n)` with `a(0)=1`
-/

namespace A063973.P12041887641404692117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) * A035444 (a (A001221 n).toNat).toNat) (A141214 n)

end

end A063973.P12041887641404692117

/-! ## A063973.P10505643197898642601

`(A000007(n)+n)*A008437(n)^A063698(n)`
-/

namespace A063973.P10505643197898642601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ) : ℚ) * (A008437 n : ℚ) ^ (A063698 n : ℤ)

end

end A063973.P10505643197898642601

/-! ## A063973.P5173451061160740692

`A008437(n)^A063698(n)*A007318(A000124(n))`
-/

namespace A063973.P5173451061160740692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008437 n : ℚ) ^ (A063698 n : ℤ) * (A007318 (A000124 n).toNat : ℚ)

end

end A063973.P5173451061160740692

/-!
# A063974: Number of terms in inverse set of usigma = sum of unitary divisors = A034448.

The programs for A063974, there is no canonical definition to state claims against.
-/

/-! ## A063974.P1935803591729373606

`∑{d}[n+1, A008683(#)*A141059((n+1)/#)]`
-/

namespace A063974.P1935803591729373606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A141059 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063974.P1935803591729373606

/-! ## A063974.P13992679260867201583

`A264857(n+1)%A128568(A063972(n+1))`
-/

namespace A063974.P13992679260867201583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264857 (n + 1)) (A128568 (A063972 (n + 1)).toNat)

end

end A063974.P13992679260867201583

/-! ## A063974.P16486175563740703692

`and(A000002(A096448(n+1)), A322361(n+1))`
-/

namespace A063974.P16486175563740703692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000002 (A096448 (n + 1)).toNat) (A322361 (n + 1))

end

end A063974.P16486175563740703692

/-! ## A063974.P5567741700855111549

`A341969(A177186(n+2))`
-/

namespace A063974.P5567741700855111549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341969 (A177186 (n + 2)).toNat

end

end A063974.P5567741700855111549

/-! ## A063974.P16181141558505151351

`A001222(gcd(A019320(n), A063670(n)))`
-/

namespace A063974.P16181141558505151351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A019320 n) (A063670 n))

end

end A063974.P16181141558505151351

/-!
# A063977: Numbers which are sums of unitary divisors, the usigma values: their inverse usigma set is not empty; usigma() = A034448().

The programs for A063977, the canonical program `A063977.P8570722050053466654` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063977 has offset 1).

The definition of A063977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063977.P6493900553646360443

`lt[0, A063972(n+1)]+1`
-/

namespace A063977.P6493900553646360443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A063977.P6493900553646360443

namespace A063977

/-- `lt[0, A063972(n+1)]+1` -/
def P6493900553646360443.Spec : Prop :=
  ∀ n, (P6493900553646360443.a n : ℤ) = A063977 (n + 1)

end A063977

/-! ## A063977.P2456979596663834565

`lt[0, A063973(n+1)]+1`
-/

namespace A063977.P2456979596663834565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A063977.P2456979596663834565

namespace A063977

/-- `lt[0, A063973(n+1)]+1` -/
def P2456979596663834565.Spec : Prop :=
  ∀ n, (P2456979596663834565.a n : ℤ) = A063977 (n + 1)

end A063977

/-! ## A063977.P210469688618363881

`lt[0, A063974(n+1)]+1`
-/

namespace A063977.P210469688618363881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A063977.P210469688618363881

namespace A063977

/-- `lt[0, A063974(n+1)]+1` -/
def P210469688618363881.Spec : Prop :=
  ∀ n, (P210469688618363881.a n : ℤ) = A063977 (n + 1)

end A063977

/-! ## A063977.P16524493464873208978

`record[A000027(n+1)*A057427(A063974(n+1))]`
-/

namespace A063977.P16524493464873208978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A057427 (A063974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063977.P16524493464873208978

namespace A063977

/-- `record[A000027(n+1)*A057427(A063974(n+1))]` -/
def P16524493464873208978.Spec : Prop :=
  ∀ n, P16524493464873208978.a n = A063977 (n + 1)

end A063977

/-! ## A063977.P7733991815671604814

`eq[1, char[A034460(n+1)+n+1]]`
-/

namespace A063977.P7733991815671604814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (n + 1 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063977.P7733991815671604814

namespace A063977

/-- `eq[1, char[A034460(n+1)+n+1]]` -/
def P7733991815671604814.Spec : Prop :=
  ∀ n, (P7733991815671604814.a n : ℤ) = A063977 (n + 1)

end A063977

/-! ## A063977.P8570722050053466654

`lt[0, char[A034448(n+1)]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A063977

/-- `lt[0, char[A034448(n+1)]]` -/
def P8570722050053466654.Spec : Prop :=
  ∀ n, (P8570722050053466654.a n : ℤ) = A063977 (n + 1)

theorem P8570722050053466654.correct : P8570722050053466654.Spec := by
  intro n
  simp only [A063977, Nat.add_sub_cancel]

end A063977

/-! ## A063977.P15471739597943607842

`record[A008619(2*n)*A057427(A063974(n+1))]`
-/

namespace A063977.P15471739597943607842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A057427 (A063974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063977.P15471739597943607842

namespace A063977

/-- `record[A008619(2*n)*A057427(A063974(n+1))]` -/
def P15471739597943607842.Spec : Prop :=
  ∀ n, P15471739597943607842.a n = A063977 (n + 1)

end A063977

/-!
# A063978: Sum_{i for which n - i*(i-1)/2 >= 0} binomial (n - i*(i-1)/2, i).

The programs for A063978, there is no canonical definition to state claims against.
-/

/-! ## A063978.P3017678540469692953

`∑[A219282(n)]`
-/

namespace A063978.P3017678540469692953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063978.P3017678540469692953

/-! ## A063978.P10761594022836880042

`A219282(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A063978.P10761594022836880042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A219282 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A063978.P10761594022836880042

/-! ## A063978.P12116056241231385643

`a(n-1)+A219282(n)+A000007(n)` with `a(0)=1, a(1)=2`
-/

namespace A063978.P12116056241231385643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A219282 n + A000007 n)

end

end A063978.P12116056241231385643

/-! ## A063978.P12193411733509123312

`a(n-1)+A219282(n)%A219282(n+2)` with `a(0)=1`
-/

namespace A063978.P12193411733509123312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A219282 n) (A219282 (n + 2))

end

end A063978.P12193411733509123312

/-! ## A063978.P9450669483318283273

`∑[∑[A238874(n)]-A238874(n)%A238859(n)]`
-/

namespace A063978.P9450669483318283273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238874 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - Int.tmod (A238874 n) (A238859 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063978.P9450669483318283273

/-! ## A063978.P10426162403810854672

`∑[A352521(∑[n])]`
-/

namespace A063978.P10426162403810854672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352521 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063978.P10426162403810854672

/-!
# A063979: Number of decimal digits in (n!)!; A000197.

The programs for A063979, there is no canonical definition to state claims against.
-/

/-! ## A063979.P14651244917146706010

`A034886(n!)`
-/

namespace A063979.P14651244917146706010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (Nat.factorial n)

end

end A063979.P14651244917146706010

/-! ## A063979.P15654475100856678326

`A034886(∏[round(1/acot(n))])`
-/

namespace A063979.P15654475100856678326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063979.P15654475100856678326

/-! ## A063979.P3505399059848174692

`A034886(∏[ceil(abs(γ-n))])`
-/

namespace A063979.P3505399059848174692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063979.P3505399059848174692

/-! ## A063979.P9162831067654048303

`and(-1, A034886(A000142(n)))`
-/

namespace A063979.P9162831067654048303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A034886 (A000142 n).toNat)

end

end A063979.P9162831067654048303

/-!
# A063980: Pillai primes: primes p such that there exists an integer m such that m! + 1 == 0 (mod p) and p != 1 (mod m).

The programs for A063980, there is no canonical definition to state claims against.
-/

/-! ## A063980.P10303254728591103502

`record[A006530(A181414(n+1))]`
-/

namespace A063980.P10303254728591103502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A181414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063980.P10303254728591103502

/-!
# A063982: Number of divisors of 2^n - 1 that are relatively prime to 2^m - 1 for all 0 < m < n.

The programs for A063982, there is no canonical definition to state claims against.
-/

/-! ## A063982.P913438879600180985

`A000005(A163385(2*(n+1)))^A086251(n+1)`
-/

namespace A063982.P913438879600180985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A163385 (2 * (n + 1))).toNat : ℚ) ^ (A086251 (n + 1) : ℤ)

end

end A063982.P913438879600180985

/-! ## A063982.P5868690340194546711

`A000079(A086251(n+1)%A214711(n+1))`
-/

namespace A063982.P5868690340194546711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (A086251 (n + 1)) (A214711 (n + 1))).toNat

end

end A063982.P5868690340194546711

/-! ## A063982.P4311063007644759757

`A101296(A282243(n+1))^A086251(n+1)`
-/

namespace A063982.P4311063007644759757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101296 (A282243 (n + 1)).toNat : ℚ) ^ (A086251 (n + 1) : ℤ)

end

end A063982.P4311063007644759757

/-! ## A063982.P8695854307134556520

`A000196(4^A086251(n+1))`
-/

namespace A063982.P8695854307134556520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A086251 (n + 1) : ℤ))).toNat

end

end A063982.P8695854307134556520

/-! ## A063982.P7497799820883530856

`A137735(4^A086251(n+1))`
-/

namespace A063982.P7497799820883530856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A086251 (n + 1) : ℤ))).toNat

end

end A063982.P7497799820883530856

/-! ## A063982.P12280944346994216030

`A144328(2*4^A086251(n+1)+1)`
-/

namespace A063982.P12280944346994216030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (SequenceMachineLib.roundAway (2 * (4 : ℚ) ^ (A086251 (n + 1) : ℤ) + 1)).toNat

end

end A063982.P12280944346994216030

/-! ## A063982.P6240066198706360988

`A000188(A329562(A086251(n+1))²)`
-/

namespace A063982.P6240066198706360988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A329562 (A086251 (n + 1)).toNat ^ 2).toNat

end

end A063982.P6240066198706360988

/-! ## A063982.P18011192759903662495

`A064547(A023248(n+1))*A329562(A086251(n+1))`
-/

namespace A063982.P18011192759903662495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A023248 (n + 1)).toNat * A329562 (A086251 (n + 1)).toNat

end

end A063982.P18011192759903662495

/-! ## A063982.P16254311194465070918

`A048766(8^A086251(n+1))`
-/

namespace A063982.P16254311194465070918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A086251 (n + 1) : ℤ))).toNat

end

end A063982.P16254311194465070918

/-! ## A063982.P1401203206162046966

`A226898((A086251(n+1)+A086251(n+1))!)`
-/

namespace A063982.P1401203206162046966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226898 (Nat.factorial (A086251 (n + 1) + A086251 (n + 1)).toNat)

end

end A063982.P1401203206162046966

/-!
# A063983: Least k such that k*2^n +/ - 1 are twin primes.

The programs for A063983, there is no canonical definition to state claims against.
-/

/-! ## A063983.P2803543156567946798

`ceil(acot(n))*A124522(ceil(2^(n-1)))`
-/

namespace A063983.P2803543156567946798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A124522 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A063983.P2803543156567946798

/-! ## A063983.P15147004567166735468

`A124522(A011782(n))+A000038(n)`
-/

namespace A063983.P15147004567166735468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124522 (A011782 n).toNat + A000038 n

end

end A063983.P15147004567166735468

/-! ## A063983.P14583055504034055663

`A054977(n)*A124522(A011782(n))`
-/

namespace A063983.P14583055504034055663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A124522 (A011782 n).toNat

end

end A063983.P14583055504034055663

/-! ## A063983.P174342825523407469

`A346483(n+1)+A124522(A011782(n))`
-/

namespace A063983.P174342825523407469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346483 (n + 1) + A124522 (A011782 n).toNat

end

end A063983.P174342825523407469

/-! ## A063983.P5587310114999274650

`A353419(n+1)+A124522(A011782(n))`
-/

namespace A063983.P5587310114999274650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (n + 1) + A124522 (A011782 n).toNat

end

end A063983.P5587310114999274650

/-!
# A063984: Minimal number of integer points in the Euclidean plane which are contained in the interior of any convex n-gon whose vertices have integer coordinates.

The programs for A063984, there is no canonical definition to state claims against.
-/

/-! ## A063984.P8924451734899266794

`A070911(n+3)/2-(n+3)/2+1`
-/

namespace A063984.P8924451734899266794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070911 (n + 3) : ℚ) / 2 - (n + 3 : ℚ) / 2 + 1

end

end A063984.P8924451734899266794

/-! ## A063984.P11679512901341308819

`floor((A070911(n+3)-n)/2)`
-/

namespace A063984.P11679512901341308819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070911 (n + 3) - (n : ℤ) : ℚ) / 2⌋

end

end A063984.P11679512901341308819

/-! ## A063984.P18413126149649895020

`A004524(A070911(n+3)-n)`
-/

namespace A063984.P18413126149649895020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A070911 (n + 3) - (n : ℤ)).toNat

end

end A063984.P18413126149649895020

/-! ## A063984.P6131348035983761576

`A004526(A070911(n+3)-n)`
-/

namespace A063984.P6131348035983761576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070911 (n + 3) - (n : ℤ)).toNat

end

end A063984.P6131348035983761576

/-! ## A063984.P14309033156211984448

`A028242(A070911(n+3)-n)`
-/

namespace A063984.P14309033156211984448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A070911 (n + 3) - (n : ℤ)).toNat

end

end A063984.P14309033156211984448

/-! ## A063984.P1991771409698762411

`A071281(A070911(n+3)-n)`
-/

namespace A063984.P1991771409698762411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 (A070911 (n + 3) - (n : ℤ)).toNat

end

end A063984.P1991771409698762411

/-! ## A063984.P3584819240088858828

`A123108(A070911(n+3)-n)`
-/

namespace A063984.P3584819240088858828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A070911 (n + 3) - (n : ℤ)).toNat

end

end A063984.P3584819240088858828

/-! ## A063984.P14185637753575122248

`A064680(A070911(n+3)-(n+1))`
-/

namespace A063984.P14185637753575122248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A070911 (n + 3) - (n + 1 : ℤ)).toNat

end

end A063984.P14185637753575122248

/-!
# A063985: Partial sums of cototient sequence A051953.

The programs for A063985, the canonical program `A063985.P3942861327483730228` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063985 has offset 1).

The definition of A063985 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063985.P2744469403685034574

`(n+1)²-A091369(n+1)`
-/

namespace A063985.P2744469403685034574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A091369 (n + 1)

end

end A063985.P2744469403685034574

namespace A063985

/-- `(n+1)²-A091369(n+1)` -/
def P2744469403685034574.Spec : Prop :=
  ∀ n, P2744469403685034574.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P3942861327483730228

`A000217(n+1)-A002088(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A063985

/-- `A000217(n+1)-A002088(n+1)` -/
def P3942861327483730228.Spec : Prop :=
  ∀ n, P3942861327483730228.a n = A063985 (n + 1)

theorem P3942861327483730228.correct : P3942861327483730228.Spec := by
  intro n
  simp only [A063985, Nat.add_sub_cancel]

end A063985

/-! ## A063985.P15022294958057485080

`∑[1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n]`
-/

namespace A063985.P15022294958057485080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063985.P15022294958057485080

namespace A063985

/-- `∑[1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n]` -/
def P15022294958057485080.Spec : Prop :=
  ∀ n, P15022294958057485080.a n = (A063985 (n + 1) : ℚ)

end A063985

/-! ## A063985.P4027673443145713301

`∑[A051953(n+1)]`
-/

namespace A063985.P4027673443145713301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063985.P4027673443145713301

namespace A063985

/-- `∑[A051953(n+1)]` -/
def P4027673443145713301.Spec : Prop :=
  ∀ n, P4027673443145713301.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P13275982178458767770

`A216453(n+1)/6`
-/

namespace A063985.P13275982178458767770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216453 (n + 1) : ℚ) / 6

end

end A063985.P13275982178458767770

namespace A063985

/-- `A216453(n+1)/6` -/
def P13275982178458767770.Spec : Prop :=
  ∀ n, P13275982178458767770.a n = (A063985 (n + 1) : ℚ)

end A063985

/-! ## A063985.P13188155005834523132

`A185670(n+1)+n`
-/

namespace A063985.P13188155005834523132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185670 (n + 1) + (n : ℤ)

end

end A063985.P13188155005834523132

namespace A063985

/-- `A185670(n+1)+n` -/
def P13188155005834523132.Spec : Prop :=
  ∀ n, P13188155005834523132.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P1143206612354258774

`∑[A219428(n+1)+1]`
-/

namespace A063985.P1143206612354258774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063985.P1143206612354258774

namespace A063985

/-- `∑[A219428(n+1)+1]` -/
def P1143206612354258774.Spec : Prop :=
  ∀ n, P1143206612354258774.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P14214563899391599211

`∑[A016035(n+1)]+n`
-/

namespace A063985.P14214563899391599211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063985.P14214563899391599211

namespace A063985

/-- `∑[A016035(n+1)]+n` -/
def P14214563899391599211.Spec : Prop :=
  ∀ n, P14214563899391599211.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P13734282098813788846

`∑[n]-A015613(n+1)`
-/

namespace A063985.P13734282098813788846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A015613 (n + 1)

end

end A063985.P13734282098813788846

namespace A063985

/-- `∑[n]-A015613(n+1)` -/
def P13734282098813788846.Spec : Prop :=
  ∀ n, P13734282098813788846.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P7683870535087634206

`∑[A062830(n+1)]-n`
-/

namespace A063985.P7683870535087634206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A063985.P7683870535087634206

namespace A063985

/-- `∑[A062830(n+1)]-n` -/
def P7683870535087634206.Spec : Prop :=
  ∀ n, P7683870535087634206.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P9854126830768612494

`∑[n-A109606(n+1)]`
-/

namespace A063985.P9854126830768612494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063985.P9854126830768612494

namespace A063985

/-- `∑[n-A109606(n+1)]` -/
def P9854126830768612494.Spec : Prop :=
  ∀ n, P9854126830768612494.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P13540569453269572547

`(A100613(n+1)+n)/2`
-/

namespace A063985.P13540569453269572547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100613 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A063985.P13540569453269572547

namespace A063985

/-- `(A100613(n+1)+n)/2` -/
def P13540569453269572547.Spec : Prop :=
  ∀ n, P13540569453269572547.a n = (A063985 (n + 1) : ℚ)

end A063985

/-! ## A063985.P12649126379236850998

`∑[1-A000010(n+1)+n]`
-/

namespace A063985.P12649126379236850998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000010 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063985.P12649126379236850998

namespace A063985

/-- `∑[1-A000010(n+1)+n]` -/
def P12649126379236850998.Spec : Prop :=
  ∀ n, P12649126379236850998.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P16435880946334747476

`∑[A053158(n+1)-(n+1)]`
-/

namespace A063985.P16435880946334747476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063985.P16435880946334747476

namespace A063985

/-- `∑[A053158(n+1)-(n+1)]` -/
def P16435880946334747476.Spec : Prop :=
  ∀ n, P16435880946334747476.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P2645897122531294426

`∑[n+1]-A092249(n+1)`
-/

namespace A063985.P2645897122531294426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A092249 (n + 1)

end

end A063985.P2645897122531294426

namespace A063985

/-- `∑[n+1]-A092249(n+1)` -/
def P2645897122531294426.Spec : Prop :=
  ∀ n, P2645897122531294426.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P15993301543957389633

`∑[2-A039649(n+1)+n]`
-/

namespace A063985.P15993301543957389633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039649 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063985.P15993301543957389633

namespace A063985

/-- `∑[2-A039649(n+1)+n]` -/
def P15993301543957389633.Spec : Prop :=
  ∀ n, P15993301543957389633.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P4190088449574882757

`∑[A053650(n+1)/(n+1)]`
-/

namespace A063985.P4190088449574882757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053650 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063985.P4190088449574882757

namespace A063985

/-- `∑[A053650(n+1)/(n+1)]` -/
def P4190088449574882757.Spec : Prop :=
  ∀ n, P4190088449574882757.a n = (A063985 (n + 1) : ℚ)

end A063985

/-! ## A063985.P14354444439268250018

`∑[1-(A000010(2*n-(n-1))-n)]`
-/

namespace A063985.P14354444439268250018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063985.P14354444439268250018

namespace A063985

/-- `∑[1-(A000010(2*n-(n-1))-n)]` -/
def P14354444439268250018.Spec : Prop :=
  ∀ n, P14354444439268250018.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P12763850594403534611

`a(n-1)-A000010(lcm(2, n+1))+n+1` with `a(0)=0`
-/

namespace A063985.P12763850594403534611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A000010 (Nat.lcm 2 (n + 1)) + (n + 1 : ℤ)

end

end A063985.P12763850594403534611

namespace A063985

/-- `a(n-1)-A000010(lcm(2, n+1))+n+1` -/
def P12763850594403534611.Spec : Prop :=
  ∀ n, P12763850594403534611.a n = A063985 (n + 1)

end A063985

/-! ## A063985.P302252746744221772

`a(n-1)+n+1-A000010(C(n+1, n))` with `a(0)=0`
-/

namespace A063985.P302252746744221772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n + 1 : ℤ) - A000010 (Nat.choose (n + 1) n))

end

end A063985.P302252746744221772

namespace A063985

/-- `a(n-1)+n+1-A000010(C(n+1, n))` -/
def P302252746744221772.Spec : Prop :=
  ∀ n, P302252746744221772.a n = A063985 (n + 1)

end A063985

/-!
# A063986: Numbers k that divide Sum_{j=1..k} A051953(j) where A051953(j) = j - Phi(j). Arithmetic mean of first k cototient values is an integer.

The programs for A063986, there is no canonical definition to state claims against.
-/

/-! ## A063986.P2813248183676633964

`lt[A063985(n+1)%(n+1), 1]+1`
-/

namespace A063986.P2813248183676633964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063985 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A063986.P2813248183676633964

/-! ## A063986.P2948062153377492824

`A060819(A286087(n))-A000035(n)`
-/

namespace A063986.P2948062153377492824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A286087 n).toNat - A000035 n

end

end A063986.P2948062153377492824

/-!
# A063987: Irregular triangle in which n-th row gives quadratic residues modulo the n-th prime.

The programs for A063987, there is no canonical definition to state claims against.
-/

/-! ## A063987.P7766767976874183108

`A037125(lt[0, A226520(n+1)])`
-/

namespace A063987.P7766767976874183108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A063987.P7766767976874183108

/-! ## A063987.P12250379127902914864

`A037125(eq[1, A226520(n+1)])`
-/

namespace A063987.P12250379127902914864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063987.P12250379127902914864

/-! ## A063987.P16735597943257434719

`A037125(record[n^A226520(n+1)])`
-/

namespace A063987.P16735597943257434719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A226520 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A063987.P16735597943257434719

/-!
# A063988: Triangle in which n-th row gives quadratic non-residues modulo the n-th prime.

The programs for A063988, there is no canonical definition to state claims against.
-/

/-! ## A063988.P15709971016202751987

`A037125(lt[A226520(n+1), 0])`
-/

namespace A063988.P15709971016202751987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A063988.P15709971016202751987

/-! ## A063988.P6543574370170310212

`A037125(eq[1, -A226520(n+1)])`
-/

namespace A063988.P6543574370170310212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063988.P6543574370170310212

/-! ## A063988.P17290003609603820924

`A037125(eq[1, A226520(n+1)+2])`
-/

namespace A063988.P17290003609603820924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063988.P17290003609603820924

/-!
# A063989: Numbers with a prime number of prime divisors (counted with multiplicity).

The programs for A063989, the canonical program `A063989.P15199823276984632827` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063989 has offset 1).

The definition of A063989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6396 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063989.P13332116289860347862

`eq[3, a(A001222(n))+1]` with `a(0)=0`
-/

namespace A063989.P13332116289860347862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (A001222 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063989.P13332116289860347862

namespace A063989

/-- `eq[3, a(A001222(n))+1]` -/
def P13332116289860347862.Spec : Prop :=
  ∀ n, (P13332116289860347862.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P953524933857753407

`eq[1, A032865(a(A001222(n)))]` with `a(0)=4`
-/

namespace A063989.P953524933857753407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A032865 (f2 (A001222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063989.P953524933857753407

namespace A063989

/-- `eq[1, A032865(a(A001222(n)))]` -/
def P953524933857753407.Spec : Prop :=
  ∀ n, (P953524933857753407.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P6668548489625211353

`eq[6, A060735(a(A001222(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A063989.P6668548489625211353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A060735 (f2 (A001222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063989.P6668548489625211353

namespace A063989

/-- `eq[6, A060735(a(A001222(n)))]` -/
def P6668548489625211353.Spec : Prop :=
  ∀ n, (P6668548489625211353.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P16057989432988803216

`eq[6, A107825(a(A001222(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A063989.P16057989432988803216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A107825 (f2 (A001222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063989.P16057989432988803216

namespace A063989

/-- `eq[6, A107825(a(A001222(n)))]` -/
def P16057989432988803216.Spec : Prop :=
  ∀ n, (P16057989432988803216.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P16235668282511938909

`eq[1, A003415(A001222(n+1))]+1`
-/

namespace A063989.P16235668282511938909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063989.P16235668282511938909

namespace A063989

/-- `eq[1, A003415(A001222(n+1))]+1` -/
def P16235668282511938909.Spec : Prop :=
  ∀ n, (P16235668282511938909.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P1717420219736423599

`eq[1, A001222(A001222(n+2))]+2`
-/

namespace A063989.P1717420219736423599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A063989.P1717420219736423599

namespace A063989

/-- `eq[1, A001222(A001222(n+2))]+2` -/
def P1717420219736423599.Spec : Prop :=
  ∀ n, (P1717420219736423599.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P1007842217861330395

`eq[3, A000005(2^a(A001222(n)))]` with `a(0)=0`
-/

namespace A063989.P1007842217861330395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f2 (A001222 n).toNat : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063989.P1007842217861330395

namespace A063989

/-- `eq[3, A000005(2^a(A001222(n)))]` -/
def P1007842217861330395.Spec : Prop :=
  ∀ n, (P1007842217861330395.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P15199823276984632827

`eq[1, ∑{e}[∑{e}[n, #], #]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063989

/-- `eq[1, ∑{e}[∑{e}[n, #], #]]` -/
def P15199823276984632827.Spec : Prop :=
  ∀ n, (P15199823276984632827.a n : ℤ) = A063989 (n + 1)

theorem P15199823276984632827.correct : P15199823276984632827.Spec := by
  intro n
  simp only [A063989, Nat.add_sub_cancel]

end A063989

/-! ## A063989.P17854152535233139854

`eq[3, A073855(n)]`
-/

namespace A063989.P17854152535233139854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063989.P17854152535233139854

namespace A063989

/-- `eq[3, A073855(n)]` -/
def P17854152535233139854.Spec : Prop :=
  ∀ n, (P17854152535233139854.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P399341142064124701

`eq[1, A003415(∑{e}[n, #])]`
-/

namespace A063989.P399341142064124701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063989.P399341142064124701

namespace A063989

/-- `eq[1, A003415(∑{e}[n, #])]` -/
def P399341142064124701.Spec : Prop :=
  ∀ n, (P399341142064124701.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P613600779833410293

`eq[2, A327859(∑{e}[n, #])]`
-/

namespace A063989.P613600779833410293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063989.P613600779833410293

namespace A063989

/-- `eq[2, A327859(∑{e}[n, #])]` -/
def P613600779833410293.Spec : Prop :=
  ∀ n, (P613600779833410293.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P11717602291883144497

`eq[2, A036430(n+1)]+1`
-/

namespace A063989.P11717602291883144497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063989.P11717602291883144497

namespace A063989

/-- `eq[2, A036430(n+1)]+1` -/
def P11717602291883144497.Spec : Prop :=
  ∀ n, (P11717602291883144497.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P16839852256451113392

`eq[2, A323305(n+1)]+1`
-/

namespace A063989.P16839852256451113392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063989.P16839852256451113392

namespace A063989

/-- `eq[2, A323305(n+1)]+1` -/
def P16839852256451113392.Spec : Prop :=
  ∀ n, (P16839852256451113392.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P7538796604898289761

`eq[1, A167746(n+2)]+2`
-/

namespace A063989.P7538796604898289761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167746 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A063989.P7538796604898289761

namespace A063989

/-- `eq[1, A167746(n+2)]+2` -/
def P7538796604898289761.Spec : Prop :=
  ∀ n, (P7538796604898289761.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P7077100979572563814

`lt[A050314(∑{e}[∑{e}[n+1, #], #]), 1]+1`
-/

namespace A063989.P7077100979572563814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A063989.P7077100979572563814

namespace A063989

/-- `lt[A050314(∑{e}[∑{e}[n+1, #], #]), 1]+1` -/
def P7077100979572563814.Spec : Prop :=
  ∀ n, (P7077100979572563814.a n : ℤ) = A063989 (n + 1)

end A063989

/-! ## A063989.P3126654685076065624

`lt[A054541((4-A000032(∑{e}[n, #]))²+1), 3]`
-/

namespace A063989.P3126654685076065624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 ((4 - A000032 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) ^ 2 + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A063989.P3126654685076065624

namespace A063989

/-- `lt[A054541((4-A000032(∑{e}[n, #]))²+1), 3]` -/
def P3126654685076065624.Spec : Prop :=
  ∀ n, (P3126654685076065624.a n : ℤ) = A063989 (n + 1)

end A063989

/-!
# A063990: Amicable numbers.

The programs for A063990, there is no canonical definition to state claims against.
-/

/-! ## A063990.P9803828411092294484

`A279812(n+1)/2`
-/

namespace A063990.P9803828411092294484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279812 (n + 1) : ℚ) / 2

end

end A063990.P9803828411092294484

/-! ## A063990.P2440627364523221249

`ceil(A279812(ceil(Δ[n²]/2))/2)`
-/

namespace A063990.P2440627364523221249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279812 ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2⌉.toNat : ℚ) / 2⌉

end

end A063990.P2440627364523221249

/-! ## A063990.P3486601803514915895

`sqrt(1/4)*A279812(A005408(n)-n)`
-/

namespace A063990.P3486601803514915895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((1 : ℚ) / 4 : ℝ) * (A279812 (A005408 n - (n : ℤ)).toNat : ℝ)

end

end A063990.P3486601803514915895

/-! ## A063990.P4570677799707459357

`∩[A206708(n+1), A255215(n+1)]`
-/

namespace A063990.P4570677799707459357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063990.P4570677799707459357

/-! ## A063990.P16149099202600169325

`A259180(lt[A270339(n+1), A341529(n+1)])`
-/

namespace A063990.P16149099202600169325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063990.P16149099202600169325

/-!
# A063991: Unitary amicable numbers.

The programs for A063991, there is no canonical definition to state claims against.
-/

/-! ## A063991.P7055948385950081

`∪[A002952(n+1), A034460(A002952(n+1))]`
-/

namespace A063991.P7055948385950081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A002952 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063991.P7055948385950081

/-!
# A063992: Numbers that are not factorials.

The programs for A063992, the canonical program `A063992.P17244322416060534239` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063992 has offset 1).

The definition of A063992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063992.P17244322416060534239

`comp[n!-char[1]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063992

/-- `comp[n!-char[1]]` -/
def P17244322416060534239.Spec : Prop :=
  ∀ n, (P17244322416060534239.a n : ℤ) = A063992 (n + 1)

theorem P17244322416060534239.correct : P17244322416060534239.Spec := by
  intro n
  simp only [A063992, Nat.add_sub_cancel]

end A063992

/-! ## A063992.P9115380781481768702

`comp[xor(n!, char[1])]`
-/

namespace A063992.P9115380781481768702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.factorial n) (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A063992.P9115380781481768702

namespace A063992

/-- `comp[xor(n!, char[1])]` -/
def P9115380781481768702.Spec : Prop :=
  ∀ n, (P9115380781481768702.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P13793096706451716669

`comp[lcm(n!, dr(n))]`
-/

namespace A063992.P13793096706451716669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A063992.P13793096706451716669

namespace A063992

/-- `comp[lcm(n!, dr(n))]` -/
def P13793096706451716669.Spec : Prop :=
  ∀ n, (P13793096706451716669.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P1057040088767419296

`comp[record[∑{e}[n, #!]]]`
-/

namespace A063992.P1057040088767419296
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A063992.P1057040088767419296

namespace A063992

/-- `comp[record[∑{e}[n, #!]]]` -/
def P1057040088767419296.Spec : Prop :=
  ∀ n, (P1057040088767419296.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P11659174744392681880

`comp[n!-1]+1`
-/

namespace A063992.P11659174744392681880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A063992.P11659174744392681880

namespace A063992

/-- `comp[n!-1]+1` -/
def P11659174744392681880.Spec : Prop :=
  ∀ n, (P11659174744392681880.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P6142183596370690766

`comp[n*abs(1-n)!]`
-/

namespace A063992.P6142183596370690766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial |1 - (n : ℤ)|.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A063992.P6142183596370690766

namespace A063992

/-- `comp[n*abs(1-n)!]` -/
def P6142183596370690766.Spec : Prop :=
  ∀ n, (P6142183596370690766.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P11571034349032174312

`comp[n!%(n+1)!]`
-/

namespace A063992.P11571034349032174312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % Nat.factorial (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A063992.P11571034349032174312

namespace A063992

/-- `comp[n!%(n+1)!]` -/
def P11571034349032174312.Spec : Prop :=
  ∀ n, (P11571034349032174312.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P8219877693234280106

`comp[n*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A063992.P8219877693234280106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  n * f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A063992.P8219877693234280106

namespace A063992

/-- `comp[n*a(n-1)]` -/
def P8219877693234280106.Spec : Prop :=
  ∀ n, (P8219877693234280106.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P18046724996817382517

`comp[lcm(n-1, abs(1-n)!)]`
-/

namespace A063992.P18046724996817382517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A063992.P18046724996817382517

namespace A063992

/-- `comp[lcm(n-1, abs(1-n)!)]` -/
def P18046724996817382517.Spec : Prop :=
  ∀ n, (P18046724996817382517.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P1764437298632583359

`comp[A104150(n)]`
-/

namespace A063992.P1764437298632583359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063992.P1764437298632583359

namespace A063992

/-- `comp[A104150(n)]` -/
def P1764437298632583359.Spec : Prop :=
  ∀ n, (P1764437298632583359.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P4440886261701059313

`comp[A136572(n)]`
-/

namespace A063992.P4440886261701059313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063992.P4440886261701059313

namespace A063992

/-- `comp[A136572(n)]` -/
def P4440886261701059313.Spec : Prop :=
  ∀ n, (P4440886261701059313.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P13082485798360052233

`comp[A136579(n)]`
-/

namespace A063992.P13082485798360052233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136579 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063992.P13082485798360052233

namespace A063992

/-- `comp[A136579(n)]` -/
def P13082485798360052233.Spec : Prop :=
  ∀ n, (P13082485798360052233.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P13107450892841317709

`comp[A136581(n)]`
-/

namespace A063992.P13107450892841317709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063992.P13107450892841317709

namespace A063992

/-- `comp[A136581(n)]` -/
def P13107450892841317709.Spec : Prop :=
  ∀ n, (P13107450892841317709.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P13574594473508617628

`comp[A155795(n)]`
-/

namespace A063992.P13574594473508617628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155795 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063992.P13574594473508617628

namespace A063992

/-- `comp[A155795(n)]` -/
def P13574594473508617628.Spec : Prop :=
  ∀ n, (P13574594473508617628.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P4989198292545144182

`comp[A212310(n)]`
-/

namespace A063992.P4989198292545144182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212310 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063992.P4989198292545144182

namespace A063992

/-- `comp[A212310(n)]` -/
def P4989198292545144182.Spec : Prop :=
  ∀ n, (P4989198292545144182.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P7462539502686481425

`comp[A338848(n)]`
-/

namespace A063992.P7462539502686481425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063992.P7462539502686481425

namespace A063992

/-- `comp[A338848(n)]` -/
def P7462539502686481425.Spec : Prop :=
  ∀ n, (P7462539502686481425.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P7140426878448617666

`comp[A361522(n)]`
-/

namespace A063992.P7140426878448617666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063992.P7140426878448617666

namespace A063992

/-- `comp[A361522(n)]` -/
def P7140426878448617666.Spec : Prop :=
  ∀ n, (P7140426878448617666.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P9444255768573651136

`lt[1, A351950(n)]`
-/

namespace A063992.P9444255768573651136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A063992.P9444255768573651136

namespace A063992

/-- `lt[1, A351950(n)]` -/
def P9444255768573651136.Spec : Prop :=
  ∀ n, (P9444255768573651136.a n : ℤ) = A063992 (n + 1)

end A063992

/-! ## A063992.P12450808013332071394

`lt[1, A351951(n)]`
-/

namespace A063992.P12450808013332071394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A063992.P12450808013332071394

namespace A063992

/-- `lt[1, A351951(n)]` -/
def P12450808013332071394.Spec : Prop :=
  ∀ n, (P12450808013332071394.a n : ℤ) = A063992 (n + 1)

end A063992

/-!
# A063993: Number of ways of writing n as an unordered sum of exactly 3 nonzero triangular numbers.

The programs for A063993, there is no canonical definition to state claims against.
-/

/-! ## A063993.P4746839692168982452

`A002636(n)-A052343(n)`
-/

namespace A063993.P4746839692168982452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A052343 n

end

end A063993.P4746839692168982452

/-! ## A063993.P7044043210796879319

`A002636(n)-A110654(A008441(n))`
-/

namespace A063993.P7044043210796879319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A110654 (A008441 n).toNat

end

end A063993.P7044043210796879319

/-! ## A063993.P12715469366208719695

`A002636(n)-(A052344(n)+A010054(n))`
-/

namespace A063993.P12715469366208719695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - (A052344 n + A010054 n)

end

end A063993.P12715469366208719695

/-! ## A063993.P6240986427301596066

`A033761(n)+A224326(n)-A052343(n)`
-/

namespace A063993.P6240986427301596066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 n + (A224326 n - A052343 n)

end

end A063993.P6240986427301596066

/-! ## A063993.P18141308879657529652

`A224326(n)+A033761(n)-A004526(A008441(n)+1)`
-/

namespace A063993.P18141308879657529652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n + A033761 n - A004526 (A008441 n + 1).toNat

end

end A063993.P18141308879657529652

/-! ## A063993.P2514369047358664110

`A224326(n)+A033761(n)-(A110654(A008441(n)+2)-1)`
-/

namespace A063993.P2514369047358664110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n + A033761 n - (A110654 (A008441 n + 2).toNat - 1)

end

end A063993.P2514369047358664110

/-! ## A063993.P1001453890897288371

`A224326(n)+A033761(n)-(A035214(n)+A052344(n)-1)`
-/

namespace A063993.P1001453890897288371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n + A033761 n - (A035214 n + (A052344 n - 1))

end

end A063993.P1001453890897288371

/-! ## A063993.P5925542911446149570

`A224326(n)+A033761(n)-(A008441(n)+A005369(n))/2`
-/

namespace A063993.P5925542911446149570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224326 n + A033761 n : ℚ) - (A008441 n + A005369 n : ℚ) / 2

end

end A063993.P5925542911446149570

/-! ## A063993.P1522108649156968038

`A224326(n)+A033761(n)-round(A125079(2*n)/2)`
-/

namespace A063993.P1522108649156968038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n + A033761 n - SequenceMachineLib.roundAway ((A125079 (2 * n) : ℚ) / 2)

end

end A063993.P1522108649156968038

/-! ## A063993.P9548849430314434980

`A224326(n)+A033761(n)-ceil(A129447(2*n)/2)`
-/

namespace A063993.P9548849430314434980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n + A033761 n - ⌈(A129447 (2 * n) : ℚ) / 2⌉

end

end A063993.P9548849430314434980

/-! ## A063993.P4294341239089632895

`A002636(n)-A000161(A016813(n))`
-/

namespace A063993.P4294341239089632895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A000161 (A016813 n).toNat

end

end A063993.P4294341239089632895

/-! ## A063993.P7115267239070586682

`A002636(n)-A000161(A017089(n)/2)`
-/

namespace A063993.P7115267239070586682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A000161 (SequenceMachineLib.roundAway ((A017089 n : ℚ) / 2)).toNat

end

end A063993.P7115267239070586682

/-! ## A063993.P1158771570867023369

`A002636(n)-A000161(A017089(n))`
-/

namespace A063993.P1158771570867023369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A000161 (A017089 n).toNat

end

end A063993.P1158771570867023369

/-! ## A063993.P5725851974616269638

`A000164(A017101(n))-A052343(n)`
-/

namespace A063993.P5725851974616269638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A017101 n).toNat - A052343 n

end

end A063993.P5725851974616269638

/-! ## A063993.P6985317321376654391

`A002636(n)-A337743(A017101(n))`
-/

namespace A063993.P6985317321376654391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A337743 (A017101 n).toNat

end

end A063993.P6985317321376654391

/-! ## A063993.P17855265072993109983

`A002636(n)-A052344(A017185(n))`
-/

namespace A063993.P17855265072993109983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A052344 (A017185 n).toNat

end

end A063993.P17855265072993109983

/-! ## A063993.P17832294155652745998

`A002636(n)-A000161(A139609(n))`
-/

namespace A063993.P17832294155652745998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A000161 (A139609 n).toNat

end

end A063993.P17832294155652745998

/-! ## A063993.P10585680683957160462

`A319797(∑[n]+3)`
-/

namespace A063993.P10585680683957160462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A063993.P10585680683957160462

/-! ## A063993.P8869544254439758146

`A319797(A000217(n)+3)%40`
-/

namespace A063993.P8869544254439758146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319797 (A000217 n + 3).toNat) 40

end

end A063993.P8869544254439758146

/-! ## A063993.P188303219906143151

`A072089(A319797(A152950(n+1)))`
-/

namespace A063993.P188303219906143151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A319797 (A152950 (n + 1)).toNat).toNat

end

end A063993.P188303219906143151

/-!
# A063994: a(n) = Product_{primes p dividing n } gcd(p-1, n-1).

The programs for A063994, the canonical program `A063994.P16689841622396858113` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063994 has offset 1).

The definition of A063994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063994.P16689841622396858113

`∏{p}[n+1, gcd(n, 1-#)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063994

/-- `∏{p}[n+1, gcd(n, 1-#)]` -/
def P16689841622396858113.Spec : Prop :=
  ∀ n, (P16689841622396858113.a n : ℤ) = A063994 (n + 1)

theorem P16689841622396858113.correct : P16689841622396858113.Spec := by
  intro n
  simp only [A063994, Nat.add_sub_cancel]

end A063994

/-! ## A063994.P16900187599679513245

`A348259(n+1)+1`
-/

namespace A063994.P16900187599679513245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (n + 1) + 1

end

end A063994.P16900187599679513245

namespace A063994

/-- `A348259(n+1)+1` -/
def P16900187599679513245.Spec : Prop :=
  ∀ n, P16900187599679513245.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P2160221456528979671

`∑{d}[n+1, A340190(#)]`
-/

namespace A063994.P2160221456528979671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A340190 d

end

end A063994.P2160221456528979671

namespace A063994

/-- `∑{d}[n+1, A340190(#)]` -/
def P2160221456528979671.Spec : Prop :=
  ∀ n, P2160221456528979671.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P3028337246699397595

`1-A318828(n+1)+n`
-/

namespace A063994.P3028337246699397595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A318828 (n + 1) + (n : ℤ)

end

end A063994.P3028337246699397595

namespace A063994

/-- `1-A318828(n+1)+n` -/
def P3028337246699397595.Spec : Prop :=
  ∀ n, P3028337246699397595.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P17218440824413565768

`A340191(n+1)+A340190(n+1)`
-/

namespace A063994.P17218440824413565768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340191 (n + 1) + A340190 (n + 1)

end

end A063994.P17218440824413565768

namespace A063994

/-- `A340191(n+1)+A340190(n+1)` -/
def P17218440824413565768.Spec : Prop :=
  ∀ n, P17218440824413565768.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P825755726464957995

`A000010(n+1)-A318840(n+1)`
-/

namespace A063994.P825755726464957995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A318840 (n + 1)

end

end A063994.P825755726464957995

namespace A063994

/-- `A000010(n+1)-A318840(n+1)` -/
def P825755726464957995.Spec : Prop :=
  ∀ n, P825755726464957995.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P14407412075332917889

`A340188(n+1)-A340187(n+1)`
-/

namespace A063994.P14407412075332917889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) - A340187 (n + 1)

end

end A063994.P14407412075332917889

namespace A063994

/-- `A340188(n+1)-A340187(n+1)` -/
def P14407412075332917889.Spec : Prop :=
  ∀ n, P14407412075332917889.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P12813822955769212967

`A049559(n+1)*A318829(n+1)`
-/

namespace A063994.P12813822955769212967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1) * A318829 (n + 1)

end

end A063994.P12813822955769212967

namespace A063994

/-- `A049559(n+1)*A318829(n+1)` -/
def P12813822955769212967.Spec : Prop :=
  ∀ n, P12813822955769212967.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P6001927040903237649

`A000010(n+1)/A247074(n+1)`
-/

namespace A063994.P6001927040903237649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A247074 (n + 1) : ℚ)

end

end A063994.P6001927040903237649

namespace A063994

/-- `A000010(n+1)/A247074(n+1)` -/
def P6001927040903237649.Spec : Prop :=
  ∀ n, P6001927040903237649.a n = (A063994 (n + 1) : ℚ)

end A063994

/-! ## A063994.P7271807537843797050

`gcd(A318840(n+1), A322321(n+1))`
-/

namespace A063994.P7271807537843797050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318840 (n + 1)) (A322321 (n + 1))

end

end A063994.P7271807537843797050

namespace A063994

/-- `gcd(A318840(n+1), A322321(n+1))` -/
def P7271807537843797050.Spec : Prop :=
  ∀ n, (P7271807537843797050.a n : ℤ) = A063994 (n + 1)

end A063994

/-! ## A063994.P10711661486440191467

`A039649(n+1)-(A318840(n+1)+1)`
-/

namespace A063994.P10711661486440191467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A318840 (n + 1) + 1)

end

end A063994.P10711661486440191467

namespace A063994

/-- `A039649(n+1)-(A318840(n+1)+1)` -/
def P10711661486440191467.Spec : Prop :=
  ∀ n, P10711661486440191467.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P8665665674620261781

`A109606(n+1)+1-A318840(n+1)`
-/

namespace A063994.P8665665674620261781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A318840 (n + 1))

end

end A063994.P8665665674620261781

namespace A063994

/-- `A109606(n+1)+1-A318840(n+1)` -/
def P8665665674620261781.Spec : Prop :=
  ∀ n, P8665665674620261781.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P16708085426219132784

`∑{d}[n+1, A008683(#)*A340192((n+1)/#)]`
-/

namespace A063994.P16708085426219132784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A340192 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063994.P16708085426219132784

namespace A063994

/-- `∑{d}[n+1, A008683(#)*A340192((n+1)/#)]` -/
def P16708085426219132784.Spec : Prop :=
  ∀ n, P16708085426219132784.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P5162502389931589426

`∏{p}[n+1, #-1]*A003557(n+1)-A318840(n+1)`
-/

namespace A063994.P5162502389931589426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) - A318840 (n + 1)

end

end A063994.P5162502389931589426

namespace A063994

/-- `∏{p}[n+1, #-1]*A003557(n+1)-A318840(n+1)` -/
def P5162502389931589426.Spec : Prop :=
  ∀ n, P5162502389931589426.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P7325426078528064660

`A049559(n+1)+A318830(n+1)-A318840(n+1)`
-/

namespace A063994.P7325426078528064660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1) + (A318830 (n + 1) - A318840 (n + 1))

end

end A063994.P7325426078528064660

namespace A063994

/-- `A049559(n+1)+A318830(n+1)-A318840(n+1)` -/
def P7325426078528064660.Spec : Prop :=
  ∀ n, P7325426078528064660.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P11949445184303057655

`A317841(n+1)+A317839(n+1)-A318840(n+1)`
-/

namespace A063994.P11949445184303057655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317841 (n + 1) + A317839 (n + 1) - A318840 (n + 1)

end

end A063994.P11949445184303057655

namespace A063994

/-- `A317841(n+1)+A317839(n+1)-A318840(n+1)` -/
def P11949445184303057655.Spec : Prop :=
  ∀ n, P11949445184303057655.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P14084231855154436444

`(A000010(n+1)-A318830(n+1))*A318829(n+1)`
-/

namespace A063994.P14084231855154436444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A318830 (n + 1)) * A318829 (n + 1)

end

end A063994.P14084231855154436444

namespace A063994

/-- `(A000010(n+1)-A318830(n+1))*A318829(n+1)` -/
def P14084231855154436444.Spec : Prop :=
  ∀ n, P14084231855154436444.a n = A063994 (n + 1)

end A063994

/-! ## A063994.P5892735563609699969

`A049559(n+1)*A160595(n+1)/A247074(n+1)`
-/

namespace A063994.P5892735563609699969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049559 (n + 1) * A160595 (n + 1) : ℚ) / (A247074 (n + 1) : ℚ)

end

end A063994.P5892735563609699969

namespace A063994

/-- `A049559(n+1)*A160595(n+1)/A247074(n+1)` -/
def P5892735563609699969.Spec : Prop :=
  ∀ n, P5892735563609699969.a n = (A063994 (n + 1) : ℚ)

end A063994

/-! ## A063994.P7961276952847353658

`A000010(n+1)/A160595(n+1)*A318829(n+1)`
-/

namespace A063994.P7961276952847353658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A160595 (n + 1) : ℚ) * (A318829 (n + 1) : ℚ)

end

end A063994.P7961276952847353658

namespace A063994

/-- `A000010(n+1)/A160595(n+1)*A318829(n+1)` -/
def P7961276952847353658.Spec : Prop :=
  ∀ n, P7961276952847353658.a n = (A063994 (n + 1) : ℚ)

end A063994

/-! ## A063994.P617459785385019532

`A067541(2*n+1)-A318840(n+1)`
-/

namespace A063994.P617459785385019532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (2 * n + 1) - A318840 (n + 1)

end

end A063994.P617459785385019532

namespace A063994

/-- `A067541(2*n+1)-A318840(n+1)` -/
def P617459785385019532.Spec : Prop :=
  ∀ n, P617459785385019532.a n = A063994 (n + 1)

end A063994

/-!
# A063995: Irregular triangle read by rows: T(n,k), n >= 1, -(n-1) <= k <= n-1, = number of partitions of n with rank k.

The programs for A063995, there is no canonical definition to state claims against.
-/

/-! ## A063995.P5488897323264771775

`A067694(A321316(n+1)%A136682(n+1))`
-/

namespace A063995.P5488897323264771775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (Int.tmod (A321316 (n + 1)) (A136682 (n + 1))).toNat

end

end A063995.P5488897323264771775

/-! ## A063995.P284047414314434147

`A067694(A321316(n+1)^A324882(n+1))`
-/

namespace A063995.P284047414314434147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (SequenceMachineLib.roundAway ((A321316 (n + 1) : ℚ) ^ (A324882 (n + 1) : ℤ))).toNat

end

end A063995.P284047414314434147

/-! ## A063995.P9346297094888744690

`A067694(64*A321316(n+1))`
-/

namespace A063995.P9346297094888744690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (64 * A321316 (n + 1)).toNat

end

end A063995.P9346297094888744690

/-! ## A063995.P8070791504440287731

`A067694(lcm(64, A321316(n+1)))`
-/

namespace A063995.P8070791504440287731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (Int.lcm 64 (A321316 (n + 1)))

end

end A063995.P8070791504440287731

/-! ## A063995.P12623331239044575631

`A058060((A113206(n)+1)²)`
-/

namespace A063995.P12623331239044575631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058060 ((A113206 n + 1) ^ 2).toNat

end

end A063995.P12623331239044575631

/-!
# A063996: Numbers k such that ud(k) = sopf(k)-1, where ud(k)=A034444(k) and sopf(k)=A008472(k).

The programs for A063996, there is no canonical definition to state claims against.
-/

/-! ## A063996.P12777095504892883026

`∩[A085126(n+1), A114522(n+1)]`
-/

namespace A063996.P12777095504892883026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063996.P12777095504892883026

/-! ## A063996.P67735912319006387

`A071785(∪[A065119(n+1), A147571(n+1)])`
-/

namespace A063996.P67735912319006387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A063996.P67735912319006387

/-! ## A063996.P7625347604661137804

`A262401(∪[A065119(n+1), A147571(n+1)])`
-/

namespace A063996.P7625347604661137804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A063996.P7625347604661137804

/-! ## A063996.P10869855759938237439

`A071785(∪[3*A003586(n+1), A147571(n+1)])`
-/

namespace A063996.P10869855759938237439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A063996.P10869855759938237439

/-!
# A063997: Multiples of 4 whose digits add to 4.

The programs for A063997, there is no canonical definition to state claims against.
-/

/-! ## A063997.P14475047384745047823

`4*A088406(n+1)`
-/

namespace A063997.P14475047384745047823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088406 (n + 1)

end

end A063997.P14475047384745047823

/-! ## A063997.P7848254145734553452

`∩[A052218(n+1), A061820(n)]`
-/

namespace A063997.P7848254145734553452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061820 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063997.P7848254145734553452

/-! ## A063997.P4483066202659868244

`A245062(A027379(n+2))`
-/

namespace A063997.P4483066202659868244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (A027379 (n + 2)).toNat

end

end A063997.P4483066202659868244

/-! ## A063997.P4704772850603430577

`A245062(A055998(n+2))`
-/

namespace A063997.P4704772850603430577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (A055998 (n + 2)).toNat

end

end A063997.P4704772850603430577

/-! ## A063997.P10184837341696900331

`A245062(eq[3, A193592(n)])`
-/

namespace A063997.P10184837341696900331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063997.P10184837341696900331

/-! ## A063997.P15794032791917877736

`A245062(A167499(n)+A016777(n))`
-/

namespace A063997.P15794032791917877736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (A167499 n + A016777 n).toNat

end

end A063997.P15794032791917877736

/-! ## A063997.P3086149266751954590

`∩[A052218(n+1), A379779(n+1)]`
-/

namespace A063997.P3086149266751954590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063997.P3086149266751954590

/-!
# A063998: Nonsquare, composite numbers k such that Sum_{d|k, d < k/d} s_d = k+1, where s_d is either d+1/(k/d) or (1/d)+(k/d).

The programs for A063998, there is no canonical definition to state claims against.
-/

/-! ## A063998.P9479485803613387382

`A353991(∑[6^A353967(n)])`
-/

namespace A063998.P9479485803613387382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A353967 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353991 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A063998.P9479485803613387382

/-! ## A063998.P5889187315742071064

`A047307(n+1)*A075477(A002047(n))`
-/

namespace A063998.P5889187315742071064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047307 (n + 1) * A075477 (A002047 n).toNat

end

end A063998.P5889187315742071064

/-!
# A063999: Numbers k such that the number of primes <= k is phi(phi(k)).

The programs for A063999, there is no canonical definition to state claims against.
-/

/-! ## A063999.P10972342240652381917

`eq[A000010(A000010(n+1)), A000720(n+1)]+1`
-/

namespace A063999.P10972342240652381917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063999.P10972342240652381917

/-! ## A063999.P13371388712335970936

`eq[A000720(n+1), A010554(n+1)]+1`
-/

namespace A063999.P13371388712335970936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063999.P13371388712335970936

/-! ## A063999.P6946015658679744235

`eq[A010554(A028310(n)), A230980(n)]`
-/

namespace A063999.P6946015658679744235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063999.P6946015658679744235

/-! ## A063999.P16076875964087160460

`A020725(eq[A000720(n+1), A010554(n+1)])`
-/

namespace A063999.P16076875964087160460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063999.P16076875964087160460

/-! ## A063999.P17931679347218265319

`eq[A010554(A233583(n+1)), A230980(n)]`
-/

namespace A063999.P17931679347218265319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063999.P17931679347218265319

