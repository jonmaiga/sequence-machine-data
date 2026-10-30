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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A268600: Expansion of 1/(2*f(x)) + 1/(4 - 2*g(x)), where f(x) = sqrt(1 - 4*x) and g(x) = sqrt(1 + 4*x).

The programs for A268600, there is no canonical definition to state claims against.
-/

/-! ## A268600.P14843870538223723866

`(-1)^n*A126984(n)+A268601(n)`
-/

namespace A268600.P14843870538223723866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A126984 n + A268601 n

end

end A268600.P14843870538223723866

/-! ## A268600.P2760203172087239177

`C(2*n, n)-A268601(n)`
-/

namespace A268600.P2760203172087239177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) - A268601 n

end

end A268600.P2760203172087239177

/-! ## A268600.P11039246862923382066

`A000984(n)-A268601(n)`
-/

namespace A268600.P11039246862923382066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A268601 n

end

end A268600.P11039246862923382066

/-! ## A268600.P16014529617676855134

`record[A126869(n)]-A268601(n)`
-/

namespace A268600.P16014529617676855134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A268601 n

end

end A268600.P16014529617676855134

/-! ## A268600.P236702614144158961

`record[A126930(n)]-A268601(n)`
-/

namespace A268600.P236702614144158961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A268601 n

end

end A268600.P236702614144158961

/-! ## A268600.P15525311603397375271

`A126869(2*n)-A268601(n)`
-/

namespace A268600.P15525311603397375271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A268601 n

end

end A268600.P15525311603397375271

/-! ## A268600.P6626873919259590181

`A126930(2*n)-A268601(n)`
-/

namespace A268600.P6626873919259590181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - A268601 n

end

end A268600.P6626873919259590181

/-!
# A268601: Expansion of 1/(2*f(x)) - 1/(4 - 2*g(x)), where f(x) = sqrt(1 - 4*x) and g(x) = sqrt(1 + 4*x).

The programs for A268601, there is no canonical definition to state claims against.
-/

/-! ## A268601.P7760626630209082433

`C(2*n, n)-A268600(n)`
-/

namespace A268601.P7760626630209082433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) - A268600 n

end

end A268601.P7760626630209082433

/-! ## A268601.P11990135493710910049

`A000984(n)-A268600(n)`
-/

namespace A268601.P11990135493710910049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A268600 n

end

end A268601.P11990135493710910049

/-! ## A268601.P2333416287222056950

`record[A126869(n)]-A268600(n)`
-/

namespace A268601.P2333416287222056950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A268600 n

end

end A268601.P2333416287222056950

/-! ## A268601.P12412035048851681038

`record[A126930(n)]-A268600(n)`
-/

namespace A268601.P12412035048851681038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A268600 n

end

end A268601.P12412035048851681038

/-! ## A268601.P10766165378881182786

`A126869(2*n)-A268600(n)`
-/

namespace A268601.P10766165378881182786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A268600 n

end

end A268601.P10766165378881182786

/-! ## A268601.P15384289943119082878

`A126930(2*n)-A268600(n)`
-/

namespace A268601.P15384289943119082878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - A268600 n

end

end A268601.P15384289943119082878

/-!
# A268605: a(1) = 0; a(n+1) is the smallest integer in which the difference between its digits sum and the a(n) digits sum is equal to the n-th prime.

The programs for A268605, the canonical program `A268605.P2485238640013637007` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268605 has offset 1).

The definition of A268605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268605.P2485238640013637007

`A051885(A007504(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A268605

/-- `A051885(A007504(n))` -/
def P2485238640013637007.Spec : Prop :=
  ∀ n, P2485238640013637007.a n = A268605 (n + 1)

theorem P2485238640013637007.correct : P2485238640013637007.Spec := by
  intro n
  simp only [A268605, Nat.add_sub_cancel]

end A268605

/-! ## A268605.P305340553525538323

`A051885(∑[A182986(n+1)])`
-/

namespace A268605.P305340553525538323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268605.P305340553525538323

namespace A268605

/-- `A051885(∑[A182986(n+1)])` -/
def P305340553525538323.Spec : Prop :=
  ∀ n, P305340553525538323.a n = A268605 (n + 1)

end A268605

/-! ## A268605.P8935033766289576423

`A037124(A007504(n)+1)-1`
-/

namespace A268605.P8935033766289576423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A007504 n + 1).toNat - 1

end

end A268605.P8935033766289576423

namespace A268605

/-- `A037124(A007504(n)+1)-1` -/
def P8935033766289576423.Spec : Prop :=
  ∀ n, P8935033766289576423.a n = A268605 (n + 1)

end A268605

/-! ## A268605.P3600050545606088359

`A051885(A014284(n+1)-1)`
-/

namespace A268605.P3600050545606088359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A014284 (n + 1) - 1).toNat

end

end A268605.P3600050545606088359

namespace A268605

/-- `A051885(A014284(n+1)-1)` -/
def P3600050545606088359.Spec : Prop :=
  ∀ n, P3600050545606088359.a n = A268605 (n + 1)

end A268605

/-! ## A268605.P13873758427810895135

`A051885(∑[record[A008472(n+1)]])`
-/

namespace A268605.P13873758427810895135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268605.P13873758427810895135

namespace A268605

/-- `A051885(∑[record[A008472(n+1)]])` -/
def P13873758427810895135.Spec : Prop :=
  ∀ n, P13873758427810895135.a n = A268605 (n + 1)

end A268605

/-!
# A268607: a(n) is the least m > 1 such that 2^n - m is prime.

The programs for A268607, there is no canonical definition to state claims against.
-/

/-! ## A268607.P4075590018473059292

`A175851(∑[2^(n+1)])+1`
-/

namespace A268607.P4075590018473059292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A268607.P4075590018473059292

/-! ## A268607.P8783110195832454815

`A020725(A175851(∑[2^(n+1)]))`
-/

namespace A268607.P8783110195832454815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A175851 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A268607.P8783110195832454815

/-! ## A268607.P12664682121990156234

`A000079(n+2)-A151799(A000225(n+2))`
-/

namespace A268607.P12664682121990156234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - A151799 (A000225 (n + 2)).toNat

end

end A268607.P12664682121990156234

/-! ## A268607.P3199125051704366400

`A202111(2^(n+1))+1`
-/

namespace A268607.P3199125051704366400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202111 (2 ^ (n + 1)) + 1

end

end A268607.P3199125051704366400

/-!
# A268608: a(n) is the least m > 1 such that (prime(n)#)^n - m is prime.

The programs for A268608, there is no canonical definition to state claims against.
-/

/-! ## A268608.P81947698120976765

`record[p?[A007305(A281793(n))]]`
-/

namespace A268608.P81947698120976765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A281793 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268608.P81947698120976765

/-! ## A268608.P17823049880505353804

`A000040(eq[8, A275928(n+2)])`
-/

namespace A268608.P17823049880505353804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275928 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268608.P17823049880505353804

/-!
# A268609: Record values in A004290.

The programs for A268609, there is no canonical definition to state claims against.
-/

/-! ## A268609.P1150771531651689530

`record[(n+1)*A079339(n+1)]`
-/

namespace A268609.P1150771531651689530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268609.P1150771531651689530

/-! ## A268609.P479668399231034840

`record[A004290(1+n)]`
-/

namespace A268609.P479668399231034840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004290 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268609.P479668399231034840

/-! ## A268609.P13435763983705409882

`A004290(A268610(n+1))`
-/

namespace A268609.P13435763983705409882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004290 (A268610 (n + 1)).toNat

end

end A268609.P13435763983705409882

/-! ## A268609.P16766387991211010265

`record[A078241(2*(n+1))/2]`
-/

namespace A268609.P16766387991211010265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078241 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268609.P16766387991211010265

/-! ## A268609.P3574195247127468073

`record[A078246(n+1)/7]`
-/

namespace A268609.P3574195247127468073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078246 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268609.P3574195247127468073

/-!
# A268610: Indices of records in A004290.

The programs for A268610, there is no canonical definition to state claims against.
-/

/-! ## A268610.P18429696710022472335

`A280342(A280341(n)%A373106(n+2))`
-/

namespace A268610.P18429696710022472335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280342 (Int.tmod (A280341 n) (A373106 (n + 2))).toNat

end

end A268610.P18429696710022472335

/-! ## A268610.P8147948196895312781

`A280342(A280341(n))%A280341(3*(n+1))`
-/

namespace A268610.P8147948196895312781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280342 (A280341 n).toNat) (A280341 (3 * (n + 1)))

end

end A268610.P8147948196895312781

/-!
# A268611: a(n) = A256417(n) - n.

The programs for A268611, there is no canonical definition to state claims against.
-/

/-! ## A268611.P1344622056634027410

`A256417(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268611.P1344622056634027410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256417 (n + 1) - (n + 1 : ℤ)

end

end A268611.P1344622056634027410

/-! ## A268611.P5922550388875865556

`A001478(n+1)+A256417(n+1)`
-/

namespace A268611.P5922550388875865556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A256417 (n + 1)

end

end A268611.P5922550388875865556

/-! ## A268611.P13033376884392716920

`A023443(A256417(n+1))-n`
-/

namespace A268611.P13033376884392716920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A256417 (n + 1)).toNat - (n : ℤ)

end

end A268611.P13033376884392716920

/-! ## A268611.P12706667292117805983

`A256415(Δ[A065057(n)])-(n+1)`
-/

namespace A268611.P12706667292117805983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (f1 (n + 1) - f1 n).toNat - (n + 1 : ℤ)

end

end A268611.P12706667292117805983

/-! ## A268611.P2876326338792833549

`A256415(A064413(n+1))-(n+1)`
-/

namespace A268611.P2876326338792833549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (A064413 (n + 1)).toNat - (n + 1 : ℤ)

end

end A268611.P2876326338792833549

/-! ## A268611.P11285295386450423872

`A256415(sqrt(A104125(n+1)))-(n+1)`
-/

namespace A268611.P11285295386450423872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ))).toNat - (n + 1 : ℤ)

end

end A268611.P11285295386450423872

/-!
# A268612: Primes p such that p + 2 k, for k = 1..7 are squarefree.

The programs for A268612, there is no canonical definition to state claims against.
-/

/-! ## A268612.P18065068812963244911

`p?[A398951(n+1)]`
-/

namespace A268612.P18065068812963244911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268612.P18065068812963244911

/-! ## A268612.P16665054000165843556

`∩[A049229(n+1), A398951(n+1)]`
-/

namespace A268612.P16665054000165843556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P16665054000165843556

/-! ## A268612.P15969369328581779377

`∩[A061238(n+1), A398951(n+1)]`
-/

namespace A268612.P15969369328581779377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P15969369328581779377

/-! ## A268612.P10108313078256459324

`∩[A078403(n+1), A398951(n+1)]`
-/

namespace A268612.P10108313078256459324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P10108313078256459324

/-! ## A268612.P4551978622136693138

`∩[A079132(n+1), A398951(n+1)]`
-/

namespace A268612.P4551978622136693138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P4551978622136693138

/-! ## A268612.P16521100110246261688

`∩[A129807(n+1), A398951(n+1)]`
-/

namespace A268612.P16521100110246261688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P16521100110246261688

/-! ## A268612.P12306101545925929227

`∩[A007528(n+1), A398951(n+1)]`
-/

namespace A268612.P12306101545925929227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P12306101545925929227

/-! ## A268612.P18353733480103453467

`∩[A003627(n+1), A398951(n+1)]`
-/

namespace A268612.P18353733480103453467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P18353733480103453467

/-! ## A268612.P2930945330835688190

`∩[A045309(n+1), A398951(n+1)]`
-/

namespace A268612.P2930945330835688190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P2930945330835688190

/-! ## A268612.P4546117448443010256

`∩[A045410(n+1), A398951(n+1)]`
-/

namespace A268612.P4546117448443010256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P4546117448443010256

/-! ## A268612.P7935110067530404661

`∩[A056955(n+1), A398951(n+1)]`
-/

namespace A268612.P7935110067530404661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P7935110067530404661

/-! ## A268612.P9710631709816260939

`∩[A320518(n+1), A398951(n+1)]`
-/

namespace A268612.P9710631709816260939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P9710631709816260939

/-! ## A268612.P12398742457733832981

`∩[A049596(n+1), A398951(n+1)]`
-/

namespace A268612.P12398742457733832981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P12398742457733832981

/-! ## A268612.P12280547462892181603

`∩[A164319(n+1), A398951(n+1)]`
-/

namespace A268612.P12280547462892181603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P12280547462892181603

/-! ## A268612.P1557773970661986555

`∩[A040044(n+1), A398951(n+1)]`
-/

namespace A268612.P1557773970661986555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P1557773970661986555

/-! ## A268612.P2021902978700038163

`∩[A040046(n+1), A398951(n+1)]`
-/

namespace A268612.P2021902978700038163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P2021902978700038163

/-! ## A268612.P8539447605670808580

`∩[A040060(n+1), A398951(n+1)]`
-/

namespace A268612.P8539447605670808580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P8539447605670808580

/-! ## A268612.P17752006280284730516

`∩[A040083(n+1), A398951(n+1)]`
-/

namespace A268612.P17752006280284730516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P17752006280284730516

/-! ## A268612.P13859524257752497110

`∩[A040087(n+1), A398951(n+1)]`
-/

namespace A268612.P13859524257752497110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P13859524257752497110

/-! ## A268612.P8752813446126251902

`∩[A040095(n+1), A398951(n+1)]`
-/

namespace A268612.P8752813446126251902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268612.P8752813446126251902

/-!
# A268613: Lucas numbers mod 20.

The programs for A268613, the canonical program `A268613.P3859359434289761314` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268613 has offset 0).

The definition of A268613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268613.P3859359434289761314

`A000032(n)%20`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A268613

/-- `A000032(n)%20` -/
def P3859359434289761314.Spec : Prop :=
  ∀ n, P3859359434289761314.a n = A268613 n

theorem P3859359434289761314.correct : P3859359434289761314.Spec := by
  intro n
  simp only [A268613]

end A268613

/-!
# A268614: Primes p such that p + 1 and p + 2 are squarefree.

The programs for A268614, the canonical program `A268614.P14161750680680178419` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268614 has offset 1).

The definition of A268614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2089 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268614.P14161750680680178419

`p?[A007675(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268614

/-- `p?[A007675(n+1)]` -/
def P14161750680680178419.Spec : Prop :=
  ∀ n, P14161750680680178419.a n = A268614 (n + 1)

theorem P14161750680680178419.correct : P14161750680680178419.Spec := by
  intro n
  simp only [A268614, Nat.add_sub_cancel]

end A268614

/-! ## A268614.P3925308316362127911

`p?[A228649(n+1)-1]`
-/

namespace A268614.P3925308316362127911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268614.P3925308316362127911

namespace A268614

/-- `p?[A228649(n+1)-1]` -/
def P3925308316362127911.Spec : Prop :=
  ∀ n, P3925308316362127911.a n = A268614 (n + 1)

theorem P3925308316362127911.correct : P3925308316362127911.Spec := by
  intro n
  simp only [A268614, Nat.add_sub_cancel, A268614.P3925308316362127911.f1, A268614.P3925308316362127911.a, A268614.P14161750680680178419.f1, A268614.P14161750680680178419.a, A007675, A007675.P4991608707947414915.f1, A007675.P4991608707947414915.f2, A007675.P4991608707947414915.a, A228649, A228649.P13260817488648530651.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268614

/-! ## A268614.P6949215387494501670

`record[A001414(A007675(n+2))]`
-/

namespace A268614.P6949215387494501670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007675 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268614.P6949215387494501670

namespace A268614

/-- `record[A001414(A007675(n+2))]` -/
def P6949215387494501670.Spec : Prop :=
  ∀ n, P6949215387494501670.a n = A268614 (n + 1)

end A268614

/-! ## A268614.P1765424292479177661

`filter[A007675(n+1), A001222(#)]`
-/

namespace A268614.P1765424292479177661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A268614.P1765424292479177661

namespace A268614

/-- `filter[A007675(n+1), A001222(#)]` -/
def P1765424292479177661.Spec : Prop :=
  ∀ n, P1765424292479177661.a n = A268614 (n + 1)

end A268614

/-! ## A268614.P13270547881944578913

`filter[A007675(n+1), A010051(#)]`
-/

namespace A268614.P13270547881944578913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A268614.P13270547881944578913

namespace A268614

/-- `filter[A007675(n+1), A010051(#)]` -/
def P13270547881944578913.Spec : Prop :=
  ∀ n, P13270547881944578913.a n = A268614 (n + 1)

end A268614

/-! ## A268614.P3175164335174692459

`filter[A007675(n+1), A069513(#)]`
-/

namespace A268614.P3175164335174692459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A268614.P3175164335174692459

namespace A268614

/-- `filter[A007675(n+1), A069513(#)]` -/
def P3175164335174692459.Spec : Prop :=
  ∀ n, P3175164335174692459.a n = A268614 (n + 1)

end A268614

/-! ## A268614.P12611711732599494931

`filter[A007675(n+1), A353812(#)]`
-/

namespace A268614.P12611711732599494931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A268614.P12611711732599494931

namespace A268614

/-- `filter[A007675(n+1), A353812(#)]` -/
def P12611711732599494931.Spec : Prop :=
  ∀ n, P12611711732599494931.a n = A268614 (n + 1)

end A268614

/-! ## A268614.P2236724995570751965

`filter[A007675(n+1), A353813(#)]`
-/

namespace A268614.P2236724995570751965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353813 (f1 j).toNat = 1) n)

end

end A268614.P2236724995570751965

namespace A268614

/-- `filter[A007675(n+1), A353813(#)]` -/
def P2236724995570751965.Spec : Prop :=
  ∀ n, P2236724995570751965.a n = A268614 (n + 1)

end A268614

/-! ## A268614.P6884700287531165889

`filter[A007675(n+1), A358678(#)]`
-/

namespace A268614.P6884700287531165889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A268614.P6884700287531165889

namespace A268614

/-- `filter[A007675(n+1), A358678(#)]` -/
def P6884700287531165889.Spec : Prop :=
  ∀ n, P6884700287531165889.a n = A268614 (n + 1)

end A268614

/-! ## A268614.P6309409992692806011

`record[A006530(A228649(n+2)-1)]`
-/

namespace A268614.P6309409992692806011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A228649 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268614.P6309409992692806011

namespace A268614

/-- `record[A006530(A228649(n+2)-1)]` -/
def P6309409992692806011.Spec : Prop :=
  ∀ n, P6309409992692806011.a n = A268614 (n + 1)

end A268614

/-! ## A268614.P16488069065800964371

`∩[A000040(n+1), A007675(n+1)]`
-/

namespace A268614.P16488069065800964371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268614.P16488069065800964371

namespace A268614

/-- `∩[A000040(n+1), A007675(n+1)]` -/
def P16488069065800964371.Spec : Prop :=
  ∀ n, (P16488069065800964371.a n : ℤ) = A268614 (n + 1)

end A268614

/-! ## A268614.P5161490604847803451

`∩[A000430(n+1), A007675(n+1)]`
-/

namespace A268614.P5161490604847803451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268614.P5161490604847803451

namespace A268614

/-- `∩[A000430(n+1), A007675(n+1)]` -/
def P5161490604847803451.Spec : Prop :=
  ∀ n, (P5161490604847803451.a n : ℤ) = A268614 (n + 1)

end A268614

/-! ## A268614.P4030994650153139109

`∩[A002144(n+1), A007675(n+1)]`
-/

namespace A268614.P4030994650153139109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268614.P4030994650153139109

namespace A268614

/-- `∩[A002144(n+1), A007675(n+1)]` -/
def P4030994650153139109.Spec : Prop :=
  ∀ n, (P4030994650153139109.a n : ℤ) = A268614 (n + 1)

end A268614

/-! ## A268614.P12368542975647110559

`∩[A002313(n+1), A007675(n+1)]`
-/

namespace A268614.P12368542975647110559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268614.P12368542975647110559

namespace A268614

/-- `∩[A002313(n+1), A007675(n+1)]` -/
def P12368542975647110559.Spec : Prop :=
  ∀ n, (P12368542975647110559.a n : ℤ) = A268614 (n + 1)

end A268614

/-! ## A268614.P2107880436994454954

`∩[A007675(n+1), A009087(n+1)]`
-/

namespace A268614.P2107880436994454954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268614.P2107880436994454954

namespace A268614

/-- `∩[A007675(n+1), A009087(n+1)]` -/
def P2107880436994454954.Spec : Prop :=
  ∀ n, (P2107880436994454954.a n : ℤ) = A268614 (n + 1)

end A268614

/-! ## A268614.P9306346173398759296

`∩[A007675(n+1), A042998(n+1)]`
-/

namespace A268614.P9306346173398759296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268614.P9306346173398759296

namespace A268614

/-- `∩[A007675(n+1), A042998(n+1)]` -/
def P9306346173398759296.Spec : Prop :=
  ∀ n, (P9306346173398759296.a n : ℤ) = A268614 (n + 1)

end A268614

/-! ## A268614.P4786814956396815504

`∩[A007675(n+1), A045344(n+1)]`
-/

namespace A268614.P4786814956396815504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268614.P4786814956396815504

namespace A268614

/-- `∩[A007675(n+1), A045344(n+1)]` -/
def P4786814956396815504.Spec : Prop :=
  ∀ n, (P4786814956396815504.a n : ℤ) = A268614 (n + 1)

end A268614

/-! ## A268614.P12573700771014180264

`∩[A007675(n+1), A045352(n+1)]`
-/

namespace A268614.P12573700771014180264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268614.P12573700771014180264

namespace A268614

/-- `∩[A007675(n+1), A045352(n+1)]` -/
def P12573700771014180264.Spec : Prop :=
  ∀ n, (P12573700771014180264.a n : ℤ) = A268614 (n + 1)

end A268614

/-! ## A268614.P14313724792827160205

`∩[A007675(n+1), A045403(n+1)]`
-/

namespace A268614.P14313724792827160205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268614.P14313724792827160205

namespace A268614

/-- `∩[A007675(n+1), A045403(n+1)]` -/
def P14313724792827160205.Spec : Prop :=
  ∀ n, (P14313724792827160205.a n : ℤ) = A268614 (n + 1)

end A268614

/-! ## A268614.P8112560970934860879

`∩[A007675(n+1), A045442(n+1)]`
-/

namespace A268614.P8112560970934860879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268614.P8112560970934860879

namespace A268614

/-- `∩[A007675(n+1), A045442(n+1)]` -/
def P8112560970934860879.Spec : Prop :=
  ∀ n, (P8112560970934860879.a n : ℤ) = A268614 (n + 1)

end A268614

/-!
# A268615: Lucas numbers mod 40.

The programs for A268615, the canonical program `A268615.P10925931779231542023` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268615 has offset 0).

The definition of A268615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268615.P10925931779231542023

`A000032(n)%40`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A268615

/-- `A000032(n)%40` -/
def P10925931779231542023.Spec : Prop :=
  ∀ n, P10925931779231542023.a n = A268615 n

theorem P10925931779231542023.correct : P10925931779231542023.Spec := by
  intro n
  simp only [A268615]

end A268615

/-!
# A268617: a(n) = (1/n^2) * Sum_{d|n} moebius(n/d)*binomial(3*d,d).

The programs for A268617, the canonical program `A268617.P154587319983181233` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268617 has offset 1).

The definition of A268617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268617.P15830589769373912497

`A268618(n+1)*(n+1)/2`
-/

namespace A268617.P15830589769373912497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268618 (n + 1) * (n + 1 : ℤ) : ℚ) / 2

end

end A268617.P15830589769373912497

namespace A268617

/-- `A268618(n+1)*(n+1)/2` -/
def P15830589769373912497.Spec : Prop :=
  ∀ n, P15830589769373912497.a n = (A268617 (n + 1) : ℚ)

end A268617

/-! ## A268617.P154587319983181233

`A060170(n+1)/(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268617

/-- `A060170(n+1)/(n+1)` -/
def P154587319983181233.Spec : Prop :=
  ∀ n, P154587319983181233.a n = (A268617 (n + 1) : ℚ)

end A268617

/-! ## A268617.P1892208260628410776

`1/(n+1)²*∑{d}[n+1, A008683((n+1)/#)*A005809(#)]`
-/

namespace A268617.P1892208260628410776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((n + 1) ^ 2 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A005809 d : ℤ) : ℚ)

end

end A268617.P1892208260628410776

namespace A268617

/-- `1/(n+1)²*∑{d}[n+1, A008683((n+1)/#)*A005809(#)]` -/
def P1892208260628410776.Spec : Prop :=
  ∀ n, P1892208260628410776.a n = (A268617 (n + 1) : ℚ)

end A268617

/-! ## A268617.P7637988848176390122

`1/(n+1)²*∑{d}[n+1, A008683((n+1)/#)*C(3*#, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268617.P7637988848176390122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((n + 1) ^ 2 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose (3 * d) d : ℤ) : ℤ) : ℚ)

end

end A268617.P7637988848176390122

namespace A268617

/-- `1/(n+1)²*∑{d}[n+1, A008683((n+1)/#)*C(3*#, #)]` -/
def P7637988848176390122.Spec : Prop :=
  ∀ n, P7637988848176390122.a n = (A268617 (n + 1) : ℚ)

end A268617

/-! ## A268617.P6863743939926239316

`(n+1)*A268618(n+1)/2`
-/

namespace A268617.P6863743939926239316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A268618 (n + 1) : ℚ) / 2

end

end A268617.P6863743939926239316

namespace A268617

/-- `(n+1)*A268618(n+1)/2` -/
def P6863743939926239316.Spec : Prop :=
  ∀ n, P6863743939926239316.a n = (A268617 (n + 1) : ℚ)

end A268617

/-! ## A268617.P11102097500371122196

`3/(n+1)*A346577(n+1)`
-/

namespace A268617.P11102097500371122196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A346577 (n + 1) : ℚ)

end

end A268617.P11102097500371122196

namespace A268617

/-- `3/(n+1)*A346577(n+1)` -/
def P11102097500371122196.Spec : Prop :=
  ∀ n, P11102097500371122196.a n = (A268617 (n + 1) : ℚ)

end A268617

/-!
# A268618: a(n) = (2/n^3) * Sum_{d|n} moebius(n/d)*binomial(3*d,d).

The programs for A268618, the canonical program `A268618.P5921567329550335060` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268618 has offset 1).

The definition of A268618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268618.P5921567329550335060

`2/(n+1)*A268617(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A268618

/-- `2/(n+1)*A268617(n+1)` -/
def P5921567329550335060.Spec : Prop :=
  ∀ n, P5921567329550335060.a n = (A268618 (n + 1) : ℚ)

end A268618

/-! ## A268618.P8399338485517315468

`2/(n+1)²*A060170(n+1)`
-/

namespace A268618.P8399338485517315468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((n + 1) ^ 2 : ℚ) * (A060170 (n + 1) : ℚ)

end

end A268618.P8399338485517315468

namespace A268618

/-- `2/(n+1)²*A060170(n+1)` -/
def P8399338485517315468.Spec : Prop :=
  ∀ n, P8399338485517315468.a n = (A268618 (n + 1) : ℚ)

end A268618

/-! ## A268618.P6855556127979449425

`2/(n+1)^3*∑{d}[n+1, A008683((n+1)/#)*A005809(#)]`
-/

namespace A268618.P6855556127979449425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((n + 1) ^ 3 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A005809 d : ℤ) : ℚ)

end

end A268618.P6855556127979449425

namespace A268618

/-- `2/(n+1)^3*∑{d}[n+1, A008683((n+1)/#)*A005809(#)]` -/
def P6855556127979449425.Spec : Prop :=
  ∀ n, P6855556127979449425.a n = (A268618 (n + 1) : ℚ)

end A268618

/-! ## A268618.P662012485230388710

`2/(n+1)^3*∑{d}[n+1, A008683((n+1)/#)*C(3*#, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268618.P662012485230388710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((n + 1) ^ 3 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose (3 * d) d : ℤ) : ℤ) : ℚ)

end

end A268618.P662012485230388710

namespace A268618

/-- `2/(n+1)^3*∑{d}[n+1, A008683((n+1)/#)*C(3*#, #)]` -/
def P662012485230388710.Spec : Prop :=
  ∀ n, P662012485230388710.a n = (A268618 (n + 1) : ℚ)

end A268618

/-! ## A268618.P10647565650224836231

`(A268617(n+1)+A268617(n+1))/A000027(n+1)`
-/

namespace A268618.P10647565650224836231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268617 (n + 1) + A268617 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A268618.P10647565650224836231

namespace A268618

/-- `(A268617(n+1)+A268617(n+1))/A000027(n+1)` -/
def P10647565650224836231.Spec : Prop :=
  ∀ n, P10647565650224836231.a n = (A268618 (n + 1) : ℚ)

end A268618

/-! ## A268618.P16397473331591037871

`(A268617(n+1)+A268617(n+1))/(A005408(n)-n)`
-/

namespace A268618.P16397473331591037871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268617 (n + 1) + A268617 (n + 1) : ℚ) / (A005408 n - (n : ℤ) : ℚ)

end

end A268618.P16397473331591037871

namespace A268618

/-- `(A268617(n+1)+A268617(n+1))/(A005408(n)-n)` -/
def P16397473331591037871.Spec : Prop :=
  ∀ n, P16397473331591037871.a n = (A268618 (n + 1) : ℚ)

end A268618

/-!
# A268619: a(n) = (1/n^2) * Sum_{d|n} moebius(n/d)*binomial(2*d,d).

The programs for A268619, the canonical program `A268619.P5571942204347764438` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268619 has offset 1).

The definition of A268619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268619.P5571942204347764438

`A060165(n+1)/(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268619

/-- `A060165(n+1)/(n+1)` -/
def P5571942204347764438.Spec : Prop :=
  ∀ n, P5571942204347764438.a n = (A268619 (n + 1) : ℚ)

end A268619

/-! ## A268619.P11669809390837698407

`A022553(n+1)*2/(n+1)`
-/

namespace A268619.P11669809390837698407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022553 (n + 1) * 2 : ℚ) / (n + 1 : ℚ)

end

end A268619.P11669809390837698407

namespace A268619

/-- `A022553(n+1)*2/(n+1)` -/
def P11669809390837698407.Spec : Prop :=
  ∀ n, P11669809390837698407.a n = (A268619 (n + 1) : ℚ)

end A268619

/-! ## A268619.P17416623092629570085

`A007727(n+1)/(n+1)²`
-/

namespace A268619.P17416623092629570085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A268619.P17416623092629570085

namespace A268619

/-- `A007727(n+1)/(n+1)²` -/
def P17416623092629570085.Spec : Prop :=
  ∀ n, P17416623092629570085.a n = (A268619 (n + 1) : ℚ)

end A268619

/-! ## A268619.P14794431770971065347

`A045630(n+1)*2/(n+1)²`
-/

namespace A268619.P14794431770971065347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045630 (n + 1) * 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A268619.P14794431770971065347

namespace A268619

/-- `A045630(n+1)*2/(n+1)²` -/
def P14794431770971065347.Spec : Prop :=
  ∀ n, P14794431770971065347.a n = (A268619 (n + 1) : ℚ)

end A268619

/-! ## A268619.P4907608672476983824

`1/(n+1)²*∑{d}[n+1, A008683((n+1)/#)*A000984(#)]`
-/

namespace A268619.P4907608672476983824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((n + 1) ^ 2 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000984 d : ℤ) : ℚ)

end

end A268619.P4907608672476983824

namespace A268619

/-- `1/(n+1)²*∑{d}[n+1, A008683((n+1)/#)*A000984(#)]` -/
def P4907608672476983824.Spec : Prop :=
  ∀ n, P4907608672476983824.a n = (A268619 (n + 1) : ℚ)

end A268619

/-! ## A268619.P226930289105263588

`1/(n+1)²*∑{d}[n+1, A008683((n+1)/#)*C(2*#, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268619.P226930289105263588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((n + 1) ^ 2 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose (2 * d) d : ℤ) : ℤ) : ℚ)

end

end A268619.P226930289105263588

namespace A268619

/-- `1/(n+1)²*∑{d}[n+1, A008683((n+1)/#)*C(2*#, #)]` -/
def P226930289105263588.Spec : Prop :=
  ∀ n, P226930289105263588.a n = (A268619 (n + 1) : ℚ)

end A268619

/-! ## A268619.P1353769205524568236

`(n+1)/6*A268592(n+1)`
-/

namespace A268619.P1353769205524568236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * (A268592 (n + 1) : ℚ)

end

end A268619.P1353769205524568236

namespace A268619

/-- `(n+1)/6*A268592(n+1)` -/
def P1353769205524568236.Spec : Prop :=
  ∀ n, P1353769205524568236.a n = (A268619 (n + 1) : ℚ)

end A268619

/-! ## A268619.P4472103741731624776

`2*A022553(n+1)/(n+1)`
-/

namespace A268619.P4472103741731624776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A022553 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A268619.P4472103741731624776

namespace A268619

/-- `2*A022553(n+1)/(n+1)` -/
def P4472103741731624776.Spec : Prop :=
  ∀ n, P4472103741731624776.a n = (A268619 (n + 1) : ℚ)

end A268619

/-! ## A268619.P15150960579655723377

`(A054358(n+1)+A000108(n+1))/(n+1)`
-/

namespace A268619.P15150960579655723377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054358 (n + 1) + A000108 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A268619.P15150960579655723377

namespace A268619

/-- `(A054358(n+1)+A000108(n+1))/(n+1)` -/
def P15150960579655723377.Spec : Prop :=
  ∀ n, P15150960579655723377.a n = (A268619 (n + 1) : ℚ)

end A268619

/-! ## A268619.P2148109426655425784

`A001037(n+1)/A045664(n+1)*A007727(n+1)`
-/

namespace A268619.P2148109426655425784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) : ℚ) / (A045664 (n + 1) : ℚ) * (A007727 (n + 1) : ℚ)

end

end A268619.P2148109426655425784

namespace A268619

/-- `A001037(n+1)/A045664(n+1)*A007727(n+1)` -/
def P2148109426655425784.Spec : Prop :=
  ∀ n, P2148109426655425784.a n = (A268619 (n + 1) : ℚ)

end A268619

/-!
# A268620: Numbers whose digital sum is a multiple of 4.

The programs for A268620, the canonical program `A268620.P8472382142886893102` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268620 has offset 1).

The definition of A268620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268620.P8472382142886893102

`lt[A007953(n)%4, 1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268620

/-- `lt[A007953(n)%4, 1]` -/
def P8472382142886893102.Spec : Prop :=
  ∀ n, (P8472382142886893102.a n : ℤ) = A268620 (n + 1)

theorem P8472382142886893102.correct : P8472382142886893102.Spec := by
  intro n
  simp only [A268620, Nat.add_sub_cancel]

end A268620

/-! ## A268620.P16334752191479509687

`eq[1, val(A028900(n)+2, 2)]`
-/

namespace A268620.P16334752191479509687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028900 n + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268620.P16334752191479509687

namespace A268620

/-- `eq[1, val(A028900(n)+2, 2)]` -/
def P16334752191479509687.Spec : Prop :=
  ∀ n, (P16334752191479509687.a n : ℤ) = A268620 (n + 1)

end A268620

/-! ## A268620.P16464636419027793641

`eq[0, A007877(A007953(n))]`
-/

namespace A268620.P16464636419027793641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268620.P16464636419027793641

namespace A268620

/-- `eq[0, A007877(A007953(n))]` -/
def P16464636419027793641.Spec : Prop :=
  ∀ n, (P16464636419027793641.a n : ℤ) = A268620 (n + 1)

end A268620

/-! ## A268620.P5652183250884087680

`eq[1, A077750(A028900(n))+1]`
-/

namespace A268620.P5652183250884087680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077750 (A028900 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268620.P5652183250884087680

namespace A268620

/-- `eq[1, A077750(A028900(n))+1]` -/
def P5652183250884087680.Spec : Prop :=
  ∀ n, (P5652183250884087680.a n : ℤ) = A268620 (n + 1)

end A268620

/-! ## A268620.P577384729463638809

`eq[1, A007814(A007953(n)+2)]`
-/

namespace A268620.P577384729463638809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007953 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268620.P577384729463638809

namespace A268620

/-- `eq[1, A007814(A007953(n)+2)]` -/
def P577384729463638809.Spec : Prop :=
  ∀ n, (P577384729463638809.a n : ℤ) = A268620 (n + 1)

end A268620

/-! ## A268620.P11695116641026667377

`eq[2, A006519(A007953(n)+2)]`
-/

namespace A268620.P11695116641026667377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A007953 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268620.P11695116641026667377

namespace A268620

/-- `eq[2, A006519(A007953(n)+2)]` -/
def P11695116641026667377.Spec : Prop :=
  ∀ n, (P11695116641026667377.a n : ℤ) = A268620 (n + 1)

end A268620

/-! ## A268620.P15695914813486847019

`eq[2, A240067(2*A007953(n)+1)]`
-/

namespace A268620.P15695914813486847019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240067 (2 * A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268620.P15695914813486847019

namespace A268620

/-- `eq[2, A240067(2*A007953(n)+1)]` -/
def P15695914813486847019.Spec : Prop :=
  ∀ n, (P15695914813486847019.a n : ℤ) = A268620 (n + 1)

end A268620

/-! ## A268620.P5477951198483429033

`eq[1, A070402(A092196(n))]`
-/

namespace A268620.P5477951198483429033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (A092196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268620.P5477951198483429033

namespace A268620

/-- `eq[1, A070402(A092196(n))]` -/
def P5477951198483429033.Spec : Prop :=
  ∀ n, (P5477951198483429033.a n : ℤ) = A268620 (n + 1)

end A268620

/-! ## A268620.P234476804342273578

`eq[2, A133186(A092196(n)+1)]`
-/

namespace A268620.P234476804342273578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133186 (A092196 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268620.P234476804342273578

namespace A268620

/-- `eq[2, A133186(A092196(n)+1)]` -/
def P234476804342273578.Spec : Prop :=
  ∀ n, (P234476804342273578.a n : ℤ) = A268620 (n + 1)

end A268620

/-! ## A268620.P17462720003175806399

`eq[1, A070352(A389882(n))]`
-/

namespace A268620.P17462720003175806399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (A389882 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268620.P17462720003175806399

namespace A268620

/-- `eq[1, A070352(A389882(n))]` -/
def P17462720003175806399.Spec : Prop :=
  ∀ n, (P17462720003175806399.a n : ℤ) = A268620 (n + 1)

end A268620

/-!
# A268621: Number of n X n 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totaling two no more than once.

The programs for A268621, there is no canonical definition to state claims against.
-/

/-! ## A268621.P16737882644375025307

`A268628(∑[4*n]+1)`
-/

namespace A268621.P16737882644375025307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268621.P16737882644375025307

/-! ## A268621.P11456174986259115603

`lcm(3, A268628(n²+(n+1)²))`
-/

namespace A268621.P11456174986259115603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A268628 (n ^ 2 + (n + 1) ^ 2))

end

end A268621.P11456174986259115603

/-! ## A268621.P3846854936830415730

`record[gcd(A114327(n), A268628(n+1))]`
-/

namespace A268621.P3846854936830415730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A268628 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268621.P3846854936830415730

/-! ## A268621.P3723357465529051779

`record[A203994(n+1)*A268628(n+1)]`
-/

namespace A268621.P3723357465529051779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A268628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268621.P3723357465529051779

/-! ## A268621.P11041388354107592352

`record[root(A268628(n+1), A089913(n+1))]`
-/

namespace A268621.P11041388354107592352
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A268628 (n + 1) : ℝ) ^ (1 / (A089913 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268621.P11041388354107592352

/-!
# A268622: Number of n X 2 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268622, the canonical program `A268622.P2595254194921998262` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268622 has offset 1).

The definition of A268622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268622.P4850726529285446334

`ogf((9-12x+3x^2)/(1-6x+9x^2))`
-/

namespace A268622.P4850726529285446334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -12, 3] [1, -6, 9] n

end

end A268622.P4850726529285446334

namespace A268622

/-- `ogf((9-12x+3x^2)/(1-6x+9x^2))` -/
def P4850726529285446334.Spec : Prop :=
  ∀ n, P4850726529285446334.a n = A268622 (n + 1)

end A268622

/-! ## A268622.P13768314127608049049

`3/2*A229587(n+2)`
-/

namespace A268622.P13768314127608049049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A229587 (n + 2) : ℚ)

end

end A268622.P13768314127608049049

namespace A268622

/-- `3/2*A229587(n+2)` -/
def P13768314127608049049.Spec : Prop :=
  ∀ n, P13768314127608049049.a n = (A268622 (n + 1) : ℚ)

end A268622

/-! ## A268622.P2595254194921998262

`A113071(n+1)+A025192(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A268622

/-- `A113071(n+1)+A025192(n)` -/
def P2595254194921998262.Spec : Prop :=
  ∀ n, P2595254194921998262.a n = A268622 (n + 1)

theorem P2595254194921998262.correct : P2595254194921998262.Spec := by
  intro n
  simp only [A268622, Nat.add_sub_cancel]

end A268622

/-! ## A268622.P14532056285295310179

`A124647(n+1)-A229277(n)`
-/

namespace A268622.P14532056285295310179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 (n + 1) - A229277 n

end

end A268622.P14532056285295310179

namespace A268622

/-- `A124647(n+1)-A229277(n)` -/
def P14532056285295310179.Spec : Prop :=
  ∀ n, P14532056285295310179.a n = A268622 (n + 1)

end A268622

/-! ## A268622.P15390689147842460722

`A025192(n)+8*A081038(n)`
-/

namespace A268622.P15390689147842460722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + 8 * A081038 n

end

end A268622.P15390689147842460722

namespace A268622

/-- `A025192(n)+8*A081038(n)` -/
def P15390689147842460722.Spec : Prop :=
  ∀ n, P15390689147842460722.a n = A268622 (n + 1)

end A268622

/-! ## A268622.P3793353646679433344

`3*A229277(n+1)-A229277(n)`
-/

namespace A268622.P3793353646679433344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A229277 (n + 1) - A229277 n

end

end A268622.P3793353646679433344

namespace A268622

/-- `3*A229277(n+1)-A229277(n)` -/
def P3793353646679433344.Spec : Prop :=
  ∀ n, P3793353646679433344.a n = A268622 (n + 1)

end A268622

/-! ## A268622.P499168665982796054

`A268633(n+1)+6*A000244(n)`
-/

namespace A268622.P499168665982796054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268633 (n + 1) + 6 * A000244 n

end

end A268622.P499168665982796054

namespace A268622

/-- `A268633(n+1)+6*A000244(n)` -/
def P499168665982796054.Spec : Prop :=
  ∀ n, P499168665982796054.a n = A268622 (n + 1)

end A268622

/-! ## A268622.P17831910352729839677

`A005408(A103517(A103517(n)))*A025192(n)`
-/

namespace A268622.P17831910352729839677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A103517 (A103517 n).toNat).toNat * A025192 n

end

end A268622.P17831910352729839677

namespace A268622

/-- `A005408(A103517(A103517(n)))*A025192(n)` -/
def P17831910352729839677.Spec : Prop :=
  ∀ n, P17831910352729839677.a n = A268622 (n + 1)

end A268622

/-! ## A268622.P10278166586909002187

`6*a(n-1)-9*a(n-2)` with `a(0)=9, a(1)=42, a(2)=174`
-/

namespace A268622.P10278166586909002187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 42, 174] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A268622.P10278166586909002187

namespace A268622

/-- `6*a(n-1)-9*a(n-2)` -/
def P10278166586909002187.Spec : Prop :=
  ∀ n, P10278166586909002187.a n = A268622 (n + 1)

end A268622

/-! ## A268622.P11371902970281372794

`A268905(n+2)/4`
-/

namespace A268622.P11371902970281372794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268905 (n + 2) : ℚ) / 4

end

end A268622.P11371902970281372794

namespace A268622

/-- `A268905(n+2)/4` -/
def P11371902970281372794.Spec : Prop :=
  ∀ n, P11371902970281372794.a n = (A268622 (n + 1) : ℚ)

end A268622

/-!
# A268623: Number of n X 3 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268623, the canonical program `A268623.P10579934613986772687` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268623 has offset 1).

The definition of A268623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268623.P10579934613986772687

`ogf((24-66x+42x^2+6x^3)/(1-10x+29x^2-20x^3+4x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A268623

/-- `ogf((24-66x+42x^2+6x^3)/(1-10x+29x^2-20x^3+4x^4))` -/
def P10579934613986772687.Spec : Prop :=
  ∀ n, P10579934613986772687.a n = A268623 (n + 1)

theorem P10579934613986772687.correct : P10579934613986772687.Spec := by
  intro n
  simp only [A268623, Nat.add_sub_cancel]

end A268623

/-! ## A268623.P9624264855785700668

`A268628(∑[n+2]+4)`
-/

namespace A268623.P9624264855785700668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268623.P9624264855785700668

namespace A268623

/-- `A268628(∑[n+2]+4)` -/
def P9624264855785700668.Spec : Prop :=
  ∀ n, P9624264855785700668.a n = A268623 (n + 1)

end A268623

/-! ## A268623.P6445195023874885432

`lcm(2, A268628(A167614(n+1)))`
-/

namespace A268623.P6445195023874885432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268628 (A167614 (n + 1)).toNat)

end

end A268623.P6445195023874885432

namespace A268623

/-- `lcm(2, A268628(A167614(n+1)))` -/
def P6445195023874885432.Spec : Prop :=
  ∀ n, (P6445195023874885432.a n : ℤ) = A268623 (n + 1)

end A268623

/-! ## A268623.P9808541296752969478

`A268628(A167614(n+1))+A185284(n)`
-/

namespace A268623.P9808541296752969478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A167614 (n + 1)).toNat + A185284 n

end

end A268623.P9808541296752969478

namespace A268623

/-- `A268628(A167614(n+1))+A185284(n)` -/
def P9808541296752969478.Spec : Prop :=
  ∀ n, P9808541296752969478.a n = A268623 (n + 1)

end A268623

/-! ## A268623.P10965573106691094463

`A268628(A167614(n+1))%A271749(n)`
-/

namespace A268623.P10965573106691094463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268628 (A167614 (n + 1)).toNat) (A271749 (n + 10))

end

end A268623.P10965573106691094463

namespace A268623

/-- `A268628(A167614(n+1))%A271749(n)` -/
def P10965573106691094463.Spec : Prop :=
  ∀ n, P10965573106691094463.a n = A268623 (n + 1)

end A268623

/-!
# A268624: Number of n X 4 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268624, there is no canonical definition to state claims against.
-/

/-! ## A268624.P3158819113534874759

`A268628(A374004(n+1))`
-/

namespace A268624.P3158819113534874759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A374004 (n + 1)).toNat

end

end A268624.P3158819113534874759

/-! ## A268624.P14310853776879590863

`A268628(A141214(n)+7)`
-/

namespace A268624.P14310853776879590863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A141214 n + 7).toNat

end

end A268624.P14310853776879590863

/-! ## A268624.P6599515993232831013

`A268628(A052905(n)+9)`
-/

namespace A268624.P6599515993232831013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A052905 n + 9).toNat

end

end A268624.P6599515993232831013

/-! ## A268624.P4463970640840882846

`A268628(A055999(n)+10)`
-/

namespace A268624.P4463970640840882846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A055999 n + 10).toNat

end

end A268624.P4463970640840882846

/-! ## A268624.P854554783822844792

`A268628(A167614(n+2)+1)`
-/

namespace A268624.P854554783822844792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A167614 (n + 2) + 1).toNat

end

end A268624.P854554783822844792

/-!
# A268625: Number of n X 5 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totaling two no more than once.

The programs for A268625, there is no canonical definition to state claims against.
-/

/-! ## A268625.P11150934549295284345

`A268628(A374005(n+1))`
-/

namespace A268625.P11150934549295284345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A374005 (n + 1)).toNat

end

end A268625.P11150934549295284345

/-! ## A268625.P10784218359326414806

`A268628(A056000(n)+15)`
-/

namespace A268625.P10784218359326414806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A056000 n + 15).toNat

end

end A268625.P10784218359326414806

/-! ## A268625.P928715341656582066

`A268628(Δ[A006416(n+2)]+8)`
-/

namespace A268625.P928715341656582066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (f1 (n + 1) - f1 n + 8).toNat

end

end A268625.P928715341656582066

/-! ## A268625.P4512326686028779794

`A268628(A052905(n+2)-n+5)`
-/

namespace A268625.P4512326686028779794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A052905 (n + 2) - (n : ℤ) + 5).toNat

end

end A268625.P4512326686028779794

/-! ## A268625.P4354242654597077438

`A268628(Δ[A264443(n)])`
-/

namespace A268625.P4354242654597077438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (f1 (n + 1) - f1 n).toNat

end

end A268625.P4354242654597077438

/-!
# A268626: Number of nX6 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268626, there is no canonical definition to state claims against.
-/

/-! ## A268626.P16858027240798912155

`A268628(A374007(n+1))`
-/

namespace A268626.P16858027240798912155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A374007 (n + 1)).toNat

end

end A268626.P16858027240798912155

/-! ## A268626.P12150569884959282771

`A268628(A167487(n+5)-(n+7))`
-/

namespace A268626.P12150569884959282771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A167487 (n + 5) - (n + 7 : ℤ)).toNat

end

end A268626.P12150569884959282771

/-! ## A268626.P10581675918458403644

`A268628(A052905(n+3))`
-/

namespace A268626.P10581675918458403644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A052905 (n + 3)).toNat

end

end A268626.P10581675918458403644

/-! ## A268626.P10459773286787677813

`A268628(eq[3, A219347(n)])`
-/

namespace A268626.P10459773286787677813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268626.P10459773286787677813

/-! ## A268626.P4706365712416791166

`A268628(eq[5, A193592(n)])`
-/

namespace A268626.P4706365712416791166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268626.P4706365712416791166

/-!
# A268627: Number of nX7 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

The programs for A268627, there is no canonical definition to state claims against.
-/

/-! ## A268627.P16283846339480649929

`A268628(A374008(n+1))`
-/

namespace A268627.P16283846339480649929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A374008 (n + 1)).toNat

end

end A268627.P16283846339480649929

/-! ## A268627.P16065270086396058964

`A268628(A167487(n+5))`
-/

namespace A268627.P16065270086396058964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (A167487 (n + 5)).toNat

end

end A268627.P16065270086396058964

/-! ## A268627.P11182307589819507481

`A268628(eq[8, A131818(n+1)])`
-/

namespace A268627.P11182307589819507481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268627.P11182307589819507481

/-! ## A268627.P13510444514044633635

`A268628(eq[4, A219347(n)])`
-/

namespace A268627.P13510444514044633635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268627.P13510444514044633635

/-! ## A268627.P4391714936058298358

`A268628(eq[6, A193592(n)])`
-/

namespace A268627.P4391714936058298358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268627.P4391714936058298358

/-!
# A268629: Primes p that have no squareful primitive roots less than p.

The programs for A268629, there is no canonical definition to state claims against.
-/

/-! ## A268629.P5362330982415581748

`A179429(∑[(2^∑{e}[n+1, val(#!, 2)])!])`
-/

namespace A268629.P5362330982415581748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f2 n) p)) 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179429 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268629.P5362330982415581748

/-! ## A268629.P13271872222542653125

`filter[A007703(n+1), A376451(#)]`
-/

namespace A268629.P13271872222542653125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A376451 (f1 j).toNat = 1) n)

end

end A268629.P13271872222542653125

/-! ## A268629.P2329304823049887569

`A116512(A007703(A037459(n+1))²)`
-/

namespace A268629.P2329304823049887569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (A007703 (A037459 (n + 1)).toNat ^ 2).toNat

end

end A268629.P2329304823049887569

/-! ## A268629.P5027754839439543213

`A000040(A187829(n+1)+A035450(n+1))`
-/

namespace A268629.P5027754839439543213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A187829 (n + 1) + A035450 (n + 1)).toNat

end

end A268629.P5027754839439543213

/-! ## A268629.P12088172949980446380

`A006005(A187829(n+1)+A035450(n+1))`
-/

namespace A268629.P12088172949980446380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A187829 (n + 1) + A035450 (n + 1)).toNat

end

end A268629.P12088172949980446380

/-!
# A268631: Number of ordered pairs (a,b) of positive integers less than n with the property that n divides ab.

The programs for A268631, the canonical program `A268631.P11656545596258421338` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268631 has offset 1).

The definition of A268631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268631.P11656545596258421338

`A006579(n+1)-n`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A268631

/-- `A006579(n+1)-n` -/
def P11656545596258421338.Spec : Prop :=
  ∀ n, P11656545596258421338.a n = A268631 (n + 1)

theorem P11656545596258421338.correct : P11656545596258421338.Spec := by
  intro n
  simp only [A268631, Nat.add_sub_cancel]

end A268631

/-! ## A268631.P3381809537227882955

`n²-A344485(n+1)`
-/

namespace A268631.P3381809537227882955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A344485 (n + 1)

end

end A268631.P3381809537227882955

namespace A268631

/-- `n²-A344485(n+1)` -/
def P3381809537227882955.Spec : Prop :=
  ∀ n, P3381809537227882955.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P1616106116799232120

`A018804(n+1)-Δ[n²]`
-/

namespace A268631.P1616106116799232120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A268631.P1616106116799232120

namespace A268631

/-- `A018804(n+1)-Δ[n²]` -/
def P1616106116799232120.Spec : Prop :=
  ∀ n, P1616106116799232120.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P3039349671106169095

`A209295(n+1)-(2*(n+1)+n)`
-/

namespace A268631.P3039349671106169095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 (n + 1) - (2 * (n + 1) + n : ℤ)

end

end A268631.P3039349671106169095

namespace A268631

/-- `A209295(n+1)-(2*(n+1)+n)` -/
def P3039349671106169095.Spec : Prop :=
  ∀ n, P3039349671106169095.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P4651032194502359492

`abs(A018804(n+1)-A005408(n))`
-/

namespace A268631.P4651032194502359492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A018804 (n + 1) - A005408 n|

end

end A268631.P4651032194502359492

namespace A268631

/-- `abs(A018804(n+1)-A005408(n))` -/
def P4651032194502359492.Spec : Prop :=
  ∀ n, P4651032194502359492.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P4661060048999218240

`A396514(n+1)+A237588(n+1)`
-/

namespace A268631.P4661060048999218240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396514 (n + 1) + A237588 (n + 1)

end

end A268631.P4661060048999218240

namespace A268631

/-- `A396514(n+1)+A237588(n+1)` -/
def P4661060048999218240.Spec : Prop :=
  ∀ n, P4661060048999218240.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P6259675189286424618

`A018804(n+1)-1-A005843(n)`
-/

namespace A268631.P6259675189286424618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - 1 - A005843 n

end

end A268631.P6259675189286424618

namespace A268631

/-- `A018804(n+1)-1-A005843(n)` -/
def P6259675189286424618.Spec : Prop :=
  ∀ n, P6259675189286424618.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P10685665292643964181

`A005448(n+1)%A382069(n+1)`
-/

namespace A268631.P10685665292643964181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005448 (n + 1)) (A382069 (n + 1))

end

end A268631.P10685665292643964181

namespace A268631

/-- `A005448(n+1)%A382069(n+1)` -/
def P10685665292643964181.Spec : Prop :=
  ∀ n, P10685665292643964181.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P3855989482055495732

`A002378(n)-(A344485(n+1)+n)`
-/

namespace A268631.P3855989482055495732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - (A344485 (n + 1) + (n : ℤ))

end

end A268631.P3855989482055495732

namespace A268631

/-- `A002378(n)-(A344485(n+1)+n)` -/
def P3855989482055495732.Spec : Prop :=
  ∀ n, P3855989482055495732.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P8448450006890583878

`A106474(n)-(A368736(n+1)+n)`
-/

namespace A268631.P8448450006890583878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106474 n - (A368736 (n + 1) + (n : ℤ))

end

end A268631.P8448450006890583878

namespace A268631

/-- `A106474(n)-(A368736(n+1)+n)` -/
def P8448450006890583878.Spec : Prop :=
  ∀ n, P8448450006890583878.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P10834794807917870316

`A018804(n+1)+1-A004277(n+1)`
-/

namespace A268631.P10834794807917870316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + 1 - A004277 (n + 1)

end

end A268631.P10834794807917870316

namespace A268631

/-- `A018804(n+1)+1-A004277(n+1)` -/
def P10834794807917870316.Spec : Prop :=
  ∀ n, P10834794807917870316.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P12319357639308466958

`2*A180772(n+1)-A057918(n+1)`
-/

namespace A268631.P12319357639308466958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180772 (n + 1) - A057918 (n + 1)

end

end A268631.P12319357639308466958

namespace A268631

/-- `2*A180772(n+1)-A057918(n+1)` -/
def P12319357639308466958.Spec : Prop :=
  ∀ n, P12319357639308466958.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P10885030550709151390

`A018804(n+1)+n+1-A016789(n)`
-/

namespace A268631.P10885030550709151390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + (n + 1 : ℤ) - A016789 n

end

end A268631.P10885030550709151390

namespace A268631

/-- `A018804(n+1)+n+1-A016789(n)` -/
def P10885030550709151390.Spec : Prop :=
  ∀ n, P10885030550709151390.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P734168213873675231

`A018804(n+1)-A000027(n+1)-n`
-/

namespace A268631.P734168213873675231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A000027 (n + 1) - (n : ℤ)

end

end A268631.P734168213873675231

namespace A268631

/-- `A018804(n+1)-A000027(n+1)-n` -/
def P734168213873675231.Spec : Prop :=
  ∀ n, P734168213873675231.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P12219301032449322949

`A000217(n+1)+n²-A382069(n+1)`
-/

namespace A268631.P12219301032449322949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + ((n ^ 2 : ℤ) - A382069 (n + 1))

end

end A268631.P12219301032449322949

namespace A268631

/-- `A000217(n+1)+n²-A382069(n+1)` -/
def P12219301032449322949.Spec : Prop :=
  ∀ n, P12219301032449322949.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P18249604190969739083

`∑{d}[n+1, A008683(#)*A374969((n+1)/#)]`
-/

namespace A268631.P18249604190969739083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A374969 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A268631.P18249604190969739083

namespace A268631

/-- `∑{d}[n+1, A008683(#)*A374969((n+1)/#)]` -/
def P18249604190969739083.Spec : Prop :=
  ∀ n, P18249604190969739083.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P14670823320466254374

`(A018804(n+1)-A005408(n))%A003215(n)`
-/

namespace A268631.P14670823320466254374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018804 (n + 1) - A005408 n) (A003215 n)

end

end A268631.P14670823320466254374

namespace A268631

/-- `(A018804(n+1)-A005408(n))%A003215(n)` -/
def P14670823320466254374.Spec : Prop :=
  ∀ n, P14670823320466254374.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P3903680732568419406

`A024000(A000188(n+1))+2*A180772(n+1)`
-/

namespace A268631.P3903680732568419406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A000188 (n + 1)).toNat + 2 * A180772 (n + 1)

end

end A268631.P3903680732568419406

namespace A268631

/-- `A024000(A000188(n+1))+2*A180772(n+1)` -/
def P3903680732568419406.Spec : Prop :=
  ∀ n, P3903680732568419406.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P9734724538635528556

`A018804(n+1)+A000290(n)-A000290(n+1)`
-/

namespace A268631.P9734724538635528556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + A000290 n - A000290 (n + 1)

end

end A268631.P9734724538635528556

namespace A268631

/-- `A018804(n+1)+A000290(n)-A000290(n+1)` -/
def P9734724538635528556.Spec : Prop :=
  ∀ n, P9734724538635528556.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P18297026759388918377

`A000290(n)+A000217(n+1)-A382069(n+1)`
-/

namespace A268631.P18297026759388918377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + A000217 (n + 1) - A382069 (n + 1)

end

end A268631.P18297026759388918377

namespace A268631

/-- `A000290(n)+A000217(n+1)-A382069(n+1)` -/
def P18297026759388918377.Spec : Prop :=
  ∀ n, P18297026759388918377.a n = A268631 (n + 1)

end A268631

/-! ## A268631.P13289661226358599849

`∑{#}[n-1, gcd(n+1, #+1)]-n`
-/

namespace A268631.P13289661226358599849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.gcd (n + 1) (k + 1) : ℕ) : ℤ) - (n : ℤ)

end

end A268631.P13289661226358599849

namespace A268631

/-- `∑{#}[n-1, gcd(n+1, #+1)]-n` -/
def P13289661226358599849.Spec : Prop :=
  ∀ n, P13289661226358599849.a n = A268631 (n + 1)

end A268631

/-!
# A268632: Number of n X n 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two exactly once.

The programs for A268632, there is no canonical definition to state claims against.
-/

/-! ## A268632.P11559088282171229739

`6*A229453(n+1)`
-/

namespace A268632.P11559088282171229739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229453 (n + 1)

end

end A268632.P11559088282171229739

/-! ## A268632.P11097505470465126677

`A268639(∑[4*n]+1)`
-/

namespace A268632.P11097505470465126677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268632.P11097505470465126677

/-! ## A268632.P1168033461388230513

`lcm(2, A268639(A001844(n)))`
-/

namespace A268632.P1168033461388230513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268639 (A001844 n).toNat)

end

end A268632.P1168033461388230513

/-! ## A268632.P18308208758814396370

`record[A003982(n)*A268639(n+1)]`
-/

namespace A268632.P18308208758814396370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268632.P18308208758814396370

/-! ## A268632.P547200407434150386

`record[A203994(n+1)*A268639(n+1)]`
-/

namespace A268632.P547200407434150386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A268639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268632.P547200407434150386

/-!
# A268633: Number of n X 2 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two exactly once.

The programs for A268633, the canonical program `A268633.P16630336372712642203` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268633 has offset 1).

The definition of A268633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268633.P7233923431708208837

`ogf((3+6x+3x^2)/(1-6x+9x^2))`
-/

namespace A268633.P7233923431708208837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, 3] [1, -6, 9] n

end

end A268633.P7233923431708208837

namespace A268633

/-- `ogf((3+6x+3x^2)/(1-6x+9x^2))` -/
def P7233923431708208837.Spec : Prop :=
  ∀ n, P7233923431708208837.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P16630336372712642203

`(2*n+1)*Δ[3*a(n-1)]` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A268633

/-- `(2*n+1)*Δ[3*a(n-1)]` -/
def P16630336372712642203.Spec : Prop :=
  ∀ n, P16630336372712642203.a n = A268633 (n + 1)

theorem P16630336372712642203.correct : P16630336372712642203.Spec := by
  intro n
  simp only [A268633, Nat.add_sub_cancel]

end A268633

/-! ## A268633.P8793945488652001905

`3*A113071(n)`
-/

namespace A268633.P8793945488652001905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A113071 n

end

end A268633.P8793945488652001905

namespace A268633

/-- `3*A113071(n)` -/
def P8793945488652001905.Spec : Prop :=
  ∀ n, P8793945488652001905.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P18011368924205450451

`Δ[n²]*Δ[A003946(n)]`
-/

namespace A268633.P18011368924205450451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (f2 (n + 1) - f2 n)

end

end A268633.P18011368924205450451

namespace A268633

/-- `Δ[n²]*Δ[A003946(n)]` -/
def P18011368924205450451.Spec : Prop :=
  ∀ n, P18011368924205450451.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P16933351462780327287

`Δ[n²]*A080923(n+1)`
-/

namespace A268633.P16933351462780327287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A080923 (n + 1)

end

end A268633.P16933351462780327287

namespace A268633

/-- `Δ[n²]*A080923(n+1)` -/
def P16933351462780327287.Spec : Prop :=
  ∀ n, P16933351462780327287.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P9423503287193558729

`Δ[n²]*A118264(n+2)`
-/

namespace A268633.P9423503287193558729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A118264 (n + 2)

end

end A268633.P9423503287193558729

namespace A268633

/-- `Δ[n²]*A118264(n+2)` -/
def P9423503287193558729.Spec : Prop :=
  ∀ n, P9423503287193558729.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P4115856692027743635

`Δ[n²]*A153339(2*n+1)`
-/

namespace A268633.P4115856692027743635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A153339 (2 * n + 1)

end

end A268633.P4115856692027743635

namespace A268633

/-- `Δ[n²]*A153339(2*n+1)` -/
def P4115856692027743635.Spec : Prop :=
  ∀ n, P4115856692027743635.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P7329103982460942887

`A040006(n)*A167682(n)`
-/

namespace A268633.P7329103982460942887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n * A167682 n

end

end A268633.P7329103982460942887

namespace A268633

/-- `A040006(n)*A167682(n)` -/
def P7329103982460942887.Spec : Prop :=
  ∀ n, P7329103982460942887.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P12202147302018309483

`A025192(n)*A281813(n)`
-/

namespace A268633.P12202147302018309483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n * A281813 n

end

end A268633.P12202147302018309483

namespace A268633

/-- `A025192(n)*A281813(n)` -/
def P12202147302018309483.Spec : Prop :=
  ∀ n, P12202147302018309483.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P1504810164695322101

`3*A040000(n)*A167682(n)`
-/

namespace A268633.P1504810164695322101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040000 n * A167682 n

end

end A268633.P1504810164695322101

namespace A268633

/-- `3*A040000(n)*A167682(n)` -/
def P1504810164695322101.Spec : Prop :=
  ∀ n, P1504810164695322101.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P1434889840432245906

`Δ[A074324(2*n)]*A005408(n)`
-/

namespace A268633.P1434889840432245906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005408 n

end

end A268633.P1434889840432245906

namespace A268633

/-- `Δ[A074324(2*n)]*A005408(n)` -/
def P1434889840432245906.Spec : Prop :=
  ∀ n, P1434889840432245906.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P3403129110415864094

`(A036453(n+1)²+2)*A167682(n)`
-/

namespace A268633.P3403129110415864094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036453 (n + 1) ^ 2 + 2) * A167682 n

end

end A268633.P3403129110415864094

namespace A268633

/-- `(A036453(n+1)²+2)*A167682(n)` -/
def P3403129110415864094.Spec : Prop :=
  ∀ n, P3403129110415864094.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P2877909343583601121

`Δ[A052156(n+1)]*A004273(n+1)`
-/

namespace A268633.P2877909343583601121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004273 (n + 1)

end

end A268633.P2877909343583601121

namespace A268633

/-- `Δ[A052156(n+1)]*A004273(n+1)` -/
def P2877909343583601121.Spec : Prop :=
  ∀ n, P2877909343583601121.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P10000871553426782841

`Δ[A074324(2*n)]*A004273(n+1)`
-/

namespace A268633.P10000871553426782841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004273 (n + 1)

end

end A268633.P10000871553426782841

namespace A268633

/-- `Δ[A074324(2*n)]*A004273(n+1)` -/
def P10000871553426782841.Spec : Prop :=
  ∀ n, P10000871553426782841.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P3459120909881972806

`(A004275(2*n+1)+2)*A068911(2*n)`
-/

namespace A268633.P3459120909881972806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004275 (2 * n + 1) + 2) * A068911 (2 * n)

end

end A268633.P3459120909881972806

namespace A268633

/-- `(A004275(2*n+1)+2)*A068911(2*n)` -/
def P3459120909881972806.Spec : Prop :=
  ∀ n, P3459120909881972806.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P1491223425952436460

`(A004275(2*n+1)+2)*A074324(2*n)`
-/

namespace A268633.P1491223425952436460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004275 (2 * n + 1) + 2) * A074324 (2 * n)

end

end A268633.P1491223425952436460

namespace A268633

/-- `(A004275(2*n+1)+2)*A074324(2*n)` -/
def P1491223425952436460.Spec : Prop :=
  ∀ n, P1491223425952436460.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P5974467892545581339

`(A058992(2*(n+1))+2)*A068911(2*n)`
-/

namespace A268633.P5974467892545581339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058992 (2 * (n + 1)) + 2) * A068911 (2 * n)

end

end A268633.P5974467892545581339

namespace A268633

/-- `(A058992(2*(n+1))+2)*A068911(2*n)` -/
def P5974467892545581339.Spec : Prop :=
  ∀ n, P5974467892545581339.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P15798343024095517019

`(A058992(2*(n+1))+2)*A074324(2*n)`
-/

namespace A268633.P15798343024095517019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058992 (2 * (n + 1)) + 2) * A074324 (2 * n)

end

end A268633.P15798343024095517019

namespace A268633

/-- `(A058992(2*(n+1))+2)*A074324(2*n)` -/
def P15798343024095517019.Spec : Prop :=
  ∀ n, P15798343024095517019.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P8550658932204475974

`(A092535(2*n+1)+2)*A074324(2*n)`
-/

namespace A268633.P8550658932204475974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092535 (2 * n + 1) + 2) * A074324 (2 * n)

end

end A268633.P8550658932204475974

namespace A268633

/-- `(A092535(2*n+1)+2)*A074324(2*n)` -/
def P8550658932204475974.Spec : Prop :=
  ∀ n, P8550658932204475974.a n = A268633 (n + 1)

end A268633

/-! ## A268633.P13998908163190023284

`A113071(n+1)-(A003946(n+1)+A003946(n))`
-/

namespace A268633.P13998908163190023284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 (n + 1) - (A003946 (n + 1) + A003946 n)

end

end A268633.P13998908163190023284

namespace A268633

/-- `A113071(n+1)-(A003946(n+1)+A003946(n))` -/
def P13998908163190023284.Spec : Prop :=
  ∀ n, P13998908163190023284.a n = A268633 (n + 1)

end A268633

/-!
# A268634: Number of n X 3 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two exactly once.

The programs for A268634, the canonical program `A268634.P11431430832775227814` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268634 has offset 1).

The definition of A268634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268634.P8720938033521509641

`ogf((12-12x^2+18x^3)/(1-10x+29x^2-20x^3+4x^4))`
-/

namespace A268634.P8720938033521509641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 0, -12, 18] [1, -10, 29, -20, 4] n

end

end A268634.P8720938033521509641

namespace A268634

/-- `ogf((12-12x^2+18x^3)/(1-10x+29x^2-20x^3+4x^4))` -/
def P8720938033521509641.Spec : Prop :=
  ∀ n, P8720938033521509641.a n = A268634 (n + 1)

end A268634

/-! ## A268634.P11431430832775227814

`6*A229454(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A268634

/-- `6*A229454(n+1)` -/
def P11431430832775227814.Spec : Prop :=
  ∀ n, P11431430832775227814.a n = A268634 (n + 1)

theorem P11431430832775227814.correct : P11431430832775227814.Spec := by
  intro n
  simp only [A268634, Nat.add_sub_cancel]

end A268634

/-! ## A268634.P5029409851083026091

`A268639(∑[n+2]+4)`
-/

namespace A268634.P5029409851083026091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268634.P5029409851083026091

namespace A268634

/-- `A268639(∑[n+2]+4)` -/
def P5029409851083026091.Spec : Prop :=
  ∀ n, P5029409851083026091.a n = A268634 (n + 1)

end A268634

/-! ## A268634.P16814664113747165505

`6*A229460(A167614(n+1))`
-/

namespace A268634.P16814664113747165505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229460 (A167614 (n + 1)).toNat

end

end A268634.P16814664113747165505

namespace A268634

/-- `6*A229460(A167614(n+1))` -/
def P16814664113747165505.Spec : Prop :=
  ∀ n, P16814664113747165505.a n = A268634 (n + 1)

end A268634

/-! ## A268634.P9819844917218113696

`6*A229460(A034856(n+1)+5)`
-/

namespace A268634.P9819844917218113696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229460 (A034856 (n + 1) + 5).toNat

end

end A268634.P9819844917218113696

namespace A268634

/-- `6*A229460(A034856(n+1)+5)` -/
def P9819844917218113696.Spec : Prop :=
  ∀ n, P9819844917218113696.a n = A268634 (n + 1)

end A268634

/-!
# A268635: Number of n_X_4 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two exactly once.

The programs for A268635, there is no canonical definition to state claims against.
-/

/-! ## A268635.P3960376204433065718

`6*A229455(n+1)`
-/

namespace A268635.P3960376204433065718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229455 (n + 1)

end

end A268635.P3960376204433065718

/-! ## A268635.P17578278839756101026

`A268639(A374004(n+1))`
-/

namespace A268635.P17578278839756101026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A374004 (n + 1)).toNat

end

end A268635.P17578278839756101026

/-! ## A268635.P5250751491212119247

`A268639(A141214(n)+7)`
-/

namespace A268635.P5250751491212119247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A141214 n + 7).toNat

end

end A268635.P5250751491212119247

/-! ## A268635.P13219768200897322677

`A268639(A052905(n)+9)`
-/

namespace A268635.P13219768200897322677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A052905 n + 9).toNat

end

end A268635.P13219768200897322677

/-! ## A268635.P17906325093821316567

`A268639(A055999(n)+10)`
-/

namespace A268635.P17906325093821316567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A055999 n + 10).toNat

end

end A268635.P17906325093821316567

/-!
# A268636: Number of nX5 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two exactly once.

The programs for A268636, there is no canonical definition to state claims against.
-/

/-! ## A268636.P15431455174843319738

`6*A229456(n+1)`
-/

namespace A268636.P15431455174843319738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229456 (n + 1)

end

end A268636.P15431455174843319738

/-! ## A268636.P7760690374082923829

`A268639(A374005(n+1))`
-/

namespace A268636.P7760690374082923829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A374005 (n + 1)).toNat

end

end A268636.P7760690374082923829

/-! ## A268636.P16669909168261202493

`A268639(A167499(n+3))`
-/

namespace A268636.P16669909168261202493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A167499 (n + 3)).toNat

end

end A268636.P16669909168261202493

/-! ## A268636.P2347965862572307297

`A268639(A046691(n+3))`
-/

namespace A268636.P2347965862572307297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A046691 (n + 3)).toNat

end

end A268636.P2347965862572307297

/-! ## A268636.P5471353949678286144

`A268639(eq[4, A193592(n)])`
-/

namespace A268636.P5471353949678286144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268636.P5471353949678286144

/-!
# A268637: Number of nX6 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two exactly once.

The programs for A268637, there is no canonical definition to state claims against.
-/

/-! ## A268637.P9056166794447817923

`6*A229457(n+1)`
-/

namespace A268637.P9056166794447817923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229457 (n + 1)

end

end A268637.P9056166794447817923

/-! ## A268637.P13481520072557713523

`A268639(A374007(n+1))`
-/

namespace A268637.P13481520072557713523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A374007 (n + 1)).toNat

end

end A268637.P13481520072557713523

/-! ## A268637.P2163176159611843095

`A268639(A166136(n+4))`
-/

namespace A268637.P2163176159611843095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A166136 (n + 4)).toNat

end

end A268637.P2163176159611843095

/-! ## A268637.P13974417292921637318

`A268639(eq[7, A131818(n+1)])`
-/

namespace A268637.P13974417292921637318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268637.P13974417292921637318

/-! ## A268637.P3690646130366095208

`A268639(A052905(n+3))`
-/

namespace A268637.P3690646130366095208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A052905 (n + 3)).toNat

end

end A268637.P3690646130366095208

/-!
# A268638: Number of n X 7 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totaling two exactly once.

The programs for A268638, there is no canonical definition to state claims against.
-/

/-! ## A268638.P4708846508582186940

`6*A229458(n+1)`
-/

namespace A268638.P4708846508582186940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229458 (n + 1)

end

end A268638.P4708846508582186940

/-! ## A268638.P17592759088670331086

`A268639(A374008(n+1))`
-/

namespace A268638.P17592759088670331086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A374008 (n + 1)).toNat

end

end A268638.P17592759088670331086

/-! ## A268638.P9296360356214845662

`A268639(A000124(n+6)+6)`
-/

namespace A268638.P9296360356214845662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A000124 (n + 6) + 6).toNat

end

end A268638.P9296360356214845662

/-! ## A268638.P14814672014612121939

`A268639(eq[8, A131818(n+1)])`
-/

namespace A268638.P14814672014612121939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268638.P14814672014612121939

/-! ## A268638.P3763441411536685832

`A268639(A055999(n+4))`
-/

namespace A268638.P3763441411536685832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268639 (A055999 (n + 4)).toNat

end

end A268638.P3763441411536685832

/-!
# A268639: T(n,k)=Number of nXk 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two exactly once.

The programs for A268639, there is no canonical definition to state claims against.
-/

/-! ## A268639.P17745135647532025280

`A040006(A289207(n))*A229460(n+1)`
-/

namespace A268639.P17745135647532025280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A289207 n).toNat * A229460 (n + 1)

end

end A268639.P17745135647532025280

/-! ## A268639.P8777275776654682883

`A040006(A135672(n+1))*A229460(n+1)`
-/

namespace A268639.P8777275776654682883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A135672 (n + 1)).toNat * A229460 (n + 1)

end

end A268639.P8777275776654682883

/-! ## A268639.P5945012463777256770

`A040006(A211263(n+1))*A229460(n+1)`
-/

namespace A268639.P5945012463777256770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A211263 (n + 1)).toNat * A229460 (n + 1)

end

end A268639.P5945012463777256770

/-! ## A268639.P15305714730005460353

`A040006(A303603(n+1))*A229460(n+1)`
-/

namespace A268639.P15305714730005460353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A303603 (n + 1)).toNat * A229460 (n + 1)

end

end A268639.P15305714730005460353

/-! ## A268639.P10825376334662629421

`A040006(A029578(floor(n-n^(-1)^n/2)))*A229460(n+1)`
-/

namespace A268639.P10825376334662629421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A029578 ⌊(n : ℚ) - (n : ℚ) ^ ((-1) ^ n : ℤ) / 2⌋.toNat).toNat * A229460 (n + 1)

end

end A268639.P10825376334662629421

/-! ## A268639.P13263386946935031906

`A040006(A078710(n+2))*A229460(n+1)`
-/

namespace A268639.P13263386946935031906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A078710 (n + 2)).toNat * A229460 (n + 1)

end

end A268639.P13263386946935031906

/-!
# A268640: Primes of the form 2^i * 3^j - 1 for positive i, j.

The programs for A268640, there is no canonical definition to state claims against.
-/

/-! ## A268640.P4952091070955723515

`∩[A005105(n+1), A033845(n+1)-1]`
-/

namespace A268640.P4952091070955723515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268640.P4952091070955723515

/-! ## A268640.P12113314185545012570

`∩[A306073(n+1), A385935(n+1)]`
-/

namespace A268640.P12113314185545012570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268640.P12113314185545012570

/-! ## A268640.P7181558769827705903

`∩[A005105(n+1), A067612(n+1)]`
-/

namespace A268640.P7181558769827705903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268640.P7181558769827705903

/-! ## A268640.P12280105891251025489

`∩[A219697(n+1), A067612(n+1)]`
-/

namespace A268640.P12280105891251025489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268640.P12280105891251025489

/-! ## A268640.P6951958981248564482

`∩[A067612(n+1), A293199(n+1)]`
-/

namespace A268640.P6951958981248564482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268640.P6951958981248564482

/-!
# A268641: Squarefree numbers k such that k^2 + 1 and k^2 - 1 are also squarefree.

The programs for A268641, there is no canonical definition to state claims against.
-/

/-! ## A268641.P593264094722309301

`record[A007913(sqrt(A233409(n+1)))]`
-/

namespace A268641.P593264094722309301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (Real.sqrt (A233409 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268641.P593264094722309301

/-! ## A268641.P16626469208502101919

`record[A007947(sqrt(A233409(1+n)))]`
-/

namespace A268641.P16626469208502101919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway (Real.sqrt (A233409 (1 + n) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268641.P16626469208502101919

/-! ## A268641.P13054856320503037854

`record[A007913(sqrt(4*A375497(n+1)²))]`
-/

namespace A268641.P13054856320503037854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (Real.sqrt (4 * A375497 (n + 1) ^ 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268641.P13054856320503037854

/-! ## A268641.P17494695635889835870

`∩[A049533(n+1), A228649(n+1)]`
-/

namespace A268641.P17494695635889835870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268641.P17494695635889835870

/-! ## A268641.P11568672855929767061

`record[A019530(sqrt(A233409(n+1)))]`
-/

namespace A268641.P11568672855929767061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019530 (SequenceMachineLib.roundAway (Real.sqrt (A233409 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268641.P11568672855929767061

/-! ## A268641.P4292222765719365069

`record[A007947(A233409(n+1)/2)]`
-/

namespace A268641.P4292222765719365069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A233409 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268641.P4292222765719365069

/-!
# A268643: Number of 1's in decimal representation of n.

The programs for A268643, the canonical program `A268643.P17597955422080004304` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268643 has offset 0).

The definition of A268643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268643.P17597955422080004304

`∑{digits}[n, val(#+8, 9)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A268643

/-- `∑{digits}[n, val(#+8, 9)]` -/
def P17597955422080004304.Spec : Prop :=
  ∀ n, (P17597955422080004304.a n : ℤ) = A268643 n

theorem P17597955422080004304.correct : P17597955422080004304.Spec := by
  intro n
  simp only [A268643]

end A268643

/-! ## A268643.P17885597331120438848

`∑{digits}[n, C(C(2, #), 2)]`
-/

namespace A268643.P17885597331120438848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose (Nat.choose 2 x) 2).sum

end

end A268643.P17885597331120438848

namespace A268643

/-- `∑{digits}[n, C(C(2, #), 2)]` -/
def P17885597331120438848.Spec : Prop :=
  ∀ n, (P17885597331120438848.a n : ℤ) = A268643 n

end A268643

/-! ## A268643.P9192208947218654565

`∑{digits}[n, and(#, #!²)]`
-/

namespace A268643.P9192208947218654565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land x (Nat.factorial x ^ 2)).sum

end

end A268643.P9192208947218654565

namespace A268643

/-- `∑{digits}[n, and(#, #!²)]` -/
def P9192208947218654565.Spec : Prop :=
  ∀ n, (P9192208947218654565.a n : ℤ) = A268643 n

end A268643

/-! ## A268643.P7483889899539757513

`∑{digits}[n, floor(#^(1-#))]`
-/

namespace A268643.P7483889899539757513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) ^ (1 - (x : ℤ) : ℤ)⌋).sum

end

end A268643.P7483889899539757513

namespace A268643

/-- `∑{digits}[n, floor(#^(1-#))]` -/
def P7483889899539757513.Spec : Prop :=
  ∀ n, P7483889899539757513.a n = A268643 n

end A268643

/-! ## A268643.P15442346681737094036

`val(∏{digits}[n, n+1+#], n+2)`
-/

namespace A268643.P15442346681737094036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => n + 1 + x).prod (n + 2)

end

end A268643.P15442346681737094036

namespace A268643

/-- `val(∏{digits}[n, n+1+#], n+2)` -/
def P15442346681737094036.Spec : Prop :=
  ∀ n, (P15442346681737094036.a n : ℤ) = A268643 n

end A268643

/-! ## A268643.P6541728066556295603

`val(A359802(n), 3)`
-/

namespace A268643.P6541728066556295603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359802 n).toNat 3

end

end A268643.P6541728066556295603

namespace A268643

/-- `val(A359802(n), 3)` -/
def P6541728066556295603.Spec : Prop :=
  ∀ n, (P6541728066556295603.a n : ℤ) = A268643 n

end A268643

/-! ## A268643.P5650727810322435800

`dr(n-A004176(n))`
-/

namespace A268643.P5650727810322435800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n : ℤ) - A004176 n)

end

end A268643.P5650727810322435800

namespace A268643

/-- `dr(n-A004176(n))` -/
def P5650727810322435800.Spec : Prop :=
  ∀ n, (P5650727810322435800.a n : ℤ) = A268643 n

end A268643

/-! ## A268643.P5589385595125394854

`A102683(A055120(n))`
-/

namespace A268643.P5589385595125394854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A055120 n).toNat

end

end A268643.P5589385595125394854

namespace A268643

/-- `A102683(A055120(n))` -/
def P5589385595125394854.Spec : Prop :=
  ∀ n, P5589385595125394854.a n = A268643 n

end A268643

/-! ## A268643.P9873356031324638374

`A102683(A222226(n))`
-/

namespace A268643.P9873356031324638374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222226 n).toNat

end

end A268643.P9873356031324638374

namespace A268643

/-- `A102683(A222226(n))` -/
def P9873356031324638374.Spec : Prop :=
  ∀ n, P9873356031324638374.a n = A268643 n

end A268643

/-! ## A268643.P11125845964189411792

`A316863(A035043(n))`
-/

namespace A268643.P11125845964189411792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A035043 n).toNat

end

end A268643.P11125845964189411792

namespace A268643

/-- `A316863(A035043(n))` -/
def P11125845964189411792.Spec : Prop :=
  ∀ n, P11125845964189411792.a n = A268643 n

end A268643

/-! ## A268643.P2795244819926439670

`A316863(A048379(n))`
-/

namespace A268643.P2795244819926439670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A048379 n).toNat

end

end A268643.P2795244819926439670

namespace A268643

/-- `A316863(A048379(n))` -/
def P2795244819926439670.Spec : Prop :=
  ∀ n, P2795244819926439670.a n = A268643 n

end A268643

/-! ## A268643.P4126647687350995629

`A316864(A059626(n))`
-/

namespace A268643.P4126647687350995629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A059626 n).toNat

end

end A268643.P4126647687350995629

namespace A268643

/-- `A316864(A059626(n))` -/
def P4126647687350995629.Spec : Prop :=
  ∀ n, P4126647687350995629.a n = A268643 n

end A268643

/-! ## A268643.P3155346055739444529

`A316868(A059630(n))`
-/

namespace A268643.P3155346055739444529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A059630 n).toNat

end

end A268643.P3155346055739444529

namespace A268643

/-- `A316868(A059630(n))` -/
def P3155346055739444529.Spec : Prop :=
  ∀ n, P3155346055739444529.a n = A268643 n

end A268643

/-! ## A268643.P11133659677215282484

`A316869(A061601(n))`
-/

namespace A268643.P11133659677215282484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A061601 n).toNat

end

end A268643.P11133659677215282484

namespace A268643

/-- `A316869(A061601(n))` -/
def P11133659677215282484.Spec : Prop :=
  ∀ n, P11133659677215282484.a n = A268643 n

end A268643

/-! ## A268643.P4498340110318690203

`A316869(A109910(n))`
-/

namespace A268643.P4498340110318690203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A109910 n).toNat

end

end A268643.P4498340110318690203

namespace A268643

/-- `A316869(A109910(n))` -/
def P4498340110318690203.Spec : Prop :=
  ∀ n, P4498340110318690203.a n = A268643 n

end A268643

/-! ## A268643.P6866154278090376130

`A316864(A222220(n))`
-/

namespace A268643.P6866154278090376130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222220 n).toNat

end

end A268643.P6866154278090376130

namespace A268643

/-- `A316864(A222220(n))` -/
def P6866154278090376130.Spec : Prop :=
  ∀ n, P6866154278090376130.a n = A268643 n

end A268643

/-! ## A268643.P14207018845080038945

`A316865(A222221(n))`
-/

namespace A268643.P14207018845080038945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A222221 n).toNat

end

end A268643.P14207018845080038945

namespace A268643

/-- `A316865(A222221(n))` -/
def P14207018845080038945.Spec : Prop :=
  ∀ n, P14207018845080038945.a n = A268643 n

end A268643

/-! ## A268643.P17613273140038032694

`A055640(n)-A102669(n)`
-/

namespace A268643.P17613273140038032694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n - A102669 n

end

end A268643.P17613273140038032694

namespace A268643

/-- `A055640(n)-A102669(n)` -/
def P17613273140038032694.Spec : Prop :=
  ∀ n, P17613273140038032694.a n = A268643 n

end A268643

/-! ## A268643.P9134579866796707672

`A196564(n-A235049(A235049(n)))`
-/

namespace A268643.P9134579866796707672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 ((n : ℤ) - A235049 (A235049 n).toNat).toNat

end

end A268643.P9134579866796707672

namespace A268643

/-- `A196564(n-A235049(A235049(n)))` -/
def P9134579866796707672.Spec : Prop :=
  ∀ n, P9134579866796707672.a n = A268643 n

end A268643

/-! ## A268643.P11621102170530930004

`A055642(n)-(A102669(n)+A055641(n))`
-/

namespace A268643.P11621102170530930004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - (A102669 n + A055641 n)

end

end A268643.P11621102170530930004

namespace A268643

/-- `A055642(n)-(A102669(n)+A055641(n))` -/
def P11621102170530930004.Spec : Prop :=
  ∀ n, P11621102170530930004.a n = A268643 n

end A268643

/-!
# A268644: a(n) = 4*n^3 - 3*n^2 - 2*n - 1.

The programs for A268644, the canonical program `A268644.P12002499388164464672` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268644 has offset 0).

The definition of A268644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3-3*n²-2*n-1` (program `A268644.P12002499388164464672`, by `A268644.P12002499388164464672.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268644.P3132509058358424181

`ogf((-1+2x+17x^2+6x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A268644.P3132509058358424181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, 17, 6] [1, -4, 6, -4, 1] n

end

end A268644.P3132509058358424181

namespace A268644

/-- `ogf((-1+2x+17x^2+6x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P3132509058358424181.Spec : Prop :=
  ∀ n, P3132509058358424181.a n = A268644 n

end A268644

/-! ## A268644.P12002499388164464672

`4*n^3-3*n²-2*n-1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A268644

/-- `4*n^3-3*n²-2*n-1` -/
def P12002499388164464672.Spec : Prop :=
  ∀ n, P12002499388164464672.a n = A268644 n

theorem P12002499388164464672.correct : P12002499388164464672.Spec := by
  intro n
  simp only [A268644]

end A268644

/-! ## A268644.P16717021272808173774

`Δ[n*A007531(n)-(∑[n]+1)]`
-/

namespace A268644.P16717021272808173774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007531 n - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268644.P16717021272808173774

namespace A268644

/-- `Δ[n*A007531(n)-(∑[n]+1)]` -/
def P16717021272808173774.Spec : Prop :=
  ∀ n, P16717021272808173774.a n = A268644 n

end A268644

/-! ## A268644.P13639389607552918744

`Δ[A085537(n)-Δ[A019582(n)]]`
-/

namespace A268644.P13639389607552918744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268644.P13639389607552918744

namespace A268644

/-- `Δ[A085537(n)-Δ[A019582(n)]]` -/
def P13639389607552918744.Spec : Prop :=
  ∀ n, P13639389607552918744.a n = A268644 n

theorem P13639389607552918744.correct : P13639389607552918744.Spec := by
  intro n
  simp only [A268644, Nat.add_sub_cancel, A268644.P13639389607552918744.f2, A268644.P13639389607552918744.f1, A268644.P13639389607552918744.a, A268644.P12002499388164464672.a, A019582, A019582.P15270751167170736155.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A268644

/-! ## A268644.P16076701363605782445

`∑[A004538(2*A289207(n+1))]`
-/

namespace A268644.P16076701363605782445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 (2 * A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268644.P16076701363605782445

namespace A268644

/-- `∑[A004538(2*A289207(n+1))]` -/
def P16076701363605782445.Spec : Prop :=
  ∀ n, P16076701363605782445.a n = A268644 n

end A268644

/-! ## A268644.P9305742288651245119

`-(A232599(A004273(n))+2*n+1)`
-/

namespace A268644.P9305742288651245119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A232599 (A004273 n).toNat + (2 * n + 1 : ℤ))

end

end A268644.P9305742288651245119

namespace A268644

/-- `-(A232599(A004273(n))+2*n+1)` -/
def P9305742288651245119.Spec : Prop :=
  ∀ n, P9305742288651245119.a n = A268644 n

end A268644

/-! ## A268644.P11607952728262539953

`∑[A004538(A289207(2*n))]`
-/

namespace A268644.P11607952728262539953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 (A289207 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268644.P11607952728262539953

namespace A268644

/-- `∑[A004538(A289207(2*n))]` -/
def P11607952728262539953.Spec : Prop :=
  ∀ n, P11607952728262539953.a n = A268644 n

end A268644

/-! ## A268644.P95751654425456332

`∑[A003215(A097141(2*n))-2]`
-/

namespace A268644.P95751654425456332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A097141 (2 * n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268644.P95751654425456332

namespace A268644

/-- `∑[A003215(A097141(2*n))-2]` -/
def P95751654425456332.Spec : Prop :=
  ∀ n, P95751654425456332.a n = A268644 n

end A268644

/-!
# A268645: Union of the factorial numbers (A000142) and the double factorials numbers (A006882).

The programs for A268645, the canonical program `A268645.P1587877006189744934` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268645 has offset 1).

The definition of A268645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268645.P1587877006189744934

`∪[(n+1)*a(n-2), (n+1)!]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A268645

/-- `∪[(n+1)*a(n-2), (n+1)!]` -/
def P1587877006189744934.Spec : Prop :=
  ∀ n, (P1587877006189744934.a n : ℤ) = A268645 (n + 1)

theorem P1587877006189744934.correct : P1587877006189744934.Spec := by
  intro n
  simp only [A268645, Nat.add_sub_cancel]

end A268645

/-! ## A268645.P12566036540120430606

`∪[A000142(n+1), A006882(n+1)]`
-/

namespace A268645.P12566036540120430606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268645.P12566036540120430606

namespace A268645

/-- `∪[A000142(n+1), A006882(n+1)]` -/
def P12566036540120430606.Spec : Prop :=
  ∀ n, (P12566036540120430606.a n : ℤ) = A268645 (n + 1)

end A268645

/-! ## A268645.P17291892404200287200

`A000027(∪[(n+1)!, A006882(n+1)])`
-/

namespace A268645.P17291892404200287200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A268645.P17291892404200287200

namespace A268645

/-- `A000027(∪[(n+1)!, A006882(n+1)])` -/
def P17291892404200287200.Spec : Prop :=
  ∀ n, P17291892404200287200.a n = A268645 (n + 1)

end A268645

/-! ## A268645.P8212224881324974691

`A028310(∪[A006882(n+1), A114796(n+1)])`
-/

namespace A268645.P8212224881324974691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114796 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A268645.P8212224881324974691

namespace A268645

/-- `A028310(∪[A006882(n+1), A114796(n+1)])` -/
def P8212224881324974691.Spec : Prop :=
  ∀ n, P8212224881324974691.a n = A268645 (n + 1)

end A268645

/-!
# A268648: G.f. A(x) satisfies: 1/(1-x) = Product_{n>=1} A( x^n - x^(n+1) ).

The programs for A268648, there is no canonical definition to state claims against.
-/

/-! ## A268648.P6298772278120377569

`A187188(∑[∑[A071684(n+1)]])`
-/

namespace A268648.P6298772278120377569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071684 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268648.P6298772278120377569

/-! ## A268648.P7061511714359074607

`A008617(A155587(n+2)+A126324(n))`
-/

namespace A268648.P7061511714359074607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A155587 (n + 2) + A126324 n).toNat

end

end A268648.P7061511714359074607

/-! ## A268648.P8631846542802062219

`or(A064458(A006627(n+1)), A120588(n))`
-/

namespace A268648.P8631846542802062219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064458 (A006627 (n + 1)).toNat) (A120588 n)

end

end A268648.P8631846542802062219

/-! ## A268648.P1582909204726527071

`A287643(or(A010873(n), A287693(n+1)))`
-/

namespace A268648.P1582909204726527071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287643 (Int.lor (A010873 n) (A287693 (n + 1))).toNat

end

end A268648.P1582909204726527071

/-!
# A268649: G.f. A(x) satisfies: 1/(1-x) = Product_{n>=1} A( x^n/(1+x)^n ).

The programs for A268649, there is no canonical definition to state claims against.
-/

/-! ## A268649.P15558524838257341833

`A177849(7*A283650(n))`
-/

namespace A268649.P15558524838257341833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (7 * A283650 n).toNat

end

end A268649.P15558524838257341833

/-! ## A268649.P9124076918752561960

`A051742(A191386(n)+A151417(n))`
-/

namespace A268649.P9124076918752561960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A191386 n + A151417 n).toNat

end

end A268649.P9124076918752561960

/-! ## A268649.P6533407631035485432

`A276571(A148360(n))-A054895(3*n+1)`
-/

namespace A268649.P6533407631035485432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A148360 n).toNat - A054895 (3 * n + 1)

end

end A268649.P6533407631035485432

/-! ## A268649.P13787142136519558936

`A051742(A014431(n+1)+A026731(n)-n)`
-/

namespace A268649.P13787142136519558936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A014431 (n + 1) + (A026731 n - (n : ℤ))).toNat

end

end A268649.P13787142136519558936

/-! ## A268649.P5473978650117949292

`A349144(A239557(n))`
-/

namespace A268649.P5473978650117949292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349144 (A239557 n).toNat

end

end A268649.P5473978650117949292

/-!
# A268650: G.f. A(x) satisfies: 1 = Product_{n>=1} (1 - A(x)^n) * (1 - A(x)^n*x) * (1 - A(x)^(n-1)/x).

The programs for A268650, there is no canonical definition to state claims against.
-/

/-! ## A268650.P701137074707526643

`A281116(A191222(n+1))+A191242(n+1)`
-/

namespace A268650.P701137074707526643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A191222 (n + 1)).toNat + A191242 (n + 1)

end

end A268650.P701137074707526643

/-! ## A268650.P577220520340668567

`A004526(A038499(n)+A001190(2*(n+1)))`
-/

namespace A268650.P577220520340668567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A038499 n + A001190 (2 * (n + 1))).toNat

end

end A268650.P577220520340668567

/-! ## A268650.P15595941524043691269

`A123108(A036656(2*(n+1))+A005627(n))`
-/

namespace A268650.P15595941524043691269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A036656 (2 * (n + 1)) + A005627 n).toNat

end

end A268650.P15595941524043691269

/-!
# A268651: G.f. A(x) satisfies: 1 = Product_{n>=1} (1 - x^n) * (1 - x^(n+1)/A(x)) * (1 - x^(n-2)*A(x)).

The programs for A268651, there is no canonical definition to state claims against.
-/

/-! ## A268651.P2045687032228847954

`A280917(n)+A033183(A000984(n))`
-/

namespace A268651.P2045687032228847954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280917 n + A033183 (A000984 n).toNat

end

end A268651.P2045687032228847954

/-! ## A268651.P2982624149999215508

`A326534(A326489(n))+A326527(2*(n+2))`
-/

namespace A268651.P2982624149999215508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (A326489 n).toNat + A326527 (2 * (n + 2))

end

end A268651.P2982624149999215508

/-! ## A268651.P1908790195336757902

`A026834(A107597(n)*A247911(2*n+1))`
-/

namespace A268651.P1908790195336757902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A107597 n * A247911 (2 * n + 1)).toNat

end

end A268651.P1908790195336757902

/-!
# A268653: Expansion of e.g.f. exp( T(T(T(x))) ), where T(x) = -LambertW(-x) is Euler's tree function (A000169).

The programs for A268653, there is no canonical definition to state claims against.
-/

/-! ## A268653.P1184647217168968963

`A274391(∑[n+3]+n+3)`
-/

namespace A268653.P1184647217168968963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A268653.P1184647217168968963

/-! ## A268653.P10750541880216285594

`or(A000007(n), A274391(A046691(n+2)))`
-/

namespace A268653.P10750541880216285594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A274391 (A046691 (n + 2)).toNat)

end

end A268653.P10750541880216285594

/-! ## A268653.P9833900051511817858

`A274391(A046691(n+2))+A000007(n+2)`
-/

namespace A268653.P9833900051511817858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (A046691 (n + 2)).toNat + A000007 (n + 2)

end

end A268653.P9833900051511817858

/-! ## A268653.P6301818570095480134

`A274741(A167614(n+2))`
-/

namespace A268653.P6301818570095480134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274741 (A167614 (n + 2)).toNat

end

end A268653.P6301818570095480134

/-! ## A268653.P7807338374497223104

`A274741(A141214(n)+6)`
-/

namespace A268653.P7807338374497223104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274741 (A141214 n + 6).toNat

end

end A268653.P7807338374497223104

/-!
# A268654: Expansion of e.g.f. exp( T(T(T(T(x)))) ), where T(x) = -LambertW(-x) is Euler's tree function (A000169).

The programs for A268654, there is no canonical definition to state claims against.
-/

/-! ## A268654.P7465664920493089533

`A274391(eq[3, A129713(n)])`
-/

namespace A268654.P7465664920493089533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268654.P7465664920493089533

/-! ## A268654.P9582550026477746734

`A274391(eq[4, A025581(n)])`
-/

namespace A268654.P9582550026477746734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268654.P9582550026477746734

/-! ## A268654.P13403392224145706449

`A274391(eq[9, A099375(n)])`
-/

namespace A268654.P13403392224145706449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268654.P13403392224145706449

/-! ## A268654.P5302502399881462789

`A274391(eq[16, A130321(n)])`
-/

namespace A268654.P5302502399881462789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268654.P5302502399881462789

/-! ## A268654.P13047403721335284608

`A274391(eq[5, A004736(n+1)])`
-/

namespace A268654.P13047403721335284608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268654.P13047403721335284608

/-!
# A268655: G.f. A(x) satisfies: A( A(x)^2 - A(x)^3 ) = x*A(x).

The programs for A268655, there is no canonical definition to state claims against.
-/

/-! ## A268655.P5886719983619560740

`A083382(A309159(n+2)+A007089(n))`
-/

namespace A268655.P5886719983619560740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A309159 (n + 2) + A007089 n).toNat

end

end A268655.P5886719983619560740

/-! ## A268655.P13874027107701940173

`floor(sqrt(A123193(n!)))`
-/

namespace A268655.P13874027107701940173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A123193 (Nat.factorial n))

end

end A268655.P13874027107701940173

/-! ## A268655.P17443668765298158570

`A026819(2*C(3*n, n)/(n+1)/Δ[n²])`
-/

namespace A268655.P17443668765298158570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (SequenceMachineLib.roundAway (2 * ((Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ)) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))).toNat

end

end A268655.P17443668765298158570

/-! ## A268655.P17796313480938645343

`A026819(A000139(n))`
-/

namespace A268655.P17796313480938645343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A000139 n).toNat

end

end A268655.P17796313480938645343

/-!
# A268657: Numbers k such that 3*2^k + 1 is a prime factor of a generalized Fermat number 3^(2^m) + 1 for some m.

The programs for A268657, there is no canonical definition to state claims against.
-/

/-! ## A268657.P18051989385243236909

`eq[A030556(n+1)+2, A057778(n)]`
-/

namespace A268657.P18051989385243236909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268657.P18051989385243236909

/-! ## A268657.P7704759138746190579

`∩[A002253(n+1), A153403(n+1)]`
-/

namespace A268657.P7704759138746190579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268657.P7704759138746190579

/-! ## A268657.P6569603981813489172

`eq[A030556(n+1), A292600(A057778(n))]`
-/

namespace A268657.P6569603981813489172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A057778 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268657.P6569603981813489172

/-! ## A268657.P15801911870119687699

`filter[A153403(n+1), A334296(#)]`
-/

namespace A268657.P15801911870119687699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334296 (f1 j).toNat = 1) n)

end

end A268657.P15801911870119687699

/-! ## A268657.P18172232576376748037

`eq[A030556(n+1), A334296(n)]`
-/

namespace A268657.P18172232576376748037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268657.P18172232576376748037

/-!
# A268658: Numbers k such that 3*2^k + 1 is a prime factor of a generalized Fermat number 5^(2^m) + 1 for some m.

The programs for A268658, there is no canonical definition to state claims against.
-/

/-! ## A268658.P14689708786621882377

`A268497(A098075(n))`
-/

namespace A268658.P14689708786621882377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268497 (A098075 n).toNat

end

end A268658.P14689708786621882377

/-!
# A268660: Numbers n such that 3*2^n + 1 is a prime factor of a generalized Fermat number 12^(2^m) + 1 for some m.

The programs for A268660, there is no canonical definition to state claims against.
-/

/-! ## A268660.P17286640974188725526

`∩[A002253(n+1), A016789(n)]`
-/

namespace A268660.P17286640974188725526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268660.P17286640974188725526

/-! ## A268660.P17042903390648437972

`eq[A021337(n), A263046(n)]`
-/

namespace A268660.P17042903390648437972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268660.P17042903390648437972

/-! ## A268660.P8219517469024443817

`filter[A002253(n+1), A116178(#)]`
-/

namespace A268660.P8219517469024443817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A268660.P8219517469024443817

/-!
# A268661: Numbers n such that 5*2^n + 1 is a prime factor of a generalized Fermat number 3^(2^m) + 1 for some m.

The programs for A268661, there is no canonical definition to state claims against.
-/

/-! ## A268661.P13552258663127758370

`A002254(A222945(n)+A028310(n))`
-/

namespace A268661.P13552258663127758370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002254 (A222945 n + A028310 n).toNat

end

end A268661.P13552258663127758370

/-!
# A268662: Numbers n such that 5*2^n + 1 is a prime factor of a generalized Fermat number 5^(2^m) + 1 for some m.

The programs for A268662, there is no canonical definition to state claims against.
-/

/-! ## A268662.P2190160318249177656

`eq[A072751(n+1), A334296(n)]`
-/

namespace A268662.P2190160318249177656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268662.P2190160318249177656

/-! ## A268662.P7757549523187717951

`∩[A002254(n+1), A217460(n+1)]`
-/

namespace A268662.P7757549523187717951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268662.P7757549523187717951

/-! ## A268662.P4508838086450620922

`∩[A002254(n+1), A221280(n+1)]`
-/

namespace A268662.P4508838086450620922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268662.P4508838086450620922

/-! ## A268662.P13388422664900019565

`eq[A244892(A263046(n)+n), A263046(n)]`
-/

namespace A268662.P13388422664900019565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244892 (A263046 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268662.P13388422664900019565

/-! ## A268662.P8984644217101972137

`eq[A244892(n*A244892(n)), A263046(n)]`
-/

namespace A268662.P8984644217101972137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244892 ((n : ℤ) * A244892 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268662.P8984644217101972137

/-!
# A268664: Numbers n such that 5*2^n + 1 is a prime factor of a generalized Fermat number 12^(2^m) + 1 for some m.

The programs for A268664, there is no canonical definition to state claims against.
-/

/-! ## A268664.P6770260531970363391

`A002254(A002264(n+1)+A002237(n+3))`
-/

namespace A268664.P6770260531970363391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002254 (A002264 (n + 1) + A002237 (n + 3)).toNat

end

end A268664.P6770260531970363391

/-!
# A268666: Number of polycubes with n cells, allowing edge connections as well as face connections, identifying mirror images.

The programs for A268666, there is no canonical definition to state claims against.
-/

/-! ## A268666.P10005410187631658986

`A008620(floor(sqrt((11*n)^n)))`
-/

namespace A268666.P10005410187631658986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Nat.sqrt ((11 * n) ^ n))

end

end A268666.P10005410187631658986

/-!
# A268667: Number of sequences with j copies of j for each j in {1,2,...,n} and longest increasing subsequence of length n.

The programs for A268667, there is no canonical definition to state claims against.
-/

/-! ## A268667.P477027683456608412

`A068893(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A268667.P477027683456608412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A068893 (a (n - 1) ^ 2).toNat

end

end A268667.P477027683456608412

/-!
# A268668: Number of factorizations of m^4 into n factors, where m is a product of exactly n distinct primes and each factor is a product of 4 primes (counted with multiplicity).

The programs for A268668, there is no canonical definition to state claims against.
-/

/-! ## A268668.P9388357421891555886

`A257463(A056115(n)+10)`
-/

namespace A268668.P9388357421891555886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (A056115 n + 10).toNat

end

end A268668.P9388357421891555886

/-! ## A268668.P6901294222466057647

`A257463(eq[4, A025581(n)])`
-/

namespace A268668.P6901294222466057647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268668.P6901294222466057647

/-! ## A268668.P3097123076371972769

`A257463(eq[5, A193739(n)])`
-/

namespace A268668.P3097123076371972769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268668.P3097123076371972769

/-! ## A268668.P14983719410696093465

`A257463(eq[16, A130321(n)])`
-/

namespace A268668.P14983719410696093465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268668.P14983719410696093465

/-! ## A268668.P1034072945923162704

`A257463(Δ[A264443(n)]-1)`
-/

namespace A268668.P1034072945923162704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (f1 (n + 1) - f1 n - 1).toNat

end

end A268668.P1034072945923162704

/-!
# A268669: a(n) = polynomial quotient (computed over GF(2), result is its binary encoding) that is left after all instances of polynomial (X+1) have been factored out of the polynomial that is encoded by the binary expansion of n. (See comments for details).

The programs for A268669, the canonical program `A268669.P1771793689058411230` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268669 has offset 1).

The definition of A268669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268669.P15417857730918852094

`A003188(A268670(n+1))`
-/

namespace A268669.P15417857730918852094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A268670 (n + 1)).toNat

end

end A268669.P15417857730918852094

namespace A268669

/-- `A003188(A268670(n+1))` -/
def P15417857730918852094.Spec : Prop :=
  ∀ n, P15417857730918852094.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P6723608231759430529

`A065621(A268671(n+1))`
-/

namespace A268669.P6723608231759430529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (A268671 (n + 1)).toNat

end

end A268669.P6723608231759430529

namespace A268669

/-- `A065621(A268671(n+1))` -/
def P6723608231759430529.Spec : Prop :=
  ∀ n, P6723608231759430529.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P9369851693964884730

`A003188(2*A268671(n+1)-1)`
-/

namespace A268669.P9369851693964884730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * A268671 (n + 1) - 1).toNat

end

end A268669.P9369851693964884730

namespace A268669

/-- `A003188(2*A268671(n+1)-1)` -/
def P9369851693964884730.Spec : Prop :=
  ∀ n, P9369851693964884730.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P15297907865647017473

`xor(A268670(2*(n+1)), A268670(n+1))/2`
-/

namespace A268669.P15297907865647017473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A268670 (2 * (n + 1))) (A268670 (n + 1)) : ℚ) / 2

end

end A268669.P15297907865647017473

namespace A268669

/-- `xor(A268670(2*(n+1)), A268670(n+1))/2` -/
def P15297907865647017473.Spec : Prop :=
  ∀ n, P15297907865647017473.a n = (A268669 (n + 1) : ℚ)

end A268669

/-! ## A268669.P18257344470079784714

`A003188(A268671(n+1)+A268671(n+1)-1)`
-/

namespace A268669.P18257344470079784714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A268671 (n + 1) + (A268671 (n + 1) - 1)).toNat

end

end A268669.P18257344470079784714

namespace A268669

/-- `A003188(A268671(n+1)+A268671(n+1)-1)` -/
def P18257344470079784714.Spec : Prop :=
  ∀ n, P18257344470079784714.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P1771793689058411230

`A193231(A000265(A193231(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A268669

/-- `A193231(A000265(A193231(n+1)))` -/
def P1771793689058411230.Spec : Prop :=
  ∀ n, P1771793689058411230.a n = A268669 (n + 1)

theorem P1771793689058411230.correct : P1771793689058411230.Spec := by
  intro n
  simp only [A268669, Nat.add_sub_cancel]

end A268669

/-! ## A268669.P17795237727427141943

`A193231(A030101(A379472(n+1)))`
-/

namespace A268669.P17795237727427141943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A030101 (A379472 (n + 1)).toNat).toNat

end

end A268669.P17795237727427141943

namespace A268669

/-- `A193231(A030101(A379472(n+1)))` -/
def P17795237727427141943.Spec : Prop :=
  ∀ n, P17795237727427141943.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P17560936382813280493

`A379472(A030101(A030101(A379471(n+1))))`
-/

namespace A268669.P17560936382813280493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379472 (A030101 (A030101 (A379471 (n + 1)).toNat).toNat).toNat

end

end A268669.P17560936382813280493

namespace A268669

/-- `A379472(A030101(A030101(A379471(n+1))))` -/
def P17560936382813280493.Spec : Prop :=
  ∀ n, P17560936382813280493.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P16821120154512362391

`A379471(A030101(A379471(A057889(n+1))))`
-/

namespace A268669.P16821120154512362391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379471 (A030101 (A379471 (A057889 (n + 1)).toNat).toNat).toNat

end

end A268669.P16821120154512362391

namespace A268669

/-- `A379471(A030101(A379471(A057889(n+1))))` -/
def P16821120154512362391.Spec : Prop :=
  ∀ n, P16821120154512362391.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P12278295817838302724

`A245446(A030101(A245446(A056539(n+1))))`
-/

namespace A268669.P12278295817838302724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245446 (A030101 (A245446 (A056539 (n + 1)).toNat).toNat).toNat

end

end A268669.P12278295817838302724

namespace A268669

/-- `A245446(A030101(A245446(A056539(n+1))))` -/
def P12278295817838302724.Spec : Prop :=
  ∀ n, P12278295817838302724.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P16476926415903884821

`A245446(A030101(A165199(A245443(n+1))))`
-/

namespace A268669.P16476926415903884821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245446 (A030101 (A165199 (A245443 (n + 1)).toNat).toNat).toNat

end

end A268669.P16476926415903884821

namespace A268669

/-- `A245446(A030101(A165199(A245443(n+1))))` -/
def P16476926415903884821.Spec : Prop :=
  ∀ n, P16476926415903884821.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P13487314484653578292

`A245446(A030101(A245444(A165199(n+1))))`
-/

namespace A268669.P13487314484653578292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245446 (A030101 (A245444 (A165199 (n + 1)).toNat).toNat).toNat

end

end A268669.P13487314484653578292

namespace A268669

/-- `A245446(A030101(A245444(A165199(n+1))))` -/
def P13487314484653578292.Spec : Prop :=
  ∀ n, P13487314484653578292.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P11409961375699974953

`A065621(A002260(A277821(n+1)))`
-/

namespace A268669.P11409961375699974953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (A002260 (A277821 (n + 1)).toNat).toNat

end

end A268669.P11409961375699974953

namespace A268669

/-- `A065621(A002260(A277821(n+1)))` -/
def P11409961375699974953.Spec : Prop :=
  ∀ n, P11409961375699974953.a n = A268669 (n + 1)

end A268669

/-! ## A268669.P14386488331895882315

`A277820(A277881(A277812(A277902(n+1))))`
-/

namespace A268669.P14386488331895882315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277820 (A277881 (A277812 (A277902 (n + 1)).toNat).toNat).toNat

end

end A268669.P14386488331895882315

namespace A268669

/-- `A277820(A277881(A277812(A277902(n+1))))` -/
def P14386488331895882315.Spec : Prop :=
  ∀ n, P14386488331895882315.a n = A268669 (n + 1)

end A268669

/-!
# A268670: a(n) = A006068(A268669(n)).

The programs for A268670, the canonical program `A268670.P1867945590080614055` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268670 has offset 1).

The definition of A268670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268669, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268670.P1867945590080614055

`A006068(A268669(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A268670

/-- `A006068(A268669(n+1))` -/
def P1867945590080614055.Spec : Prop :=
  ∀ n, P1867945590080614055.a n = A268670 (n + 1)

theorem P1867945590080614055.correct : P1867945590080614055.Spec := by
  intro n
  simp only [A268670, Nat.add_sub_cancel]

end A268670

/-! ## A268670.P4706713477121323886

`2*A268671(n+1)-1`
-/

namespace A268670.P4706713477121323886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268671 (n + 1) - 1

end

end A268670.P4706713477121323886

namespace A268670

/-- `2*A268671(n+1)-1` -/
def P4706713477121323886.Spec : Prop :=
  ∀ n, P4706713477121323886.a n = A268670 (n + 1)

end A268670

/-! ## A268670.P12610096433292479999

`A004273(A268671(n+1))`
-/

namespace A268670.P12610096433292479999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A268671 (n + 1)).toNat

end

end A268670.P12610096433292479999

namespace A268670

/-- `A004273(A268671(n+1))` -/
def P12610096433292479999.Spec : Prop :=
  ∀ n, P12610096433292479999.a n = A268670 (n + 1)

end A268670

/-! ## A268670.P2043383786037907947

`A065620(A268669(2*(n+1)))-1`
-/

namespace A268670.P2043383786037907947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A268669 (2 * (n + 1))).toNat - 1

end

end A268670.P2043383786037907947

namespace A268670

/-- `A065620(A268669(2*(n+1)))-1` -/
def P2043383786037907947.Spec : Prop :=
  ∀ n, P2043383786037907947.a n = A268670 (n + 1)

end A268670

/-! ## A268670.P5196296654279449385

`2*A277813(A277902(n+1))-1`
-/

namespace A268670.P5196296654279449385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277813 (A277902 (n + 1)).toNat - 1

end

end A268670.P5196296654279449385

namespace A268670

/-- `2*A277813(A277902(n+1))-1` -/
def P5196296654279449385.Spec : Prop :=
  ∀ n, P5196296654279449385.a n = A268670 (n + 1)

end A268670

/-! ## A268670.P11522686418409619372

`A268671(A268669(n+1))+A268671(n+1)-1`
-/

namespace A268670.P11522686418409619372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268671 (A268669 (n + 1)).toNat + (A268671 (n + 1) - 1)

end

end A268670.P11522686418409619372

namespace A268670

/-- `A268671(A268669(n+1))+A268671(n+1)-1` -/
def P11522686418409619372.Spec : Prop :=
  ∀ n, P11522686418409619372.a n = A268670 (n + 1)

end A268670

/-! ## A268670.P1469781510809013682

`A104895(A268669(2*(n+1))+1)`
-/

namespace A268670.P1469781510809013682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A268669 (2 * (n + 1)) + 1).toNat

end

end A268670.P1469781510809013682

namespace A268670

/-- `A104895(A268669(2*(n+1))+1)` -/
def P1469781510809013682.Spec : Prop :=
  ∀ n, P1469781510809013682.a n = A268670 (n + 1)

end A268670

/-! ## A268670.P674822267178758309

`A292600(2*A268669(n+1))`
-/

namespace A268670.P674822267178758309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A268669 (n + 1)).toNat

end

end A268670.P674822267178758309

namespace A268670

/-- `A292600(2*A268669(n+1))` -/
def P674822267178758309.Spec : Prop :=
  ∀ n, P674822267178758309.a n = A268670 (n + 1)

end A268670

/-! ## A268670.P18138866465376830877

`A193231(A003188(A030101(A030101(A193231(n+1)))))`
-/

namespace A268670.P18138866465376830877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A003188 (A030101 (A030101 (A193231 (n + 1)).toNat).toNat).toNat).toNat

end

end A268670.P18138866465376830877

namespace A268670

/-- `A193231(A003188(A030101(A030101(A193231(n+1)))))` -/
def P18138866465376830877.Spec : Prop :=
  ∀ n, P18138866465376830877.a n = A268670 (n + 1)

end A268670

/-! ## A268670.P17300181028634541204

`A268671(2*(n+1))-1`
-/

namespace A268670.P17300181028634541204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268671 (2 * (n + 1)) - 1

end

end A268670.P17300181028634541204

namespace A268670

/-- `A268671(2*(n+1))-1` -/
def P17300181028634541204.Spec : Prop :=
  ∀ n, P17300181028634541204.a n = A268670 (n + 1)

end A268670

/-! ## A268670.P6747870308570530563

`A158405(A277821(n+1))`
-/

namespace A268670.P6747870308570530563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A277821 (n + 1)).toNat

end

end A268670.P6747870308570530563

namespace A268670

/-- `A158405(A277821(n+1))` -/
def P6747870308570530563.Spec : Prop :=
  ∀ n, P6747870308570530563.a n = A268670 (n + 1)

end A268670

/-! ## A268670.P8410476955376443643

`A002260(A277821(2*(n+1))-1)`
-/

namespace A268670.P8410476955376443643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A277821 (2 * (n + 1)) - 1).toNat

end

end A268670.P8410476955376443643

namespace A268670

/-- `A002260(A277821(2*(n+1))-1)` -/
def P8410476955376443643.Spec : Prop :=
  ∀ n, P8410476955376443643.a n = A268670 (n + 1)

end A268670

/-!
# A268671: a(n) = (A268670(n)+1) / 2.

The programs for A268671, the canonical program `A268671.P3269200115816302803` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268671 has offset 1).

The definition of A268671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268670, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268671.P3269200115816302803

`(A268670(n+1)+1)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A268671

/-- `(A268670(n+1)+1)/2` -/
def P3269200115816302803.Spec : Prop :=
  ∀ n, P3269200115816302803.a n = (A268671 (n + 1) : ℚ)

end A268671

/-! ## A268671.P18014674461621254112

`ceil(A268670(n+1)/2)`
-/

namespace A268671.P18014674461621254112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268670 (n + 1) : ℚ) / 2⌉

end

end A268671.P18014674461621254112

namespace A268671

/-- `ceil(A268670(n+1)/2)` -/
def P18014674461621254112.Spec : Prop :=
  ∀ n, P18014674461621254112.a n = A268671 (n + 1)

end A268671

/-! ## A268671.P8783869364084917738

`A065620(A268669(n+1))`
-/

namespace A268671.P8783869364084917738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A268669 (n + 1)).toNat

end

end A268671.P8783869364084917738

namespace A268671

/-- `A065620(A268669(n+1))` -/
def P8783869364084917738.Spec : Prop :=
  ∀ n, P8783869364084917738.a n = A268671 (n + 1)

end A268671

/-! ## A268671.P11900768348042645995

`A277813(A277902(n+1))`
-/

namespace A268671.P11900768348042645995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277813 (A277902 (n + 1)).toNat

end

end A268671.P11900768348042645995

namespace A268671

/-- `A277813(A277902(n+1))` -/
def P11900768348042645995.Spec : Prop :=
  ∀ n, P11900768348042645995.a n = A268671 (n + 1)

end A268671

/-! ## A268671.P14645913052601368877

`A000463(A268670(n+1))`
-/

namespace A268671.P14645913052601368877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A268670 (n + 1)).toNat

end

end A268671.P14645913052601368877

namespace A268671

/-- `A000463(A268670(n+1))` -/
def P14645913052601368877.Spec : Prop :=
  ∀ n, P14645913052601368877.a n = A268671 (n + 1)

end A268671

/-! ## A268671.P14169244261446049209

`A115384(A268670(n+1)+2)-1`
-/

namespace A268671.P14169244261446049209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A268670 (n + 1) + 2).toNat - 1

end

end A268671.P14169244261446049209

namespace A268671

/-- `A115384(A268670(n+1)+2)-1` -/
def P14169244261446049209.Spec : Prop :=
  ∀ n, P14169244261446049209.a n = A268671 (n + 1)

end A268671

/-! ## A268671.P10141405746011947908

`A002265(2*(A268670(n+1)+1))`
-/

namespace A268671.P10141405746011947908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A268670 (n + 1) + 1)).toNat

end

end A268671.P10141405746011947908

namespace A268671

/-- `A002265(2*(A268670(n+1)+1))` -/
def P10141405746011947908.Spec : Prop :=
  ∀ n, P10141405746011947908.a n = A268671 (n + 1)

end A268671

/-! ## A268671.P12219564020463253155

`A002265(A268670(n+1)+A268670(n+1)+2)`
-/

namespace A268671.P12219564020463253155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A268670 (n + 1) + (A268670 (n + 1) + 2)).toNat

end

end A268671.P12219564020463253155

namespace A268671

/-- `A002265(A268670(n+1)+A268670(n+1)+2)` -/
def P12219564020463253155.Spec : Prop :=
  ∀ n, P12219564020463253155.a n = A268671 (n + 1)

end A268671

/-! ## A268671.P797294528649365605

`A002260(A277821(n+1))`
-/

namespace A268671.P797294528649365605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A277821 (n + 1)).toNat

end

end A268671.P797294528649365605

namespace A268671

/-- `A002260(A277821(n+1))` -/
def P797294528649365605.Spec : Prop :=
  ∀ n, P797294528649365605.a n = A268671 (n + 1)

end A268671

/-!
# A268672: a(n) = n - A268395(n).

The programs for A268672, the canonical program `A268672.P13607685765128102460` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268672 has offset 0).

The definition of A268672 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268395, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268672.P13607685765128102460

`n-A268395(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A268672

/-- `n-A268395(n)` -/
def P13607685765128102460.Spec : Prop :=
  ∀ n, P13607685765128102460.a n = A268672 n

theorem P13607685765128102460.correct : P13607685765128102460.Spec := by
  intro n
  simp only [A268672]

end A268672

/-! ## A268672.P16885093810045251723

`a(n-1)+1-A268389(n)` with `a(0)=0`
-/

namespace A268672.P16885093810045251723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A268389 n)

end

end A268672.P16885093810045251723

namespace A268672

/-- `a(n-1)+1-A268389(n)` -/
def P16885093810045251723.Spec : Prop :=
  ∀ n, P16885093810045251723.a n = A268672 n

end A268672

/-! ## A268672.P17586519013513337826

`n-A268678(A245710(n))`
-/

namespace A268672.P17586519013513337826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268678 (A245710 n).toNat

end

end A268672.P17586519013513337826

namespace A268672

/-- `n-A268678(A245710(n))` -/
def P17586519013513337826.Spec : Prop :=
  ∀ n, P17586519013513337826.a n = A268672 n

end A268672

/-! ## A268672.P3519228347336611596

`abs(A268395(n)+A001489(n))`
-/

namespace A268672.P3519228347336611596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A268395 n + A001489 n|

end

end A268672.P3519228347336611596

namespace A268672

/-- `abs(A268395(n)+A001489(n))` -/
def P3519228347336611596.Spec : Prop :=
  ∀ n, P3519228347336611596.a n = A268672 n

end A268672

/-! ## A268672.P16708361628917799577

`A057428(n)*A268395(n)+n`
-/

namespace A268672.P16708361628917799577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A268395 n + (n : ℤ)

end

end A268672.P16708361628917799577

namespace A268672

/-- `A057428(n)*A268395(n)+n` -/
def P16708361628917799577.Spec : Prop :=
  ∀ n, P16708361628917799577.a n = A268672 n

end A268672

/-! ## A268672.P2238048792978120354

`n-A268678(n-∑[A010060(n)])`
-/

namespace A268672.P2238048792978120354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268678 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268672.P2238048792978120354

namespace A268672

/-- `n-A268678(n-∑[A010060(n)])` -/
def P2238048792978120354.Spec : Prop :=
  ∀ n, P2238048792978120354.a n = A268672 n

end A268672

/-! ## A268672.P10425691484516953048

`A268389(n+1)-∑[A268389(n+1)]+n`
-/

namespace A268672.P10425691484516953048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A268672.P10425691484516953048

namespace A268672

/-- `A268389(n+1)-∑[A268389(n+1)]+n` -/
def P10425691484516953048.Spec : Prop :=
  ∀ n, P10425691484516953048.a n = A268672 n

end A268672

/-! ## A268672.P15893639401616421550

`A061601(A268395(n)+A061601(n))`
-/

namespace A268672.P15893639401616421550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A268395 n + A061601 n).toNat

end

end A268672.P15893639401616421550

namespace A268672

/-- `A061601(A268395(n)+A061601(n))` -/
def P15893639401616421550.Spec : Prop :=
  ∀ n, P15893639401616421550.a n = A268672 n

end A268672

/-! ## A268672.P16659548537637951725

`∑[A088705(A193231(n))]`
-/

namespace A268672.P16659548537637951725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A193231 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268672.P16659548537637951725

namespace A268672

/-- `∑[A088705(A193231(n))]` -/
def P16659548537637951725.Spec : Prop :=
  ∀ n, P16659548537637951725.a n = A268672 n

end A268672

/-! ## A268672.P12982631883008964641

`A025581(A268395(n)+∑[n])`
-/

namespace A268672.P12982631883008964641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A268395 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A268672.P12982631883008964641

namespace A268672

/-- `A025581(A268395(n)+∑[n])` -/
def P12982631883008964641.Spec : Prop :=
  ∀ n, P12982631883008964641.a n = A268672 n

end A268672

/-!
# A268673: a(0) = 0; a(1) = 1; for n > 1, a(n) = 1 + 4*A092246(n-1).

The programs for A268673, there is no canonical definition to state claims against.
-/

/-! ## A268673.P6789606096003818044

`record[gcd(A268717(n)+n, A001969(n+1))]`
-/

namespace A268673.P6789606096003818044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A268717 n + (n : ℤ)) (A001969 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268673.P6789606096003818044

/-! ## A268673.P1618399002120646585

`eq[n, A268823(n)]`
-/

namespace A268673.P1618399002120646585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268673.P1618399002120646585

/-! ## A268673.P11387110376040883073

`eq[n, A268824(n)]`
-/

namespace A268673.P11387110376040883073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268673.P11387110376040883073

/-! ## A268673.P15380417089259777453

`record[A268824(gcd(n, A268824(n)))]`
-/

namespace A268673.P15380417089259777453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268824 (Int.gcd (n : ℤ) (A268824 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268673.P15380417089259777453

/-! ## A268673.P4909744211695525063

`eq[n*A268832(2*n), 2*n²+n]`
-/

namespace A268673.P4909744211695525063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A268832 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A268673.P4909744211695525063

/-! ## A268673.P6928766112413800624

`eq[2*n²+n, A161680(A268832(2*n))]`
-/

namespace A268673.P6928766112413800624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A268832 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268673.P6928766112413800624

/-! ## A268673.P18434860777490887130

`eq[A057363(2*n+1), A057363(A268832(2*n))]`
-/

namespace A268673.P18434860777490887130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A268832 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268673.P18434860777490887130

/-!
# A268674: a(1) = 1, after which, for odd numbers: a(n) = A078898(n)-th number k for which A055396(k) = A055396(n)-1, and for even numbers: a(n) = a(A000265(n)).

The programs for A268674, there is no canonical definition to state claims against.
-/

/-! ## A268674.P16746550983208289478

`A269356(A269380(n+1))`
-/

namespace A268674.P16746550983208289478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269356 (A269380 (n + 1)).toNat

end

end A268674.P16746550983208289478

/-! ## A268674.P4734806232371824693

`A250470((n+1)/2^val(n+1, 2))`
-/

namespace A268674.P4734806232371824693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A268674.P4734806232371824693

/-! ## A268674.P16949699082189647005

`A250470((n+1)/(or(n, n+1)-n))`
-/

namespace A268674.P16949699082189647005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A268674.P16949699082189647005

/-! ## A268674.P3680192841768364913

`A250470((n+1)*2^-val(n+1, 2))`
-/

namespace A268674.P3680192841768364913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A268674.P3680192841768364913

/-! ## A268674.P6238591975894332502

`A250470(2^(log2(n+1)-val(n+1, 2)))`
-/

namespace A268674.P6238591975894332502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))).toNat

end

end A268674.P6238591975894332502

/-! ## A268674.P17507589441654121903

`A250470((n+1)/and(n+1, -(n+1)))`
-/

namespace A268674.P17507589441654121903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A268674.P17507589441654121903

/-! ## A268674.P1456622790262149791

`A250470((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A268674.P1456622790262149791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A268674.P1456622790262149791

/-! ## A268674.P6221907637809876521

`A250470((n+1)/round(xor(n, n+1)/2))`
-/

namespace A268674.P6221907637809876521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

end

end A268674.P6221907637809876521

/-! ## A268674.P11195295072057808834

`A250470(or(1, -((n+1)/or(n+1, -(n+1)))))`
-/

namespace A268674.P11195295072057808834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (Int.lor 1 (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))))).toNat

end

end A268674.P11195295072057808834

/-! ## A268674.P14657318648018718688

`A250470(A000265(n+1))`
-/

namespace A268674.P14657318648018718688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A000265 (n + 1)).toNat

end

end A268674.P14657318648018718688

/-! ## A268674.P14893077347002598270

`A250470(A276234(n+1))`
-/

namespace A268674.P14893077347002598270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A276234 (n + 1)).toNat

end

end A268674.P14893077347002598270

/-! ## A268674.P446491080760711317

`A250470(2*A025480(n)+1)`
-/

namespace A268674.P446491080760711317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * A025480 n + 1).toNat

end

end A268674.P446491080760711317

/-! ## A268674.P11461104216563656930

`A250470(A166466(n+1)/3)`
-/

namespace A268674.P11461104216563656930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

end

end A268674.P11461104216563656930

/-! ## A268674.P5417713656071007014

`A250470(A106617(A106617(n+1)))`
-/

namespace A268674.P5417713656071007014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A106617 (A106617 (n + 1)).toNat).toNat

end

end A268674.P5417713656071007014

/-! ## A268674.P10839957153708701017

`A250470(A269369(A269370(n+1)))`
-/

namespace A268674.P10839957153708701017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A269369 (A269370 (n + 1)).toNat).toNat

end

end A268674.P10839957153708701017

/-! ## A268674.P3808657538879453321

`A250470(A025480(n)+A025480(n)+1)`
-/

namespace A268674.P3808657538879453321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A025480 n + (A025480 n + 1)).toNat

end

end A268674.P3808657538879453321

/-! ## A268674.P12097187652682444985

`A250470(A030101(A030101(n+1)))`
-/

namespace A268674.P12097187652682444985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A030101 (A030101 (n + 1)).toNat).toNat

end

end A268674.P12097187652682444985

/-! ## A268674.P16046078727567013390

`A253554((n+1)/and(n+1, -(n+1)))`
-/

namespace A268674.P16046078727567013390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A268674.P16046078727567013390

/-! ## A268674.P6699779316776958002

`A250472(A003602(n+1))`
-/

namespace A268674.P6699779316776958002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (A003602 (n + 1)).toNat

end

end A268674.P6699779316776958002

/-! ## A268674.P9827053451024132916

`A250470(A163575(2*(n+1)))`
-/

namespace A268674.P9827053451024132916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A163575 (2 * (n + 1))).toNat

end

end A268674.P9827053451024132916

/-!
# A268675: Self-inverse permutation of natural numbers: a(1) = 1; a(n) = A000079(A193231(A007814(n))) * A250469(a(A268674(n))).

The programs for A268675, there is no canonical definition to state claims against.
-/

/-! ## A268675.P9146720074816596632

`A000079(A193231(A007814(n+1)))*A250469(a(A268674(n+1)-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268675.P9146720074816596632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (A193231 (A007814 (n + 1)).toNat).toNat * A250469 (a (A268674 (n + 1) - 1).toNat).toNat

end

end A268675.P9146720074816596632

/-! ## A268675.P13724831180135672618

`A250245(A268385(n+1))%p?[A011905(n)]`
-/

namespace A268675.P13724831180135672618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250245 (A268385 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A268675.P13724831180135672618

/-! ## A268675.P2942107602501470873

`A250245(A268385(n+1))+A000038(A002385(n+1))`
-/

namespace A268675.P2942107602501470873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A268385 (n + 1)).toNat + A000038 (A002385 (n + 1)).toNat

end

end A268675.P2942107602501470873

/-! ## A268675.P11421130392078743196

`A250245(A268385(n+1))*A320390(A000040(n+1))`
-/

namespace A268675.P11421130392078743196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A268385 (n + 1)).toNat * A320390 (A000040 (n + 1)).toNat

end

end A268675.P11421130392078743196

/-! ## A268675.P11801929413647212289

`A250245(A268385(n+1))^A001221(A185231(n))`
-/

namespace A268675.P11801929413647212289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (A268385 (n + 1)).toNat : ℚ) ^ (A001221 (A185231 n).toNat : ℤ)

end

end A268675.P11801929413647212289

/-!
# A268676: a(n) = A101080(n,A268823(3+n)), where A101080(x,y) gives the Hamming distance between binary expansions of x and y.

The programs for A268676, the canonical program `A268676.P8159254776456483871` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268676 has offset 0).

The definition of A268676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268676.P8159254776456483871

`2-A106400(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268676

/-- `2-A106400(n)` -/
def P8159254776456483871.Spec : Prop :=
  ∀ n, P8159254776456483871.a n = A268676 n

theorem P8159254776456483871.correct : P8159254776456483871.Spec := by
  intro n
  simp only [A268676]

end A268676

/-! ## A268676.P12184461082813297708

`1+2*A010060(n)`
-/

namespace A268676.P12184461082813297708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A010060 n

end

end A268676.P12184461082813297708

namespace A268676

/-- `1+2*A010060(n)` -/
def P12184461082813297708.Spec : Prop :=
  ∀ n, P12184461082813297708.a n = A268676 n

theorem P12184461082813297708.correct : P12184461082813297708.Spec := by
  intro n
  simp only [A268676, Nat.add_sub_cancel, A268676.P12184461082813297708.a, A268676.P8159254776456483871.a, A010060, A010060.P3080921269106500717.a, A106400, A106400.P11201390576172776043.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268676

/-! ## A268676.P17344912190385747087

`2-(-1)^A000120(n)`
-/

namespace A268676.P17344912190385747087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (-1 : ℚ) ^ (A000120 n : ℤ)

end

end A268676.P17344912190385747087

namespace A268676

/-- `2-(-1)^A000120(n)` -/
def P17344912190385747087.Spec : Prop :=
  ∀ n, P17344912190385747087.a n = (A268676 n : ℚ)

end A268676

/-! ## A268676.P2865485469728650181

`A101080(C(n+A268823(3+n)+1, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268676.P2865485469728650181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101080 (Nat.choose ((n : ℤ) + A268823 (3 + n) + 1).toNat 2 + n)

end

end A268676.P2865485469728650181

namespace A268676

/-- `A101080(C(n+A268823(3+n)+1, 2)+n)` -/
def P2865485469728650181.Spec : Prop :=
  ∀ n, P2865485469728650181.a n = A268676 n

end A268676

/-! ## A268676.P10824954736473726478

`A101080(C(n+A268823(3+n)+1, 2)+A268823(3+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268676.P10824954736473726478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101080 ((Nat.choose ((n : ℤ) + A268823 (3 + n) + 1).toNat 2 : ℤ) + A268823 (3 + n)).toNat

end

end A268676.P10824954736473726478

namespace A268676

/-- `A101080(C(n+A268823(3+n)+1, 2)+A268823(3+n))` -/
def P10824954736473726478.Spec : Prop :=
  ∀ n, P10824954736473726478.a n = A268676 n

end A268676

/-! ## A268676.P14053492244923900774

`4-a(and(n, n-1))` with `a(0)=1`
-/

namespace A268676.P14053492244923900774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A268676.P14053492244923900774

namespace A268676

/-- `4-a(and(n, n-1))` -/
def P14053492244923900774.Spec : Prop :=
  ∀ n, P14053492244923900774.a n = A268676 n

end A268676

/-! ## A268676.P190223136961648728

`3-2*char[xor(n, 2*n)]`
-/

namespace A268676.P190223136961648728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A268676.P190223136961648728

namespace A268676

/-- `3-2*char[xor(n, 2*n)]` -/
def P190223136961648728.Spec : Prop :=
  ∀ n, P190223136961648728.a n = A268676 n

end A268676

/-! ## A268676.P12749329271352369004

`3^xor(1, char[xor(n, 2*n)])`
-/

namespace A268676.P12749329271352369004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A268676.P12749329271352369004

namespace A268676

/-- `3^xor(1, char[xor(n, 2*n)])` -/
def P12749329271352369004.Spec : Prop :=
  ∀ n, (P12749329271352369004.a n : ℤ) = A268676 n

end A268676

/-! ## A268676.P1334716392168814258

`C(3, xor(1, char[xor(n, 2*n)]))`
-/

namespace A268676.P1334716392168814258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0))

end

end A268676.P1334716392168814258

namespace A268676

/-- `C(3, xor(1, char[xor(n, 2*n)]))` -/
def P1334716392168814258.Spec : Prop :=
  ∀ n, (P1334716392168814258.a n : ℤ) = A268676 n

end A268676

/-! ## A268676.P1261341314052162475

`a(xor(1, char[xor(n, 2*n)]))` with `a(0)=1, a(1)=3`
-/

namespace A268676.P1261341314052162475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0))

end

end A268676.P1261341314052162475

namespace A268676

/-- `a(xor(1, char[xor(n, 2*n)]))` -/
def P1261341314052162475.Spec : Prop :=
  ∀ n, (P1261341314052162475.a n : ℤ) = A268676 n

end A268676

/-! ## A268676.P4304028581405959215

`xor(2, a(n-2^floor(log2(n))))` with `a(0)=1`
-/

namespace A268676.P4304028581405959215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 2 (a (n - 2 ^ Nat.log 2 n))

end

end A268676.P4304028581405959215

namespace A268676

/-- `xor(2, a(n-2^floor(log2(n))))` -/
def P4304028581405959215.Spec : Prop :=
  ∀ n, (P4304028581405959215.a n : ℤ) = A268676 n

end A268676

/-! ## A268676.P10538515123157823295

`(a(floor(n/2))+2*n)%4` with `a(0)=1`
-/

namespace A268676.P10538515123157823295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + 2 * n) % 4

end

end A268676.P10538515123157823295

namespace A268676

/-- `(a(floor(n/2))+2*n)%4` -/
def P10538515123157823295.Spec : Prop :=
  ∀ n, (P10538515123157823295.a n : ℤ) = A268676 n

end A268676

/-! ## A268676.P15343062964326733702

`and(3, a(floor(n/2))+2*n)` with `a(0)=1`
-/

namespace A268676.P15343062964326733702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (a ⌊(n : ℚ) / 2⌋.toNat + 2 * n)

end

end A268676.P15343062964326733702

namespace A268676

/-- `and(3, a(floor(n/2))+2*n)` -/
def P15343062964326733702.Spec : Prop :=
  ∀ n, (P15343062964326733702.a n : ℤ) = A268676 n

end A268676

/-! ## A268676.P8851050241781314869

`gcd(3, comp[xor(n, 2*n+1)]+n+2)`
-/

namespace A268676.P8851050241781314869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2))

end

end A268676.P8851050241781314869

namespace A268676

/-- `gcd(3, comp[xor(n, 2*n+1)]+n+2)` -/
def P8851050241781314869.Spec : Prop :=
  ∀ n, (P8851050241781314869.a n : ℤ) = A268676 n

end A268676

/-! ## A268676.P8544837178866076738

`∑[a(n-1)+a(floor(n/2))]%4` with `a(0)=1`
-/

namespace A268676.P8544837178866076738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 4

end

end A268676.P8544837178866076738

namespace A268676

/-- `∑[a(n-1)+a(floor(n/2))]%4` -/
def P8544837178866076738.Spec : Prop :=
  ∀ n, (P8544837178866076738.a n : ℤ) = A268676 n

end A268676

/-! ## A268676.P10358237358328382548

`A048883(n)%4`
-/

namespace A268676.P10358237358328382548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048883 n) 4

end

end A268676.P10358237358328382548

namespace A268676

/-- `A048883(n)%4` -/
def P10358237358328382548.Spec : Prop :=
  ∀ n, P10358237358328382548.a n = A268676 n

end A268676

/-! ## A268676.P16040974618289573358

`A071053(n)%4`
-/

namespace A268676.P16040974618289573358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071053 n) 4

end

end A268676.P16040974618289573358

namespace A268676

/-- `A071053(n)%4` -/
def P16040974618289573358.Spec : Prop :=
  ∀ n, P16040974618289573358.a n = A268676 n

end A268676

/-! ## A268676.P4563343514796887111

`gcd(3, A074938(n))`
-/

namespace A268676.P4563343514796887111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A074938 n)

end

end A268676.P4563343514796887111

namespace A268676

/-- `gcd(3, A074938(n))` -/
def P4563343514796887111.Spec : Prop :=
  ∀ n, (P4563343514796887111.a n : ℤ) = A268676 n

end A268676

/-!
# A268677: Complement of A268678; numbers that do not occur in A268395.

The programs for A268677, the canonical program `A268677.P14818569414976398343` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268677 has offset 1).

The definition of A268677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268677.P14818569414976398343

`comp[A268395(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A268677

/-- `comp[A268395(n)]` -/
def P14818569414976398343.Spec : Prop :=
  ∀ n, (P14818569414976398343.a n : ℤ) = A268677 (n + 1)

theorem P14818569414976398343.correct : P14818569414976398343.Spec := by
  intro n
  simp only [A268677, Nat.add_sub_cancel]

end A268677

/-! ## A268677.P13103805558905090148

`comp[A268678(n)]`
-/

namespace A268677.P13103805558905090148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268677.P13103805558905090148

namespace A268677

/-- `comp[A268678(n)]` -/
def P13103805558905090148.Spec : Prop :=
  ∀ n, (P13103805558905090148.a n : ℤ) = A268677 (n + 1)

end A268677

/-! ## A268677.P3060021777693657026

`comp[n-A268672(n)]`
-/

namespace A268677.P3060021777693657026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268672 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268677.P3060021777693657026

namespace A268677

/-- `comp[n-A268672(n)]` -/
def P3060021777693657026.Spec : Prop :=
  ∀ n, (P3060021777693657026.a n : ℤ) = A268677 (n + 1)

end A268677

/-! ## A268677.P15175317853424920581

`A268712(2*A268711(n+1))`
-/

namespace A268677.P15175317853424920581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268712 (2 * A268711 (n + 1)).toNat

end

end A268677.P15175317853424920581

namespace A268677

/-- `A268712(2*A268711(n+1))` -/
def P15175317853424920581.Spec : Prop :=
  ∀ n, P15175317853424920581.a n = A268677 (n + 1)

end A268677

/-! ## A268677.P4251957608537900379

`A268712(A268711(n+1)+A268711(n+1))`
-/

namespace A268677.P4251957608537900379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268712 (A268711 (n + 1) + A268711 (n + 1)).toNat

end

end A268677.P4251957608537900379

namespace A268677

/-- `A268712(A268711(n+1)+A268711(n+1))` -/
def P4251957608537900379.Spec : Prop :=
  ∀ n, P4251957608537900379.a n = A268677 (n + 1)

end A268677

/-! ## A268677.P14473910806256249303

`eq[0, char[A268395(n+1)]]`
-/

namespace A268677.P14473910806256249303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268677.P14473910806256249303

namespace A268677

/-- `eq[0, char[A268395(n+1)]]` -/
def P14473910806256249303.Spec : Prop :=
  ∀ n, (P14473910806256249303.a n : ℤ) = A268677 (n + 1)

end A268677

/-!
# A268678: Distinct values in A268395; partial sums of A268679.

The programs for A268678, the canonical program `A268678.P14572707454728514412` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268678 has offset 0).

The definition of A268678 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268395, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268678.P130117849974421576

`A268679(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A268678.P130117849974421576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A268679 n + a (n - 1)

end

end A268678.P130117849974421576

namespace A268678

/-- `A268679(n)+a(n-1)` -/
def P130117849974421576.Spec : Prop :=
  ∀ n, P130117849974421576.a n = A268678 n

end A268678

/-! ## A268678.P14572707454728514412

`A268395(A001969(1+n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A268678

/-- `A268395(A001969(1+n))` -/
def P14572707454728514412.Spec : Prop :=
  ∀ n, P14572707454728514412.a n = A268678 n

theorem P14572707454728514412.correct : P14572707454728514412.Spec := by
  intro n
  simp only [A268678]

end A268678

/-! ## A268678.P2169126018839370919

`A268395(Δ[n²])`
-/

namespace A268678.P2169126018839370919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A268678.P2169126018839370919

namespace A268678

/-- `A268395(Δ[n²])` -/
def P2169126018839370919.Spec : Prop :=
  ∀ n, P2169126018839370919.a n = A268678 n

end A268678

/-! ## A268678.P11451255773736673000

`comp[A268677(n+1)]`
-/

namespace A268678.P11451255773736673000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268678.P11451255773736673000

namespace A268678

/-- `comp[A268677(n+1)]` -/
def P11451255773736673000.Spec : Prop :=
  ∀ n, (P11451255773736673000.a n : ℤ) = A268678 n

end A268678

/-! ## A268678.P8090222229075198082

`record[n%2*A268395(n)]`
-/

namespace A268678.P8090222229075198082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A268395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268678.P8090222229075198082

namespace A268678

/-- `record[n%2*A268395(n)]` -/
def P8090222229075198082.Spec : Prop :=
  ∀ n, P8090222229075198082.a n = A268678 n

end A268678

/-! ## A268678.P13163704507839867169

`Δ[n²]-A268672(2*n+1)`
-/

namespace A268678.P13163704507839867169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A268672 (2 * n + 1)

end

end A268678.P13163704507839867169

namespace A268678

/-- `Δ[n²]-A268672(2*n+1)` -/
def P13163704507839867169.Spec : Prop :=
  ∀ n, P13163704507839867169.a n = A268678 n

end A268678

/-! ## A268678.P13339997321152069276

`A268395(2*n+1)%∑[comp[∑[n]]]`
-/

namespace A268678.P13339997321152069276
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268395 (2 * n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A268678.P13339997321152069276

namespace A268678

/-- `A268395(2*n+1)%∑[comp[∑[n]]]` -/
def P13339997321152069276.Spec : Prop :=
  ∀ n, P13339997321152069276.a n = A268678 n

end A268678

/-! ## A268678.P16350193632594099892

`A057428(n)²*A268395(2*n+1)`
-/

namespace A268678.P16350193632594099892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A268395 (2 * n + 1)

end

end A268678.P16350193632594099892

namespace A268678

/-- `A057428(n)²*A268395(2*n+1)` -/
def P16350193632594099892.Spec : Prop :=
  ∀ n, P16350193632594099892.a n = A268678 n

end A268678

/-! ## A268678.P15611243427786519537

`∑[A268679(n+1)]-A268679(n+1)`
-/

namespace A268678.P15611243427786519537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A268679 (n + 1)

end

end A268678.P15611243427786519537

namespace A268678

/-- `∑[A268679(n+1)]-A268679(n+1)` -/
def P15611243427786519537.Spec : Prop :=
  ∀ n, P15611243427786519537.a n = A268678 n

end A268678

/-! ## A268678.P18010052486181923362

`A268395(2*n+1)+A000038(n+1)`
-/

namespace A268678.P18010052486181923362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 (2 * n + 1) + A000038 (n + 1)

end

end A268678.P18010052486181923362

namespace A268678

/-- `A268395(2*n+1)+A000038(n+1)` -/
def P18010052486181923362.Spec : Prop :=
  ∀ n, P18010052486181923362.a n = A268678 n

end A268678

/-! ## A268678.P4352219842685525364

`A268395(2*(n+1))-A268389(n+1)`
-/

namespace A268678.P4352219842685525364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 (2 * (n + 1)) - A268389 (n + 1)

end

end A268678.P4352219842685525364

namespace A268678

/-- `A268395(2*(n+1))-A268389(n+1)` -/
def P4352219842685525364.Spec : Prop :=
  ∀ n, P4352219842685525364.a n = A268678 n

end A268678

/-! ## A268678.P2606966176881076490

`A268395(2*n+3)-A268679(n+1)`
-/

namespace A268678.P2606966176881076490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 (2 * n + 3) - A268679 (n + 1)

end

end A268678.P2606966176881076490

namespace A268678

/-- `A268395(2*n+3)-A268679(n+1)` -/
def P2606966176881076490.Spec : Prop :=
  ∀ n, P2606966176881076490.a n = A268678 n

end A268678

/-! ## A268678.P2668282754176875648

`A268395(2*n+1)+A057428(n+1)+1`
-/

namespace A268678.P2668282754176875648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 (2 * n + 1) + (A057428 (n + 1) + 1)

end

end A268678.P2668282754176875648

namespace A268678

/-- `A268395(2*n+1)+A057428(n+1)+1` -/
def P2668282754176875648.Spec : Prop :=
  ∀ n, P2668282754176875648.a n = A268678 n

end A268678

/-! ## A268678.P1485416954912448399

`eq[1, char[A268395(n)]]`
-/

namespace A268678.P1485416954912448399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268678.P1485416954912448399

namespace A268678

/-- `eq[1, char[A268395(n)]]` -/
def P1485416954912448399.Spec : Prop :=
  ∀ n, (P1485416954912448399.a n : ℤ) = A268678 n

end A268678

/-! ## A268678.P17163818517681115759

`abs(A001489(A268395(2*n+1)))`
-/

namespace A268678.P17163818517681115759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (A268395 (2 * n + 1)).toNat|

end

end A268678.P17163818517681115759

namespace A268678

/-- `abs(A001489(A268395(2*n+1)))` -/
def P17163818517681115759.Spec : Prop :=
  ∀ n, P17163818517681115759.a n = A268678 n

end A268678

/-! ## A268678.P11690402566435987649

`A008619(2*n)-A268672(2*n+1)+n`
-/

namespace A268678.P11690402566435987649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A268672 (2 * n + 1) + (n : ℤ)

end

end A268678.P11690402566435987649

namespace A268678

/-- `A008619(2*n)-A268672(2*n+1)+n` -/
def P11690402566435987649.Spec : Prop :=
  ∀ n, P11690402566435987649.a n = A268678 n

end A268678

/-! ## A268678.P12822333859433554872

`record[A268395(n)-A142150(n)]`
-/

namespace A268678.P12822333859433554872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 n - A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268678.P12822333859433554872

namespace A268678

/-- `record[A268395(n)-A142150(n)]` -/
def P12822333859433554872.Spec : Prop :=
  ∀ n, P12822333859433554872.a n = A268678 n

end A268678

/-! ## A268678.P8893949705610718012

`record[A268395(n+1)/A010684(n)]`
-/

namespace A268678.P8893949705610718012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268395 (n + 1) : ℚ) / (A010684 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268678.P8893949705610718012

namespace A268678

/-- `record[A268395(n+1)/A010684(n)]` -/
def P8893949705610718012.Spec : Prop :=
  ∀ n, P8893949705610718012.a n = (A268678 n : ℚ)

end A268678

/-! ## A268678.P5037744197306339029

`record[(A010684(n)-2)*A268395(n)]`
-/

namespace A268678.P5037744197306339029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010684 n - 2) * A268395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268678.P5037744197306339029

namespace A268678

/-- `record[(A010684(n)-2)*A268395(n)]` -/
def P5037744197306339029.Spec : Prop :=
  ∀ n, P5037744197306339029.a n = A268678 n

end A268678

/-! ## A268678.P10593416429966157761

`A010684(2*n)*A268395(2*n+1)`
-/

namespace A268678.P10593416429966157761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) * A268395 (2 * n + 1)

end

end A268678.P10593416429966157761

namespace A268678

/-- `A010684(2*n)*A268395(2*n+1)` -/
def P10593416429966157761.Spec : Prop :=
  ∀ n, P10593416429966157761.a n = A268678 n

end A268678

/-!
# A268679: a(n) = A268389(A001969(1+n)); A268389 without its zero terms.

The programs for A268679, the canonical program `A268679.P49970291617934495` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268679 has offset 1).

The definition of A268679 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268389, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268679.P49970291617934495

`A268389(A001969(1+n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A268679

/-- `A268389(A001969(1+n+1))` -/
def P49970291617934495.Spec : Prop :=
  ∀ n, P49970291617934495.a n = A268679 (n + 1)

theorem P49970291617934495.correct : P49970291617934495.Spec := by
  intro n
  simp only [A268679, Nat.add_sub_cancel]

end A268679

/-! ## A268679.P11521329841588565303

`Δ[A268678(n)]`
-/

namespace A268679.P11521329841588565303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268679.P11521329841588565303

namespace A268679

/-- `Δ[A268678(n)]` -/
def P11521329841588565303.Spec : Prop :=
  ∀ n, P11521329841588565303.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P14437035748143587668

`runs[A268680(n)]`
-/

namespace A268679.P14437035748143587668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A268679.P14437035748143587668

namespace A268679

/-- `runs[A268680(n)]` -/
def P14437035748143587668.Spec : Prop :=
  ∀ n, (P14437035748143587668.a n : ℤ) = A268679 (n + 1)

end A268679

/-! ## A268679.P18079867865794784465

`Δ[comp[A268677(n+1)]]`
-/

namespace A268679.P18079867865794784465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268677 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A268679.P18079867865794784465

namespace A268679

/-- `Δ[comp[A268677(n+1)]]` -/
def P18079867865794784465.Spec : Prop :=
  ∀ n, P18079867865794784465.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P17056273349191577106

`Δ[A268395(2*n+1)]`
-/

namespace A268679.P17056273349191577106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268679.P17056273349191577106

namespace A268679

/-- `Δ[A268395(2*n+1)]` -/
def P17056273349191577106.Spec : Prop :=
  ∀ n, P17056273349191577106.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P4284092603291497143

`2-Δ[A268672(2*n+1)]`
-/

namespace A268679.P4284092603291497143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268672 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A268679.P4284092603291497143

namespace A268679

/-- `2-Δ[A268672(2*n+1)]` -/
def P4284092603291497143.Spec : Prop :=
  ∀ n, P4284092603291497143.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P9111642621236218586

`A268678(n+1)-A268678(n)`
-/

namespace A268679.P9111642621236218586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 (n + 1) - A268678 n

end

end A268679.P9111642621236218586

namespace A268679

/-- `A268678(n+1)-A268678(n)` -/
def P9111642621236218586.Spec : Prop :=
  ∀ n, P9111642621236218586.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P4572943591245849319

`A268389(lt[0, A268389(n+1)]+1)`
-/

namespace A268679.P4572943591245849319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A268679.P4572943591245849319

namespace A268679

/-- `A268389(lt[0, A268389(n+1)]+1)` -/
def P4572943591245849319.Spec : Prop :=
  ∀ n, P4572943591245849319.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P9907682933246289308

`A268389(2*n+3)+A268389(n+1)`
-/

namespace A268679.P9907682933246289308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (2 * n + 3) + A268389 (n + 1)

end

end A268679.P9907682933246289308

namespace A268679

/-- `A268389(2*n+3)+A268389(n+1)` -/
def P9907682933246289308.Spec : Prop :=
  ∀ n, P9907682933246289308.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P1985423278087694902

`A268395(2*n+3)-A268395(2*n+1)`
-/

namespace A268679.P1985423278087694902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 (2 * n + 3) - A268395 (2 * n + 1)

end

end A268679.P1985423278087694902

namespace A268679

/-- `A268395(2*n+3)-A268395(2*n+1)` -/
def P1985423278087694902.Spec : Prop :=
  ∀ n, P1985423278087694902.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P1344567853333809297

`A277818(A006068(n+1))`
-/

namespace A268679.P1344567853333809297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277818 (A006068 (n + 1)).toNat

end

end A268679.P1344567853333809297

namespace A268679

/-- `A277818(A006068(n+1))` -/
def P1344567853333809297.Spec : Prop :=
  ∀ n, P1344567853333809297.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P2297353899157856580

`A268389(A125592(n+2))`
-/

namespace A268679.P2297353899157856580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (A125592 (n + 2)).toNat

end

end A268679.P2297353899157856580

namespace A268679

/-- `A268389(A125592(n+2))` -/
def P2297353899157856580.Spec : Prop :=
  ∀ n, P2297353899157856580.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P2251171373877215390

`A277818(A268716(n+1)/2)`
-/

namespace A268679.P2251171373877215390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277818 (SequenceMachineLib.roundAway ((A268716 (n + 1) : ℚ) / 2)).toNat

end

end A268679.P2251171373877215390

namespace A268679

/-- `A277818(A268716(n+1)/2)` -/
def P2251171373877215390.Spec : Prop :=
  ∀ n, P2251171373877215390.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P6564248990160800007

`A277822(A003188(A003188(A003188(A234613(n+1)))))`
-/

namespace A268679.P6564248990160800007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A003188 (A003188 (A003188 (A234613 (n + 1)).toNat).toNat).toNat).toNat

end

end A268679.P6564248990160800007

namespace A268679

/-- `A277822(A003188(A003188(A003188(A234613(n+1)))))` -/
def P6564248990160800007.Spec : Prop :=
  ∀ n, P6564248990160800007.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P3989098821304425131

`A001511(A234612(n+1))`
-/

namespace A268679.P3989098821304425131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A234612 (n + 1)).toNat

end

end A268679.P3989098821304425131

namespace A268679

/-- `A001511(A234612(n+1))` -/
def P3989098821304425131.Spec : Prop :=
  ∀ n, P3989098821304425131.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P16588082099092489763

`A136480(A193231(n+1))`
-/

namespace A268679.P16588082099092489763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A193231 (n + 1)).toNat

end

end A268679.P16588082099092489763

namespace A268679

/-- `A136480(A193231(n+1))` -/
def P16588082099092489763.Spec : Prop :=
  ∀ n, P16588082099092489763.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P9634286212475515288

`A277818(A268716(n+1))`
-/

namespace A268679.P9634286212475515288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277818 (A268716 (n + 1)).toNat

end

end A268679.P9634286212475515288

namespace A268679

/-- `A277818(A268716(n+1))` -/
def P9634286212475515288.Spec : Prop :=
  ∀ n, P9634286212475515288.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P5908530472041874976

`A007814(A193231(n+1)+A010060(n+1))`
-/

namespace A268679.P5908530472041874976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A193231 (n + 1) + A010060 (n + 1)).toNat

end

end A268679.P5908530472041874976

namespace A268679

/-- `A007814(A193231(n+1)+A010060(n+1))` -/
def P5908530472041874976.Spec : Prop :=
  ∀ n, P5908530472041874976.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P16207796419213436086

`A067029(A193231(n+1)+A010060(n+1))`
-/

namespace A268679.P16207796419213436086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A193231 (n + 1) + A010060 (n + 1)).toNat

end

end A268679.P16207796419213436086

namespace A268679

/-- `A067029(A193231(n+1)+A010060(n+1))` -/
def P16207796419213436086.Spec : Prop :=
  ∀ n, P16207796419213436086.a n = A268679 (n + 1)

end A268679

/-! ## A268679.P8711784211093077971

`A090996(A245445(n+1))`
-/

namespace A268679.P8711784211093077971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A245445 (n + 1)).toNat

end

end A268679.P8711784211093077971

namespace A268679

/-- `A090996(A245445(n+1))` -/
def P8711784211093077971.Spec : Prop :=
  ∀ n, P8711784211093077971.a n = A268679 (n + 1)

end A268679

/-!
# A268680: Least monotonic left inverse of A268678.

The programs for A268680, the canonical program `A268680.P9245241436458086859` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268680 has offset 0).

The definition of A268680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268680.P9245241436458086859

`∑[char[A268678(1+n)]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A268680

/-- `∑[char[A268678(1+n)]]` -/
def P9245241436458086859.Spec : Prop :=
  ∀ n, (P9245241436458086859.a n : ℤ) = A268680 n

theorem P9245241436458086859.correct : P9245241436458086859.Spec := by
  intro n
  simp only [A268680]

end A268680

/-! ## A268680.P15574688861693859326

`∑[char[A268395(n)]]-1`
-/

namespace A268680.P15574688861693859326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A268680.P15574688861693859326

namespace A268680

/-- `∑[char[A268395(n)]]-1` -/
def P15574688861693859326.Spec : Prop :=
  ∀ n, P15574688861693859326.a n = A268680 n

end A268680

/-! ## A268680.P15390294556456473304

`∑[char[A268678(n)]]-1`
-/

namespace A268680.P15390294556456473304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268678 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A268680.P15390294556456473304

namespace A268680

/-- `∑[char[A268678(n)]]-1` -/
def P15390294556456473304.Spec : Prop :=
  ∀ n, P15390294556456473304.a n = A268680 n

end A268680

/-! ## A268680.P4962202139210638861

`∑[char[A268395(n+3)]]`
-/

namespace A268680.P4962202139210638861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268680.P4962202139210638861

namespace A268680

/-- `∑[char[A268395(n+3)]]` -/
def P4962202139210638861.Spec : Prop :=
  ∀ n, (P4962202139210638861.a n : ℤ) = A268680 n

end A268680

/-! ## A268680.P1843156747197978878

`∑[char[∑[A268679(n+1)]]]`
-/

namespace A268680.P1843156747197978878
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268680.P1843156747197978878

namespace A268680

/-- `∑[char[∑[A268679(n+1)]]]` -/
def P1843156747197978878.Spec : Prop :=
  ∀ n, (P1843156747197978878.a n : ℤ) = A268680 n

end A268680

/-! ## A268680.P3536861079481788331

`∑[char[A268712(2*n+1)]]`
-/

namespace A268680.P3536861079481788331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268712 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268680.P3536861079481788331

namespace A268680

/-- `∑[char[A268712(2*n+1)]]` -/
def P3536861079481788331.Spec : Prop :=
  ∀ n, (P3536861079481788331.a n : ℤ) = A268680 n

end A268680

/-!
# A268681: Sum of unique squarefree numbers in first n rows of Pascal's triangle.

The programs for A268681, there is no canonical definition to state claims against.
-/

/-! ## A268681.P13024414144213542701

`A123229(A341639(n+1))+n/2*floor((n/2)²)`
-/

namespace A268681.P13024414144213542701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123229 (A341639 (n + 1)).toNat : ℚ) + (n : ℚ) / 2 * (⌊((n : ℚ) / 2) ^ 2⌋ : ℚ)

end

end A268681.P13024414144213542701

/-! ## A268681.P8150843294363131318

`A334233(A381358(n+1)+A001764(n))`
-/

namespace A268681.P8150843294363131318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334233 (A381358 (n + 1) + A001764 n).toNat

end

end A268681.P8150843294363131318

/-!
# A268682: Decimal expansion of 1 - 1/sqrt(2).

The programs for A268682, there is no canonical definition to state claims against.
-/

/-! ## A268682.P16169484109624985437

`9-A010503(n)`
-/

namespace A268682.P16169484109624985437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010503 n

end

end A268682.P16169484109624985437

/-! ## A268682.P9451474570940526422

`9-A174968(abs(1-n)+2)`
-/

namespace A268682.P9451474570940526422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A174968 ((|1 - (n : ℤ)| + 2).toNat + 1)

end

end A268682.P9451474570940526422

/-! ## A268682.P13508477155409358425

`A157215(n+1)+A000038(n)`
-/

namespace A268682.P13508477155409358425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157215 (n + 1 + 2) + A000038 n

end

end A268682.P13508477155409358425

/-! ## A268682.P9783574580577425869

`9-(A174968(n+1)+A020761(n))`
-/

namespace A268682.P9783574580577425869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A174968 (n + 1 + 1) + A020761 n)

end

end A268682.P9783574580577425869

/-! ## A268682.P13518038766298445105

`A157215(n+1)+A000122(2*n+1)*A000122(2*n)`
-/

namespace A268682.P13518038766298445105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157215 (n + 1 + 2) + A000122 (2 * n + 1) * A000122 (2 * n)

end

end A268682.P13518038766298445105

/-! ## A268682.P15025323250363763424

`A157215(n+1)+A000122(n²+1)`
-/

namespace A268682.P15025323250363763424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157215 (n + 1 + 2) + A000122 (n ^ 2 + 1)

end

end A268682.P15025323250363763424

/-!
# A268683: Decimal expansion of (sqrt(2) - 1)/2.

The programs for A268683, there is no canonical definition to state claims against.
-/

/-! ## A268683.P8421983098160319513

`A010503(n)-A020761(n)`
-/

namespace A268683.P8421983098160319513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010503 n - A020761 n

end

end A268683.P8421983098160319513

/-! ## A268683.P11960839956796062146

`A010503(8*A000038(n)+n)`
-/

namespace A268683.P11960839956796062146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010503 (8 * A000038 n + (n : ℤ)).toNat

end

end A268683.P11960839956796062146

/-! ## A268683.P253098470982507131

`A010503(n)%(5*A040000(n))`
-/

namespace A268683.P253098470982507131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010503 n) (5 * A040000 n)

end

end A268683.P253098470982507131

/-! ## A268683.P16624502794205279772

`A010503(A000038(n)²²+n)`
-/

namespace A268683.P16624502794205279772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010503 ((A000038 n ^ 2) ^ 2 + (n : ℤ)).toNat

end

end A268683.P16624502794205279772

/-! ## A268683.P17702070295526686504

`A010503(A028310(n))+A000038(n)`
-/

namespace A268683.P17702070295526686504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010503 (A028310 n).toNat + A000038 n

end

end A268683.P17702070295526686504

/-! ## A268683.P5129914563663816812

`and(A171757(n+1)-A006257(n), A010503(n))`
-/

namespace A268683.P5129914563663816812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171757 (n + 1) - A006257 n) (A010503 n)

end

end A268683.P5129914563663816812

/-! ## A268683.P4269960894702876883

`A174968(n+1)`
-/

namespace A268683.P4269960894702876883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174968 (n + 1 + 1)

end

end A268683.P4269960894702876883

/-! ## A268683.P2568388013380126821

`A157214(A016813(n)-A008486(n))`
-/

namespace A268683.P2568388013380126821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157214 ((A016813 n - A008486 n).toNat + 2)

end

end A268683.P2568388013380126821

/-! ## A268683.P8234317972615368777

`A351898(n+1)/A000034(A004275(n+1))`
-/

namespace A268683.P8234317972615368777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351898 (n + 1 + 2) : ℚ) / (A000034 (A004275 (n + 1)).toNat : ℚ)

end

end A268683.P8234317972615368777

/-!
# A268684: a(n) = n*(n + 1)*(4*n - 1)/3.

The programs for A268684, the canonical program `A268684.P10617599458103783090` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268684 has offset 0).

The definition of A268684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(4*n-1)/3` (program `A268684.P15264755391776367419`, by `A268684.P15264755391776367419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268684.P4937660118987318700

`ogf((2x+6x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A268684.P4937660118987318700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 6] [1, -4, 6, -4, 1] n

end

end A268684.P4937660118987318700

namespace A268684

/-- `ogf((2x+6x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P4937660118987318700.Spec : Prop :=
  ∀ n, P4937660118987318700.a n = A268684 n

end A268684

/-! ## A268684.P15264755391776367419

`n*(n+1)*(4*n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268684.P15264755391776367419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((4 * n : ℤ) - 1) : ℚ) / 3

end

end A268684.P15264755391776367419

namespace A268684

/-- `n*(n+1)*(4*n-1)/3` -/
def P15264755391776367419.Spec : Prop :=
  ∀ n, P15264755391776367419.a n = (A268684 n : ℚ)

theorem P15264755391776367419.correct : P15264755391776367419.Spec := by
  intro n
  simp only [A268684, Nat.add_sub_cancel, A268684.P15264755391776367419.a, A268684.P10617599458103783090.f1, A268684.P10617599458103783090.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A268684

/-! ## A268684.P16201080949512177922

`∑[record[lcm(2, n)]*n]`
-/

namespace A268684.P16201080949512177922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268684.P16201080949512177922

namespace A268684

/-- `∑[record[lcm(2, n)]*n]` -/
def P16201080949512177922.Spec : Prop :=
  ∀ n, (P16201080949512177922.a n : ℤ) = A268684 n

end A268684

/-! ## A268684.P790696510906145344

`∑[2*C(2*n, 2)]`
-/

namespace A268684.P790696510906145344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268684.P790696510906145344

namespace A268684

/-- `∑[2*C(2*n, 2)]` -/
def P790696510906145344.Spec : Prop :=
  ∀ n, (P790696510906145344.a n : ℤ) = A268684 n

end A268684

/-! ## A268684.P18431127218732027583

`C(Δ[n²], 3)+n²`
-/

namespace A268684.P18431127218732027583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 + n ^ 2

end

end A268684.P18431127218732027583

namespace A268684

/-- `C(Δ[n²], 3)+n²` -/
def P18431127218732027583.Spec : Prop :=
  ∀ n, (P18431127218732027583.a n : ℤ) = A268684 n

end A268684

/-! ## A268684.P8809326167350790684

`record[C(xor(1, n), 3)]+n²`
-/

namespace A268684.P8809326167350790684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n ^ 2

end

end A268684.P8809326167350790684

namespace A268684

/-- `record[C(xor(1, n), 3)]+n²` -/
def P8809326167350790684.Spec : Prop :=
  ∀ n, (P8809326167350790684.a n : ℤ) = A268684 n

end A268684

/-! ## A268684.P14354963532915799835

`∑[∑[a(n-1)+8]]` with `a(0)=0, a(1)=2`
-/

namespace A268684.P14354963532915799835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268684.P14354963532915799835

namespace A268684

/-- `∑[∑[a(n-1)+8]]` -/
def P14354963532915799835.Spec : Prop :=
  ∀ n, (P14354963532915799835.a n : ℤ) = A268684 n

end A268684

/-! ## A268684.P10811605190604962860

`∑[∑[ogf((2x+6x^2)/(1-2x+x^2))]]`
-/

namespace A268684.P10811605190604962860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 6] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268684.P10811605190604962860

namespace A268684

/-- `∑[∑[ogf((2x+6x^2)/(1-2x+x^2))]]` -/
def P10811605190604962860.Spec : Prop :=
  ∀ n, P10811605190604962860.a n = A268684 n

end A268684

/-! ## A268684.P3358169016760032079

`∑[6-∑[a(n-1)-8]]` with `a(0)=6`
-/

namespace A268684.P3358169016760032079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268684.P3358169016760032079

namespace A268684

/-- `∑[6-∑[a(n-1)-8]]` -/
def P3358169016760032079.Spec : Prop :=
  ∀ n, P3358169016760032079.a n = A268684 n

end A268684

/-! ## A268684.P10617599458103783090

`Δ[2*(n-1)*C(n+1, 3)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A268684

/-- `Δ[2*(n-1)*C(n+1, 3)]` -/
def P10617599458103783090.Spec : Prop :=
  ∀ n, P10617599458103783090.a n = A268684 n

theorem P10617599458103783090.correct : P10617599458103783090.Spec := by
  intro n
  simp only [A268684]

end A268684

/-! ## A268684.P618455836682414876

`-∑[2*n*or(1, -(2*n))]`
-/

namespace A268684.P618455836682414876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268684.P618455836682414876

namespace A268684

/-- `-∑[2*n*or(1, -(2*n))]` -/
def P618455836682414876.Spec : Prop :=
  ∀ n, P618455836682414876.a n = A268684 n

end A268684

/-! ## A268684.P14503183113663289871

`-∑[2*n*xor(1, -(2*n))]`
-/

namespace A268684.P14503183113663289871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * Int.xor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268684.P14503183113663289871

namespace A268684

/-- `-∑[2*n*xor(1, -(2*n))]` -/
def P14503183113663289871.Spec : Prop :=
  ∀ n, P14503183113663289871.a n = A268684 n

end A268684

/-! ## A268684.P7374719509449650455

`a(n-1)+2*C(2*n, 2)` with `a(0)=0`
-/

namespace A268684.P7374719509449650455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * Nat.choose (2 * n) 2

end

end A268684.P7374719509449650455

namespace A268684

/-- `a(n-1)+2*C(2*n, 2)` -/
def P7374719509449650455.Spec : Prop :=
  ∀ n, (P7374719509449650455.a n : ℤ) = A268684 n

end A268684

/-! ## A268684.P1807713432620334447

`a(n-1)+n*(4*n-2)` with `a(0)=0`
-/

namespace A268684.P1807713432620334447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((4 * n : ℤ) - 2)

end

end A268684.P1807713432620334447

namespace A268684

/-- `a(n-1)+n*(4*n-2)` -/
def P1807713432620334447.Spec : Prop :=
  ∀ n, P1807713432620334447.a n = A268684 n

end A268684

/-! ## A268684.P13884168493705909297

`(2*n)²-(2*n-a(n-1))` with `a(0)=0`
-/

namespace A268684.P13884168493705909297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 2 : ℤ) - ((2 * n : ℤ) - a (n - 1))

end

end A268684.P13884168493705909297

namespace A268684

/-- `(2*n)²-(2*n-a(n-1))` -/
def P13884168493705909297.Spec : Prop :=
  ∀ n, P13884168493705909297.a n = A268684 n

end A268684

/-! ## A268684.P7664548995384474349

`floor(a(n-1)-n*(2-4*n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A268684.P7664548995384474349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℤ) * (2 - (4 * n : ℤ))

end

end A268684.P7664548995384474349

namespace A268684

/-- `floor(a(n-1)-n*(2-4*n))` -/
def P7664548995384474349.Spec : Prop :=
  ∀ n, P7664548995384474349.a n = A268684 n

end A268684

/-! ## A268684.P6370520467441191778

`C(2*n+1, 3)+(n+1)²-(2*n+1)`
-/

namespace A268684.P6370520467441191778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 3 + (n + 1) ^ 2 : ℤ) - (2 * n + 1 : ℤ)

end

end A268684.P6370520467441191778

namespace A268684

/-- `C(2*n+1, 3)+(n+1)²-(2*n+1)` -/
def P6370520467441191778.Spec : Prop :=
  ∀ n, P6370520467441191778.a n = A268684 n

theorem P6370520467441191778.correct : P6370520467441191778.Spec := by
  intro n
  simp only [A268684, Nat.add_sub_cancel, A268684.P6370520467441191778.a, A268684.P10617599458103783090.f1, A268684.P10617599458103783090.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A268684

/-! ## A268684.P4405502988815454841

`∑[A002939(n)]`
-/

namespace A268684.P4405502988815454841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268684.P4405502988815454841

namespace A268684

/-- `∑[A002939(n)]` -/
def P4405502988815454841.Spec : Prop :=
  ∀ n, P4405502988815454841.a n = A268684 n

end A268684

/-! ## A268684.P8126813295753347737

`2*A002412(n)`
-/

namespace A268684.P8126813295753347737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002412 n

end

end A268684.P8126813295753347737

namespace A268684

/-- `2*A002412(n)` -/
def P8126813295753347737.Spec : Prop :=
  ∀ n, P8126813295753347737.a n = A268684 n

end A268684

/-! ## A268684.P8044385273714647767

`∑[2*A000384(n)]`
-/

namespace A268684.P8044385273714647767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268684.P8044385273714647767

namespace A268684

/-- `∑[2*A000384(n)]` -/
def P8044385273714647767.Spec : Prop :=
  ∀ n, P8044385273714647767.a n = A268684 n

end A268684

/-!
# A268685: a(n) = 3*(n + 1)*(n + 2)*(3*n + 1)*(3*n + 4)/4.

The programs for A268685, the canonical program `A268685.P14806135638319347568` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268685 has offset 0).

The definition of A268685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268685.P14806135638319347568

`ogf((6+96x+60x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A268685

/-- `ogf((6+96x+60x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14806135638319347568.Spec : Prop :=
  ∀ n, P14806135638319347568.a n = A268685 n

theorem P14806135638319347568.correct : P14806135638319347568.Spec := by
  intro n
  simp only [A268685]

end A268685

/-! ## A268685.P17843709767537081906

`3*(n+1)*(n+2)*(3*n+1)*(3*n+4)/4`
-/

namespace A268685.P17843709767537081906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) * (n + 2) * (3 * n + 1) : ℚ) * ((3 * n + 4 : ℚ) / 4)

end

end A268685.P17843709767537081906

namespace A268685

/-- `3*(n+1)*(n+2)*(3*n+1)*(3*n+4)/4` -/
def P17843709767537081906.Spec : Prop :=
  ∀ n, P17843709767537081906.a n = (A268685 n : ℚ)

end A268685

/-! ## A268685.P12101734936592983873

`∑[A054776(n+1)]`
-/

namespace A268685.P12101734936592983873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268685.P12101734936592983873

namespace A268685

/-- `∑[A054776(n+1)]` -/
def P12101734936592983873.Spec : Prop :=
  ∀ n, P12101734936592983873.a n = A268685 n

end A268685

/-! ## A268685.P15596617516148689165

`∑[6*C(A016777(n)+2, 3)]`
-/

namespace A268685.P15596617516148689165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (A016777 n + 2).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268685.P15596617516148689165

namespace A268685

/-- `∑[6*C(A016777(n)+2, 3)]` -/
def P15596617516148689165.Spec : Prop :=
  ∀ n, (P15596617516148689165.a n : ℤ) = A268685 n

end A268685

/-! ## A268685.P8908523708461566098

`∑[A000217(3*n+2)*(6*n+2)]`
-/

namespace A268685.P8908523708461566098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 2) * (6 * n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268685.P8908523708461566098

namespace A268685

/-- `∑[A000217(3*n+2)*(6*n+2)]` -/
def P8908523708461566098.Spec : Prop :=
  ∀ n, P8908523708461566098.a n = A268685 n

end A268685

/-! ## A268685.P2954502773010745558

`∑[A016791(n)-A016789(n)]`
-/

namespace A268685.P2954502773010745558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268685.P2954502773010745558

namespace A268685

/-- `∑[A016791(n)-A016789(n)]` -/
def P2954502773010745558.Spec : Prop :=
  ∀ n, P2954502773010745558.a n = A268685 n

end A268685

/-! ## A268685.P11984462907125458862

`∑[(A016969(n)+1)*A000217(A016777(n))]`
-/

namespace A268685.P11984462907125458862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n + 1) * A000217 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268685.P11984462907125458862

namespace A268685

/-- `∑[(A016969(n)+1)*A000217(A016777(n))]` -/
def P11984462907125458862.Spec : Prop :=
  ∀ n, P11984462907125458862.a n = A268685 n

end A268685

/-! ## A268685.P9465103067751047108

`A045943(n+1)+A045943(n+1)*A081271(n)`
-/

namespace A268685.P9465103067751047108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (n + 1) + A045943 (n + 1) * A081271 n

end

end A268685.P9465103067751047108

namespace A268685

/-- `A045943(n+1)+A045943(n+1)*A081271(n)` -/
def P9465103067751047108.Spec : Prop :=
  ∀ n, P9465103067751047108.a n = A268685 n

end A268685

/-! ## A268685.P12099657974016383164

`A005449(n+1)*A283394(n)-A005449(n+1)`
-/

namespace A268685.P12099657974016383164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1) * A283394 n - A005449 (n + 1)

end

end A268685.P12099657974016383164

namespace A268685

/-- `A005449(n+1)*A283394(n)-A005449(n+1)` -/
def P12099657974016383164.Spec : Prop :=
  ∀ n, P12099657974016383164.a n = A268685 n

end A268685

/-! ## A268685.P14645831365286489701

`A045943(n+1)*A062741(n+1)-A045943(n+1)`
-/

namespace A268685.P14645831365286489701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (n + 1) * A062741 (n + 1) - A045943 (n + 1)

end

end A268685.P14645831365286489701

namespace A268685

/-- `A045943(n+1)*A062741(n+1)-A045943(n+1)` -/
def P14645831365286489701.Spec : Prop :=
  ∀ n, P14645831365286489701.a n = A268685 n

end A268685

/-! ## A268685.P6990955657030632014

`A005449(n+1)*A081266(n+1)-A081266(n+1)`
-/

namespace A268685.P6990955657030632014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1) * A081266 (n + 1) - A081266 (n + 1)

end

end A268685.P6990955657030632014

namespace A268685

/-- `A005449(n+1)*A081266(n+1)-A081266(n+1)` -/
def P6990955657030632014.Spec : Prop :=
  ∀ n, P6990955657030632014.a n = A268685 n

end A268685

/-! ## A268685.P13242988635781524359

`∑[6*A000292(3*n+1)]`
-/

namespace A268685.P13242988635781524359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000292 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268685.P13242988635781524359

namespace A268685

/-- `∑[6*A000292(3*n+1)]` -/
def P13242988635781524359.Spec : Prop :=
  ∀ n, P13242988635781524359.a n = A268685 n

end A268685

/-! ## A268685.P4812659755425084413

`A319014(3*(n+1))`
-/

namespace A268685.P4812659755425084413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319014 (3 * (n + 1))

end

end A268685.P4812659755425084413

namespace A268685

/-- `A319014(3*(n+1))` -/
def P4812659755425084413.Spec : Prop :=
  ∀ n, P4812659755425084413.a n = A268685 n

end A268685

/-! ## A268685.P15877681295442205671

`A319867(3*(n+1))`
-/

namespace A268685.P15877681295442205671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319867 (3 * (n + 1))

end

end A268685.P15877681295442205671

namespace A268685

/-- `A319867(3*(n+1))` -/
def P15877681295442205671.Spec : Prop :=
  ∀ n, P15877681295442205671.a n = A268685 n

end A268685

/-! ## A268685.P15065152879876824629

`∑[A007531(3*(n+1))]`
-/

namespace A268685.P15065152879876824629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268685.P15065152879876824629

namespace A268685

/-- `∑[A007531(3*(n+1))]` -/
def P15065152879876824629.Spec : Prop :=
  ∀ n, P15065152879876824629.a n = A268685 n

end A268685

/-! ## A268685.P10261363714903968404

`∑[(3*n+1)*A002378(3*n+2)]`
-/

namespace A268685.P10261363714903968404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A002378 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268685.P10261363714903968404

namespace A268685

/-- `∑[(3*n+1)*A002378(3*n+2)]` -/
def P10261363714903968404.Spec : Prop :=
  ∀ n, P10261363714903968404.a n = A268685 n

end A268685

/-!
# A268686: Number of primes that are of form (prime(k)+prime(n))/2 for k=1..n-1, offset=2.

The programs for A268686, there is no canonical definition to state claims against.
-/

/-! ## A268686.P14694960970225689657

`Δ[A125505(1+n)]`
-/

namespace A268686.P14694960970225689657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268686.P14694960970225689657

/-! ## A268686.P12630423485923108215

`abs(Δ[A125505(n-log2(1/2))])`
-/

namespace A268686.P12630423485923108215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A268686.P12630423485923108215

/-! ## A268686.P3774766725253307126

`A125505(n+2)-A125505(n+1)`
-/

namespace A268686.P3774766725253307126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (n + 2) - A125505 (n + 1)

end

end A268686.P3774766725253307126

/-! ## A268686.P609612171675661666

`A002998(Δ[A125505(n-log2(1/2))])`
-/

namespace A268686.P609612171675661666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (f1 (n + 1) - f1 n).toNat

end

end A268686.P609612171675661666

/-! ## A268686.P32703759633369757

`Δ[A125505(n-log2(1/2))*A178334(n)]`
-/

namespace A268686.P32703759633369757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268686.P32703759633369757

/-! ## A268686.P1921981974922698772

`Δ[A125505(n-log2(1/2))%A000032(n)]`
-/

namespace A268686.P1921981974922698772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125505 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268686.P1921981974922698772

/-!
# A268687: a(n) = MAX(g_k(n)) where g_k(n) is the function defined in A266202.

The programs for A268687, there is no canonical definition to state claims against.
-/

/-! ## A268687.P16014611862293163500

`ceil(A266203(n)/2)`
-/

namespace A268687.P16014611862293163500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A266203 n : ℚ) / 2⌉

end

end A268687.P16014611862293163500

/-! ## A268687.P213655544321026920

`floor(sinh(log(A056041(n))))`
-/

namespace A268687.P213655544321026920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A056041 n : ℝ))⌋

end

end A268687.P213655544321026920

/-! ## A268687.P2811443690718494069

`ceil(A268688(n)+n/8)`
-/

namespace A268687.P2811443690718494069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268688 n : ℚ) + (n : ℚ) / 8⌉

end

end A268687.P2811443690718494069

/-! ## A268687.P5047396453703348724

`A180516(ceil(sqrt(∑[2^n])))`
-/

namespace A268687.P5047396453703348724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180516 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A268687.P5047396453703348724

/-!
# A268688: a(n) = (A266203(n)-1)/2 if n>0, and a(0) = 0.

The programs for A268688, there is no canonical definition to state claims against.
-/

/-! ## A268688.P16481943063799629519

`floor(A266203(n)/2)`
-/

namespace A268688.P16481943063799629519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266203 n : ℚ) / 2⌋

end

end A268688.P16481943063799629519

/-! ## A268688.P8062656905751187309

`row(C(A268687(n), 2))`
-/

namespace A268688.P8062656905751187309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose (A268687 n).toNat 2)

end

end A268688.P8062656905751187309

/-! ## A268688.P11761746245632100176

`floor(A056041(n)/2)-1`
-/

namespace A268688.P11761746245632100176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056041 n : ℚ) / 2⌋ - 1

end

end A268688.P11761746245632100176

/-! ## A268688.P11324482284215907472

`A268687(round(sqrt(n²+1)))-1`
-/

namespace A268688.P11324482284215907472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268687 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

end

end A268688.P11324482284215907472

/-!
# A268689: Let f(n) = maximal value of the weak Goodstein function g_k(n) for k >= 0; then a(n) = minimal value of k such that g_k(n) = f(n).

The programs for A268689, there is no canonical definition to state claims against.
-/

/-! ## A268689.P16630062359557303586

`2*floor(A056041(n)/8)`
-/

namespace A268689.P16630062359557303586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A056041 n : ℚ) / 8⌋

end

end A268689.P16630062359557303586

/-! ## A268689.P9923550982630808676

`2*floor(A266203(n)/8)`
-/

namespace A268689.P9923550982630808676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A266203 n : ℚ) / 8⌋

end

end A268689.P9923550982630808676

/-! ## A268689.P9219012637525241116

`A004524(A268688(n))`
-/

namespace A268689.P9219012637525241116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A268688 n).toNat

end

end A268689.P9219012637525241116

/-! ## A268689.P17776072569140031222

`A122461(A268687(n))`
-/

namespace A268689.P17776072569140031222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122461 (A268687 n).toNat

end

end A268689.P17776072569140031222

/-!
# A268691: Number of n-digit binary strings such that for all 2 <= k <= n, the string formed by the first k digits of the original string is composed of at least one-quarter 1's and one-quarter 0's.

The programs for A268691, there is no canonical definition to state claims against.
-/

/-! ## A268691.P10676548695243026742

`A131883(A305380(n))`
-/

namespace A268691.P10676548695243026742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A305380 n).toNat

end

end A268691.P10676548695243026742

/-! ## A268691.P4629094084353154158

`A096036(A025227(n+1))`
-/

namespace A268691.P4629094084353154158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096036 (A025227 (n + 1)).toNat

end

end A268691.P4629094084353154158

/-! ## A268691.P12035673238480872346

`A102456(A032555(n+1))`
-/

namespace A268691.P12035673238480872346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102456 (A032555 (n + 1)).toNat

end

end A268691.P12035673238480872346

/-! ## A268691.P4639124029967777657

`A102456(A032557(n+1))`
-/

namespace A268691.P4639124029967777657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102456 (A032557 (n + 1)).toNat

end

end A268691.P4639124029967777657

/-! ## A268691.P1825750402030863647

`A102456(A032559(n+1))`
-/

namespace A268691.P1825750402030863647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102456 (A032559 (n + 1)).toNat

end

end A268691.P1825750402030863647

/-!
# A268693: Odd numbers that are not of the form p + 2^a + 2^b with b > a > 0, and p prime.

The programs for A268693, there is no canonical definition to state claims against.
-/

/-! ## A268693.P9073374183883143388

`record[gcd(∑[2^n], record[xor(7, n)])]`
-/

namespace A268693.P9073374183883143388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f2 j) (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268693.P9073374183883143388

/-!
# A268694: Terms of A268693 that are not divisible by 255.

The programs for A268694, there is no canonical definition to state claims against.
-/

/-! ## A268694.P362231679374435778

`∩[A033073(n+1), A268693(n+1)]`
-/

namespace A268694.P362231679374435778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268694.P362231679374435778

/-!
# A268695: Odd numbers n that are neither of the form p + 2^a + 2^b nor of the form p - 2^a - 2^b with 2^a + 2^b < n, b > a > 0, and p prime.

The programs for A268695, there is no canonical definition to state claims against.
-/

/-! ## A268695.P406025478678043684

`record[gcd(A156695(n+1), A266610(n))]`
-/

namespace A268695.P406025478678043684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156695 (n + 1)) (A266610 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268695.P406025478678043684

/-! ## A268695.P3558025091745659594

`∩[A268693(n+1), A268713(n)+1]`
-/

namespace A268695.P3558025091745659594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268713 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268695.P3558025091745659594

/-!
# A268696: a(1)=1; thereafter a(n+1) = floor(m/2), where m = number of occurrences of a(n) in [a(1),...,a(n)].

The programs for A268696, there is no canonical definition to state claims against.
-/

/-! ## A268696.P1173856535849602488

`A089053(A047425(n+1)+A022846(3*n+1))`
-/

namespace A268696.P1173856535849602488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089053 (A047425 (n + 1) + A022846 (3 * n + 1)).toNat

end

end A268696.P1173856535849602488

/-! ## A268696.P7348011998342898565

`A139351(A050166(n+3)*A258615(n+8))`
-/

namespace A268696.P7348011998342898565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A050166 (n + 3) * A258615 (n + 8)).toNat

end

end A268696.P7348011998342898565

/-! ## A268696.P2105144520352023831

`A196563(xor(A130540(n+1), A164158(n)))`
-/

namespace A268696.P2105144520352023831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (Int.xor (A130540 (n + 1)) (A164158 n)).toNat

end

end A268696.P2105144520352023831

/-! ## A268696.P18077636780349090605

`val(A140106(A385515(n+1)+A329341(n+1))+1, 2)`
-/

namespace A268696.P18077636780349090605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140106 (A385515 (n + 1) + A329341 (n + 1)).toNat + 1).toNat 2

end

end A268696.P18077636780349090605

/-! ## A268696.P15660917564753086236

`A320655(A018015(n)/A054123(n))`
-/

namespace A268696.P15660917564753086236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (SequenceMachineLib.roundAway ((A018015 n : ℚ) / (A054123 n : ℚ))).toNat

end

end A268696.P15660917564753086236

/-!
# A268697: Squarefree numbers n such that n^2 + 1 and n^2 - 1 are semiprime.

The programs for A268697, there is no canonical definition to state claims against.
-/

/-! ## A268697.P17572845207213029007

`∩[A070195(n+1), A108278(n+1)]`
-/

namespace A268697.P17572845207213029007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268697.P17572845207213029007

/-! ## A268697.P12039588194554508645

`∩[A070195(n+1), A401147(n+1)]`
-/

namespace A268697.P12039588194554508645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268697.P12039588194554508645

/-! ## A268697.P11313464784249168286

`∩[A063015(n+1), A108278(n+1)]`
-/

namespace A268697.P11313464784249168286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268697.P11313464784249168286

/-! ## A268697.P12763987818553279000

`∩[A077067(n+1), A108278(n+1)]`
-/

namespace A268697.P12763987818553279000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268697.P12763987818553279000

/-! ## A268697.P624714709089163577

`∩[A063452(n+1), A108278(n+1)]`
-/

namespace A268697.P624714709089163577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268697.P624714709089163577

/-! ## A268697.P2448696077456545955

`∩[A077064(n+1), A108278(n+1)]`
-/

namespace A268697.P2448696077456545955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268697.P2448696077456545955

/-! ## A268697.P12026106324849402431

`∩[A069062(n+1), A070195(n+1)]`
-/

namespace A268697.P12026106324849402431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268697.P12026106324849402431

/-! ## A268697.P7885691447573333637

`∩[A087248(n+1), A108278(n+1)]`
-/

namespace A268697.P7885691447573333637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268697.P7885691447573333637

/-! ## A268697.P17011499601647229592

`∩[A108278(n+1), A389463(n+1)]`
-/

namespace A268697.P17011499601647229592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268697.P17011499601647229592

/-! ## A268697.P6836332663305922926

`record[A007913(A108278(n+2))]`
-/

namespace A268697.P6836332663305922926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A108278 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268697.P6836332663305922926

/-!
# A268698: Total number of sequences with p_j copies of j and longest increasing subsequence of length k summed over all partitions [p_1, p_2, ..., p_k] of n.

The programs for A268698, there is no canonical definition to state claims against.
-/

/-! ## A268698.P10066923488569161075

`A065825(A364593(n))`
-/

namespace A268698.P10066923488569161075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A364593 n).toNat

end

end A268698.P10066923488569161075

/-! ## A268698.P586834751703786609

`A115630(A364330(n))`
-/

namespace A268698.P586834751703786609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115630 (A364330 n).toNat

end

end A268698.P586834751703786609

/-! ## A268698.P9203917480923615409

`A065825(A210345(n+1))`
-/

namespace A268698.P9203917480923615409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A210345 (n + 1)).toNat

end

end A268698.P9203917480923615409

/-!
# A268699: Total number of sequences with c_j copies of j and longest increasing subsequence of length k summed over all compositions [c_1, c_2, ..., c_k] of n.

The programs for A268699, there is no canonical definition to state claims against.
-/

/-! ## A268699.P5596972308868174942

`∏{p}[A253948(n+2)², #]`
-/

namespace A268699.P5596972308868174942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253948 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A268699.P5596972308868174942

/-! ## A268699.P4954041381773702126

`A226190(A013044(n))`
-/

namespace A268699.P4954041381773702126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A013044 n).toNat

end

end A268699.P4954041381773702126

/-! ## A268699.P12153875350779103563

`A008621(∑[A124541(n)])`
-/

namespace A268699.P12153875350779103563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268699.P12153875350779103563

