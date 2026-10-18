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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A063500: a(n) is the least composite solution of phi(k + 6n) = phi(k) + 6n.

The programs for A063500, there is no canonical definition to state claims against.
-/

/-! ## A063500.P4957938873632739598

`A055458(3*(n+1))`
-/

namespace A063500.P4957938873632739598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055458 (3 * (n + 1))

end

end A063500.P4957938873632739598

/-! ## A063500.P7281619596742012468

`A055458(A085126(n+1))/A064094(n)`
-/

namespace A063500.P7281619596742012468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055458 (A085126 (n + 1)).toNat : ℚ) / (A064094 n : ℚ)

end

end A063500.P7281619596742012468

/-! ## A063500.P3363005960362247406

`A055458(A008486(n+1))^A052307(n)`
-/

namespace A063500.P3363005960362247406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055458 (A008486 (n + 1)).toNat : ℚ) ^ (A052307 n : ℤ)

end

end A063500.P3363005960362247406

/-!
# A063501: Number of prime-sextuplets up to 10^n.

The programs for A063501, there is no canonical definition to state claims against.
-/

/-! ## A063501.P17033722308158328715

`∑[A350826(n+1)]-C(n, n²)`
-/

namespace A063501.P17033722308158328715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose n (n ^ 2) : ℤ)

end

end A063501.P17033722308158328715

/-! ## A063501.P17150563060640761096

`∑[A350826(n+1)]-char[A000540(n)]`
-/

namespace A063501.P17150563060640761096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A063501.P17150563060640761096

/-! ## A063501.P10533509305739178301

`∑[A350826(n+1)]-char[A106433(n)]`
-/

namespace A063501.P10533509305739178301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106433 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A063501.P10533509305739178301

/-! ## A063501.P6649324445028426479

`∑[A350826(n+1)]-char[A111571(n)]`
-/

namespace A063501.P6649324445028426479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111571 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A063501.P6649324445028426479

/-! ## A063501.P3198784498086881559

`∑[A350826(n+1)]-char[A151878(n)]`
-/

namespace A063501.P3198784498086881559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A063501.P3198784498086881559

/-!
# A063502: a(n+1) = p, where p is the a(n)-th twin prime (p,p+2), with a(0) = 1.

The programs for A063502, there is no canonical definition to state claims against.
-/

/-! ## A063502.P8187923341572908992

`A088460(a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A063502.P8187923341572908992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A088460 (a (n - 2)).toNat

end

end A063502.P8187923341572908992

/-! ## A063502.P12839051003669195351

`A001359(a(n-1))` with `a(0)=1`
-/

namespace A063502.P12839051003669195351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001359 (a (n - 1)).toNat

end

end A063502.P12839051003669195351

/-!
# A063506: a(n) = phi(a(n-1)) * number of divisors of a(n-1), a(1)=3.

The programs for A063506, there is no canonical definition to state claims against.
-/

/-! ## A063506.P8310104174550140496

`A062355(a(n-1))` with `a(0)=3`
-/

namespace A063506.P8310104174550140496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A062355 (a (n - 1)).toNat

end

end A063506.P8310104174550140496

/-! ## A063506.P8462807711241635900

`A062355(floor(a(A023443(n))))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A063506.P8462807711241635900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A062355 (a (A023443 n).toNat).toNat

end

end A063506.P8462807711241635900

/-! ## A063506.P974812166539174572

`record[A062355(a(A016035(n+1)))]` with `a(0)=3`
-/

namespace A063506.P974812166539174572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A062355 (f1 (A016035 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063506.P974812166539174572

/-! ## A063506.P16031375547272142814

`record[A062355(a(A049820(n+1)))]` with `a(0)=3`
-/

namespace A063506.P16031375547272142814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A062355 (f1 (A049820 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063506.P16031375547272142814

/-! ## A063506.P7524825590927513186

`A000005(a(n-1))*A000010(a(n-1))` with `a(0)=3`
-/

namespace A063506.P7524825590927513186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000005 (a (n - 1)).toNat * A000010 (a (n - 1)).toNat

end

end A063506.P7524825590927513186

/-!
# A063508: Numbers n such that !n + 2n - 1 is prime.

The programs for A063508, there is no canonical definition to state claims against.
-/

/-! ## A063508.P17336902323961555914

`∑[A220572(A279565(n))]`
-/

namespace A063508.P17336902323961555914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220572 (A279565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063508.P17336902323961555914

/-! ## A063508.P13318483151160192968

`A065120(A100963(3*(n+1)))+A002216(n)`
-/

namespace A063508.P13318483151160192968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A100963 (3 * (n + 1))).toNat + A002216 n

end

end A063508.P13318483151160192968

/-!
# A063509: Squarefree Lucas numbers.

The programs for A063509, there is no canonical definition to state claims against.
-/

/-! ## A063509.P5784846863033697088

`A000032(eq[1, ∏{e}[A000032(n), #]])`
-/

namespace A063509.P5784846863033697088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063509.P5784846863033697088

/-! ## A063509.P3505823247740424136

`filter[A000032(n), A008966(#)]`
-/

namespace A063509.P3505823247740424136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A063509.P3505823247740424136

/-! ## A063509.P6601796897704431527

`filter[A000032(n), A323154(#)]`
-/

namespace A063509.P6601796897704431527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A063509.P6601796897704431527

/-! ## A063509.P14717162500030815402

`filter[A000032(n), A341625(#)]`
-/

namespace A063509.P14717162500030815402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A063509.P14717162500030815402

/-! ## A063509.P9290363414903765577

`filter[A000032(n), A353519(#)]`
-/

namespace A063509.P9290363414903765577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A063509.P9290363414903765577

/-!
# A063510: 

The programs for A063510, there is no canonical definition to state claims against.
-/

/-! ## A063510.P10830549627480910134

`ceil(log2(log2((n+2)²)))`
-/

namespace A063510.P10830549627480910134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.logb 2 ((n + 2) ^ 2 : ℝ))⌉

end

end A063510.P10830549627480910134

/-!
# A063511: a(n) = a(floor(sqrt(n))) * 2.

The programs for A063511, the canonical program `A063511.P2999449240964338839` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063511 has offset 1).

The definition of A063511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(sqrt(n+1))-1)*2` (program `A063511.P2999449240964338839`, by `A063511.P2999449240964338839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063511.P7748488774328621595

`2^ceil(log2(log2(n+2)))`
-/

namespace A063511.P7748488774328621595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (Real.logb 2 (n + 2 : ℝ))⌉ : ℤ)

end

end A063511.P7748488774328621595

namespace A063511

/-- `2^ceil(log2(log2(n+2)))` -/
def P7748488774328621595.Spec : Prop :=
  ∀ n, P7748488774328621595.a n = (A063511 (n + 1) : ℚ)

end A063511

/-! ## A063511.P2999449240964338839

`a(floor(sqrt(n+1))-1)*2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063511

/-- `a(floor(sqrt(n+1))-1)*2` -/
def P2999449240964338839.Spec : Prop :=
  ∀ n, (P2999449240964338839.a n : ℤ) = A063511 (n + 1)

theorem P2999449240964338839.correct : P2999449240964338839.Spec := by
  intro n
  simp only [A063511, Nat.add_sub_cancel]

end A063511

/-!
# A063513: Least balanced numbers (A020492): m such that the quotient sigma(m)/phi(m) equals the n-th prime.

The programs for A063513, there is no canonical definition to state claims against.
-/

/-! ## A063513.P17575478855360426679

`A055234(p?[comp[n²]])`
-/

namespace A063513.P17575478855360426679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A063513.P17575478855360426679

/-! ## A063513.P3414852589568347741

`A055234(record[p?[∏{p}[n+1, #]]])`
-/

namespace A063513.P3414852589568347741
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A063513.P3414852589568347741

/-! ## A063513.P3903194516030602101

`A055234(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A063513.P3903194516030602101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055234 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A063513.P3903194516030602101

/-! ## A063513.P17759965947694038475

`A055234(A390240(n))`
-/

namespace A063513.P17759965947694038475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055234 (A390240 n).toNat

end

end A063513.P17759965947694038475

/-! ## A063513.P15782464657039309169

`A055234(A000040(n+1))`
-/

namespace A063513.P15782464657039309169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055234 (A000040 (n + 1)).toNat

end

end A063513.P15782464657039309169

/-!
# A063514: a(n) = sigma(n) mod phi(n).

The programs for A063514, the canonical program `A063514.P16932919259440733816` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063514 has offset 1).

The definition of A063514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063514.P11033344496704818134

`∑{d}[n+1, #]%A000010(n+1)`
-/

namespace A063514.P11033344496704818134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A000010 (n + 1))

end

end A063514.P11033344496704818134

namespace A063514

/-- `∑{d}[n+1, #]%A000010(n+1)` -/
def P11033344496704818134.Spec : Prop :=
  ∀ n, P11033344496704818134.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P16932919259440733816

`Δ[A160664(n)]%Δ[A002088(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A063514

/-- `Δ[A160664(n)]%Δ[A002088(n)]` -/
def P16932919259440733816.Spec : Prop :=
  ∀ n, P16932919259440733816.a n = A063514 (n + 1)

theorem P16932919259440733816.correct : P16932919259440733816.Spec := by
  intro n
  simp only [A063514, Nat.add_sub_cancel]

end A063514

/-! ## A063514.P2425386634703368073

`A000203(n+1)%Δ[A002088(n)]`
-/

namespace A063514.P2425386634703368073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (f1 (n + 1) - f1 n)

end

end A063514.P2425386634703368073

namespace A063514

/-- `A000203(n+1)%Δ[A002088(n)]` -/
def P2425386634703368073.Spec : Prop :=
  ∀ n, P2425386634703368073.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P4184726612471913098

`A051612(n+1)%Δ[A002088(n)]`
-/

namespace A063514.P4184726612471913098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051612 (n + 1)) (f1 (n + 1) - f1 n)

end

end A063514.P4184726612471913098

namespace A063514

/-- `A051612(n+1)%Δ[A002088(n)]` -/
def P4184726612471913098.Spec : Prop :=
  ∀ n, P4184726612471913098.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P14175055860701440905

`A245092(Δ[n²])%Δ[A002088(n)]`
-/

namespace A063514.P14175055860701440905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (f2 (n + 1) - f2 n)

end

end A063514.P14175055860701440905

namespace A063514

/-- `A245092(Δ[n²])%Δ[A002088(n)]` -/
def P14175055860701440905.Spec : Prop :=
  ∀ n, P14175055860701440905.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P12768922328202466925

`A065387(n+1)%A000010(n+1)`
-/

namespace A063514.P12768922328202466925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065387 (n + 1)) (A000010 (n + 1))

end

end A063514.P12768922328202466925

namespace A063514

/-- `A065387(n+1)%A000010(n+1)` -/
def P12768922328202466925.Spec : Prop :=
  ∀ n, P12768922328202466925.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P8825814135042354694

`abs(A143348(n+1)%A000010(n+1))`
-/

namespace A063514.P8825814135042354694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A143348 (n + 1)) (A000010 (n + 1))|

end

end A063514.P8825814135042354694

namespace A063514

/-- `abs(A143348(n+1)%A000010(n+1))` -/
def P8825814135042354694.Spec : Prop :=
  ∀ n, P8825814135042354694.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P6594530994715677117

`A245092(2*n+1)%A000010(n+1)`
-/

namespace A063514.P6594530994715677117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 1)) (A000010 (n + 1))

end

end A063514.P6594530994715677117

namespace A063514

/-- `A245092(2*n+1)%A000010(n+1)` -/
def P6594530994715677117.Spec : Prop :=
  ∀ n, P6594530994715677117.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P424278946528314906

`(A001065(n+1)+n+1)%A000010(n+1)`
-/

namespace A063514.P424278946528314906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1) + (n + 1 : ℤ)) (A000010 (n + 1))

end

end A063514.P424278946528314906

namespace A063514

/-- `(A001065(n+1)+n+1)%A000010(n+1)` -/
def P424278946528314906.Spec : Prop :=
  ∀ n, P424278946528314906.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P9869331074782431666

`(A064987(n+1)/(n+1))%A000010(n+1)`
-/

namespace A063514.P9869331074782431666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000010 (n + 1))

end

end A063514.P9869331074782431666

namespace A063514

/-- `(A064987(n+1)/(n+1))%A000010(n+1)` -/
def P9869331074782431666.Spec : Prop :=
  ∀ n, P9869331074782431666.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P1591755258030161530

`A000203(A000027(n+1))%(A109606(n+1)+1)`
-/

namespace A063514.P1591755258030161530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A000027 (n + 1)).toNat) (A109606 (n + 1) + 1)

end

end A063514.P1591755258030161530

namespace A063514

/-- `A000203(A000027(n+1))%(A109606(n+1)+1)` -/
def P1591755258030161530.Spec : Prop :=
  ∀ n, P1591755258030161530.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P2345927628170708080

`A000027(A245092(2*n+1))%(A109606(n+1)+1)`
-/

namespace A063514.P2345927628170708080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A245092 (2 * n + 1)).toNat) (A109606 (n + 1) + 1)

end

end A063514.P2345927628170708080

namespace A063514

/-- `A000027(A245092(2*n+1))%(A109606(n+1)+1)` -/
def P2345927628170708080.Spec : Prop :=
  ∀ n, P2345927628170708080.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P6043171918420791768

`A000203(n+1)-A000010(n+1)*A070032(n+1)`
-/

namespace A063514.P6043171918420791768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1) * A070032 (n + 1)

end

end A063514.P6043171918420791768

namespace A063514

/-- `A000203(n+1)-A000010(n+1)*A070032(n+1)` -/
def P6043171918420791768.Spec : Prop :=
  ∀ n, P6043171918420791768.a n = A063514 (n + 1)

end A063514

/-! ## A063514.P15658674711813869695

`A000027(A064987(n+1)/(n+1))%(A109606(n+1)+1)`
-/

namespace A063514.P15658674711813869695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat) (A109606 (n + 1) + 1)

end

end A063514.P15658674711813869695

namespace A063514

/-- `A000027(A064987(n+1)/(n+1))%(A109606(n+1)+1)` -/
def P15658674711813869695.Spec : Prop :=
  ∀ n, P15658674711813869695.a n = A063514 (n + 1)

end A063514

/-!
# A063515: Sum of divisors of Woodall (or Riesel) numbers; sigma(A003261(n)); sigma(n*2^n - 1).

The programs for A063515, there is no canonical definition to state claims against.
-/

/-! ## A063515.P11375779096357062043

`∑{d}[∑[(n+2)*2^n]-1, #]`
-/

namespace A063515.P11375779096357062043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A063515.P11375779096357062043

/-! ## A063515.P17150462469257798807

`abs(1-∑{d}[A003261(n+1), #])+1`
-/

namespace A063515.P17150462469257798807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)| + 1

end

end A063515.P17150462469257798807

/-! ## A063515.P2405662805631610645

`record[∑{d}[A003261(A318311(n+1)), #]]`
-/

namespace A063515.P2405662805631610645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (A318311 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063515.P2405662805631610645

/-! ## A063515.P9239977017701198284

`∑{d}[A003261(n+1), #]%A074619(n)`
-/

namespace A063515.P9239977017701198284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A074619 n)

end

end A063515.P9239977017701198284

/-! ## A063515.P4001919574912350093

`lcm(A007318(n), ∑{d}[A003261(n+1), #])`
-/

namespace A063515.P4001919574912350093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A063515.P4001919574912350093

/-!
# A063516: Multiples of single electron masses yielding stable particles intermediate between an electron and a proton as given in reference below.

The programs for A063516, there is no canonical definition to state claims against.
-/

/-! ## A063516.P3320886641322676287

`A348520(A331933(n+2))`
-/

namespace A063516.P3320886641322676287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348520 (A331933 (n + 2)).toNat

end

end A063516.P3320886641322676287

/-!
# A063518: Values of 17^n mod 23.

The programs for A063518, the canonical program `A063518.P2259982563687034774` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063518 has offset 1).

The definition of A063518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063518.P2259982563687034774

`(17^(n+1))%23`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063518

/-- `(17^(n+1))%23` -/
def P2259982563687034774.Spec : Prop :=
  ∀ n, (P2259982563687034774.a n : ℤ) = A063518 (n + 1)

theorem P2259982563687034774.correct : P2259982563687034774.Spec := by
  intro n
  simp only [A063518, Nat.add_sub_cancel]

end A063518

/-!
# A063521: a(n) = n*(7*n^2-4)/3.

The programs for A063521, the canonical program `A063521.P7422953320800481522` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063521 has offset 0).

The definition of A063521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063521.P7422953320800481522

`n*(7*n²-4)/3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063521

/-- `n*(7*n²-4)/3` -/
def P7422953320800481522.Spec : Prop :=
  ∀ n, P7422953320800481522.a n = (A063521 n : ℚ)

end A063521

/-! ## A063521.P6157461279069380256

`∑[∑[a(n-1)+14]]` with `a(0)=0, a(1)=1, a(2)=14`
-/

namespace A063521.P6157461279069380256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 14] fun n f2 =>
  f2 (n - 1) + 14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063521.P6157461279069380256

namespace A063521

/-- `∑[∑[a(n-1)+14]]` -/
def P6157461279069380256.Spec : Prop :=
  ∀ n, (P6157461279069380256.a n : ℤ) = A063521 n

end A063521

/-! ## A063521.P13349715343441336877

`a(n-1)+7*n²-7*n+1` with `a(0)=0`
-/

namespace A063521.P13349715343441336877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (7 * n ^ 2 : ℤ) - (7 * n : ℤ) + 1

end

end A063521.P13349715343441336877

namespace A063521

/-- `a(n-1)+7*n²-7*n+1` -/
def P13349715343441336877.Spec : Prop :=
  ∀ n, P13349715343441336877.a n = A063521 n

end A063521

/-! ## A063521.P11599030233101079920

`C(2*n+1, 3)+(n-1)*∑[2*n]`
-/

namespace A063521.P11599030233101079920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 3 : ℤ) + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063521.P11599030233101079920

namespace A063521

/-- `C(2*n+1, 3)+(n-1)*∑[2*n]` -/
def P11599030233101079920.Spec : Prop :=
  ∀ n, P11599030233101079920.a n = A063521 n

end A063521

/-! ## A063521.P13902117316709495588

`2*A004126(n)-n`
-/

namespace A063521.P13902117316709495588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004126 n - (n : ℤ)

end

end A063521.P13902117316709495588

namespace A063521

/-- `2*A004126(n)-n` -/
def P13902117316709495588.Spec : Prop :=
  ∀ n, P13902117316709495588.a n = A063521 n

end A063521

/-! ## A063521.P9473980424085471695

`∑[A139268(n)]-n²`
-/

namespace A063521.P9473980424085471695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A063521.P9473980424085471695

namespace A063521

/-- `∑[A139268(n)]-n²` -/
def P9473980424085471695.Spec : Prop :=
  ∀ n, P9473980424085471695.a n = A063521 n

end A063521

/-! ## A063521.P9968282115414431798

`∑[A051868(n)-n]+n`
-/

namespace A063521.P9968282115414431798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063521.P9968282115414431798

namespace A063521

/-- `∑[A051868(n)-n]+n` -/
def P9968282115414431798.Spec : Prop :=
  ∀ n, P9968282115414431798.a n = A063521 n

end A063521

/-! ## A063521.P10341730673754005254

`abs(∑[∑[n]-n]-A063522(n))`
-/

namespace A063521.P10341730673754005254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A063522 n|

end

end A063521.P10341730673754005254

namespace A063521

/-- `abs(∑[∑[n]-n]-A063522(n))` -/
def P10341730673754005254.Spec : Prop :=
  ∀ n, P10341730673754005254.a n = A063521 n

end A063521

/-! ## A063521.P17674670139918502396

`∑[xor(1, 14*C(n, 2))-A000007(n)]`
-/

namespace A063521.P17674670139918502396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (14 * Nat.choose n 2) : ℤ) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063521.P17674670139918502396

namespace A063521

/-- `∑[xor(1, 14*C(n, 2))-A000007(n)]` -/
def P17674670139918502396.Spec : Prop :=
  ∀ n, P17674670139918502396.a n = A063521 n

end A063521

/-! ## A063521.P242246354711892169

`∑[xor(1, 14*C(n, 2))%A133252(n)]`
-/

namespace A063521.P242246354711892169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.xor 1 (14 * Nat.choose n 2) : ℤ) (A133252 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063521.P242246354711892169

namespace A063521

/-- `∑[xor(1, 14*C(n, 2))%A133252(n)]` -/
def P242246354711892169.Spec : Prop :=
  ∀ n, P242246354711892169.a n = A063521 n

end A063521

/-! ## A063521.P4969651711956611301

`A135503(n)+A004467(n)`
-/

namespace A063521.P4969651711956611301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A004467 n

end

end A063521.P4969651711956611301

namespace A063521

/-- `A135503(n)+A004467(n)` -/
def P4969651711956611301.Spec : Prop :=
  ∀ n, P4969651711956611301.a n = A063521 n

end A063521

/-! ## A063521.P9482183321057177186

`A160378(n)+A007585(n)`
-/

namespace A063521.P9482183321057177186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A007585 n

end

end A063521.P9482183321057177186

namespace A063521

/-- `A160378(n)+A007585(n)` -/
def P9482183321057177186.Spec : Prop :=
  ∀ n, P9482183321057177186.a n = A063521 n

end A063521

/-! ## A063521.P8612574934050713288

`A242135(n)+A035597(n)`
-/

namespace A063521.P8612574934050713288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 n + A035597 n

end

end A063521.P8612574934050713288

namespace A063521

/-- `A242135(n)+A035597(n)` -/
def P8612574934050713288.Spec : Prop :=
  ∀ n, P8612574934050713288.a n = A063521 n

end A063521

/-! ## A063521.P2778445079412890870

`A268684(n)+A152015(n)`
-/

namespace A063521.P2778445079412890870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A152015 n

end

end A063521.P2778445079412890870

namespace A063521

/-- `A268684(n)+A152015(n)` -/
def P2778445079412890870.Spec : Prop :=
  ∀ n, P2778445079412890870.a n = A063521 n

end A063521

/-! ## A063521.P17467459014124694802

`A143166(n)-A033547(n)`
-/

namespace A063521.P17467459014124694802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n - A033547 n

end

end A063521.P17467459014124694802

namespace A063521

/-- `A143166(n)-A033547(n)` -/
def P17467459014124694802.Spec : Prop :=
  ∀ n, P17467459014124694802.a n = A063521 n

end A063521

/-! ## A063521.P6323168120044410340

`A050409(n)-A147875(n)`
-/

namespace A063521.P6323168120044410340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n - A147875 n

end

end A063521.P6323168120044410340

namespace A063521

/-- `A050409(n)-A147875(n)` -/
def P6323168120044410340.Spec : Prop :=
  ∀ n, P6323168120044410340.a n = A063521 n

end A063521

/-! ## A063521.P14755447544458229347

`A172078(n)-A051925(n)`
-/

namespace A063521.P14755447544458229347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172078 n - A051925 n

end

end A063521.P14755447544458229347

namespace A063521

/-- `A172078(n)-A051925(n)` -/
def P14755447544458229347.Spec : Prop :=
  ∀ n, P14755447544458229347.a n = A063521 n

end A063521

/-! ## A063521.P7447176316670963362

`A237616(n)-A005581(n)`
-/

namespace A063521.P7447176316670963362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 n - A005581 n

end

end A063521.P7447176316670963362

namespace A063521

/-- `A237616(n)-A005581(n)` -/
def P7447176316670963362.Spec : Prop :=
  ∀ n, P7447176316670963362.a n = A063521 n

end A063521

/-! ## A063521.P8017560136373739329

`A259110(n)-A006527(n)`
-/

namespace A063521.P8017560136373739329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n - A006527 n

end

end A063521.P8017560136373739329

namespace A063521

/-- `A259110(n)-A006527(n)` -/
def P8017560136373739329.Spec : Prop :=
  ∀ n, P8017560136373739329.a n = A063521 n

end A063521

/-! ## A063521.P3253696535958448413

`A172076(n)-A161680(n)`
-/

namespace A063521.P3253696535958448413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 n - A161680 n

end

end A063521.P3253696535958448413

namespace A063521

/-- `A172076(n)-A161680(n)` -/
def P3253696535958448413.Spec : Prop :=
  ∀ n, P3253696535958448413.a n = A063521 n

end A063521

/-!
# A063522: a(n) = n*(5*n^2 - 3)/2.

The programs for A063522, the canonical program `A063522.P9235906446721575731` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063522 has offset 0).

The definition of A063522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063522.P9235906446721575731

`n*(5*n²-3)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063522

/-- `n*(5*n²-3)/2` -/
def P9235906446721575731.Spec : Prop :=
  ∀ n, P9235906446721575731.a n = (A063522 n : ℚ)

end A063522

/-! ## A063522.P3542015829199352792

`∑[15*C(n, 2)]+n`
-/

namespace A063522.P3542015829199352792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A063522.P3542015829199352792

namespace A063522

/-- `∑[15*C(n, 2)]+n` -/
def P3542015829199352792.Spec : Prop :=
  ∀ n, (P3542015829199352792.a n : ℤ) = A063522 n

end A063522

/-! ## A063522.P5785404417260397752

`5*3*C(n+1, 3)+n`
-/

namespace A063522.P5785404417260397752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (3 * Nat.choose (n + 1) 3) + n

end

end A063522.P5785404417260397752

namespace A063522

/-- `5*3*C(n+1, 3)+n` -/
def P5785404417260397752.Spec : Prop :=
  ∀ n, (P5785404417260397752.a n : ℤ) = A063522 n

end A063522

/-! ## A063522.P3279895729592016739

`(n+1)*∑[a(n-1)+5]-1` with `a(0)=1, a(1)=0`
-/

namespace A063522.P3279895729592016739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A063522.P3279895729592016739

namespace A063522

/-- `(n+1)*∑[a(n-1)+5]-1` -/
def P3279895729592016739.Spec : Prop :=
  ∀ n, P3279895729592016739.a n = A063522 n

end A063522

/-! ## A063522.P6249099584104765485

`5*A135503(n)+n`
-/

namespace A063522.P6249099584104765485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A135503 n + (n : ℤ)

end

end A063522.P6249099584104765485

namespace A063522

/-- `5*A135503(n)+n` -/
def P6249099584104765485.Spec : Prop :=
  ∀ n, P6249099584104765485.a n = A063522 n

end A063522

/-! ## A063522.P6533917482546998215

`∑[A226489(n)]-n²`
-/

namespace A063522.P6533917482546998215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A063522.P6533917482546998215

namespace A063522

/-- `∑[A226489(n)]-n²` -/
def P6533917482546998215.Spec : Prop :=
  ∀ n, P6533917482546998215.a n = A063522 n

end A063522

/-! ## A063522.P8191696102491425772

`A063521(n)+∑[C(n, 2)]`
-/

namespace A063522.P8191696102491425772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063522.P8191696102491425772

namespace A063522

/-- `A063521(n)+∑[C(n, 2)]` -/
def P8191696102491425772.Spec : Prop :=
  ∀ n, P8191696102491425772.a n = A063522 n

end A063522

/-! ## A063522.P14947435601441407492

`∑[A051869(n)-n]+n`
-/

namespace A063522.P14947435601441407492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063522.P14947435601441407492

namespace A063522

/-- `∑[A051869(n)-n]+n` -/
def P14947435601441407492.Spec : Prop :=
  ∀ n, P14947435601441407492.a n = A063522 n

end A063522

/-! ## A063522.P15443192805725440727

`(n-1)*A005891(n)+1`
-/

namespace A063522.P15443192805725440727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A005891 n + 1

end

end A063522.P15443192805725440727

namespace A063522

/-- `(n-1)*A005891(n)+1` -/
def P15443192805725440727.Spec : Prop :=
  ∀ n, P15443192805725440727.a n = A063522 n

end A063522

/-! ## A063522.P10373239595338193664

`(n-1)*A028895(n)+n`
-/

namespace A063522.P10373239595338193664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A028895 n + (n : ℤ)

end

end A063522.P10373239595338193664

namespace A063522

/-- `(n-1)*A028895(n)+n` -/
def P10373239595338193664.Spec : Prop :=
  ∀ n, P10373239595338193664.a n = A063522 n

end A063522

/-! ## A063522.P17474522732303144942

`A135503(n)+A007588(n)`
-/

namespace A063522.P17474522732303144942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A007588 n

end

end A063522.P17474522732303144942

namespace A063522

/-- `A135503(n)+A007588(n)` -/
def P17474522732303144942.Spec : Prop :=
  ∀ n, P17474522732303144942.a n = A063522 n

end A063522

/-! ## A063522.P12694424513100867228

`A160378(n)+A007586(n)`
-/

namespace A063522.P12694424513100867228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A007586 n

end

end A063522.P12694424513100867228

namespace A063522

/-- `A160378(n)+A007586(n)` -/
def P12694424513100867228.Spec : Prop :=
  ∀ n, P12694424513100867228.a n = A063522 n

end A063522

/-! ## A063522.P12562078846768425536

`A172078(n)-A005581(n)`
-/

namespace A063522.P12562078846768425536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172078 n - A005581 n

end

end A063522.P12562078846768425536

namespace A063522

/-- `A172078(n)-A005581(n)` -/
def P12562078846768425536.Spec : Prop :=
  ∀ n, P12562078846768425536.a n = A063522 n

end A063522

/-! ## A063522.P5265986629205838988

`A259110(n)-A004006(n)`
-/

namespace A063522.P5265986629205838988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n - A004006 n

end

end A063522.P5265986629205838988

namespace A063522

/-- `A259110(n)-A004006(n)` -/
def P5265986629205838988.Spec : Prop :=
  ∀ n, P5265986629205838988.a n = A063522 n

end A063522

/-! ## A063522.P12914575981488838046

`A237617(n)-A051925(n)`
-/

namespace A063522.P12914575981488838046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237617 n - A051925 n

end

end A063522.P12914575981488838046

namespace A063522

/-- `A237617(n)-A051925(n)` -/
def P12914575981488838046.Spec : Prop :=
  ∀ n, P12914575981488838046.a n = A063522 n

end A063522

/-! ## A063522.P144465408116491514

`A117642(n)-A229183(n)`
-/

namespace A063522.P144465408116491514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - A229183 n

end

end A063522.P144465408116491514

namespace A063522

/-- `A117642(n)-A229183(n)` -/
def P144465408116491514.Spec : Prop :=
  ∀ n, P144465408116491514.a n = A063522 n

end A063522

/-! ## A063522.P2869083112072573414

`A237616(n)-A161680(n)`
-/

namespace A063522.P2869083112072573414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 n - A161680 n

end

end A063522.P2869083112072573414

namespace A063522

/-- `A237616(n)-A161680(n)` -/
def P2869083112072573414.Spec : Prop :=
  ∀ n, P2869083112072573414.a n = A063522 n

end A063522

/-! ## A063522.P15285254186667924389

`A249354(n)-A267370(n)`
-/

namespace A063522.P15285254186667924389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n - A267370 n

end

end A063522.P15285254186667924389

namespace A063522

/-- `A249354(n)-A267370(n)` -/
def P15285254186667924389.Spec : Prop :=
  ∀ n, P15285254186667924389.a n = A063522 n

end A063522

/-! ## A063522.P7688550792789653033

`A271636(n)%A289721(n)`
-/

namespace A063522.P7688550792789653033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271636 n) (A289721 n)

end

end A063522.P7688550792789653033

namespace A063522

/-- `A271636(n)%A289721(n)` -/
def P7688550792789653033.Spec : Prop :=
  ∀ n, P7688550792789653033.a n = A063522 n

end A063522

/-!
# A063523: a(n) = n*(8*n^2 - 5)/3.

The programs for A063523, the canonical program `A063523.P8074895751634320080` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063523 has offset 0).

The definition of A063523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n²-5)/3` (program `A063523.P17784495270784109771`, by `A063523.P17784495270784109771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063523.P17784495270784109771

`n*(8*n²-5)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063523.P17784495270784109771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((8 * n ^ 2 : ℤ) - 5 : ℚ) / 3)

end

end A063523.P17784495270784109771

namespace A063523

/-- `n*(8*n²-5)/3` -/
def P17784495270784109771.Spec : Prop :=
  ∀ n, P17784495270784109771.a n = (A063523 n : ℚ)

theorem P17784495270784109771.correct : P17784495270784109771.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A063523, Nat.add_sub_cancel, A063523.P17784495270784109771.a, A063523.P8074895751634320080.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A063523, Nat.add_sub_cancel, A063523.P17784495270784109771.a, A063523.P8074895751634320080.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A063523

/-! ## A063523.P8074895751634320080

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=18, a(3)=67`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063523

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8074895751634320080.Spec : Prop :=
  ∀ n, P8074895751634320080.a n = A063523 n

theorem P8074895751634320080.correct : P8074895751634320080.Spec := by
  intro n
  simp only [A063523]

end A063523

/-! ## A063523.P923839993560644117

`∑[16*C(n, 2)]+n`
-/

namespace A063523.P923839993560644117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A063523.P923839993560644117

namespace A063523

/-- `∑[16*C(n, 2)]+n` -/
def P923839993560644117.Spec : Prop :=
  ∀ n, (P923839993560644117.a n : ℤ) = A063523 n

end A063523

/-! ## A063523.P17301686715620078404

`2*C(Δ[n²], 3)-n`
-/

namespace A063523.P17301686715620078404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 : ℤ) - (n : ℤ)

end

end A063523.P17301686715620078404

namespace A063523

/-- `2*C(Δ[n²], 3)-n` -/
def P17301686715620078404.Spec : Prop :=
  ∀ n, P17301686715620078404.a n = A063523 n

end A063523

/-! ## A063523.P6032946347338860780

`abs(2*C(2*n+1, 3)-n)`
-/

namespace A063523.P6032946347338860780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.choose (2 * n + 1) 3 : ℤ) - (n : ℤ)|

end

end A063523.P6032946347338860780

namespace A063523

/-- `abs(2*C(2*n+1, 3)-n)` -/
def P6032946347338860780.Spec : Prop :=
  ∀ n, P6032946347338860780.a n = A063523 n

end A063523

/-! ## A063523.P3462260698134074273

`∑[record[(2*n²)^(n%2)]-1]`
-/

namespace A063523.P3462260698134074273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2) ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063523.P3462260698134074273

namespace A063523

/-- `∑[record[(2*n²)^(n%2)]-1]` -/
def P3462260698134074273.Spec : Prop :=
  ∀ n, P3462260698134074273.a n = A063523 n

end A063523

/-! ## A063523.P1785663340035116299

`∑[record[(2*n²)^and(1, n)]-1]`
-/

namespace A063523.P1785663340035116299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2) ^ Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063523.P1785663340035116299

namespace A063523

/-- `∑[record[(2*n²)^and(1, n)]-1]` -/
def P1785663340035116299.Spec : Prop :=
  ∀ n, P1785663340035116299.a n = A063523 n

end A063523

/-! ## A063523.P13245202851850714639

`a(n-1)+8*n²-8*n+1` with `a(0)=0`
-/

namespace A063523.P13245202851850714639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (8 * n ^ 2 : ℤ) - (8 * n : ℤ) + 1

end

end A063523.P13245202851850714639

namespace A063523

/-- `a(n-1)+8*n²-8*n+1` -/
def P13245202851850714639.Spec : Prop :=
  ∀ n, P13245202851850714639.a n = A063523 n

end A063523

/-! ## A063523.P2019057718594608719

`A259110(n)-n`
-/

namespace A063523.P2019057718594608719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n - (n : ℤ)

end

end A063523.P2019057718594608719

namespace A063523

/-- `A259110(n)-n` -/
def P2019057718594608719.Spec : Prop :=
  ∀ n, P2019057718594608719.a n = A063523 n

end A063523

/-! ## A063523.P10223586883010545505

`∑[A077591(n)-1]`
-/

namespace A063523.P10223586883010545505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063523.P10223586883010545505

namespace A063523

/-- `∑[A077591(n)-1]` -/
def P10223586883010545505.Spec : Prop :=
  ∀ n, P10223586883010545505.a n = A063523 n

end A063523

/-! ## A063523.P11225136923681881731

`2*A000447(n)-n`
-/

namespace A063523.P11225136923681881731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000447 n - (n : ℤ)

end

end A063523.P11225136923681881731

namespace A063523

/-- `2*A000447(n)-n` -/
def P11225136923681881731.Spec : Prop :=
  ∀ n, P11225136923681881731.a n = A063523 n

end A063523

/-! ## A063523.P11346282792435589078

`A143166(n)-2*n`
-/

namespace A063523.P11346282792435589078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n - (2 * n : ℤ)

end

end A063523.P11346282792435589078

namespace A063523

/-- `A143166(n)-2*n` -/
def P11346282792435589078.Spec : Prop :=
  ∀ n, P11346282792435589078.a n = A063523 n

end A063523

/-! ## A063523.P18368293122689496351

`(A144138(n)-n)/3`
-/

namespace A063523.P18368293122689496351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144138 n - (n : ℤ) : ℚ) / 3

end

end A063523.P18368293122689496351

namespace A063523

/-- `(A144138(n)-n)/3` -/
def P18368293122689496351.Spec : Prop :=
  ∀ n, P18368293122689496351.a n = (A063523 n : ℚ)

end A063523

/-! ## A063523.P9067391928985399044

`∑[A139271(n)]-n²`
-/

namespace A063523.P9067391928985399044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A063523.P9067391928985399044

namespace A063523

/-- `∑[A139271(n)]-n²` -/
def P9067391928985399044.Spec : Prop :=
  ∀ n, P9067391928985399044.a n = A063523 n

end A063523

/-! ## A063523.P12630874713398488136

`(A369922(n)+n+1)/3`
-/

namespace A063523.P12630874713398488136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369922 n + (n + 1 : ℤ) : ℚ) / 3

end

end A063523.P12630874713398488136

namespace A063523

/-- `(A369922(n)+n+1)/3` -/
def P12630874713398488136.Spec : Prop :=
  ∀ n, P12630874713398488136.a n = (A063523 n : ℚ)

end A063523

/-! ## A063523.P6973564101958271640

`A160378(n)+A007587(n)`
-/

namespace A063523.P6973564101958271640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A007587 n

end

end A063523.P6973564101958271640

namespace A063523

/-- `A160378(n)+A007587(n)` -/
def P6973564101958271640.Spec : Prop :=
  ∀ n, P6973564101958271640.a n = A063523 n

end A063523

/-! ## A063523.P6512209266593434092

`A135503(n)+A062025(n)`
-/

namespace A063523.P6512209266593434092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A062025 n

end

end A063523.P6512209266593434092

namespace A063523

/-- `A135503(n)+A062025(n)` -/
def P6512209266593434092.Spec : Prop :=
  ∀ n, P6512209266593434092.a n = A063523 n

end A063523

/-! ## A063523.P16770362911169965512

`A035328(n)-A035597(n)`
-/

namespace A063523.P16770362911169965512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035328 n - A035597 n

end

end A063523.P16770362911169965512

namespace A063523

/-- `A035328(n)-A035597(n)` -/
def P16770362911169965512.Spec : Prop :=
  ∀ n, P16770362911169965512.a n = A063523 n

end A063523

/-! ## A063523.P17729160542769623192

`A117642(n)-A033547(n)`
-/

namespace A063523.P17729160542769623192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - A033547 n

end

end A063523.P17729160542769623192

namespace A063523

/-- `A117642(n)-A033547(n)` -/
def P17729160542769623192.Spec : Prop :=
  ∀ n, P17729160542769623192.a n = A063523 n

end A063523

/-! ## A063523.P1018166631102168324

`n-A136264(A028310(n))`
-/

namespace A063523.P1018166631102168324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136264 (A028310 n).toNat

end

end A063523.P1018166631102168324

namespace A063523

/-- `n-A136264(A028310(n))` -/
def P1018166631102168324.Spec : Prop :=
  ∀ n, P1018166631102168324.a n = A063523 n

end A063523

/-!
# A063524: Characteristic function of 1.

The programs for A063524, the canonical program `A063524.P5631347671191003537` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063524 has offset 0).

The definition of A063524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063524.P5631347671191003537

`A000007(abs(n-1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063524

/-- `A000007(abs(n-1))` -/
def P5631347671191003537.Spec : Prop :=
  ∀ n, P5631347671191003537.a n = A063524 n

theorem P5631347671191003537.correct : P5631347671191003537.Spec := by
  intro n
  simp only [A063524]

end A063524

/-!
# A063528: Smallest number such that it and its successor are both divisible by an n-th power larger than 1.

The programs for A063528, there is no canonical definition to state claims against.
-/

/-! ## A063528.P17384118510473029819

`A069022(n+1)+A000007(n)`
-/

namespace A063528.P17384118510473029819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069022 (n + 1) + A000007 n

end

end A063528.P17384118510473029819

/-! ## A063528.P10270708265904983128

`A069022(n+1)-A121373(A000040(2*(n+2)))`
-/

namespace A063528.P10270708265904983128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069022 (n + 1) - A121373 (A000040 (2 * (n + 2))).toNat

end

end A063528.P10270708265904983128

/-! ## A063528.P14965576597416532477

`A069022(n+1)-A121373(A030511(n+3))`
-/

namespace A063528.P14965576597416532477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069022 (n + 1) - A121373 (A030511 (n + 3)).toNat

end

end A063528.P14965576597416532477

/-! ## A063528.P17345362902560520227

`A069022(n+1)+A046810(A135943(n+1))`
-/

namespace A063528.P17345362902560520227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069022 (n + 1) + A046810 (A135943 (n + 1)).toNat

end

end A063528.P17345362902560520227

/-! ## A063528.P2408663737406084842

`A069022(n+1)+A000122(A147651(n))`
-/

namespace A063528.P2408663737406084842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069022 (n + 1) + A000122 (A147651 n).toNat

end

end A063528.P2408663737406084842

/-!
# A063529: a(n) = M(2^n-1), where M() is A029834, a discrete version of the Mangoldt function: if n is prime then floor(log(n)) else 0 and 2^n-1 is A000225.

The programs for A063529, there is no canonical definition to state claims against.
-/

/-! ## A063529.P14717120674357913098

`floor(log(A126646(n))*A332219(n+1))`
-/

namespace A063529.P14717120674357913098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A126646 n : ℝ) * (A332219 (n + 1) : ℝ)⌋

end

end A063529.P14717120674357913098

/-! ## A063529.P11791606338028924194

`floor(A321333(n)*A332219(n+1)/3)`
-/

namespace A063529.P11791606338028924194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321333 n * A332219 (n + 1) : ℚ) / 3⌋

end

end A063529.P11791606338028924194

/-! ## A063529.P15057350173453076660

`A002264(A321333(n)*A332219(n+1))`
-/

namespace A063529.P15057350173453076660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A321333 n * A332219 (n + 1)).toNat

end

end A063529.P15057350173453076660

/-!
# A063530: Numbers k such that phi(k)+1 is a square.

The programs for A063530, the canonical program `A063530.P18432981326514031293` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063530 has offset 1).

The definition of A063530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063530.P18432981326514031293

`eq[1, A007913(A000010(n+1)+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A063530

/-- `eq[1, A007913(A000010(n+1)+1)]+1` -/
def P18432981326514031293.Spec : Prop :=
  ∀ n, (P18432981326514031293.a n : ℤ) = A063530 (n + 1)

theorem P18432981326514031293.correct : P18432981326514031293.Spec := by
  intro n
  simp only [A063530, Nat.add_sub_cancel]

end A063530

/-! ## A063530.P12342472653718319922

`eq[1, A098108(A000010(n+1)+1)]+1`
-/

namespace A063530.P12342472653718319922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063530.P12342472653718319922

namespace A063530

/-- `eq[1, A098108(A000010(n+1)+1)]+1` -/
def P12342472653718319922.Spec : Prop :=
  ∀ n, (P12342472653718319922.a n : ℤ) = A063530 (n + 1)

end A063530

/-! ## A063530.P5020673106275548712

`lt[A007913(A000010(abs(1-n)+1)+1), 2]`
-/

namespace A063530.P5020673106275548712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (|1 - (n : ℤ)| + 1).toNat + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A063530.P5020673106275548712

namespace A063530

/-- `lt[A007913(A000010(abs(1-n)+1)+1), 2]` -/
def P5020673106275548712.Spec : Prop :=
  ∀ n, (P5020673106275548712.a n : ℤ) = A063530 (n + 1)

end A063530

/-! ## A063530.P12805149455115211448

`eq[2, A213234(A000010(n+1))]+1`
-/

namespace A063530.P12805149455115211448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063530.P12805149455115211448

namespace A063530

/-- `eq[2, A213234(A000010(n+1))]+1` -/
def P12805149455115211448.Spec : Prop :=
  ∀ n, (P12805149455115211448.a n : ℤ) = A063530 (n + 1)

end A063530

/-! ## A063530.P1397077401698511905

`lt[A152204(A000010(abs(1-n)+1)), 2]`
-/

namespace A063530.P1397077401698511905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 (A000010 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A063530.P1397077401698511905

namespace A063530

/-- `lt[A152204(A000010(abs(1-n)+1)), 2]` -/
def P1397077401698511905.Spec : Prop :=
  ∀ n, (P1397077401698511905.a n : ℤ) = A063530 (n + 1)

end A063530

/-! ## A063530.P12025969282707601634

`lt[3*A003285(A000010(n+1)+1), 2]+1`
-/

namespace A063530.P12025969282707601634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003285 (A000010 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A063530.P12025969282707601634

namespace A063530

/-- `lt[3*A003285(A000010(n+1)+1), 2]+1` -/
def P12025969282707601634.Spec : Prop :=
  ∀ n, (P12025969282707601634.a n : ℤ) = A063530 (n + 1)

end A063530

/-! ## A063530.P16813037980368569639

`eq[2, A056737(A000010(A233583(n+1)))]`
-/

namespace A063530.P16813037980368569639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A000010 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063530.P16813037980368569639

namespace A063530

/-- `eq[2, A056737(A000010(A233583(n+1)))]` -/
def P16813037980368569639.Spec : Prop :=
  ∀ n, (P16813037980368569639.a n : ℤ) = A063530 (n + 1)

end A063530

/-! ## A063530.P14737578727012151508

`eq[0, A082375(A225530(n))]`
-/

namespace A063530.P14737578727012151508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063530.P14737578727012151508

namespace A063530

/-- `eq[0, A082375(A225530(n))]` -/
def P14737578727012151508.Spec : Prop :=
  ∀ n, (P14737578727012151508.a n : ℤ) = A063530 (n + 1)

end A063530

/-! ## A063530.P7992993851186703992

`eq[1, A002828(A225530(n)+1)]`
-/

namespace A063530.P7992993851186703992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A225530 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063530.P7992993851186703992

namespace A063530

/-- `eq[1, A002828(A225530(n)+1)]` -/
def P7992993851186703992.Spec : Prop :=
  ∀ n, (P7992993851186703992.a n : ℤ) = A063530 (n + 1)

end A063530

/-!
# A063531: Numbers k such that sigma(k) + 1 is a square.

The programs for A063531, the canonical program `A063531.P3268237155309024633` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063531 has offset 1).

The definition of A063531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063531.P3268237155309024633

`eq[1, A007913(A000203(n+1)+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A063531

/-- `eq[1, A007913(A000203(n+1)+1)]+1` -/
def P3268237155309024633.Spec : Prop :=
  ∀ n, (P3268237155309024633.a n : ℤ) = A063531 (n + 1)

theorem P3268237155309024633.correct : P3268237155309024633.Spec := by
  intro n
  simp only [A063531, Nat.add_sub_cancel]

end A063531

/-! ## A063531.P8622302223071896189

`eq[1, A007913(A039653(n)+2)]`
-/

namespace A063531.P8622302223071896189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063531.P8622302223071896189

namespace A063531

/-- `eq[1, A007913(A039653(n)+2)]` -/
def P8622302223071896189.Spec : Prop :=
  ∀ n, (P8622302223071896189.a n : ℤ) = A063531 (n + 1)

end A063531

/-! ## A063531.P255991024965708092

`eq[1, A007913(A088580(n+1))]+1`
-/

namespace A063531.P255991024965708092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A088580 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063531.P255991024965708092

namespace A063531

/-- `eq[1, A007913(A088580(n+1))]+1` -/
def P255991024965708092.Spec : Prop :=
  ∀ n, (P255991024965708092.a n : ℤ) = A063531 (n + 1)

end A063531

/-! ## A063531.P17494221917136411845

`lt[1, A260738(A000005(∑{d}[n, #]+1))]`
-/

namespace A063531.P17494221917136411845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A000005 (∑ d ∈ Nat.divisors (f3 n), d + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A063531.P17494221917136411845

namespace A063531

/-- `lt[1, A260738(A000005(∑{d}[n, #]+1))]` -/
def P17494221917136411845.Spec : Prop :=
  ∀ n, (P17494221917136411845.a n : ℤ) = A063531 (n + 1)

end A063531

/-! ## A063531.P5762097263685942899

`lt[(n+1)*A326058(∑{d}[n, #]+1)+4, 3]`
-/

namespace A063531.P5762097263685942899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A326058 (∑ d ∈ Nat.divisors (f2 n), d + 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A063531.P5762097263685942899

namespace A063531

/-- `lt[(n+1)*A326058(∑{d}[n, #]+1)+4, 3]` -/
def P5762097263685942899.Spec : Prop :=
  ∀ n, (P5762097263685942899.a n : ℤ) = A063531 (n + 1)

end A063531

/-! ## A063531.P10647372175193303910

`eq[2, A068527(A039653(n))]`
-/

namespace A063531.P10647372175193303910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063531.P10647372175193303910

namespace A063531

/-- `eq[2, A068527(A039653(n))]` -/
def P10647372175193303910.Spec : Prop :=
  ∀ n, (P10647372175193303910.a n : ℤ) = A063531 (n + 1)

end A063531

/-! ## A063531.P16246739696424868628

`eq[1, A152204(A039653(n)+1)]`
-/

namespace A063531.P16246739696424868628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063531.P16246739696424868628

namespace A063531

/-- `eq[1, A152204(A039653(n)+1)]` -/
def P16246739696424868628.Spec : Prop :=
  ∀ n, (P16246739696424868628.a n : ℤ) = A063531 (n + 1)

end A063531

/-! ## A063531.P13575114424362880766

`eq[2, A000122(A039653(n)+2)]`
-/

namespace A063531.P13575114424362880766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063531.P13575114424362880766

namespace A063531

/-- `eq[2, A000122(A039653(n)+2)]` -/
def P13575114424362880766.Spec : Prop :=
  ∀ n, (P13575114424362880766.a n : ℤ) = A063531 (n + 1)

end A063531

/-! ## A063531.P11160659972407759073

`eq[0, A003285(A000203(n+1)+1)]+1`
-/

namespace A063531.P11160659972407759073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063531.P11160659972407759073

namespace A063531

/-- `eq[0, A003285(A000203(n+1)+1)]+1` -/
def P11160659972407759073.Spec : Prop :=
  ∀ n, (P11160659972407759073.a n : ℤ) = A063531 (n + 1)

end A063531

/-! ## A063531.P2968918634904782732

`lt[A226005(A000203(n+1)+1), 1]+1`
-/

namespace A063531.P2968918634904782732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (A000203 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A063531.P2968918634904782732

namespace A063531

/-- `lt[A226005(A000203(n+1)+1), 1]+1` -/
def P2968918634904782732.Spec : Prop :=
  ∀ n, (P2968918634904782732.a n : ℤ) = A063531 (n + 1)

end A063531

/-! ## A063531.P4574704046153321527

`eq[1, A002129(A007913(∑{d}[n+1, #]+1))]+1`
-/

namespace A063531.P4574704046153321527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A007913 (∑ d ∈ Nat.divisors (f3 n), d + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063531.P4574704046153321527

namespace A063531

/-- `eq[1, A002129(A007913(∑{d}[n+1, #]+1))]+1` -/
def P4574704046153321527.Spec : Prop :=
  ∀ n, (P4574704046153321527.a n : ℤ) = A063531 (n + 1)

end A063531

/-! ## A063531.P16633498761163138499

`eq[1, A006702(A000203(n+2)+1)]+2`
-/

namespace A063531.P16633498761163138499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A000203 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A063531.P16633498761163138499

namespace A063531

/-- `eq[1, A006702(A000203(n+2)+1)]+2` -/
def P16633498761163138499.Spec : Prop :=
  ∀ n, (P16633498761163138499.a n : ℤ) = A063531 (n + 1)

end A063531

/-!
# A063532: Numbers k such that phi(k) + 1 = x^2 and sigma(k) + 1 = y^2 for some x and y.

The programs for A063532, the canonical program `A063532.P11767860691149820248` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063532 has offset 1).

The definition of A063532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063532.P11767860691149820248

`∩[A063530(n+1), A063531(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A063532

/-- `∩[A063530(n+1), A063531(n+1)]` -/
def P11767860691149820248.Spec : Prop :=
  ∀ n, (P11767860691149820248.a n : ℤ) = A063532 (n + 1)

theorem P11767860691149820248.correct : P11767860691149820248.Spec := by
  intro n
  simp only [A063532, Nat.add_sub_cancel]

end A063532

/-! ## A063532.P18118421528142847027

`filter[A063530(n+1), A296213(#)]`
-/

namespace A063532.P18118421528142847027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296213 (f1 j).toNat = 1) n)

end

end A063532.P18118421528142847027

namespace A063532

/-- `filter[A063530(n+1), A296213(#)]` -/
def P18118421528142847027.Spec : Prop :=
  ∀ n, P18118421528142847027.a n = A063532 (n + 1)

end A063532

/-! ## A063532.P6181098289224247531

`filter[A063531(n+1), A296213(#)]`
-/

namespace A063532.P6181098289224247531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296213 (f1 j).toNat = 1) n)

end

end A063532.P6181098289224247531

namespace A063532

/-- `filter[A063531(n+1), A296213(#)]` -/
def P6181098289224247531.Spec : Prop :=
  ∀ n, P6181098289224247531.a n = A063532 (n + 1)

end A063532

/-! ## A063532.P5296031675971622579

`eq[1, A296213(n+1)]+1`
-/

namespace A063532.P5296031675971622579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063532.P5296031675971622579

namespace A063532

/-- `eq[1, A296213(n+1)]+1` -/
def P5296031675971622579.Spec : Prop :=
  ∀ n, (P5296031675971622579.a n : ℤ) = A063532 (n + 1)

end A063532

/-! ## A063532.P5779590524020264756

`filter[A039689(n+1), A296213(#)]`
-/

namespace A063532.P5779590524020264756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296213 (f1 j).toNat = 1) n)

end

end A063532.P5779590524020264756

namespace A063532

/-- `filter[A039689(n+1), A296213(#)]` -/
def P5779590524020264756.Spec : Prop :=
  ∀ n, P5779590524020264756.a n = A063532 (n + 1)

end A063532

/-!
# A063533: Hypotenuses of special Pythagorean triples constructed from twin primes as follows: {u, w}={p,p+2}; side a=2p(p+2), side b=(p+2)^2-p^2 and the terms of sequence are values of c=a(n)=p^2+(p+2)^2=phi(a/2)+1+sigma(a/2)+1.

The programs for A063533, the canonical program `A063533.P4439980953914597874` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063533 has offset 1).

The definition of A063533 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063533.P4439980953914597874

`2*(A014574(n+1)²+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A063533

/-- `2*(A014574(n+1)²+1)` -/
def P4439980953914597874.Spec : Prop :=
  ∀ n, P4439980953914597874.a n = A063533 (n + 1)

theorem P4439980953914597874.correct : P4439980953914597874.Spec := by
  intro n
  simp only [A063533, Nat.add_sub_cancel]

end A063533

/-! ## A063533.P16452805556240967079

`2+A000203(A037074(n+1))+A000010(A037074(n+1))`
-/

namespace A063533.P16452805556240967079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A000203 (A037074 (n + 1)).toNat + A000010 (A037074 (n + 1)).toNat

end

end A063533.P16452805556240967079

namespace A063533

/-- `2+A000203(A037074(n+1))+A000010(A037074(n+1))` -/
def P16452805556240967079.Spec : Prop :=
  ∀ n, P16452805556240967079.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P18225333485955289300

`A184417(n+1)+1`
-/

namespace A063533.P18225333485955289300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184417 (n + 1) + 1

end

end A063533.P18225333485955289300

namespace A063533

/-- `A184417(n+1)+1` -/
def P18225333485955289300.Spec : Prop :=
  ∀ n, P18225333485955289300.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P14791934518031203126

`A071142(n+1)+4`
-/

namespace A063533.P14791934518031203126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071142 (n + 1) + 4

end

end A063533.P14791934518031203126

namespace A063533

/-- `A071142(n+1)+4` -/
def P14791934518031203126.Spec : Prop :=
  ∀ n, P14791934518031203126.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P17672974899748781618

`2*(A075369(n+1)+1)`
-/

namespace A063533.P17672974899748781618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A075369 (n + 1) + 1)

end

end A063533.P17672974899748781618

namespace A063533

/-- `2*(A075369(n+1)+1)` -/
def P17672974899748781618.Spec : Prop :=
  ∀ n, P17672974899748781618.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P9198715552070133781

`2*(A037074(n+1)+2)`
-/

namespace A063533.P9198715552070133781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A037074 (n + 1) + 2)

end

end A063533.P9198715552070133781

namespace A063533

/-- `2*(A037074(n+1)+2)` -/
def P9198715552070133781.Spec : Prop :=
  ∀ n, P9198715552070133781.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P12727288039759109788

`2*(A120875(n+1)+3)`
-/

namespace A063533.P12727288039759109788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120875 (n + 1) + 3)

end

end A063533.P12727288039759109788

namespace A063533

/-- `2*(A120875(n+1)+3)` -/
def P12727288039759109788.Spec : Prop :=
  ∀ n, P12727288039759109788.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P17799424584805985678

`2*((A001359(n+1)+1)²+1)`
-/

namespace A063533.P17799424584805985678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((A001359 (n + 1) + 1) ^ 2 + 1)

end

end A063533.P17799424584805985678

namespace A063533

/-- `2*((A001359(n+1)+1)²+1)` -/
def P17799424584805985678.Spec : Prop :=
  ∀ n, P17799424584805985678.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P11516243254926278052

`2*(2*A120876(n+1)+2)+2`
-/

namespace A063533.P11516243254926278052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A120876 (n + 1) + 2) + 2

end

end A063533.P11516243254926278052

namespace A063533

/-- `2*(2*A120876(n+1)+2)+2` -/
def P11516243254926278052.Spec : Prop :=
  ∀ n, P11516243254926278052.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P16888764528349625416

`A108604(n+1)+A001359(n+1)²`
-/

namespace A063533.P16888764528349625416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108604 (n + 1) + A001359 (n + 1) ^ 2

end

end A063533.P16888764528349625416

namespace A063533

/-- `A108604(n+1)+A001359(n+1)²` -/
def P16888764528349625416.Spec : Prop :=
  ∀ n, P16888764528349625416.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P18218514542820345429

`A014574(n+1)*A054735(n+1)+2`
-/

namespace A063533.P18218514542820345429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) * A054735 (n + 1) + 2

end

end A063533.P18218514542820345429

namespace A063533

/-- `A014574(n+1)*A054735(n+1)+2` -/
def P18218514542820345429.Spec : Prop :=
  ∀ n, P18218514542820345429.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P17385621777839868556

`A040040(n+1)*A111046(n+1)+2`
-/

namespace A063533.P17385621777839868556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) * A111046 (n + 1) + 2

end

end A063533.P17385621777839868556

namespace A063533

/-- `A040040(n+1)*A111046(n+1)+2` -/
def P17385621777839868556.Spec : Prop :=
  ∀ n, P17385621777839868556.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P11885194010972845403

`2*A108604(n+1)-A111046(n+1)`
-/

namespace A063533.P11885194010972845403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108604 (n + 1) - A111046 (n + 1)

end

end A063533.P11885194010972845403

namespace A063533

/-- `2*A108604(n+1)-A111046(n+1)` -/
def P11885194010972845403.Spec : Prop :=
  ∀ n, P11885194010972845403.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P2152805841774303379

`A001359(n+1)²+A006512(n+1)²`
-/

namespace A063533.P2152805841774303379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) ^ 2 + A006512 (n + 1) ^ 2

end

end A063533.P2152805841774303379

namespace A063533

/-- `A001359(n+1)²+A006512(n+1)²` -/
def P2152805841774303379.Spec : Prop :=
  ∀ n, P2152805841774303379.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P14556816348363653896

`2*((1-p?[A000040(n+1)+2])²+1)`
-/

namespace A063533.P14556816348363653896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 2 + 1)

end

end A063533.P14556816348363653896

namespace A063533

/-- `2*((1-p?[A000040(n+1)+2])²+1)` -/
def P14556816348363653896.Spec : Prop :=
  ∀ n, P14556816348363653896.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P3827310480088691109

`A069484(A029707(n+1))`
-/

namespace A063533.P3827310480088691109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (A029707 (n + 1)).toNat

end

end A063533.P3827310480088691109

namespace A063533

/-- `A069484(A029707(n+1))` -/
def P3827310480088691109.Spec : Prop :=
  ∀ n, P3827310480088691109.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P10751753330248363176

`A048851(A107770(n+1))`
-/

namespace A063533.P10751753330248363176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (A107770 (n + 1)).toNat

end

end A063533.P10751753330248363176

namespace A063533

/-- `A048851(A107770(n+1))` -/
def P10751753330248363176.Spec : Prop :=
  ∀ n, P10751753330248363176.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P7053645453216553144

`2*(A124659(n+1)+4)`
-/

namespace A063533.P7053645453216553144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A124659 (n + 1) + 4)

end

end A063533.P7053645453216553144

namespace A063533

/-- `2*(A124659(n+1)+4)` -/
def P7053645453216553144.Spec : Prop :=
  ∀ n, P7053645453216553144.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P17933506056331367483

`A108604(n+1)+A108570(n+1)`
-/

namespace A063533.P17933506056331367483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108604 (n + 1) + A108570 (n + 1)

end

end A063533.P17933506056331367483

namespace A063533

/-- `A108604(n+1)+A108570(n+1)` -/
def P17933506056331367483.Spec : Prop :=
  ∀ n, P17933506056331367483.a n = A063533 (n + 1)

end A063533

/-! ## A063533.P6500421671754096894

`A108570(n+1)+A006512(n+1)²`
-/

namespace A063533.P6500421671754096894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108570 (n + 1) + A006512 (n + 1) ^ 2

end

end A063533.P6500421671754096894

namespace A063533

/-- `A108570(n+1)+A006512(n+1)²` -/
def P6500421671754096894.Spec : Prop :=
  ∀ n, P6500421671754096894.a n = A063533 (n + 1)

end A063533

/-!
# A063534: Numbers k such that C(k) = H(k) + d(k), where C(k) is Chowla's function A048050, H(k) is the half-totient function A023022 and d(k) is the number of divisors function A000005.

The programs for A063534, the canonical program `A063534.P17795295830584222676` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063534 has offset 1).

The definition of A063534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063534.P10952262936228335067

`A001748(n+1)-char[1]`
-/

namespace A063534.P10952262936228335067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063534.P10952262936228335067

namespace A063534

/-- `A001748(n+1)-char[1]` -/
def P10952262936228335067.Spec : Prop :=
  ∀ n, P10952262936228335067.a n = A063534 (n + 1)

end A063534

/-! ## A063534.P18227036030090085443

`3*A000040(n+1)-char[1]`
-/

namespace A063534.P18227036030090085443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063534.P18227036030090085443

namespace A063534

/-- `3*A000040(n+1)-char[1]` -/
def P18227036030090085443.Spec : Prop :=
  ∀ n, P18227036030090085443.a n = A063534 (n + 1)

end A063534

/-! ## A063534.P14832964905125889586

`A138636(n+1)/2-char[1]`
-/

namespace A063534.P14832964905125889586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) : ℚ) / 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A063534.P14832964905125889586

namespace A063534

/-- `A138636(n+1)/2-char[1]` -/
def P14832964905125889586.Spec : Prop :=
  ∀ n, P14832964905125889586.a n = (A063534 (n + 1) : ℚ)

end A063534

/-! ## A063534.P17217349109087640248

`3*sqrt(A001248(n+1))-char[1]`
-/

namespace A063534.P17217349109087640248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A001248 (n + 1) : ℝ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)

end

end A063534.P17217349109087640248

namespace A063534

/-- `3*sqrt(A001248(n+1))-char[1]` -/
def P17217349109087640248.Spec : Prop :=
  ∀ n, P17217349109087640248.a n = (A063534 (n + 1) : ℝ)

end A063534

/-! ## A063534.P12328448494638542987

`∑[3*A054541(n+1)]-char[1]`
-/

namespace A063534.P12328448494638542987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054541 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063534.P12328448494638542987

namespace A063534

/-- `∑[3*A054541(n+1)]-char[1]` -/
def P12328448494638542987.Spec : Prop :=
  ∀ n, P12328448494638542987.a n = A063534 (n + 1)

end A063534

/-! ## A063534.P17915541998345978915

`3/2*A100484(n+1)-char[1]`
-/

namespace A063534.P17915541998345978915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A100484 (n + 1) : ℚ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A063534.P17915541998345978915

namespace A063534

/-- `3/2*A100484(n+1)-char[1]` -/
def P17915541998345978915.Spec : Prop :=
  ∀ n, P17915541998345978915.a n = (A063534 (n + 1) : ℚ)

end A063534

/-! ## A063534.P3781515039619699423

`A159075(n)+A001748(n+1)`
-/

namespace A063534.P3781515039619699423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A001748 (n + 1)

end

end A063534.P3781515039619699423

namespace A063534

/-- `A159075(n)+A001748(n+1)` -/
def P3781515039619699423.Spec : Prop :=
  ∀ n, P3781515039619699423.a n = A063534 (n + 1)

end A063534

/-! ## A063534.P17795295830584222676

`xor(A001748(n+1), A063524(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063534

/-- `xor(A001748(n+1), A063524(n))` -/
def P17795295830584222676.Spec : Prop :=
  ∀ n, P17795295830584222676.a n = A063534 (n + 1)

theorem P17795295830584222676.correct : P17795295830584222676.Spec := by
  intro n
  simp only [A063534, Nat.add_sub_cancel]

end A063534

/-! ## A063534.P17994847959913766922

`xor(char[A305758(n)], A001748(n+1))`
-/

namespace A063534.P17994847959913766922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305758 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A001748 (n + 1))

end

end A063534.P17994847959913766922

namespace A063534

/-- `xor(char[A305758(n)], A001748(n+1))` -/
def P17994847959913766922.Spec : Prop :=
  ∀ n, P17994847959913766922.a n = A063534 (n + 1)

end A063534

/-! ## A063534.P10180550699142866178

`A156037(n+1)+A072055(n+1)`
-/

namespace A063534.P10180550699142866178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) + A072055 (n + 1)

end

end A063534.P10180550699142866178

namespace A063534

/-- `A156037(n+1)+A072055(n+1)` -/
def P10180550699142866178.Spec : Prop :=
  ∀ n, P10180550699142866178.a n = A063534 (n + 1)

end A063534

/-! ## A063534.P904607529760696209

`A000040(n+1)+A100484(n+1)-char[1]`
-/

namespace A063534.P904607529760696209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A100484 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A063534.P904607529760696209

namespace A063534

/-- `A000040(n+1)+A100484(n+1)-char[1]` -/
def P904607529760696209.Spec : Prop :=
  ∀ n, P904607529760696209.a n = A063534 (n + 1)

end A063534

/-! ## A063534.P12765323923724591333

`A288313(n+2)+A130713(2*n+1)`
-/

namespace A063534.P12765323923724591333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288313 (n + 2) + A130713 (2 * n + 1)

end

end A063534.P12765323923724591333

namespace A063534

/-- `A288313(n+2)+A130713(2*n+1)` -/
def P12765323923724591333.Spec : Prop :=
  ∀ n, P12765323923724591333.a n = A063534 (n + 1)

end A063534

/-! ## A063534.P4986692886704217117

`filter[A167211(n+2), A354927(#)]`
-/

namespace A063534.P4986692886704217117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167211 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A063534.P4986692886704217117

namespace A063534

/-- `filter[A167211(n+2), A354927(#)]` -/
def P4986692886704217117.Spec : Prop :=
  ∀ n, P4986692886704217117.a n = A063534 (n + 1)

end A063534

/-! ## A063534.P4767153659664267775

`∩[A161918(n+1), A167211(n+1)]`
-/

namespace A063534.P4767153659664267775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063534.P4767153659664267775

namespace A063534

/-- `∩[A161918(n+1), A167211(n+1)]` -/
def P4767153659664267775.Spec : Prop :=
  ∀ n, (P4767153659664267775.a n : ℤ) = A063534 (n + 1)

end A063534

/-! ## A063534.P2761624966130516036

`∩[A161918(n+1), A181687(n+1)]`
-/

namespace A063534.P2761624966130516036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063534.P2761624966130516036

namespace A063534

/-- `∩[A161918(n+1), A181687(n+1)]` -/
def P2761624966130516036.Spec : Prop :=
  ∀ n, (P2761624966130516036.a n : ℤ) = A063534 (n + 1)

end A063534

/-! ## A063534.P3424538496938407653

`∩[A030513(n+1), A167211(n+1)]`
-/

namespace A063534.P3424538496938407653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063534.P3424538496938407653

namespace A063534

/-- `∩[A030513(n+1), A167211(n+1)]` -/
def P3424538496938407653.Spec : Prop :=
  ∀ n, (P3424538496938407653.a n : ℤ) = A063534 (n + 1)

end A063534

/-! ## A063534.P12147727200186996417

`∩[A167211(n+1), A328338(n+1)]`
-/

namespace A063534.P12147727200186996417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063534.P12147727200186996417

namespace A063534

/-- `∩[A167211(n+1), A328338(n+1)]` -/
def P12147727200186996417.Spec : Prop :=
  ∀ n, (P12147727200186996417.a n : ℤ) = A063534 (n + 1)

end A063534

/-! ## A063534.P2974341827935388526

`filter[A198045(n+1), A354927(#)]`
-/

namespace A063534.P2974341827935388526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A063534.P2974341827935388526

namespace A063534

/-- `filter[A198045(n+1), A354927(#)]` -/
def P2974341827935388526.Spec : Prop :=
  ∀ n, P2974341827935388526.a n = A063534 (n + 1)

end A063534

/-! ## A063534.P15587747528634350079

`∩[A007422(n+1), A198045(n+1)]`
-/

namespace A063534.P15587747528634350079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063534.P15587747528634350079

namespace A063534

/-- `∩[A007422(n+1), A198045(n+1)]` -/
def P15587747528634350079.Spec : Prop :=
  ∀ n, (P15587747528634350079.a n : ℤ) = A063534 (n + 1)

end A063534

/-! ## A063534.P11214468603242267520

`∩[A030513(n+1), A198045(n+1)]`
-/

namespace A063534.P11214468603242267520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063534.P11214468603242267520

namespace A063534

/-- `∩[A030513(n+1), A198045(n+1)]` -/
def P11214468603242267520.Spec : Prop :=
  ∀ n, (P11214468603242267520.a n : ℤ) = A063534 (n + 1)

end A063534

/-!
# A063535: Primes prime(n) such that prime(n+1)^2 < prime(n)*prime(n+2).

The programs for A063535, the canonical program `A063535.P4924521992092445288` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063535 has offset 0).

The definition of A063535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4802 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063535.P3160417775425085839

`A000040(A233671(n+1)-1)`
-/

namespace A063535.P3160417775425085839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233671 (n + 1) - 1).toNat

end

end A063535.P3160417775425085839

namespace A063535

/-- `A000040(A233671(n+1)-1)` -/
def P3160417775425085839.Spec : Prop :=
  ∀ n, P3160417775425085839.a n = A063535 n

end A063535

/-! ## A063535.P7625598303388673623

`A000040(A358529(n+1)-2)`
-/

namespace A063535.P7625598303388673623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A358529 (n + 1) - 2).toNat

end

end A063535.P7625598303388673623

namespace A063535

/-- `A000040(A358529(n+1)-2)` -/
def P7625598303388673623.Spec : Prop :=
  ∀ n, P7625598303388673623.a n = A063535 n

end A063535

/-! ## A063535.P4924521992092445288

`A000040(lt[A056221(n+1), 0]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063535

/-- `A000040(lt[A056221(n+1), 0]+1)` -/
def P4924521992092445288.Spec : Prop :=
  ∀ n, P4924521992092445288.a n = A063535 n

theorem P4924521992092445288.correct : P4924521992092445288.Spec := by
  intro n
  simp only [A063535]

end A063535

/-! ## A063535.P13109074337772365020

`A000040(lt[A073272(n+1), 1]+1)`
-/

namespace A063535.P13109074337772365020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A063535.P13109074337772365020

namespace A063535

/-- `A000040(lt[A073272(n+1), 1]+1)` -/
def P13109074337772365020.Spec : Prop :=
  ∀ n, P13109074337772365020.a n = A063535 n

end A063535

/-! ## A063535.P12236141181424137533

`A000040(lt[A073274(n+1), 1]+1)`
-/

namespace A063535.P12236141181424137533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A063535.P12236141181424137533

namespace A063535

/-- `A000040(lt[A073274(n+1), 1]+1)` -/
def P12236141181424137533.Spec : Prop :=
  ∀ n, P12236141181424137533.a n = A063535 n

end A063535

/-! ## A063535.P8267377620773862974

`record[A000040(n+1)/A228098(n+1)]`
-/

namespace A063535.P8267377620773862974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A228098 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063535.P8267377620773862974

namespace A063535

/-- `record[A000040(n+1)/A228098(n+1)]` -/
def P8267377620773862974.Spec : Prop :=
  ∀ n, P8267377620773862974.a n = (A063535 n : ℚ)

end A063535

/-! ## A063535.P15731271560871044541

`A000040(record[1-n*A079054(n+2)])`
-/

namespace A063535.P15731271560871044541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063535.P15731271560871044541

namespace A063535

/-- `A000040(record[1-n*A079054(n+2)])` -/
def P15731271560871044541.Spec : Prop :=
  ∀ n, P15731271560871044541.a n = A063535 n

end A063535

/-! ## A063535.P6220235530729549133

`A008578(A233671(n+1))`
-/

namespace A063535.P6220235530729549133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A233671 (n + 1)).toNat

end

end A063535.P6220235530729549133

namespace A063535

/-- `A008578(A233671(n+1))` -/
def P6220235530729549133.Spec : Prop :=
  ∀ n, P6220235530729549133.a n = A063535 n

end A063535

/-! ## A063535.P14540455766227476028

`A000040(eq[1, A108415(n+2)]+1)`
-/

namespace A063535.P14540455766227476028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A063535.P14540455766227476028

namespace A063535

/-- `A000040(eq[1, A108415(n+2)]+1)` -/
def P14540455766227476028.Spec : Prop :=
  ∀ n, P14540455766227476028.a n = A063535 n

end A063535

/-! ## A063535.P6595015291735905172

`A000040(eq[A051702(n+1), A339270(n+1)])`
-/

namespace A063535.P6595015291735905172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063535.P6595015291735905172

namespace A063535

/-- `A000040(eq[A051702(n+1), A339270(n+1)])` -/
def P6595015291735905172.Spec : Prop :=
  ∀ n, P6595015291735905172.a n = A063535 n

end A063535

/-! ## A063535.P15832407236111855184

`A000040(lt[A054541(n+1), A001223(n+1)])`
-/

namespace A063535.P15832407236111855184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063535.P15832407236111855184

namespace A063535

/-- `A000040(lt[A054541(n+1), A001223(n+1)])` -/
def P15832407236111855184.Spec : Prop :=
  ∀ n, P15832407236111855184.a n = A063535 n

end A063535

/-! ## A063535.P13970386223847421355

`A000040(eq[A046929(n+1)+1, A339270(n+1)])`
-/

namespace A063535.P13970386223847421355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063535.P13970386223847421355

namespace A063535

/-- `A000040(eq[A046929(n+1)+1, A339270(n+1)])` -/
def P13970386223847421355.Spec : Prop :=
  ∀ n, P13970386223847421355.a n = A063535 n

end A063535

/-! ## A063535.P16456215542265561972

`A008578(lt[A054541(n+1), A001223(n+1)]+1)`
-/

namespace A063535.P16456215542265561972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A063535.P16456215542265561972

namespace A063535

/-- `A008578(lt[A054541(n+1), A001223(n+1)]+1)` -/
def P16456215542265561972.Spec : Prop :=
  ∀ n, P16456215542265561972.a n = A063535 n

end A063535

/-! ## A063535.P147904269938281288

`A000040(lt[A118534(n+1)+1, A008578(n+1)])`
-/

namespace A063535.P147904269938281288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063535.P147904269938281288

namespace A063535

/-- `A000040(lt[A118534(n+1)+1, A008578(n+1)])` -/
def P147904269938281288.Spec : Prop :=
  ∀ n, P147904269938281288.a n = A063535 n

end A063535

/-! ## A063535.P16866234461376399175

`A158611(A358529(n+1))`
-/

namespace A063535.P16866234461376399175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A358529 (n + 1)).toNat

end

end A063535.P16866234461376399175

namespace A063535

/-- `A158611(A358529(n+1))` -/
def P16866234461376399175.Spec : Prop :=
  ∀ n, P16866234461376399175.a n = A063535 n

end A063535

/-! ## A063535.P7089972027397434128

`A000040(lt[A054541(n+1), A054541(n+2)])`
-/

namespace A063535.P7089972027397434128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063535.P7089972027397434128

namespace A063535

/-- `A000040(lt[A054541(n+1), A054541(n+2)])` -/
def P7089972027397434128.Spec : Prop :=
  ∀ n, P7089972027397434128.a n = A063535 n

end A063535

/-! ## A063535.P15401998379181664615

`A000040(lt[A125266(n+1), A125266(n+2)])`
-/

namespace A063535.P15401998379181664615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063535.P15401998379181664615

namespace A063535

/-- `A000040(lt[A125266(n+1), A125266(n+2)])` -/
def P15401998379181664615.Spec : Prop :=
  ∀ n, P15401998379181664615.a n = A063535 n

end A063535

/-! ## A063535.P11655677684499926920

`A000040(A258025(n+1))`
-/

namespace A063535.P11655677684499926920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258025 (n + 1)).toNat

end

end A063535.P11655677684499926920

namespace A063535

/-- `A000040(A258025(n+1))` -/
def P11655677684499926920.Spec : Prop :=
  ∀ n, P11655677684499926920.a n = A063535 n

end A063535

/-! ## A063535.P12154996505775382365

`A008578(A258025(n+1)+1)`
-/

namespace A063535.P12154996505775382365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A258025 (n + 1) + 1).toNat

end

end A063535.P12154996505775382365

namespace A063535

/-- `A008578(A258025(n+1)+1)` -/
def P12154996505775382365.Spec : Prop :=
  ∀ n, P12154996505775382365.a n = A063535 n

end A063535

/-!
# A063536: a(n) = floor(cotangent(n)^3).

The programs for A063536, the canonical program `A063536.P5588768487015741314` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063536 has offset 1).

The definition of A063536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063536.P5588768487015741314

`floor(cot(n+1)^3)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063536

/-- `floor(cot(n+1)^3)` -/
def P5588768487015741314.Spec : Prop :=
  ∀ n, P5588768487015741314.a n = A063536 (n + 1)

theorem P5588768487015741314.correct : P5588768487015741314.Spec := by
  intro n
  simp only [A063536, Nat.add_sub_cancel]

end A063536

/-! ## A063536.P2039721246564894852

`floor(tan(n+1)^-3)`
-/

namespace A063536.P2039721246564894852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n + 1 : ℝ) ^ (-3 : ℤ)⌋

end

end A063536.P2039721246564894852

namespace A063536

/-- `floor(tan(n+1)^-3)` -/
def P2039721246564894852.Spec : Prop :=
  ∀ n, P2039721246564894852.a n = A063536 (n + 1)

end A063536

/-! ## A063536.P2904732100969213485

`floor(1/tan(n+1)^3)`
-/

namespace A063536.P2904732100969213485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tan (n + 1 : ℝ) ^ 3⌋

end

end A063536.P2904732100969213485

namespace A063536

/-- `floor(1/tan(n+1)^3)` -/
def P2904732100969213485.Spec : Prop :=
  ∀ n, P2904732100969213485.a n = A063536 (n + 1)

end A063536

/-! ## A063536.P6613114298309865156

`ceil(cot(n+1)^3)-1`
-/

namespace A063536.P6613114298309865156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (n + 1 : ℝ) ^ 3⌉ - 1

end

end A063536.P6613114298309865156

namespace A063536

/-- `ceil(cot(n+1)^3)-1` -/
def P6613114298309865156.Spec : Prop :=
  ∀ n, P6613114298309865156.a n = A063536 (n + 1)

end A063536

/-! ## A063536.P5420596077842268881

`-ceil(cot(-(n+1))^3)`
-/

namespace A063536.P5420596077842268881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.cot (-(n + 1 : ℤ) : ℝ) ^ 3⌉

end

end A063536.P5420596077842268881

namespace A063536

/-- `-ceil(cot(-(n+1))^3)` -/
def P5420596077842268881.Spec : Prop :=
  ∀ n, P5420596077842268881.a n = A063536 (n + 1)

end A063536

/-! ## A063536.P7591641764863046876

`floor(cot(n+1)²*cot(n+1))`
-/

namespace A063536.P7591641764863046876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (n + 1 : ℝ) ^ 2 * Real.cot (n + 1 : ℝ)⌋

end

end A063536.P7591641764863046876

namespace A063536

/-- `floor(cot(n+1)²*cot(n+1))` -/
def P7591641764863046876.Spec : Prop :=
  ∀ n, P7591641764863046876.a n = A063536 (n + 1)

theorem P7591641764863046876.correct : P7591641764863046876.Spec := by
  intro n
  simp only [A063536, Nat.add_sub_cancel, A063536.P7591641764863046876.a, A063536.P5588768487015741314.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A063536

/-!
# A063537: Numbers k such that floor(tan(k)) > floor(tan(m)) for all m < k.

The programs for A063537, there is no canonical definition to state claims against.
-/

/-! ## A063537.P15358700291860269426

`record[A024814(n+1)%A231957(n+1)]`
-/

namespace A063537.P15358700291860269426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024814 (n + 1)) (A231957 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063537.P15358700291860269426

/-! ## A063537.P7707446989570654679

`A327788(record[A000503(n+1)])`
-/

namespace A063537.P7707446989570654679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327788 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063537.P7707446989570654679

/-! ## A063537.P15807334084814125463

`A327788(record[A195911(n+1)*A328376(n+1)])`
-/

namespace A063537.P15807334084814125463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195911 (n + 1) * A328376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327788 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063537.P15807334084814125463

/-! ## A063537.P9294532679734393314

`A024814(lt[A114156(n), A333685(n)])`
-/

namespace A063537.P9294532679734393314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024814 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063537.P9294532679734393314

/-! ## A063537.P18049662268735698048

`A024814(lt[A060750(n+1), A056695(n+1)])`
-/

namespace A063537.P18049662268735698048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024814 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063537.P18049662268735698048

/-!
# A063538: Numbers n that are not sqrt(n-1)-smooth: largest prime factor of n (=A006530(n)) >= sqrt(n).

The programs for A063538, the canonical program `A063538.P13239145947067511465` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063538 has offset 1).

The definition of A063538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063538.P10871291118381351336

`comp[A063539(n+1)-1]+1`
-/

namespace A063538.P10871291118381351336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A063538.P10871291118381351336

namespace A063538

/-- `comp[A063539(n+1)-1]+1` -/
def P10871291118381351336.Spec : Prop :=
  ∀ n, (P10871291118381351336.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P13239145947067511465

`lt[n, A006530(n+2)²]+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A063538

/-- `lt[n, A006530(n+2)²]+2` -/
def P13239145947067511465.Spec : Prop :=
  ∀ n, (P13239145947067511465.a n : ℤ) = A063538 (n + 1)

theorem P13239145947067511465.correct : P13239145947067511465.Spec := by
  intro n
  simp only [A063538, Nat.add_sub_cancel]

end A063538

/-! ## A063538.P13375623536067854457

`lt[sqrt(abs(1-n)), A006530(n+1)]+1`
-/

namespace A063538.P13375623536067854457
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|1 - (n : ℤ)| : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A063538.P13375623536067854457

namespace A063538

/-- `lt[sqrt(abs(1-n)), A006530(n+1)]+1` -/
def P13375623536067854457.Spec : Prop :=
  ∀ n, (P13375623536067854457.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P1658615690233133980

`∪[A064052(n+1), A033476(n)]`
-/

namespace A063538.P1658615690233133980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P1658615690233133980

namespace A063538

/-- `∪[A064052(n+1), A033476(n)]` -/
def P1658615690233133980.Spec : Prop :=
  ∀ n, (P1658615690233133980.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P10389309528293762530

`∪[A000040(n+1), A063762(n+1)]`
-/

namespace A063538.P10389309528293762530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P10389309528293762530

namespace A063538

/-- `∪[A000040(n+1), A063762(n+1)]` -/
def P10389309528293762530.Spec : Prop :=
  ∀ n, (P10389309528293762530.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P8891815152524275221

`∪[A000430(n+1), A063762(n+1)]`
-/

namespace A063538.P8891815152524275221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P8891815152524275221

namespace A063538

/-- `∪[A000430(n+1), A063762(n+1)]` -/
def P8891815152524275221.Spec : Prop :=
  ∀ n, (P8891815152524275221.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P16905468446781830394

`∪[A000430(n+1), A063763(n+1)]`
-/

namespace A063538.P16905468446781830394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P16905468446781830394

namespace A063538

/-- `∪[A000430(n+1), A063763(n+1)]` -/
def P16905468446781830394.Spec : Prop :=
  ∀ n, (P16905468446781830394.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P11935189188949409916

`∪[A000430(n+1), A064052(n+1)]`
-/

namespace A063538.P11935189188949409916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P11935189188949409916

namespace A063538

/-- `∪[A000430(n+1), A064052(n+1)]` -/
def P11935189188949409916.Spec : Prop :=
  ∀ n, (P11935189188949409916.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P6312952779073025297

`∪[A001248(n+1), A064052(n+1)]`
-/

namespace A063538.P6312952779073025297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P6312952779073025297

namespace A063538

/-- `∪[A001248(n+1), A064052(n+1)]` -/
def P6312952779073025297.Spec : Prop :=
  ∀ n, (P6312952779073025297.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P2850053232509403424

`∪[A001358(n+1), A064052(n+1)]`
-/

namespace A063538.P2850053232509403424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P2850053232509403424

namespace A063538

/-- `∪[A001358(n+1), A064052(n+1)]` -/
def P2850053232509403424.Spec : Prop :=
  ∀ n, (P2850053232509403424.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P2800820270720379913

`∪[A001751(n+1), A063762(n+1)]`
-/

namespace A063538.P2800820270720379913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P2800820270720379913

namespace A063538

/-- `∪[A001751(n+1), A063762(n+1)]` -/
def P2800820270720379913.Spec : Prop :=
  ∀ n, (P2800820270720379913.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P11238699697145573707

`∪[A051948(n+1), A063762(n+1)]`
-/

namespace A063538.P11238699697145573707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P11238699697145573707

namespace A063538

/-- `∪[A051948(n+1), A063762(n+1)]` -/
def P11238699697145573707.Spec : Prop :=
  ∀ n, (P11238699697145573707.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P14847445192019233662

`∪[A053813(n+1), A063762(n+1)]`
-/

namespace A063538.P14847445192019233662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P14847445192019233662

namespace A063538

/-- `∪[A053813(n+1), A063762(n+1)]` -/
def P14847445192019233662.Spec : Prop :=
  ∀ n, (P14847445192019233662.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P17527564691270250319

`∩[comp[A063539(n+2)], A356438(n+2)]`
-/

namespace A063538.P17527564691270250319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A063538.P17527564691270250319

namespace A063538

/-- `∩[comp[A063539(n+2)], A356438(n+2)]` -/
def P17527564691270250319.Spec : Prop :=
  ∀ n, (P17527564691270250319.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P2527084232695216482

`∩[A027855(n+1), A356438(n+1)]`
-/

namespace A063538.P2527084232695216482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P2527084232695216482

namespace A063538

/-- `∩[A027855(n+1), A356438(n+1)]` -/
def P2527084232695216482.Spec : Prop :=
  ∀ n, (P2527084232695216482.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P17386777147669686854

`∩[A085235(n+1), A356438(n+1)]`
-/

namespace A063538.P17386777147669686854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063538.P17386777147669686854

namespace A063538

/-- `∩[A085235(n+1), A356438(n+1)]` -/
def P17386777147669686854.Spec : Prop :=
  ∀ n, (P17386777147669686854.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P1188432163399890445

`lt[∏{p}[n, n-#²], 1]`
-/

namespace A063538.P1188432163399890445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - (p ^ 2 : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A063538.P1188432163399890445

namespace A063538

/-- `lt[∏{p}[n, n-#²], 1]` -/
def P1188432163399890445.Spec : Prop :=
  ∀ n, (P1188432163399890445.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P13735415352027958501

`filter[n+1, A341591(#)]`
-/

namespace A063538.P13735415352027958501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j) = 1) n)

end

end A063538.P13735415352027958501

namespace A063538

/-- `filter[n+1, A341591(#)]` -/
def P13735415352027958501.Spec : Prop :=
  ∀ n, (P13735415352027958501.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P7792325271785432900

`lt[0, A097975(n+1)]+1`
-/

namespace A063538.P7792325271785432900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A063538.P7792325271785432900

namespace A063538

/-- `lt[0, A097975(n+1)]+1` -/
def P7792325271785432900.Spec : Prop :=
  ∀ n, (P7792325271785432900.a n : ℤ) = A063538 (n + 1)

end A063538

/-! ## A063538.P6922672404664355208

`eq[2, A000005(A033677(n+1))]+1`
-/

namespace A063538.P6922672404664355208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A033677 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063538.P6922672404664355208

namespace A063538

/-- `eq[2, A000005(A033677(n+1))]+1` -/
def P6922672404664355208.Spec : Prop :=
  ∀ n, (P6922672404664355208.a n : ℤ) = A063538 (n + 1)

end A063538

/-!
# A063539: Numbers n that are sqrt(n-1)-smooth: largest prime factor of n (=A006530(n)) < sqrt(n).

The programs for A063539, the canonical program `A063539.P11657316754676393287` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063539 has offset 1).

The definition of A063539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063539.P11657316754676393287

`comp[(n+1)%A006530(n+2)²]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A063539

/-- `comp[(n+1)%A006530(n+2)²]+1` -/
def P11657316754676393287.Spec : Prop :=
  ∀ n, (P11657316754676393287.a n : ℤ) = A063539 (n + 1)

theorem P11657316754676393287.correct : P11657316754676393287.Spec := by
  intro n
  simp only [A063539, Nat.add_sub_cancel]

end A063539

/-! ## A063539.P5373588889122012011

`∩[A048098(n+1), A111087(n+1)]`
-/

namespace A063539.P5373588889122012011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063539.P5373588889122012011

namespace A063539

/-- `∩[A048098(n+1), A111087(n+1)]` -/
def P5373588889122012011.Spec : Prop :=
  ∀ n, (P5373588889122012011.a n : ℤ) = A063539 (n + 1)

end A063539

/-! ## A063539.P18443533605434005828

`∩[A048098(n+1), A100959(n+1)]`
-/

namespace A063539.P18443533605434005828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063539.P18443533605434005828

namespace A063539

/-- `∩[A048098(n+1), A100959(n+1)]` -/
def P18443533605434005828.Spec : Prop :=
  ∀ n, (P18443533605434005828.a n : ℤ) = A063539 (n + 1)

end A063539

/-! ## A063539.P7436249838698958821

`∩[A048098(n+1), A213367(n+1)]`
-/

namespace A063539.P7436249838698958821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063539.P7436249838698958821

namespace A063539

/-- `∩[A048098(n+1), A213367(n+1)]` -/
def P7436249838698958821.Spec : Prop :=
  ∀ n, (P7436249838698958821.a n : ℤ) = A063539 (n + 1)

end A063539

/-! ## A063539.P9083899710755128592

`lt[A097975(n+1), 1]+1`
-/

namespace A063539.P9083899710755128592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A063539.P9083899710755128592

namespace A063539

/-- `lt[A097975(n+1), 1]+1` -/
def P9083899710755128592.Spec : Prop :=
  ∀ n, (P9083899710755128592.a n : ℤ) = A063539 (n + 1)

end A063539

/-! ## A063539.P7252778404582338897

`eq[3, A190551(A097975(n+1)+1)]+1`
-/

namespace A063539.P7252778404582338897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190551 (A097975 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063539.P7252778404582338897

namespace A063539

/-- `eq[3, A190551(A097975(n+1)+1)]+1` -/
def P7252778404582338897.Spec : Prop :=
  ∀ n, (P7252778404582338897.a n : ℤ) = A063539 (n + 1)

end A063539

/-! ## A063539.P11668148023701423825

`eq[A001221(n+1), A333806(n+1)]+1`
-/

namespace A063539.P11668148023701423825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063539.P11668148023701423825

namespace A063539

/-- `eq[A001221(n+1), A333806(n+1)]+1` -/
def P11668148023701423825.Spec : Prop :=
  ∀ n, (P11668148023701423825.a n : ℤ) = A063539 (n + 1)

end A063539

/-! ## A063539.P15819304946733634427

`lt[A006530(n+1)², A233583(n+1)]+1`
-/

namespace A063539.P15819304946733634427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A063539.P15819304946733634427

namespace A063539

/-- `lt[A006530(n+1)², A233583(n+1)]+1` -/
def P15819304946733634427.Spec : Prop :=
  ∀ n, (P15819304946733634427.a n : ℤ) = A063539 (n + 1)

end A063539

/-!
# A063541: Least number of empty triangles determined by n points in the plane.

The programs for A063541, there is no canonical definition to state claims against.
-/

/-! ## A063541.P15073433856739763696

`∑[val(∏{digits}[n, #!], 7)+2*n]+1`
-/

namespace A063541.P15073433856739763696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).prod 7 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A063541.P15073433856739763696

/-! ## A063541.P3662405321564148827

`∑{digits}[n, floor(#/7)]+a(n-1)+2*n` with `a(0)=1`
-/

namespace A063541.P3662405321564148827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 7⌋).sum + (a (n - 1) + (2 * n : ℤ))

end

end A063541.P3662405321564148827

/-! ## A063541.P15754141025919155186

`lt[n/(xor(n, n+1)+1)+1, ∏{p}[n+1, 5%(#+4)]]+n²`
-/

namespace A063541.P15754141025919155186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 5 % (p + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + n ^ 2

end

end A063541.P15754141025919155186

/-! ## A063541.P8446195298527944921

`A025817(4*4*n)`
-/

namespace A063541.P8446195298527944921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025817 (4 * (4 * n))

end

end A063541.P8446195298527944921

/-! ## A063541.P6329498921756094429

`∑[A026268(n)]+n²`
-/

namespace A063541.P6329498921756094429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A063541.P6329498921756094429

/-!
# A063542: Least number of empty convex quadrilaterals (4-gons) determined by n points in the plane.

The programs for A063542, there is no canonical definition to state claims against.
-/

/-! ## A063542.P1126998077936938946

`∑[gcd(3, ∑[∑[n+1]])+n-1]`
-/

namespace A063542.P1126998077936938946
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063542.P1126998077936938946

/-! ## A063542.P3022210858754011144

`∑[val(C(n+3, 3)²*6^n, 3)]`
-/

namespace A063542.P3022210858754011144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose (n + 3) 3 ^ 2 * 6 ^ n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063542.P3022210858754011144

/-! ## A063542.P1316607229582916045

`∑[(C(n+3, 3)²²-1)%3+n]`
-/

namespace A063542.P1316607229582916045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((Nat.choose (n + 3) 3 ^ 2) ^ 2 : ℤ) - 1) 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063542.P1316607229582916045

/-! ## A063542.P12587922013865314667

`round(A301059(n)/4)`
-/

namespace A063542.P12587922013865314667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A301059 n : ℚ) / 4)

end

end A063542.P12587922013865314667

/-! ## A063542.P183921980928741607

`A309796(n)+∑[n]`
-/

namespace A063542.P183921980928741607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309796 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063542.P183921980928741607

/-!
# A063543: a(n) = n - product of the nonzero digits of n.

The programs for A063543, the canonical program `A063543.P3901565496532426814` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063543 has offset 1).

The definition of A063543 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063543.P3901565496532426814

`n+1-A051801(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063543

/-- `n+1-A051801(n+1)` -/
def P3901565496532426814.Spec : Prop :=
  ∀ n, P3901565496532426814.a n = A063543 (n + 1)

theorem P3901565496532426814.correct : P3901565496532426814.Spec := by
  intro n
  simp only [A063543, Nat.add_sub_cancel]

end A063543

/-! ## A063543.P14557388238956369255

`∑[1-Δ[A051801(n)]]-1`
-/

namespace A063543.P14557388238956369255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A063543.P14557388238956369255

namespace A063543

/-- `∑[1-Δ[A051801(n)]]-1` -/
def P14557388238956369255.Spec : Prop :=
  ∀ n, P14557388238956369255.a n = A063543 (n + 1)

end A063543

/-! ## A063543.P17883577805046152174

`n+1-sqrt(A352598(n+1))`
-/

namespace A063543.P17883577805046152174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.sqrt (A352598 (n + 1) : ℝ)

end

end A063543.P17883577805046152174

namespace A063543

/-- `n+1-sqrt(A352598(n+1))` -/
def P17883577805046152174.Spec : Prop :=
  ∀ n, P17883577805046152174.a n = (A063543 (n + 1) : ℝ)

end A063543

/-! ## A063543.P10936219539737971358

`2*(n+1)-A063114(n+1)`
-/

namespace A063543.P10936219539737971358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A063114 (n + 1)

end

end A063543.P10936219539737971358

namespace A063543

/-- `2*(n+1)-A063114(n+1)` -/
def P10936219539737971358.Spec : Prop :=
  ∀ n, P10936219539737971358.a n = A063543 (n + 1)

end A063543

/-! ## A063543.P15714900593445929886

`n+1-∏{digits}[n+1, A034888(2*#)]`
-/

namespace A063543.P15714900593445929886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A034888 (2 * x)).prod

end

end A063543.P15714900593445929886

namespace A063543

/-- `n+1-∏{digits}[n+1, A034888(2*#)]` -/
def P15714900593445929886.Spec : Prop :=
  ∀ n, P15714900593445929886.a n = A063543 (n + 1)

end A063543

/-! ## A063543.P17941996198623188242

`n+1-A007954(A004185(n+1))`
-/

namespace A063543.P17941996198623188242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007954 (A004185 (n + 1)).toNat

end

end A063543.P17941996198623188242

namespace A063543

/-- `n+1-A007954(A004185(n+1))` -/
def P17941996198623188242.Spec : Prop :=
  ∀ n, P17941996198623188242.a n = A063543 (n + 1)

end A063543

/-! ## A063543.P17781551308015602755

`1-A007954(A004719(n+1))+n`
-/

namespace A063543.P17781551308015602755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007954 (A004719 (n + 1)).toNat + (n : ℤ)

end

end A063543.P17781551308015602755

namespace A063543

/-- `1-A007954(A004719(n+1))+n` -/
def P17781551308015602755.Spec : Prop :=
  ∀ n, P17781551308015602755.a n = A063543 (n + 1)

end A063543

/-! ## A063543.P17719405465432395388

`A163300(n+1)%A063114(n+1)`
-/

namespace A063543.P17719405465432395388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A063114 (n + 1))

end

end A063543.P17719405465432395388

namespace A063543

/-- `A163300(n+1)%A063114(n+1)` -/
def P17719405465432395388.Spec : Prop :=
  ∀ n, P17719405465432395388.a n = A063543 (n + 1)

end A063543

/-! ## A063543.P14142654432977673075

`n+1-A230101(n+1)/(n+1)`
-/

namespace A063543.P14142654432977673075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A230101 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A063543.P14142654432977673075

namespace A063543

/-- `n+1-A230101(n+1)/(n+1)` -/
def P14142654432977673075.Spec : Prop :=
  ∀ n, P14142654432977673075.a n = (A063543 (n + 1) : ℚ)

end A063543

/-!
# A063544: Smallest number of triangulations of n points in the plane.

The programs for A063544, there is no canonical definition to state claims against.
-/

/-! ## A063544.P13648140504545100368

`A088980(xor(n², A294046(n)))`
-/

namespace A063544.P13648140504545100368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088980 (Int.xor (n ^ 2 : ℤ) (A294046 n)).toNat

end

end A063544.P13648140504545100368

/-! ## A063544.P4819439319466241567

`A023190(∑[A303843(n+1)]+1)`
-/

namespace A063544.P4819439319466241567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A063544.P4819439319466241567

/-! ## A063544.P7942293510488961780

`A342518(∑[A342518(2*n)]-1)`
-/

namespace A063544.P7942293510488961780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342518 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342518 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A063544.P7942293510488961780

/-! ## A063544.P11681668288490092784

`A318229(n+1)-A302242(A022493(n))`
-/

namespace A063544.P11681668288490092784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) - A302242 (A022493 n).toNat

end

end A063544.P11681668288490092784

/-!
# A063545: Largest number of triangulations of n points in the plane.

The programs for A063545, there is no canonical definition to state claims against.
-/

/-! ## A063545.P5439428701686375574

`A342853(A342853(n+1))+A000744(n)`
-/

namespace A063545.P5439428701686375574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342853 (A342853 (n + 1)).toNat + A000744 n

end

end A063545.P5439428701686375574

/-! ## A063545.P5072779966271153858

`A264976(lcm(A000930(n), A120588(n+2)))`
-/

namespace A063545.P5072779966271153858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264976 (Int.lcm (A000930 n) (A120588 (n + 2)))

end

end A063545.P5072779966271153858

/-!
# A063546: Largest number of crossing-free Hamiltonian cycles of n points in the plane.

The programs for A063546, there is no canonical definition to state claims against.
-/

/-! ## A063546.P12423525128498612856

`A331677(4*A150806(n))`
-/

namespace A063546.P12423525128498612856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331677 (4 * A150806 n).toNat

end

end A063546.P12423525128498612856

/-! ## A063546.P14865329489644013396

`A345909(A166896(n))+A067392(n+1)`
-/

namespace A063546.P14865329489644013396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345909 (A166896 n).toNat + A067392 (n + 1)

end

end A063546.P14865329489644013396

/-!
# A063547: Integers with consecutive anti-divisors.

The programs for A063547, there is no canonical definition to state claims against.
-/

/-! ## A063547.P9401681623989266574

`eq[1, A074749(n+1)]+1`
-/

namespace A063547.P9401681623989266574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063547.P9401681623989266574

/-! ## A063547.P1086315250384656254

`eq[2, sqrt(a(A074749(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A063547.P1086315250384656254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  Real.sqrt (f2 (A074749 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A063547.P1086315250384656254

/-! ## A063547.P135981161507384932

`eq[1, A074749(n^floor(atan(n)))]`
-/

namespace A063547.P135981161507384932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074749 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063547.P135981161507384932

/-! ## A063547.P11127733060820121902

`eq[2, A000010(a(A074749(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A063547.P11127733060820121902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A000010 (f2 (A074749 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063547.P11127733060820121902

/-! ## A063547.P5319272998198958325

`eq[2, A000040(a(A074749(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A063547.P5319272998198958325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000040 (f2 (A074749 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063547.P5319272998198958325

/-! ## A063547.P11618808258137227903

`eq[2, A007318(a(A074749(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A063547.P11618808258137227903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  A007318 (f2 (A074749 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063547.P11618808258137227903

/-! ## A063547.P242375019132101667

`eq[2, A000188(a(A074749(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A063547.P242375019132101667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A000188 (f2 (A074749 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063547.P242375019132101667

/-! ## A063547.P15177367636699887527

`eq[4, A014574(a(A074749(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A063547.P15177367636699887527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A014574 (f2 (A074749 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063547.P15177367636699887527

/-! ## A063547.P364647579752003845

`eq[2, A066241(a(A074749(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A063547.P364647579752003845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A066241 (f2 (A074749 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063547.P364647579752003845

/-! ## A063547.P1511365530870252877

`eq[1, A074749(A028310(n))]`
-/

namespace A063547.P1511365530870252877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074749 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063547.P1511365530870252877

/-!
# A063549: Smallest number of crossing-free matchings on n points in the plane.

The programs for A063549, the canonical program `A063549.P3440238765990311944` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063549 has offset 1).

The definition of A063549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063549.P3947703287119947715

`A057977(n+1)`
-/

namespace A063549.P3947703287119947715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (n + 1)

end

end A063549.P3947703287119947715

namespace A063549

/-- `A057977(n+1)` -/
def P3947703287119947715.Spec : Prop :=
  ∀ n, P3947703287119947715.a n = A063549 (n + 1)

end A063549

/-! ## A063549.P8444092025328722992

`A241543(n+3)/2`
-/

namespace A063549.P8444092025328722992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241543 (n + 3) : ℚ) / 2

end

end A063549.P8444092025328722992

namespace A063549

/-- `A241543(n+3)/2` -/
def P8444092025328722992.Spec : Prop :=
  ∀ n, P8444092025328722992.a n = (A063549 (n + 1) : ℚ)

end A063549

/-! ## A063549.P15924629019539781034

`-Δ[-∑[A057977(n)]]`
-/

namespace A063549.P15924629019539781034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A063549.P15924629019539781034

namespace A063549

/-- `-Δ[-∑[A057977(n)]]` -/
def P15924629019539781034.Spec : Prop :=
  ∀ n, P15924629019539781034.a n = A063549 (n + 1)

end A063549

/-! ## A063549.P3440238765990311944

`C(or(1, n), n)*A000108(∑[n%2])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063549

/-- `C(or(1, n), n)*A000108(∑[n%2])` -/
def P3440238765990311944.Spec : Prop :=
  ∀ n, P3440238765990311944.a n = A063549 (n + 1)

theorem P3440238765990311944.correct : P3440238765990311944.Spec := by
  intro n
  simp only [A063549, Nat.add_sub_cancel]

end A063549

/-! ## A063549.P8581821827751089873

`gcd(C(n, n²), A057977(2*n-(n-1)))`
-/

namespace A063549.P8581821827751089873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) (A057977 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A063549.P8581821827751089873

namespace A063549

/-- `gcd(C(n, n²), A057977(2*n-(n-1)))` -/
def P8581821827751089873.Spec : Prop :=
  ∀ n, (P8581821827751089873.a n : ℤ) = A063549 (n + 1)

end A063549

/-! ## A063549.P6321762508675723378

`A238452(n)+A126120(n)`
-/

namespace A063549.P6321762508675723378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238452 n + A126120 n

end

end A063549.P6321762508675723378

namespace A063549

/-- `A238452(n)+A126120(n)` -/
def P6321762508675723378.Spec : Prop :=
  ∀ n, P6321762508675723378.a n = A063549 (n + 1)

end A063549

/-! ## A063549.P8765467533312439831

`A117187(n)-A116385(n)`
-/

namespace A063549.P8765467533312439831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117187 n - A116385 n

end

end A063549.P8765467533312439831

namespace A063549

/-- `A117187(n)-A116385(n)` -/
def P8765467533312439831.Spec : Prop :=
  ∀ n, P8765467533312439831.a n = A063549 (n + 1)

end A063549

/-! ## A063549.P15710844727716920736

`A037952(n+1)/A152271(n)`
-/

namespace A063549.P15710844727716920736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037952 (n + 1) : ℚ) / (A152271 n : ℚ)

end

end A063549.P15710844727716920736

namespace A063549

/-- `A037952(n+1)/A152271(n)` -/
def P15710844727716920736.Spec : Prop :=
  ∀ n, P15710844727716920736.a n = (A063549 (n + 1) : ℚ)

end A063549

/-! ## A063549.P13893821060940352637

`A208355(n)+n*A126120(n)`
-/

namespace A063549.P13893821060940352637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n + (n : ℤ) * A126120 n

end

end A063549.P13893821060940352637

namespace A063549

/-- `A208355(n)+n*A126120(n)` -/
def P13893821060940352637.Spec : Prop :=
  ∀ n, P13893821060940352637.a n = A063549 (n + 1)

end A063549

/-! ## A063549.P13051318601886310151

`A138364(n+1)+A126120(n+1)`
-/

namespace A063549.P13051318601886310151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (n + 1) + A126120 (n + 1)

end

end A063549.P13051318601886310151

namespace A063549

/-- `A138364(n+1)+A126120(n+1)` -/
def P13051318601886310151.Spec : Prop :=
  ∀ n, P13051318601886310151.a n = A063549 (n + 1)

end A063549

/-! ## A063549.P5098596639810809299

`A128014(n+2)-A037952(n+1)`
-/

namespace A063549.P5098596639810809299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (n + 2) - A037952 (n + 1)

end

end A063549.P5098596639810809299

namespace A063549

/-- `A128014(n+2)-A037952(n+1)` -/
def P5098596639810809299.Spec : Prop :=
  ∀ n, P5098596639810809299.a n = A063549 (n + 1)

end A063549

/-! ## A063549.P14096034345497131234

`A001405(n+1)/A133622(n+1)`
-/

namespace A063549.P14096034345497131234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A133622 (n + 1) : ℚ)

end

end A063549.P14096034345497131234

namespace A063549

/-- `A001405(n+1)/A133622(n+1)` -/
def P14096034345497131234.Spec : Prop :=
  ∀ n, P14096034345497131234.a n = (A063549 (n + 1) : ℚ)

end A063549

/-! ## A063549.P11208380677396026977

`A001405(n+1)/A158416(n+1)`
-/

namespace A063549.P11208380677396026977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A158416 (n + 1) : ℚ)

end

end A063549.P11208380677396026977

namespace A063549

/-- `A001405(n+1)/A158416(n+1)` -/
def P11208380677396026977.Spec : Prop :=
  ∀ n, P11208380677396026977.a n = (A063549 (n + 1) : ℚ)

end A063549

/-! ## A063549.P6523520779929182413

`A037952(n+1)/A057979(n+2)`
-/

namespace A063549.P6523520779929182413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037952 (n + 1) : ℚ) / (A057979 (n + 2) : ℚ)

end

end A063549.P6523520779929182413

namespace A063549

/-- `A037952(n+1)/A057979(n+2)` -/
def P6523520779929182413.Spec : Prop :=
  ∀ n, P6523520779929182413.a n = (A063549 (n + 1) : ℚ)

end A063549

/-! ## A063549.P16053181118028216552

`A001405(n+1)/A152271(n+2)`
-/

namespace A063549.P16053181118028216552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A152271 (n + 2) : ℚ)

end

end A063549.P16053181118028216552

namespace A063549

/-- `A001405(n+1)/A152271(n+2)` -/
def P16053181118028216552.Spec : Prop :=
  ∀ n, P16053181118028216552.a n = (A063549 (n + 1) : ℚ)

end A063549

/-! ## A063549.P5916261420956720148

`gcd(A001405(n+1), A037952(n+1))`
-/

namespace A063549.P5916261420956720148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (n + 1)) (A037952 (n + 1))

end

end A063549.P5916261420956720148

namespace A063549

/-- `gcd(A001405(n+1), A037952(n+1))` -/
def P5916261420956720148.Spec : Prop :=
  ∀ n, (P5916261420956720148.a n : ℤ) = A063549 (n + 1)

end A063549

/-! ## A063549.P2526695959311858041

`gcd(A126120(n+1), A126930(n+1))`
-/

namespace A063549.P2526695959311858041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126120 (n + 1)) (A126930 (n + 1))

end

end A063549.P2526695959311858041

namespace A063549

/-- `gcd(A126120(n+1), A126930(n+1))` -/
def P2526695959311858041.Spec : Prop :=
  ∀ n, (P2526695959311858041.a n : ℤ) = A063549 (n + 1)

end A063549

/-! ## A063549.P8296046953850573796

`C(or(1, n), n)*A000108(A110654(n))`
-/

namespace A063549.P8296046953850573796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n) n : ℤ) * A000108 (A110654 n).toNat

end

end A063549.P8296046953850573796

namespace A063549

/-- `C(or(1, n), n)*A000108(A110654(n))` -/
def P8296046953850573796.Spec : Prop :=
  ∀ n, P8296046953850573796.a n = A063549 (n + 1)

end A063549

/-! ## A063549.P12501477130461872771

`A138364(n+1)+Δ[A166588(n+1)]`
-/

namespace A063549.P12501477130461872771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (n + 1) + (f1 (n + 1) - f1 n)

end

end A063549.P12501477130461872771

namespace A063549

/-- `A138364(n+1)+Δ[A166588(n+1)]` -/
def P12501477130461872771.Spec : Prop :=
  ∀ n, P12501477130461872771.a n = A063549 (n + 1)

end A063549

/-! ## A063549.P8822123180689681654

`A001405(n+1)/(A142150(n+1)+1)`
-/

namespace A063549.P8822123180689681654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A142150 (n + 1) + 1 : ℚ)

end

end A063549.P8822123180689681654

namespace A063549

/-- `A001405(n+1)/(A142150(n+1)+1)` -/
def P8822123180689681654.Spec : Prop :=
  ∀ n, P8822123180689681654.a n = (A063549 (n + 1) : ℚ)

end A063549

/-!
# A063565: Smallest positive number k such that 2^k contains n.

The programs for A063565, there is no canonical definition to state claims against.
-/

/-! ## A063565.P5903908246856295959

`A188134(A008574(A030000(n)))`
-/

namespace A063565.P5903908246856295959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A008574 (A030000 n).toNat).toNat

end

end A063565.P5903908246856295959

/-! ## A063565.P11411631201110090890

`A030000(n)+A063566(n)-A062520(n)`
-/

namespace A063565.P11411631201110090890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 n + (A063566 n - A062520 n)

end

end A063565.P11411631201110090890

/-! ## A063565.P7108137320594299151

`A030000(n)+A063570(n)-A062524(n)`
-/

namespace A063565.P7108137320594299151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 n + (A063570 n - A062524 n)

end

end A063565.P7108137320594299151

/-! ## A063565.P5156488371630366294

`A030000(n)+A000038(A030000(n))*A063567(n)`
-/

namespace A063565.P5156488371630366294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 n + A000038 (A030000 n).toNat * A063567 n

end

end A063565.P5156488371630366294

/-! ## A063565.P8498337372285327933

`A062524(A062524(n)/A063570(n))+A030000(n)`
-/

namespace A063565.P8498337372285327933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062524 (SequenceMachineLib.roundAway ((A062524 n : ℚ) / (A063570 n : ℚ))).toNat + A030000 n

end

end A063565.P8498337372285327933

/-! ## A063565.P12560215383815338637

`A055672(3*n)+A030000(n)`
-/

namespace A063565.P12560215383815338637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (3 * n) + A030000 n

end

end A063565.P12560215383815338637

/-! ## A063565.P16068207397772564822

`A030000(n)+and(2, A000079(n))²`
-/

namespace A063565.P16068207397772564822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 n + Int.land 2 (A000079 n) ^ 2

end

end A063565.P16068207397772564822

/-! ## A063565.P12493176306547673545

`gcd(A030000(n), A055672(A027379(n)))`
-/

namespace A063565.P12493176306547673545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030000 n) (A055672 (A027379 n).toNat)

end

end A063565.P12493176306547673545

/-! ## A063565.P10299033734052846522

`A030000(n)+A000038((1-n)²)²`
-/

namespace A063565.P10299033734052846522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 n + A000038 ((1 - (n : ℤ)) ^ 2).toNat ^ 2

end

end A063565.P10299033734052846522

/-!
# A063566: 3^a(n) = smallest positive power of 3 having n in its decimal representation.

The programs for A063566, there is no canonical definition to state claims against.
-/

/-! ## A063566.P8864360635075198103

`A062520(A254667(n))+char[1]`
-/

namespace A063566.P8864360635075198103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062520 (A254667 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063566.P8864360635075198103

/-! ## A063566.P12249121652546456681

`A062520(n)+A063565(n)-A030000(n)`
-/

namespace A063566.P12249121652546456681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062520 n + (A063565 n - A030000 n)

end

end A063566.P12249121652546456681

/-! ## A063566.P16036012377138456681

`A285476(A165754(n))+A062520(A254667(n))`
-/

namespace A063566.P16036012377138456681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 (A165754 n).toNat + A062520 (A254667 n).toNat

end

end A063566.P16036012377138456681

/-! ## A063566.P16311146040323942746

`A062520(n)+A055672(3*n)`
-/

namespace A063566.P16311146040323942746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062520 n + A055672 (3 * n)

end

end A063566.P16311146040323942746

/-! ## A063566.P12918487917900295662

`or(A062520(n), A317839(A273745(n)))`
-/

namespace A063566.P12918487917900295662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062520 n) (A317839 (A273745 n).toNat)

end

end A063566.P12918487917900295662

/-! ## A063566.P17751561463140641564

`A142150(A019432(n))+A062520(n)`
-/

namespace A063566.P17751561463140641564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A019432 n).toNat + A062520 n

end

end A063566.P17751561463140641564

/-! ## A063566.P15117863463788623168

`A062520(n)+4*and(1, A030001(n))`
-/

namespace A063566.P15117863463788623168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062520 n + 4 * Int.land 1 (A030001 n)

end

end A063566.P15117863463788623168

/-! ## A063566.P11384574865927845987

`A062520(n)+and(4, A030001(n+3))`
-/

namespace A063566.P11384574865927845987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062520 n + Int.land 4 (A030001 (n + 3))

end

end A063566.P11384574865927845987

/-!
# A063567: Smallest positive power of 4 having n in its decimal representation.

The programs for A063567, there is no canonical definition to state claims against.
-/

/-! ## A063567.P17267662492219290067

`abs(1-A062521(n))+1`
-/

namespace A063567.P17267662492219290067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A062521 n| + 1

end

end A063567.P17267662492219290067

/-! ## A063567.P465809331818333210

`abs(A024000(A062521(n)))+1`
-/

namespace A063567.P465809331818333210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (A062521 n).toNat| + 1

end

end A063567.P465809331818333210

/-! ## A063567.P2944853702303489943

`A062521(lcm(n, A261143(n)!))`
-/

namespace A063567.P2944853702303489943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062521 (Nat.lcm n (Nat.factorial (A261143 n).toNat))

end

end A063567.P2944853702303489943

/-! ## A063567.P16762273451462970787

`2-A024000(abs(1-A062521(n)))`
-/

namespace A063567.P16762273451462970787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 |1 - A062521 n|.toNat

end

end A063567.P16762273451462970787

/-! ## A063567.P8570419187191510588

`A014682(A004277(A062521(n)))`
-/

namespace A063567.P8570419187191510588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A004277 (A062521 n).toNat).toNat

end

end A063567.P8570419187191510588

/-! ## A063567.P839496387057491140

`A062521(n)+A049084(C(n+2, 2))`
-/

namespace A063567.P839496387057491140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062521 n + A049084 (Nat.choose (n + 2) 2)

end

end A063567.P839496387057491140

/-! ## A063567.P9321627785664938259

`A062521(n)+A000038((1-n)²)`
-/

namespace A063567.P9321627785664938259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062521 n + A000038 ((1 - (n : ℤ)) ^ 2).toNat

end

end A063567.P9321627785664938259

/-!
# A063568: 5^a(n) is the smallest positive power of 5 having n in its decimal representation.

The programs for A063568, there is no canonical definition to state claims against.
-/

/-! ## A063568.P16633811123416795745

`A062522(n)+3*char[1]`
-/

namespace A063568.P16633811123416795745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062522 n + ((3 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A063568.P16633811123416795745

/-! ## A063568.P12208999736469157825

`or(char[1], A062522(A254667(n)))`
-/

namespace A063568.P12208999736469157825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A062522 (A254667 n).toNat)

end

end A063568.P12208999736469157825

/-! ## A063568.P17437657809123657872

`gcd(A062522(n), A181405(n+1))`
-/

namespace A063568.P17437657809123657872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062522 n) (A181405 (n + 1))

end

end A063568.P17437657809123657872

/-! ## A063568.P4563849868699196015

`A076276(C(3, n²))+A062522(n)`
-/

namespace A063568.P4563849868699196015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076276 (Nat.choose 3 (n ^ 2)) + A062522 n

end

end A063568.P4563849868699196015

/-! ## A063568.P3692374534124598174

`A063524(n)+A062522(A254667(n))`
-/

namespace A063568.P3692374534124598174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A062522 (A254667 n).toNat

end

end A063568.P3692374534124598174

/-! ## A063568.P6712003906223035320

`A063524(n)+A062522(A063524(n)+n)`
-/

namespace A063568.P6712003906223035320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A062522 (A063524 n + (n : ℤ)).toNat

end

end A063568.P6712003906223035320

/-! ## A063568.P12440778282681835916

`A181405(A000124(n))+A062522(n)`
-/

namespace A063568.P12440778282681835916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (A000124 n).toNat + A062522 n

end

end A063568.P12440778282681835916

/-! ## A063568.P4553124342090529114

`A092509(A278818(∑[n]))+A062522(n)`
-/

namespace A063568.P4553124342090529114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (A278818 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A062522 n

end

end A063568.P4553124342090529114

/-!
# A063569: 6^a(n) is smallest positive power of 6 containing the string 'n'.

The programs for A063569, there is no canonical definition to state claims against.
-/

/-! ## A063569.P1061475996142663259

`A062523(char[1]+n)`
-/

namespace A063569.P1061475996142663259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062523 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A063569.P1061475996142663259

/-! ## A063569.P13899565059432790623

`or(A062523(n), A169585(n))`
-/

namespace A063569.P13899565059432790623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062523 n) (A169585 n)

end

end A063569.P13899565059432790623

/-! ## A063569.P13231485983163520205

`gcd(A062523(n), A181405(n+1))`
-/

namespace A063569.P13231485983163520205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062523 n) (A181405 (n + 1))

end

end A063569.P13231485983163520205

/-! ## A063569.P13483267571443263728

`A169585(A062523(n)+1)+A062523(n)`
-/

namespace A063569.P13483267571443263728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (A062523 n + 1).toNat + A062523 n

end

end A063569.P13483267571443263728

/-! ## A063569.P17061053869870527107

`A117980(A008578(n+1))+A062523(n)`
-/

namespace A063569.P17061053869870527107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 (A008578 (n + 1)).toNat + A062523 n

end

end A063569.P17061053869870527107

/-! ## A063569.P3508373414542398262

`A062523(n)+A046145(A008574(n))`
-/

namespace A063569.P3508373414542398262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062523 n + A046145 (A008574 n).toNat

end

end A063569.P3508373414542398262

/-! ## A063569.P11060977835557513181

`A062523(n)+A049084(A008706(n))`
-/

namespace A063569.P11060977835557513181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062523 n + A049084 (A008706 n).toNat

end

end A063569.P11060977835557513181

/-! ## A063569.P5478519202244791014

`A181405(∑[∏{e}[n, #+1]])+A062523(n)`
-/

namespace A063569.P5478519202244791014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (∑ j ∈ Finset.range (n + 1), f1 j) + A062523 n

end

end A063569.P5478519202244791014

/-! ## A063569.P3505383892616489298

`A117980(A096304(n+1))+A062523(n)`
-/

namespace A063569.P3505383892616489298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 (A096304 (n + 1)).toNat + A062523 n

end

end A063569.P3505383892616489298

/-! ## A063569.P677267469280460894

`A062523(n)+A061397(A000217(n+1))`
-/

namespace A063569.P677267469280460894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062523 n + A061397 (A000217 (n + 1)).toNat

end

end A063569.P677267469280460894

/-!
# A063570: Smallest positive power of 7 having n in its decimal representation.

The programs for A063570, there is no canonical definition to state claims against.
-/

/-! ## A063570.P4442510581068104574

`A062524(char[1]+n)`
-/

namespace A063570.P4442510581068104574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062524 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A063570.P4442510581068104574

/-! ## A063570.P18290573497653104499

`A028310(A062524(n-char[1]))`
-/

namespace A063570.P18290573497653104499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A062524 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A063570.P18290573497653104499

/-! ## A063570.P884570461607086174

`A006370(A004277(A062524(n)))`
-/

namespace A063570.P884570461607086174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A004277 (A062524 n).toNat).toNat

end

end A063570.P884570461607086174

/-! ## A063570.P12483021140019692575

`A062524(A199969(n+1))%A139606(n)`
-/

namespace A063570.P12483021140019692575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062524 (A199969 (n + 1)).toNat) (A139606 n)

end

end A063570.P12483021140019692575

/-! ## A063570.P2805593645753064678

`A062524(n)+A063565(n)-A030000(n)`
-/

namespace A063570.P2805593645753064678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062524 n + (A063565 n - A030000 n)

end

end A063570.P2805593645753064678

/-! ## A063570.P18097719094800844290

`A059841(2*(n+1))*A062524(A199969(n+1))`
-/

namespace A063570.P18097719094800844290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * (n + 1)) * A062524 (A199969 (n + 1)).toNat

end

end A063570.P18097719094800844290

/-! ## A063570.P15011527465618292856

`A062524(n)+A055672(3*n)`
-/

namespace A063570.P15011527465618292856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062524 n + A055672 (3 * n)

end

end A063570.P15011527465618292856

/-! ## A063570.P12486927821028909964

`∑{d}[A062524(A233583(n+1)), A000010(#)]`
-/

namespace A063570.P12486927821028909964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062524 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A063570.P12486927821028909964

/-! ## A063570.P10766588171015781470

`gcd(A055672(∑[n+1]), A062524(n))`
-/

namespace A063570.P10766588171015781470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055672 (∑ j ∈ Finset.range (n + 1), f1 j)) (A062524 n)

end

end A063570.P10766588171015781470

/-! ## A063570.P8895090461495301381

`abs(A062524(n)-A014963(∑[n+1]))+1`
-/

namespace A063570.P8895090461495301381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062524 n - A014963 (∑ j ∈ Finset.range (n + 1), f1 j)| + 1

end

end A063570.P8895090461495301381

/-!
# A063571: Smallest power of 8 having n in its decimal representation.

The programs for A063571, there is no canonical definition to state claims against.
-/

/-! ## A063571.P1972448573216240252

`A062525(char[1]+n)`
-/

namespace A063571.P1972448573216240252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062525 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A063571.P1972448573216240252

/-! ## A063571.P17761480946883442354

`A062525(n)-3*A159075(n)`
-/

namespace A063571.P17761480946883442354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062525 n - 3 * A159075 n

end

end A063571.P17761480946883442354

/-! ## A063571.P4017999077165254003

`gcd(A062525(n), A181405(n+1))`
-/

namespace A063571.P4017999077165254003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062525 n) (A181405 (n + 1))

end

end A063571.P4017999077165254003

/-! ## A063571.P5746989482003113474

`A159075(n)+A062525(A159075(n)+n)`
-/

namespace A063571.P5746989482003113474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A062525 (A159075 n + (n : ℤ)).toNat

end

end A063571.P5746989482003113474

/-! ## A063571.P14922122158341685641

`A062525(n)+A063568(n)-A062522(n)`
-/

namespace A063571.P14922122158341685641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062525 n + (A063568 n - A062522 n)

end

end A063571.P14922122158341685641

/-! ## A063571.P12977626969371986572

`A062525(n)+A000035(n)*A285700(n+1)`
-/

namespace A063571.P12977626969371986572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062525 n + A000035 n * A285700 (n + 1)

end

end A063571.P12977626969371986572

/-! ## A063571.P3185684520052417656

`A004454(A004454(A062525(n-A159075(n))))`
-/

namespace A063571.P3185684520052417656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 (A004454 (A062525 ((n : ℤ) - A159075 n).toNat).toNat).toNat

end

end A063571.P3185684520052417656

/-! ## A063571.P10036838282067113837

`A062525(n)+A046145(A008574(n))`
-/

namespace A063571.P10036838282067113837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062525 n + A046145 (A008574 n).toNat

end

end A063571.P10036838282067113837

/-!
# A063572: Smallest power of 9 having n in its decimal representation.

The programs for A063572, there is no canonical definition to state claims against.
-/

/-! ## A063572.P14439781201122866283

`or(C(2, n), A062526(n))`
-/

namespace A063572.P14439781201122866283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A062526 n)

end

end A063572.P14439781201122866283

/-! ## A063572.P8043312572384065648

`A062526(A254667(n))-char[1]`
-/

namespace A063572.P8043312572384065648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062526 (A254667 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063572.P8043312572384065648

/-! ## A063572.P18267154358563087040

`A062526(n)+A001613(C(2, n))`
-/

namespace A063572.P18267154358563087040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062526 n + A001613 (Nat.choose 2 n)

end

end A063572.P18267154358563087040

/-! ## A063572.P7817471442565503683

`xor(A000007(a(n-1)), A062526(n))` with `a(0)=5, a(1)=2`
-/

namespace A063572.P7817471442565503683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  Int.xor (A000007 (a (n - 1)).toNat) (A062526 n)

end

end A063572.P7817471442565503683

/-! ## A063572.P3860444619056730067

`A062526(n)+A000038(A004442(n))`
-/

namespace A063572.P3860444619056730067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062526 n + A000038 (A004442 n).toNat

end

end A063572.P3860444619056730067

/-! ## A063572.P9745077776655614766

`A062526(n)+A000038(A007599(n))`
-/

namespace A063572.P9745077776655614766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062526 n + A000038 (A007599 n).toNat

end

end A063572.P9745077776655614766

/-! ## A063572.P8956409823080754419

`A062526(n)+A000038(A008611(n))`
-/

namespace A063572.P8956409823080754419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062526 n + A000038 (A008611 n).toNat

end

end A063572.P8956409823080754419

/-! ## A063572.P13033359357142176853

`A062526(n)+A000038(A008624(n))`
-/

namespace A063572.P13033359357142176853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062526 n + A000038 (A008624 n).toNat

end

end A063572.P13033359357142176853

/-! ## A063572.P6295388075781830155

`A062526(n)+A049084(C(n+2, 2))`
-/

namespace A063572.P6295388075781830155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062526 n + A049084 (Nat.choose (n + 2) 2)

end

end A063572.P6295388075781830155

/-!
# A063573: First differences of A002065.

The programs for A063573, there is no canonical definition to state claims against.
-/

/-! ## A063573.P6954377011354566846

`Δ[2*(C(a(n-1), 2)+1)]` with `a(0)=1`
-/

namespace A063573.P6954377011354566846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (Nat.choose (f1 (n - 1)) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A063573.P6954377011354566846

/-! ## A063573.P1409069403024630318

`Δ[ceil((a(n-1)+1/2)²)]` with `a(0)=0`
-/

namespace A063573.P1409069403024630318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌈((f1 (n - 1) : ℚ) + (1 : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063573.P1409069403024630318

/-! ## A063573.P11511499837093116476

`Δ[a(n-1)+a(n-1)²+1]` with `a(0)=0`
-/

namespace A063573.P11511499837093116476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A063573.P11511499837093116476

/-! ## A063573.P3755897430874383252

`Δ[a(n-1)²-(a(n-1)-2)]` with `a(0)=1`
-/

namespace A063573.P3755897430874383252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) ^ 2 - (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063573.P3755897430874383252

/-! ## A063573.P1515155085105644013

`Δ[abs((a(n-1)+1)*a(n-1)+1)]` with `a(0)=0`
-/

namespace A063573.P1515155085105644013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 (n - 1) + 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A063573.P1515155085105644013

/-!
# A063574: Number of steps to reach an integer == 1 (mod 4) when iterating the map n -> 3n/2 if n even or (3n+1)/2 if n odd.

The programs for A063574, the canonical program `A063574.P12688561250002116024` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063574 has offset 1).

The definition of A063574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063574.P12688561250002116024

`val((A085062(n)+1)*(n+1), 2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A063574

/-- `val((A085062(n)+1)*(n+1), 2)` -/
def P12688561250002116024.Spec : Prop :=
  ∀ n, (P12688561250002116024.a n : ℤ) = A063574 (n + 1)

theorem P12688561250002116024.correct : P12688561250002116024.Spec := by
  intro n
  simp only [A063574, Nat.add_sub_cancel]

end A063574

/-! ## A063574.P2418641303079561787

`A007814(A085062(n)+1)+val(n+1, 2)`
-/

namespace A063574.P2418641303079561787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A085062 n + 1).toNat + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A063574.P2418641303079561787

namespace A063574

/-- `A007814(A085062(n)+1)+val(n+1, 2)` -/
def P2418641303079561787.Spec : Prop :=
  ∀ n, P2418641303079561787.a n = A063574 (n + 1)

end A063574

/-! ## A063574.P3214335157551006956

`val(n+1, 2)+A001511(A085062(n)+1)-1`
-/

namespace A063574.P3214335157551006956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + (A001511 (A085062 n + 1).toNat - 1)

end

end A063574.P3214335157551006956

namespace A063574

/-- `val(n+1, 2)+A001511(A085062(n)+1)-1` -/
def P3214335157551006956.Spec : Prop :=
  ∀ n, P3214335157551006956.a n = A063574 (n + 1)

end A063574

/-! ## A063574.P2199078315726070597

`A001511(A085062(n)+1)-Δ[A000120(n)]`
-/

namespace A063574.P2199078315726070597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A085062 n + 1).toNat - (f1 (n + 1) - f1 n)

end

end A063574.P2199078315726070597

namespace A063574

/-- `A001511(A085062(n)+1)-Δ[A000120(n)]` -/
def P2199078315726070597.Spec : Prop :=
  ∀ n, P2199078315726070597.a n = A063574 (n + 1)

end A063574

/-! ## A063574.P8976992497213560066

`Δ[A005187(n)]+A085058(A085062(n))-3`
-/

namespace A063574.P8976992497213560066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A085058 (A085062 n).toNat - 3)

end

end A063574.P8976992497213560066

namespace A063574

/-- `Δ[A005187(n)]+A085058(A085062(n))-3` -/
def P8976992497213560066.Spec : Prop :=
  ∀ n, P8976992497213560066.a n = A063574 (n + 1)

end A063574

/-! ## A063574.P11911394580104268783

`A007814(n+1)+A007814(A085062(n)+1)`
-/

namespace A063574.P11911394580104268783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (A085062 n + 1).toNat

end

end A063574.P11911394580104268783

namespace A063574

/-- `A007814(n+1)+A007814(A085062(n)+1)` -/
def P11911394580104268783.Spec : Prop :=
  ∀ n, P11911394580104268783.a n = A063574 (n + 1)

end A063574

/-! ## A063574.P7681656418059661589

`A001511(n+1)+A085058(A085062(n))-3`
-/

namespace A063574.P7681656418059661589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A085058 (A085062 n).toNat - 3)

end

end A063574.P7681656418059661589

namespace A063574

/-- `A001511(n+1)+A085058(A085062(n))-3` -/
def P7681656418059661589.Spec : Prop :=
  ∀ n, P7681656418059661589.a n = A063574 (n + 1)

end A063574

/-! ## A063574.P11584739518605585376

`A001511(n+1)+A001511(A085062(n)+1)-2`
-/

namespace A063574.P11584739518605585376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A001511 (A085062 n + 1).toNat - 2)

end

end A063574.P11584739518605585376

namespace A063574

/-- `A001511(n+1)+A001511(A085062(n)+1)-2` -/
def P11584739518605585376.Spec : Prop :=
  ∀ n, P11584739518605585376.a n = A063574 (n + 1)

end A063574

/-! ## A063574.P8240731225438637739

`A007814(n+1)+A007814(A085060(n)+6)`
-/

namespace A063574.P8240731225438637739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (A085060 n + 6).toNat

end

end A063574.P8240731225438637739

namespace A063574

/-- `A007814(n+1)+A007814(A085060(n)+6)` -/
def P8240731225438637739.Spec : Prop :=
  ∀ n, P8240731225438637739.a n = A063574 (n + 1)

end A063574

/-! ## A063574.P3456539724341951339

`A007814((n+1)*(A085062(n)+1))`
-/

namespace A063574.P3456539724341951339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((n + 1 : ℤ) * (A085062 n + 1)).toNat

end

end A063574.P3456539724341951339

namespace A063574

/-- `A007814((n+1)*(A085062(n)+1))` -/
def P3456539724341951339.Spec : Prop :=
  ∀ n, P3456539724341951339.a n = A063574 (n + 1)

end A063574

/-!
# A063595: a(n) = floor(sqrt(Fibonacci(n+1)) - sqrt(Fibonacci(n))).

The programs for A063595, the canonical program `A063595.P18202738297110492609` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063595 has offset 0).

The definition of A063595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063595.P18202738297110492609

`floor(Δ[sqrt(A000045(n))])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063595

/-- `floor(Δ[sqrt(A000045(n))])` -/
def P18202738297110492609.Spec : Prop :=
  ∀ n, P18202738297110492609.a n = A063595 n

theorem P18202738297110492609.correct : P18202738297110492609.Spec := by
  intro n
  simp only [A063595]

end A063595

/-! ## A063595.P1587207006266578395

`floor(Δ[sqrt(A212804(n+1))])`
-/

namespace A063595.P1587207006266578395
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212804 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P1587207006266578395

namespace A063595

/-- `floor(Δ[sqrt(A212804(n+1))])` -/
def P1587207006266578395.Spec : Prop :=
  ∀ n, P1587207006266578395.a n = A063595 n

end A063595

/-! ## A063595.P17178794253084521580

`floor(Δ[sqrt(A001611(n)-1)])`
-/

namespace A063595.P17178794253084521580
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001611 n - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P17178794253084521580

namespace A063595

/-- `floor(Δ[sqrt(A001611(n)-1)])` -/
def P17178794253084521580.Spec : Prop :=
  ∀ n, P17178794253084521580.a n = A063595 n

end A063595

/-! ## A063595.P13554862941071994229

`floor(Δ[sqrt(A157725(n)-2)])`
-/

namespace A063595.P13554862941071994229
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A157725 n - 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P13554862941071994229

namespace A063595

/-- `floor(Δ[sqrt(A157725(n)-2)])` -/
def P13554862941071994229.Spec : Prop :=
  ∀ n, P13554862941071994229.a n = A063595 n

end A063595

/-! ## A063595.P14897280221677220091

`floor(Δ[sqrt(A103609(2*n))])`
-/

namespace A063595.P14897280221677220091
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A103609 (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P14897280221677220091

namespace A063595

/-- `floor(Δ[sqrt(A103609(2*n))])` -/
def P14897280221677220091.Spec : Prop :=
  ∀ n, P14897280221677220091.a n = A063595 n

end A063595

/-! ## A063595.P1172549062400746981

`floor(Δ[sqrt(A065220(n)+n)])`
-/

namespace A063595.P1172549062400746981
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065220 n + (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P1172549062400746981

namespace A063595

/-- `floor(Δ[sqrt(A065220(n)+n)])` -/
def P1172549062400746981.Spec : Prop :=
  ∀ n, P1172549062400746981.a n = A063595 n

end A063595

/-! ## A063595.P18029762036207715734

`floor(Δ[sqrt(A002062(n)-n)])`
-/

namespace A063595.P18029762036207715734
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002062 n - (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P18029762036207715734

namespace A063595

/-- `floor(Δ[sqrt(A002062(n)-n)])` -/
def P18029762036207715734.Spec : Prop :=
  ∀ n, P18029762036207715734.a n = A063595 n

end A063595

/-! ## A063595.P15535498225577874044

`floor(Δ[sqrt(A160536(n)-n²)])`
-/

namespace A063595.P15535498225577874044
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A160536 n - (n ^ 2 : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P15535498225577874044

namespace A063595

/-- `floor(Δ[sqrt(A160536(n)-n²)])` -/
def P15535498225577874044.Spec : Prop :=
  ∀ n, P15535498225577874044.a n = A063595 n

end A063595

/-! ## A063595.P617978399274711116

`floor(sqrt(A000045(n+1))-sqrt(A000045(n)))`
-/

namespace A063595.P617978399274711116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000045 (n + 1) : ℝ) - Real.sqrt (A000045 n : ℝ)⌋

end

end A063595.P617978399274711116

namespace A063595

/-- `floor(sqrt(A000045(n+1))-sqrt(A000045(n)))` -/
def P617978399274711116.Spec : Prop :=
  ∀ n, P617978399274711116.a n = A063595 n

theorem P617978399274711116.correct : P617978399274711116.Spec := by
  intro n
  simp only [A063595, Nat.add_sub_cancel, A063595.P617978399274711116.a, A063595.P18202738297110492609.f1, A063595.P18202738297110492609.a, SequenceMachineLib.memo_apply]

end A063595

/-! ## A063595.P3228085700926193022

`floor(Δ[sqrt(A053602(2*n))])`
-/

namespace A063595.P3228085700926193022
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053602 (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P3228085700926193022

namespace A063595

/-- `floor(Δ[sqrt(A053602(2*n))])` -/
def P3228085700926193022.Spec : Prop :=
  ∀ n, P3228085700926193022.a n = A063595 n

end A063595

/-! ## A063595.P8836017538480805055

`floor(Δ[sqrt(A022086(n)/3)])`
-/

namespace A063595.P8836017538480805055
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A022086 n : ℚ) / 3 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P8836017538480805055

namespace A063595

/-- `floor(Δ[sqrt(A022086(n)/3)])` -/
def P8836017538480805055.Spec : Prop :=
  ∀ n, P8836017538480805055.a n = A063595 n

end A063595

