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
import Seq.B000.C031
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A181900: a(n) = n * A022998(n).

The programs for A181900, the canonical program `A181900.P12304309937606305492` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181900 has offset 0).

The definition of A181900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181900.P16153872492282152182

`n²*(1+(n+1)%2)`
-/

namespace A181900.P16153872492282152182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (1 + (n + 1) % 2)

end

end A181900.P16153872492282152182

namespace A181900

/-- `n²*(1+(n+1)%2)` -/
def P16153872492282152182.Spec : Prop :=
  ∀ n, (P16153872492282152182.a n : ℤ) = A181900 n

end A181900

/-! ## A181900.P3302459422192295646

`n²*(3+(-1)^n)/2`
-/

namespace A181900.P3302459422192295646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * (3 + (-1) ^ n) : ℚ) / 2

end

end A181900.P3302459422192295646

namespace A181900

/-- `n²*(3+(-1)^n)/2` -/
def P3302459422192295646.Spec : Prop :=
  ∀ n, P3302459422192295646.a n = (A181900 n : ℚ)

end A181900

/-! ## A181900.P8179674802536147828

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=9, a(4)=32, a(5)=25`
-/

namespace A181900.P8179674802536147828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8, 9, 32, 25] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A181900.P8179674802536147828

namespace A181900

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P8179674802536147828.Spec : Prop :=
  ∀ n, P8179674802536147828.a n = A181900 n

end A181900

/-! ## A181900.P12304309937606305492

`n*A022998(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181900

/-- `n*A022998(n)` -/
def P12304309937606305492.Spec : Prop :=
  ∀ n, P12304309937606305492.a n = A181900 n

theorem P12304309937606305492.correct : P12304309937606305492.Spec := by
  intro n
  simp only [A181900]

end A181900

/-! ## A181900.P5430790550560039454

`gcd(2*n², n^3)`
-/

namespace A181900.P5430790550560039454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n ^ 2) (n ^ 3)

end

end A181900.P5430790550560039454

namespace A181900

/-- `gcd(2*n², n^3)` -/
def P5430790550560039454.Spec : Prop :=
  ∀ n, (P5430790550560039454.a n : ℤ) = A181900 n

end A181900

/-! ## A181900.P8131425114345494052

`-(n²*or(n, -2))`
-/

namespace A181900.P8131425114345494052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℤ) * Int.lor (n : ℤ) (-2))

end

end A181900.P8131425114345494052

namespace A181900

/-- `-(n²*or(n, -2))` -/
def P8131425114345494052.Spec : Prop :=
  ∀ n, P8131425114345494052.a n = A181900 n

end A181900

/-! ## A181900.P661734532853445704

`lcm(n², and(1, n+1))+n²`
-/

namespace A181900.P661734532853445704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n ^ 2) (Nat.land 1 (n + 1)) + n ^ 2

end

end A181900.P661734532853445704

namespace A181900

/-- `lcm(n², and(1, n+1))+n²` -/
def P661734532853445704.Spec : Prop :=
  ∀ n, (P661734532853445704.a n : ℤ) = A181900 n

end A181900

/-! ## A181900.P11109834479122123823

`n*A257088(n)`
-/

namespace A181900.P11109834479122123823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257088 n

end

end A181900.P11109834479122123823

namespace A181900

/-- `n*A257088(n)` -/
def P11109834479122123823.Spec : Prop :=
  ∀ n, P11109834479122123823.a n = A181900 n

end A181900

/-! ## A181900.P14837163701693713165

`abs(n*A280166(n))`
-/

namespace A181900.P14837163701693713165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A280166 n|

end

end A181900.P14837163701693713165

namespace A181900

/-- `abs(n*A280166(n))` -/
def P14837163701693713165.Spec : Prop :=
  ∀ n, P14837163701693713165.a n = A181900 n

end A181900

/-! ## A181900.P7701284849481665760

`abs(n²*A228826(n))`
-/

namespace A181900.P7701284849481665760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A228826 n|

end

end A181900.P7701284849481665760

namespace A181900

/-- `abs(n²*A228826(n))` -/
def P7701284849481665760.Spec : Prop :=
  ∀ n, P7701284849481665760.a n = A181900 n

end A181900

/-! ## A181900.P10375852657418566020

`A213502(n)%A058331(n)`
-/

namespace A181900.P10375852657418566020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213502 n) (A058331 n)

end

end A181900.P10375852657418566020

namespace A181900

/-- `A213502(n)%A058331(n)` -/
def P10375852657418566020.Spec : Prop :=
  ∀ n, P10375852657418566020.a n = A181900 n

end A181900

/-! ## A181900.P13822373065545838946

`A092181(n)%A144916(n+1)`
-/

namespace A181900.P13822373065545838946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092181 n) (A144916 (n + 1))

end

end A181900.P13822373065545838946

namespace A181900

/-- `A092181(n)%A144916(n+1)` -/
def P13822373065545838946.Spec : Prop :=
  ∀ n, P13822373065545838946.a n = A181900 n

end A181900

/-! ## A181900.P8237330619372749946

`Δ[Δ[A141310(n)]²*A004526(n)]`
-/

namespace A181900.P8237330619372749946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 * A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181900.P8237330619372749946

namespace A181900

/-- `Δ[Δ[A141310(n)]²*A004526(n)]` -/
def P8237330619372749946.Spec : Prop :=
  ∀ n, P8237330619372749946.a n = A181900 n

end A181900

/-!
# A181901: a(n) = least positive integer m such that 2(s_k)^2 for k=1,...,n are pairwise distinct modulo m where s_k = Sum_{j=1..k} (-1)^(k-j)*p_j and p_j is the j-th prime.

The programs for A181901, there is no canonical definition to state claims against.
-/

/-! ## A181901.P11405892920349026256

`A373565(n)*A387959(n+1)`
-/

namespace A181901.P11405892920349026256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n * A387959 (n + 1)

end

end A181901.P11405892920349026256

/-! ## A181901.P9674659527387844609

`A022998(A387959(n+1))`
-/

namespace A181901.P9674659527387844609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A387959 (n + 1)).toNat

end

end A181901.P9674659527387844609

/-! ## A181901.P6386783325389602524

`lt[A353860(n), A098847(A025429(n+4))]`
-/

namespace A181901.P6386783325389602524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098847 (A025429 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181901.P6386783325389602524

/-! ## A181901.P13793680839574099645

`record[A085790(n+1)%A126759(A056798(n+1))]`
-/

namespace A181901.P13793680839574099645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085790 (n + 1)) (A126759 (A056798 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181901.P13793680839574099645

/-! ## A181901.P8654788332305604957

`eq[A240302(A326842(n)), A263577(n)]`
-/

namespace A181901.P8654788332305604957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240302 (A326842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181901.P8654788332305604957

/-!
# A181902: Numbers k such that the k-th triangular number is prime or the arithmetic mean of 2 successive primes.

The programs for A181902, there is no canonical definition to state claims against.
-/

/-! ## A181902.P8342572480541226061

`round(sqrt(A298077(n%a(n-1))))` with `a(0)=2`
-/

namespace A181902.P8342572480541226061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (A298077 (Int.tmod (n : ℤ) (a (n - 1))).toNat : ℝ))

end

end A181902.P8342572480541226061

/-! ## A181902.P11135957301198224326

`floor(sqrt(A298077((n-1)%a(n-1)+1)))` with `a(0)=2`
-/

namespace A181902.P11135957301198224326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.sqrt (A298077 (Int.tmod ((n : ℤ) - 1) (a (n - 1)) + 1).toNat)

end

end A181902.P11135957301198224326

/-! ## A181902.P12895390869725564878

`record[A175892(A078444(n+1))]`
-/

namespace A181902.P12895390869725564878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175892 (A078444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181902.P12895390869725564878

/-! ## A181902.P8047753813253680732

`record[A050873(A078444(n+1)+1)]`
-/

namespace A181902.P8047753813253680732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A078444 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181902.P8047753813253680732

/-! ## A181902.P8559209976675168750

`record[gcd(n+2, A347136(A065384(n+2)))]`
-/

namespace A181902.P8559209976675168750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A347136 (A065384 (n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181902.P8559209976675168750

/-!
# A181903: a(n)=(A210686(n)-1)/30.

The programs for A181903, there is no canonical definition to state claims against.
-/

/-! ## A181903.P14889508688791992281

`(A210686(n+1)-1)/30`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181903.P14889508688791992281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210686 (n + 1) - 1 : ℚ) / 30

end

end A181903.P14889508688791992281

/-! ## A181903.P3304909553751882004

`A263311(n+1)/5`
-/

namespace A181903.P3304909553751882004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263311 (n + 1) : ℚ) / 5

end

end A181903.P3304909553751882004

/-! ## A181903.P3467577093472218022

`floor(A210686(n+1)/30)`
-/

namespace A181903.P3467577093472218022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210686 (n + 1) : ℚ) / 30⌋

end

end A181903.P3467577093472218022

/-! ## A181903.P5112816454517367137

`floor(A263311(comp[49*n])/5)`
-/

namespace A181903.P5112816454517367137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263311 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 5⌋

end

end A181903.P5112816454517367137

/-! ## A181903.P5932191325679030640

`round(A210686(Δ[n²]-n)/6)/5`
-/

namespace A181903.P5932191325679030640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A210686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 6) : ℚ) / 5

end

end A181903.P5932191325679030640

/-!
# A181904: a(n) = 2*(4^n - 1) / A027760(n).

The programs for A181904, the canonical program `A181904.P11788640710285973566` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181904 has offset 1).

The definition of A181904 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027760, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181904.P11788640710285973566

`2*(4^(n+1)-1)/A027760(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A181904

/-- `2*(4^(n+1)-1)/A027760(n+1)` -/
def P11788640710285973566.Spec : Prop :=
  ∀ n, P11788640710285973566.a n = (A181904 (n + 1) : ℚ)

end A181904

/-! ## A181904.P16363835435520385066

`(A000302(n+1)-1)/A141459(n+1)`
-/

namespace A181904.P16363835435520385066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 (n + 1) - 1 : ℚ) / (A141459 (n + 1) : ℚ)

end

end A181904.P16363835435520385066

namespace A181904

/-- `(A000302(n+1)-1)/A141459(n+1)` -/
def P16363835435520385066.Spec : Prop :=
  ∀ n, P16363835435520385066.a n = (A181904 (n + 1) : ℚ)

end A181904

/-! ## A181904.P8892491535042505181

`A000225(A005843(n+1))/A141459(n+1)`
-/

namespace A181904.P8892491535042505181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A005843 (n + 1)).toNat : ℚ) / (A141459 (n + 1) : ℚ)

end

end A181904.P8892491535042505181

namespace A181904

/-- `A000225(A005843(n+1))/A141459(n+1)` -/
def P8892491535042505181.Spec : Prop :=
  ∀ n, P8892491535042505181.a n = (A181904 (n + 1) : ℚ)

end A181904

/-! ## A181904.P14741961663709044442

`∑[A002023(n)]/A141056(n+1)`
-/

namespace A181904.P14741961663709044442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002023 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A141056 (n + 1) : ℚ)

end

end A181904.P14741961663709044442

namespace A181904

/-- `∑[A002023(n)]/A141056(n+1)` -/
def P14741961663709044442.Spec : Prop :=
  ∀ n, P14741961663709044442.a n = (A181904 (n + 1) : ℚ)

end A181904

/-!
# A181905: Expansion of (b(q^3)^3 - b(q)^3) / 9 in powers of q where b() is a cubic AGM theta function.

The programs for A181905, the canonical program `A181905.P12782552284517024142` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181905 has offset 1).

The definition of A181905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181905.P10426132856424165091

`A049347(n)*A106402(n+1)`
-/

namespace A181905.P10426132856424165091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A106402 (n + 1)

end

end A181905.P10426132856424165091

namespace A181905

/-- `A049347(n)*A106402(n+1)` -/
def P10426132856424165091.Spec : Prop :=
  ∀ n, P10426132856424165091.a n = A181905 (n + 1)

end A181905

/-! ## A181905.P1124829761478255214

`abs(A010892(n))*A103440(n+1)`
-/

namespace A181905.P1124829761478255214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010892 n| * A103440 (n + 1)

end

end A181905.P1124829761478255214

namespace A181905

/-- `abs(A010892(n))*A103440(n+1)` -/
def P1124829761478255214.Spec : Prop :=
  ∀ n, P1124829761478255214.a n = A181905 (n + 1)

end A181905

/-! ## A181905.P5040192002900275466

`A049347(n)²*A103440(n+1)`
-/

namespace A181905.P5040192002900275466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n ^ 2 * A103440 (n + 1)

end

end A181905.P5040192002900275466

namespace A181905

/-- `A049347(n)²*A103440(n+1)` -/
def P5040192002900275466.Spec : Prop :=
  ∀ n, P5040192002900275466.a n = A181905 (n + 1)

end A181905

/-! ## A181905.P14085284785834124298

`char[A032766(n)]*A103440(n+1)`
-/

namespace A181905.P14085284785834124298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A103440 (n + 1)

end

end A181905.P14085284785834124298

namespace A181905

/-- `char[A032766(n)]*A103440(n+1)` -/
def P14085284785834124298.Spec : Prop :=
  ∀ n, P14085284785834124298.a n = A181905 (n + 1)

end A181905

/-! ## A181905.P5902002721767183674

`(1-A022003(n))*A103440(n+1)`
-/

namespace A181905.P5902002721767183674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A022003 n) * A103440 (n + 1)

end

end A181905.P5902002721767183674

namespace A181905

/-- `(1-A022003(n))*A103440(n+1)` -/
def P5902002721767183674.Spec : Prop :=
  ∀ n, P5902002721767183674.a n = A181905 (n + 1)

end A181905

/-! ## A181905.P12782552284517024142

`∑{d}[A162397(n+1), #*A162397(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181905

/-- `∑{d}[A162397(n+1), #*A162397(#)]` -/
def P12782552284517024142.Spec : Prop :=
  ∀ n, P12782552284517024142.a n = A181905 (n + 1)

theorem P12782552284517024142.correct : P12782552284517024142.Spec := by
  intro n
  simp only [A181905, Nat.add_sub_cancel]

end A181905

/-! ## A181905.P17613161236204160206

`A103440(n+1)-A103440(n+1)%A106402(n+1)`
-/

namespace A181905.P17613161236204160206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103440 (n + 1) - Int.tmod (A103440 (n + 1)) (A106402 (n + 1))

end

end A181905.P17613161236204160206

namespace A181905

/-- `A103440(n+1)-A103440(n+1)%A106402(n+1)` -/
def P17613161236204160206.Spec : Prop :=
  ∀ n, P17613161236204160206.a n = A181905 (n + 1)

end A181905

/-!
# A181914: Number of And/Or trees with n internal nodes that compute the Boolean value True.

The programs for A181914, there is no canonical definition to state claims against.
-/

/-! ## A181914.P8040365017121190666

`(n+1)*2^(n+1)*A196148(n)`
-/

namespace A181914.P8040365017121190666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) * A196148 n)

end

end A181914.P8040365017121190666

/-! ## A181914.P12586381885351478118

`∑[2*A001792(n)]*A196148(n)`
-/

namespace A181914.P12586381885351478118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A196148 n

end

end A181914.P12586381885351478118

/-! ## A181914.P11612951326006831695

`(A003261(n+1)+1)*A196148(n)`
-/

namespace A181914.P11612951326006831695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003261 (n + 1) + 1) * A196148 n

end

end A181914.P11612951326006831695

/-! ## A181914.P5467429591707588781

`(n+1)*A000079(n+1)*A196148(n)`
-/

namespace A181914.P5467429591707588781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (n + 1) * A196148 n

end

end A181914.P5467429591707588781

/-!
# A181920: Length of A185120(n): number of subsequent digits in the decimal expansion of e which form the next longer prime.

The programs for A181920, there is no canonical definition to state claims against.
-/

/-! ## A181920.P10614915931608541046

`A303865(n)+A106677(A000217(n))`
-/

namespace A181920.P10614915931608541046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303865 n + A106677 (A000217 n).toNat

end

end A181920.P10614915931608541046

/-!
# A181923: Nonprimes (A018252) mod 2.

The programs for A181923, the canonical program `A181923.P5871209756813184297` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181923 has offset 1).

The definition of A181923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181923.P5871209756813184297

`Δ[A051349(n)]%2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181923

/-- `Δ[A051349(n)]%2` -/
def P5871209756813184297.Spec : Prop :=
  ∀ n, P5871209756813184297.a n = A181923 (n + 1)

theorem P5871209756813184297.correct : P5871209756813184297.Spec := by
  intro n
  simp only [A181923, Nat.add_sub_cancel]

end A181923

/-! ## A181923.P16284643164496274681

`A018252(n+1)%2`
-/

namespace A181923.P16284643164496274681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 1)) 2

end

end A181923.P16284643164496274681

namespace A181923

/-- `A018252(n+1)%2` -/
def P16284643164496274681.Spec : Prop :=
  ∀ n, P16284643164496274681.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P11852943191712875746

`A062312(n+1)%2`
-/

namespace A181923.P11852943191712875746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062312 (n + 1)) 2

end

end A181923.P11852943191712875746

namespace A181923

/-- `A062312(n+1)%2` -/
def P11852943191712875746.Spec : Prop :=
  ∀ n, P11852943191712875746.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P6926906683508890063

`A182817(n+1)%2`
-/

namespace A181923.P6926906683508890063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182817 (n + 1)) 2

end

end A181923.P6926906683508890063

namespace A181923

/-- `A182817(n+1)%2` -/
def P6926906683508890063.Spec : Prop :=
  ∀ n, P6926906683508890063.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P12878735936225681483

`A253910(n+1)%2`
-/

namespace A181923.P12878735936225681483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253910 (n + 1)) 2

end

end A181923.P12878735936225681483

namespace A181923

/-- `A253910(n+1)%2` -/
def P12878735936225681483.Spec : Prop :=
  ∀ n, P12878735936225681483.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P13583537825384500604

`A141468(n+2)%2`
-/

namespace A181923.P13583537825384500604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141468 (n + 2)) 2

end

end A181923.P13583537825384500604

namespace A181923

/-- `A141468(n+2)%2` -/
def P13583537825384500604.Spec : Prop :=
  ∀ n, P13583537825384500604.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P9312314964798561790

`and(1, ∑[A054546(n+1)])`
-/

namespace A181923.P9312314964798561790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181923.P9312314964798561790

namespace A181923

/-- `and(1, ∑[A054546(n+1)])` -/
def P9312314964798561790.Spec : Prop :=
  ∀ n, P9312314964798561790.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P2654180894220234099

`A222307(2*n+1)%2`
-/

namespace A181923.P2654180894220234099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222307 (2 * n + 1)) 2

end

end A181923.P2654180894220234099

namespace A181923

/-- `A222307(2*n+1)%2` -/
def P2654180894220234099.Spec : Prop :=
  ∀ n, P2654180894220234099.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P4977875822292816912

`and(1, A018252(C(n+1, n)))`
-/

namespace A181923.P4977875822292816912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A018252 (Nat.choose (n + 1) n))

end

end A181923.P4977875822292816912

namespace A181923

/-- `and(1, A018252(C(n+1, n)))` -/
def P4977875822292816912.Spec : Prop :=
  ∀ n, P4977875822292816912.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P14357434439698133455

`and(1, A018252(root(n+1, 2)²))`
-/

namespace A181923.P14357434439698133455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A018252 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat)

end

end A181923.P14357434439698133455

namespace A181923

/-- `and(1, A018252(root(n+1, 2)²))` -/
def P14357434439698133455.Spec : Prop :=
  ∀ n, P14357434439698133455.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P7192655136385836921

`char[A305800(2*n+1)-2]`
-/

namespace A181923.P7192655136385836921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (2 * n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A181923.P7192655136385836921

namespace A181923

/-- `char[A305800(2*n+1)-2]` -/
def P7192655136385836921.Spec : Prop :=
  ∀ n, (P7192655136385836921.a n : ℤ) = A181923 (n + 1)

end A181923

/-! ## A181923.P18394069783632682713

`(A018252(2*n-(n-1))%2)²`
-/

namespace A181923.P18394069783632682713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 2 ^ 2

end

end A181923.P18394069783632682713

namespace A181923

/-- `(A018252(2*n-(n-1))%2)²` -/
def P18394069783632682713.Spec : Prop :=
  ∀ n, P18394069783632682713.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P11687401686268952384

`and(1, -A018252(2*n+1-n))`
-/

namespace A181923.P11687401686268952384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-A018252 (2 * n + 1 - n))

end

end A181923.P11687401686268952384

namespace A181923

/-- `and(1, -A018252(2*n+1-n))` -/
def P11687401686268952384.Spec : Prop :=
  ∀ n, P11687401686268952384.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P15708838208345093086

`and(A010684(n), A062312(n+1))`
-/

namespace A181923.P15708838208345093086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 n) (A062312 (n + 1))

end

end A181923.P15708838208345093086

namespace A181923

/-- `and(A010684(n), A062312(n+1))` -/
def P15708838208345093086.Spec : Prop :=
  ∀ n, P15708838208345093086.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P2055919220253809441

`and(A018252(n+1), A060576(n))`
-/

namespace A181923.P2055919220253809441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018252 (n + 1)) (A060576 n)

end

end A181923.P2055919220253809441

namespace A181923

/-- `and(A018252(n+1), A060576(n))` -/
def P2055919220253809441.Spec : Prop :=
  ∀ n, P2055919220253809441.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P10094087041715575640

`and(A060576(n), A062312(n+1))`
-/

namespace A181923.P10094087041715575640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A062312 (n + 1))

end

end A181923.P10094087041715575640

namespace A181923

/-- `and(A060576(n), A062312(n+1))` -/
def P10094087041715575640.Spec : Prop :=
  ∀ n, P10094087041715575640.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P3407881496664952221

`and(A062312(n+1), A084101(n))`
-/

namespace A181923.P3407881496664952221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062312 (n + 1)) (A084101 n)

end

end A181923.P3407881496664952221

namespace A181923

/-- `and(A062312(n+1), A084101(n))` -/
def P3407881496664952221.Spec : Prop :=
  ∀ n, P3407881496664952221.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P17776205225786753262

`and(A062312(n+1), A093148(n))`
-/

namespace A181923.P17776205225786753262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062312 (n + 1)) (A093148 n)

end

end A181923.P17776205225786753262

namespace A181923

/-- `and(A062312(n+1), A093148(n))` -/
def P17776205225786753262.Spec : Prop :=
  ∀ n, P17776205225786753262.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P13259313237235889714

`A000045(and(1, -A018252(n+1)))`
-/

namespace A181923.P13259313237235889714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (-A018252 (n + 1))).toNat

end

end A181923.P13259313237235889714

namespace A181923

/-- `A000045(and(1, -A018252(n+1)))` -/
def P13259313237235889714.Spec : Prop :=
  ∀ n, P13259313237235889714.a n = A181923 (n + 1)

end A181923

/-! ## A181923.P10897186100220626018

`A020639(3*A018252(n+1))-2`
-/

namespace A181923.P10897186100220626018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * A018252 (n + 1)).toNat - 2

end

end A181923.P10897186100220626018

namespace A181923

/-- `A020639(3*A018252(n+1))-2` -/
def P10897186100220626018.Spec : Prop :=
  ∀ n, P10897186100220626018.a n = A181923 (n + 1)

end A181923

/-!
# A181925: Area A of the triangles such that A, the sides, and at least one of the three bisectors are integers.

The programs for A181925, there is no canonical definition to state claims against.
-/

/-! ## A181925.P9347943283246628946

`∪[A118903(n+1), A057102(A008458(n+2))]`
-/

namespace A181925.P9347943283246628946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057102 (A008458 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181925.P9347943283246628946

/-! ## A181925.P11307376705308986535

`∪[A256418(A004431(2*(n+2))), A118903(n+1)]`
-/

namespace A181925.P11307376705308986535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256418 (A004431 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181925.P11307376705308986535

/-! ## A181925.P1505839684205477277

`lcm(A103299(n), A118903(n+1))`
-/

namespace A181925.P1505839684205477277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103299 n) (A118903 (n + 1))

end

end A181925.P1505839684205477277

/-! ## A181925.P17619272946215479523

`∩[A037917(n+1), A118903(n+1)]`
-/

namespace A181925.P17619272946215479523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181925.P17619272946215479523

/-! ## A181925.P4691319253678808725

`∩[A074697(n+1), A118903(n+1)]`
-/

namespace A181925.P4691319253678808725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181925.P4691319253678808725

/-!
# A181926: Diagonal sums of Fibonomial triangle A010048.

The programs for A181926, there is no canonical definition to state claims against.
-/

/-! ## A181926.P9534149285274521533

`A078705(A001088(n+1)+1)`
-/

namespace A181926.P9534149285274521533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (A001088 (n + 1) + 1).toNat

end

end A181926.P9534149285274521533

/-! ## A181926.P6336510307549024767

`A184333(ceil(sqrt(A082094(n+1))))`
-/

namespace A181926.P6336510307549024767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184333 ⌈Real.sqrt (A082094 (n + 1) : ℝ)⌉.toNat

end

end A181926.P6336510307549024767

/-! ## A181926.P2360696471985284306

`A078705(∏[A000010(n+1)]+1)`
-/

namespace A181926.P2360696471985284306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (∏ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A181926.P2360696471985284306

/-! ## A181926.P7960325016041273554

`A000700(2*(n+2))+A000196(floor(n!/10))`
-/

namespace A181926.P7960325016041273554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * (n + 2)) + A000196 ⌊(Nat.factorial n : ℚ) / 10⌋.toNat

end

end A181926.P7960325016041273554

/-! ## A181926.P9064959203960982936

`A000700(2*(n+2))+floor(A221839(n+1)/7)`
-/

namespace A181926.P9064959203960982936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * (n + 2)) + ⌊(A221839 (n + 1) : ℚ) / 7⌋

end

end A181926.P9064959203960982936

/-!
# A181927: Row square-sums of Fibonomial triangle A010048.

The programs for A181927, there is no canonical definition to state claims against.
-/

/-! ## A181927.P10270282837672771847

`∑[A367220(∑[∑[n]])]`
-/

namespace A181927.P10270282837672771847
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367220 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181927.P10270282837672771847

/-! ## A181927.P8817665631176707997

`A076436(∑[A000111(n)²])`
-/

namespace A181927.P8817665631176707997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076436 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181927.P8817665631176707997

/-!
# A181928: Area A of the triangles such that A, the sides and two medians are integers.

The programs for A181928, there is no canonical definition to state claims against.
-/

/-! ## A181928.P10226107249040421760

`12*A103517(70*(n+1)²-1)`
-/

namespace A181928.P10226107249040421760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A103517 (70 * (n + 1) ^ 2 - 1)

end

end A181928.P10226107249040421760

/-! ## A181928.P6378963596501486823

`16*A195019(70*(n+1)²-1)`
-/

namespace A181928.P6378963596501486823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A195019 (70 * (n + 1) ^ 2 - 1)

end

end A181928.P6378963596501486823

/-! ## A181928.P2924367818443638630

`24*A014681(70*(n+1)²-1)`
-/

namespace A181928.P2924367818443638630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A014681 (70 * (n + 1) ^ 2 - 1)

end

end A181928.P2924367818443638630

/-! ## A181928.P17127673443540134771

`28*A145569(70*(n+1)²-1)`
-/

namespace A181928.P17127673443540134771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A145569 (70 * (n + 1) ^ 2 - 1)

end

end A181928.P17127673443540134771

/-! ## A181928.P1857010884594084285

`A008603(A158774(n+1)+1)`
-/

namespace A181928.P1857010884594084285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 (A158774 (n + 1) + 1).toNat

end

end A181928.P1857010884594084285

/-!
# A181929: Numbers n such that n is the substring identical to the most significant bits of its base 2 representation.

The programs for A181929, there is no canonical definition to state claims against.
-/

/-! ## A181929.P17892302845038670558

`A203075(A293734(n)-A005638(n))`
-/

namespace A181929.P17892302845038670558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203075 (A293734 n - A005638 n).toNat

end

end A181929.P17892302845038670558

/-! ## A181929.P17697646576614965778

`A007088(A033484(n)-A221672(2*n+1))`
-/

namespace A181929.P17697646576614965778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A033484 n - A221672 (2 * n + 1)).toNat

end

end A181929.P17697646576614965778

/-!
# A181930: Triangle T(d,k), where T(d,k)/lcm(1..d) gives the probability that d is the k-th divisor of an integer.

The programs for A181930, there is no canonical definition to state claims against.
-/

/-! ## A181930.P8792155865402729415

`and(A084938(n), A365368(A320201(3*n+1)))`
-/

namespace A181930.P8792155865402729415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084938 n) (A365368 (A320201 (3 * n + 1)).toNat)

end

end A181930.P8792155865402729415

/-! ## A181930.P3679659438481752891

`and(A001222(A067332(n)), A062110(n))`
-/

namespace A181930.P3679659438481752891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A067332 n).toNat) (A062110 n)

end

end A181930.P3679659438481752891

/-! ## A181930.P7434049662103127070

`and(A001222(A067332(n)), A084938(n))`
-/

namespace A181930.P7434049662103127070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A067332 n).toNat) (A084938 n)

end

end A181930.P7434049662103127070

/-! ## A181930.P105796155246104126

`and(A001222(A067332(n)), A198792(n))`
-/

namespace A181930.P105796155246104126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A067332 n).toNat) (A198792 n)

end

end A181930.P105796155246104126

/-! ## A181930.P1835858854155605257

`A371077(n)%A031883(A060058(n+1))`
-/

namespace A181930.P1835858854155605257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371077 n) (A031883 (A060058 (n + 1)).toNat)

end

end A181930.P1835858854155605257

/-!
# A181932: A003136(n) mod 2.

The programs for A181932, the canonical program `A181932.P11204992688967279884` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181932 has offset 1).

The definition of A181932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181932.P11204992688967279884

`A003136(n+1)%2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A181932

/-- `A003136(n+1)%2` -/
def P11204992688967279884.Spec : Prop :=
  ∀ n, P11204992688967279884.a n = A181932 (n + 1)

theorem P11204992688967279884.correct : P11204992688967279884.Spec := by
  intro n
  simp only [A181932, Nat.add_sub_cancel]

end A181932

/-! ## A181932.P13445222518706478548

`A270672(n+1)%2`
-/

namespace A181932.P13445222518706478548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270672 (n + 1)) 2

end

end A181932.P13445222518706478548

namespace A181932

/-- `A270672(n+1)%2` -/
def P13445222518706478548.Spec : Prop :=
  ∀ n, P13445222518706478548.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P14992792447373893547

`lt[0, A033716(n)]%2`
-/

namespace A181932.P14992792447373893547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 2

end

end A181932.P14992792447373893547

namespace A181932

/-- `lt[0, A033716(n)]%2` -/
def P14992792447373893547.Spec : Prop :=
  ∀ n, (P14992792447373893547.a n : ℤ) = A181932 (n + 1)

end A181932

/-! ## A181932.P11880058582855973225

`eq[1, A353816(n)]%2`
-/

namespace A181932.P11880058582855973225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A181932.P11880058582855973225

namespace A181932

/-- `eq[1, A353816(n)]%2` -/
def P11880058582855973225.Spec : Prop :=
  ∀ n, (P11880058582855973225.a n : ℤ) = A181932 (n + 1)

end A181932

/-! ## A181932.P7577828555838008545

`(A270248(n+1)/4)%2`
-/

namespace A181932.P7577828555838008545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A270248 (n + 1) : ℚ) / 4)) 2

end

end A181932.P7577828555838008545

namespace A181932

/-- `(A270248(n+1)/4)%2` -/
def P7577828555838008545.Spec : Prop :=
  ∀ n, P7577828555838008545.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P8170329556991145984

`and(1, A270050(n+1)/2)`
-/

namespace A181932.P8170329556991145984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((A270050 (n + 1) : ℚ) / 2))

end

end A181932.P8170329556991145984

namespace A181932

/-- `and(1, A270050(n+1)/2)` -/
def P8170329556991145984.Spec : Prop :=
  ∀ n, P8170329556991145984.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P5904652083170044552

`A098725(A003136(n+1))`
-/

namespace A181932.P5904652083170044552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A003136 (n + 1)).toNat

end

end A181932.P5904652083170044552

namespace A181932

/-- `A098725(A003136(n+1))` -/
def P5904652083170044552.Spec : Prop :=
  ∀ n, P5904652083170044552.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P5099725310802061528

`and(A003136(n+1), A054977(n))`
-/

namespace A181932.P5099725310802061528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003136 (n + 1)) (A054977 n)

end

end A181932.P5099725310802061528

namespace A181932

/-- `and(A003136(n+1), A054977(n))` -/
def P5099725310802061528.Spec : Prop :=
  ∀ n, P5099725310802061528.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P17590089981213094535

`and(A003136(n+1), A057427(n))`
-/

namespace A181932.P17590089981213094535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003136 (n + 1)) (A057427 n)

end

end A181932.P17590089981213094535

namespace A181932

/-- `and(A003136(n+1), A057427(n))` -/
def P17590089981213094535.Spec : Prop :=
  ∀ n, P17590089981213094535.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P16142205839560558291

`and(A003136(n+1), A158388(n))`
-/

namespace A181932.P16142205839560558291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003136 (n + 1)) (A158388 n)

end

end A181932.P16142205839560558291

namespace A181932

/-- `and(A003136(n+1), A158388(n))` -/
def P16142205839560558291.Spec : Prop :=
  ∀ n, P16142205839560558291.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P17515438108466794369

`and(A098725(2*n+1), A270672(n+1))`
-/

namespace A181932.P17515438108466794369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098725 (2 * n + 1)) (A270672 (n + 1))

end

end A181932.P17515438108466794369

namespace A181932

/-- `and(A098725(2*n+1), A270672(n+1))` -/
def P17515438108466794369.Spec : Prop :=
  ∀ n, P17515438108466794369.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P7343224110051433665

`and(A001222(A275115(n+1)), A003136(n+1))`
-/

namespace A181932.P7343224110051433665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A275115 (n + 1)).toNat) (A003136 (n + 1))

end

end A181932.P7343224110051433665

namespace A181932

/-- `and(A001222(A275115(n+1)), A003136(n+1))` -/
def P7343224110051433665.Spec : Prop :=
  ∀ n, P7343224110051433665.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P5971860665107378439

`A098725(A270672(n+1))`
-/

namespace A181932.P5971860665107378439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A270672 (n + 1)).toNat

end

end A181932.P5971860665107378439

namespace A181932

/-- `A098725(A270672(n+1))` -/
def P5971860665107378439.Spec : Prop :=
  ∀ n, P5971860665107378439.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P14511256505749157626

`and(A001222(A068228(n+1)), A003136(n+1))`
-/

namespace A181932.P14511256505749157626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A068228 (n + 1)).toNat) (A003136 (n + 1))

end

end A181932.P14511256505749157626

namespace A181932

/-- `and(A001222(A068228(n+1)), A003136(n+1))` -/
def P14511256505749157626.Spec : Prop :=
  ∀ n, P14511256505749157626.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P3326056465727086246

`lt[0, A004016(n)]%2`
-/

namespace A181932.P3326056465727086246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 2

end

end A181932.P3326056465727086246

namespace A181932

/-- `lt[0, A004016(n)]%2` -/
def P3326056465727086246.Spec : Prop :=
  ∀ n, (P3326056465727086246.a n : ℤ) = A181932 (n + 1)

end A181932

/-! ## A181932.P16591427740482532506

`and(1, lt[0, abs(A005928(n))])`
-/

namespace A181932.P16591427740482532506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005928 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A181932.P16591427740482532506

namespace A181932

/-- `and(1, lt[0, abs(A005928(n))])` -/
def P16591427740482532506.Spec : Prop :=
  ∀ n, (P16591427740482532506.a n : ℤ) = A181932 (n + 1)

end A181932

/-! ## A181932.P11345690746663368961

`and(1, lt[0, A097109(n)²])`
-/

namespace A181932.P11345690746663368961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A181932.P11345690746663368961

namespace A181932

/-- `and(1, lt[0, A097109(n)²])` -/
def P11345690746663368961.Spec : Prop :=
  ∀ n, (P11345690746663368961.a n : ℤ) = A181932 (n + 1)

end A181932

/-! ## A181932.P17055455516033820480

`and(1, lt[0, A164272(n)²])`
-/

namespace A181932.P17055455516033820480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164272 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A181932.P17055455516033820480

namespace A181932

/-- `and(1, lt[0, A164272(n)²])` -/
def P17055455516033820480.Spec : Prop :=
  ∀ n, (P17055455516033820480.a n : ℤ) = A181932 (n + 1)

end A181932

/-! ## A181932.P13097716184580720413

`A000035(A003136(n+1)+2)`
-/

namespace A181932.P13097716184580720413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003136 (n + 1) + 2).toNat

end

end A181932.P13097716184580720413

namespace A181932

/-- `A000035(A003136(n+1)+2)` -/
def P13097716184580720413.Spec : Prop :=
  ∀ n, P13097716184580720413.a n = A181932 (n + 1)

end A181932

/-! ## A181932.P11582976597439268610

`A000034(eq[1, A353816(n)])-1`
-/

namespace A181932.P11582976597439268610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A181932.P11582976597439268610

namespace A181932

/-- `A000034(eq[1, A353816(n)])-1` -/
def P11582976597439268610.Spec : Prop :=
  ∀ n, P11582976597439268610.a n = A181932 (n + 1)

end A181932

/-!
# A181933: a(n) = Sum_{k=0..n} binomial(n+k,k)*sin(Pi*(n+k)/2).

The programs for A181933, there is no canonical definition to state claims against.
-/

/-! ## A181933.P2114756310487454753

`A144027(A001349(n))-A086344(n)`
-/

namespace A181933.P2114756310487454753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144027 (A001349 n).toNat - A086344 n

end

end A181933.P2114756310487454753

/-!
# A181934: Number of cents in U.S. Federal coinage, from 1793.

The programs for A181934, there is no canonical definition to state claims against.
-/

/-! ## A181934.P11185948496547726474

`A018283(n+1)-char[2]`
-/

namespace A181934.P11185948496547726474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018283 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181934.P11185948496547726474

/-! ## A181934.P10274740163030249118

`eq[1, A067995(n+1)]+1`
-/

namespace A181934.P10274740163030249118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181934.P10274740163030249118

/-! ## A181934.P12232081819053090187

`A178784(n+1)+1-char[2]`
-/

namespace A181934.P12232081819053090187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178784 (n + 1) + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A181934.P12232081819053090187

/-! ## A181934.P2186033930602535115

`lt[A067995(abs(2-n)+2), 2]`
-/

namespace A181934.P2186033930602535115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067995 (|2 - (n : ℤ)| + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A181934.P2186033930602535115

/-! ## A181934.P6238863420500248579

`A018382(A058590(n+2))`
-/

namespace A181934.P6238863420500248579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018382 (A058590 (n + 2)).toNat

end

end A181934.P6238863420500248579

/-!
# A181935: Curling number of binary expansion of n.

The programs for A181935, there is no canonical definition to state claims against.
-/

/-! ## A181935.P5938157097598405238

`floor(A224764(n)/A224765(n))`
-/

namespace A181935.P5938157097598405238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A224764 n : ℚ) / (A224765 n : ℚ)⌋

end

end A181935.P5938157097598405238

/-! ## A181935.P11113335463151203603

`A001511(lcm(A065033(n), A140878(n+1)))`
-/

namespace A181935.P11113335463151203603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lcm (A065033 n) (A140878 (n + 1)))

end

end A181935.P11113335463151203603

/-! ## A181935.P5008259546705554376

`lcm(A136480(n), A339047(A299149(n+1)))`
-/

namespace A181935.P5008259546705554376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136480 n) (A339047 (A299149 (n + 1)).toNat)

end

end A181935.P5008259546705554376

/-! ## A181935.P9594120176237886592

`A043284(n+1)*A136480(A006331(n))`
-/

namespace A181935.P9594120176237886592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1) * A136480 (A006331 n).toNat

end

end A181935.P9594120176237886592

/-! ## A181935.P12155633981364473633

`A083230(n+1)*A136480(A006331(n))`
-/

namespace A181935.P12155633981364473633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083230 (n + 1) * A136480 (A006331 n).toNat

end

end A181935.P12155633981364473633

/-!
# A181936: Number of 5-alternating permutations.

The programs for A181936, there is no canonical definition to state claims against.
-/

/-! ## A181936.P6081191859314782299

`A181937(∑[n+3]+n+3)`
-/

namespace A181936.P6081191859314782299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A181936.P6081191859314782299

/-! ## A181936.P5344041296314375631

`or(A000007(n), A181937(A046691(n+2)))`
-/

namespace A181936.P5344041296314375631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A181937 (A046691 (n + 2)).toNat)

end

end A181936.P5344041296314375631

/-! ## A181936.P6304690909174071058

`A057427(n+3)*A181937(A046691(n+2))`
-/

namespace A181936.P6304690909174071058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 3) * A181937 (A046691 (n + 2)).toNat

end

end A181936.P6304690909174071058

/-! ## A181936.P10843843522565410868

`A181937(A046691(n+2))+A010700(n)%2`
-/

namespace A181936.P10843843522565410868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A046691 (n + 2)).toNat + Int.tmod (A010700 n) 2

end

end A181936.P10843843522565410868

/-! ## A181936.P4295831682185062978

`A176831(n+1)%2*A181937(A046691(n+2))`
-/

namespace A181936.P4295831682185062978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176831 (n + 1)) 2 * A181937 (A046691 (n + 2)).toNat

end

end A181936.P4295831682185062978

/-!
# A181938: Isolated primes = 1 mod 6: sandwiched by primes = 5 mod 6.

The programs for A181938, the canonical program `A181938.P3732360409968739230` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181938 has offset 1).

The definition of A181938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181938.P3732360409968739230

`∩[A151800(A253969(2*n+1)), A253969(n+2)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A181938

/-- `∩[A151800(A253969(2*n+1)), A253969(n+2)]` -/
def P3732360409968739230.Spec : Prop :=
  ∀ n, (P3732360409968739230.a n : ℤ) = A181938 (n + 1)

theorem P3732360409968739230.correct : P3732360409968739230.Spec := by
  intro n
  simp only [A181938, Nat.add_sub_cancel]

end A181938

/-! ## A181938.P3791422931386262217

`∩[A002476(n+1), A000040(A173144(n+1))]`
-/

namespace A181938.P3791422931386262217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173144 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181938.P3791422931386262217

namespace A181938

/-- `∩[A002476(n+1), A000040(A173144(n+1))]` -/
def P3791422931386262217.Spec : Prop :=
  ∀ n, (P3791422931386262217.a n : ℤ) = A181938 (n + 1)

end A181938

/-! ## A181938.P14942659105951560003

`∩[A045375(n+1), A000040(A173144(n+1))]`
-/

namespace A181938.P14942659105951560003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173144 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181938.P14942659105951560003

namespace A181938

/-- `∩[A045375(n+1), A000040(A173144(n+1))]` -/
def P14942659105951560003.Spec : Prop :=
  ∀ n, (P14942659105951560003.a n : ℤ) = A181938 (n + 1)

end A181938

/-! ## A181938.P1769270586390466079

`A000040(∩[A091178(n+1), A173144(n+1)])`
-/

namespace A181938.P1769270586390466079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173144 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A181938.P1769270586390466079

namespace A181938

/-- `A000040(∩[A091178(n+1), A173144(n+1)])` -/
def P1769270586390466079.Spec : Prop :=
  ∀ n, P1769270586390466079.a n = A181938 (n + 1)

end A181938

/-! ## A181938.P915490199410055589

`∩[A123365(n+1), A000040(A173144(n+1))]`
-/

namespace A181938.P915490199410055589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173144 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181938.P915490199410055589

namespace A181938

/-- `∩[A123365(n+1), A000040(A173144(n+1))]` -/
def P915490199410055589.Spec : Prop :=
  ∀ n, (P915490199410055589.a n : ℤ) = A181938 (n + 1)

end A181938

/-! ## A181938.P13727368471648607779

`∩[A007645(n+1), A000040(A173144(n+2))]`
-/

namespace A181938.P13727368471648607779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173144 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181938.P13727368471648607779

namespace A181938

/-- `∩[A007645(n+1), A000040(A173144(n+2))]` -/
def P13727368471648607779.Spec : Prop :=
  ∀ n, (P13727368471648607779.a n : ℤ) = A181938 (n + 1)

end A181938

/-! ## A181938.P1071577604326213597

`A000040(∩[A171820(n+1), A173144(n+2)])`
-/

namespace A181938.P1071577604326213597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173144 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A181938.P1071577604326213597

namespace A181938

/-- `A000040(∩[A171820(n+1), A173144(n+2)])` -/
def P1071577604326213597.Spec : Prop :=
  ∀ n, P1071577604326213597.a n = A181938 (n + 1)

end A181938

/-! ## A181938.P14598433613943291081

`A000040(A181978(n+1))`
-/

namespace A181938.P14598433613943291081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A181978 (n + 1)).toNat

end

end A181938.P14598433613943291081

namespace A181938

/-- `A000040(A181978(n+1))` -/
def P14598433613943291081.Spec : Prop :=
  ∀ n, P14598433613943291081.a n = A181938 (n + 1)

end A181938

/-! ## A181938.P9239209239027629884

`A008578(A181978(n+1)+1)`
-/

namespace A181938.P9239209239027629884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A181978 (n + 1) + 1).toNat

end

end A181938.P9239209239027629884

namespace A181938

/-- `A008578(A181978(n+1)+1)` -/
def P9239209239027629884.Spec : Prop :=
  ∀ n, P9239209239027629884.a n = A181938 (n + 1)

end A181938

/-! ## A181938.P3979577350668045458

`A175787(A181978(n+1)+1)`
-/

namespace A181938.P3979577350668045458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A181978 (n + 1) + 1).toNat

end

end A181938.P3979577350668045458

namespace A181938

/-- `A175787(A181978(n+1)+1)` -/
def P3979577350668045458.Spec : Prop :=
  ∀ n, P3979577350668045458.a n = A181938 (n + 1)

end A181938

/-!
# A181939: Number of pairs of set partitions of {1,2,...,n} whose meet is {{1},{2},...,{n}} and join is {{1,2,...,n}}.

The programs for A181939, there is no canonical definition to state claims against.
-/

/-! ## A181939.P18156712040697148835

`A318389(C(n, 2)+1)`
-/

namespace A181939.P18156712040697148835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318389 (Nat.choose n 2 + 1)

end

end A181939.P18156712040697148835

/-! ## A181939.P3537959238760903095

`A318389(∑[abs(1-n)])`
-/

namespace A181939.P3537959238760903095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318389 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181939.P3537959238760903095

/-! ## A181939.P12276059817564600390

`lcm(A169623(n), A318389(A152947(n+1)))`
-/

namespace A181939.P12276059817564600390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A169623 n) (A318389 (A152947 (n + 1)).toNat)

end

end A181939.P12276059817564600390

/-! ## A181939.P9753144330135150140

`or(A000007(n), A318389(A152947(n+1)))`
-/

namespace A181939.P9753144330135150140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318389 (A152947 (n + 1)).toNat)

end

end A181939.P9753144330135150140

/-! ## A181939.P18223902345979533829

`A318389(A152947(n+1))%A327056(n+1)`
-/

namespace A181939.P18223902345979533829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318389 (A152947 (n + 1)).toNat) (A327056 (n + 1))

end

end A181939.P18223902345979533829

/-!
# A181940: a(0)=0, and there are a(n) terms between a(n) and the nearest a(n)+1.

The programs for A181940, the canonical program `A181940.P15678314740941203251` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181940 has offset 0).

The definition of A181940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181940.P9971734618730453325

`floor(abs(round(sqrt(2*(n+1)))²-(2*n+1)+γ))`
-/

namespace A181940.P9971734618730453325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ) : ℝ) + Real.eulerMascheroniConstant|⌋

end

end A181940.P9971734618730453325

namespace A181940

/-- `floor(abs(round(sqrt(2*(n+1)))²-(2*n+1)+γ))` -/
def P9971734618730453325.Spec : Prop :=
  ∀ n, P9971734618730453325.a n = A181940 n

end A181940

/-! ## A181940.P6134498673880205186

`abs(round(n/∑[char[∑[n]]]²)+∑[2*n]%comp[∑[n]]-n)`
-/

namespace A181940.P6134498673880205186
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ)) + ((((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℕ) : ℤ) - (n : ℤ))|

end

end A181940.P6134498673880205186

namespace A181940

/-- `abs(round(n/∑[char[∑[n]]]²)+∑[2*n]%comp[∑[n]]-n)` -/
def P6134498673880205186.Spec : Prop :=
  ∀ n, P6134498673880205186.a n = A181940 n

end A181940

/-! ## A181940.P15947932197962541284

`(ceil(abs(round(sqrt(2*(n+1)))²-(2*n+1)+γ))-1)%26`
-/

namespace A181940.P15947932197962541284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈|(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ) : ℝ) + Real.eulerMascheroniConstant|⌉ - 1) 26

end

end A181940.P15947932197962541284

namespace A181940

/-- `(ceil(abs(round(sqrt(2*(n+1)))²-(2*n+1)+γ))-1)%26` -/
def P15947932197962541284.Spec : Prop :=
  ∀ n, P15947932197962541284.a n = A181940 n

end A181940

/-! ## A181940.P3849467732654995697

`abs(round(sqrt(2*(n+1)))²-(2*n+1))-dr(round(n/∑[char[∑[n]]]²))`
-/

namespace A181940.P3849467732654995697
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| - (SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ))) : ℤ)

end

end A181940.P3849467732654995697

namespace A181940

/-- `abs(round(sqrt(2*(n+1)))²-(2*n+1))-dr(round(n/∑[char[∑[n]]]²))` -/
def P3849467732654995697.Spec : Prop :=
  ∀ n, P3849467732654995697.a n = A181940 n

end A181940

/-! ## A181940.P15602626525765162174

`floor(sqrt(8*n+1))%2-(1-abs(round(sqrt(2*(n+1)))²-(2*n+1)))`
-/

namespace A181940.P15602626525765162174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.sqrt (8 * n + 1) % 2 : ℕ) : ℤ) - (1 - |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|)

end

end A181940.P15602626525765162174

namespace A181940

/-- `floor(sqrt(8*n+1))%2-(1-abs(round(sqrt(2*(n+1)))²-(2*n+1)))` -/
def P15602626525765162174.Spec : Prop :=
  ∀ n, P15602626525765162174.a n = A181940 n

end A181940

/-! ## A181940.P253028502724639086

`A130517(n+1)-1`
-/

namespace A181940.P253028502724639086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) - 1

end

end A181940.P253028502724639086

namespace A181940

/-- `A130517(n+1)-1` -/
def P253028502724639086.Spec : Prop :=
  ∀ n, P253028502724639086.a n = A181940 n

end A181940

/-! ## A181940.P15678314740941203251

`A004737(Δ[n²])-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181940

/-- `A004737(Δ[n²])-1` -/
def P15678314740941203251.Spec : Prop :=
  ∀ n, P15678314740941203251.a n = A181940 n

theorem P15678314740941203251.correct : P15678314740941203251.Spec := by
  intro n
  simp only [A181940]

end A181940

/-! ## A181940.P1328908930026528243

`A220073(comp[∑[n]])-1`
-/

namespace A181940.P1328908930026528243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A181940.P1328908930026528243

namespace A181940

/-- `A220073(comp[∑[n]])-1` -/
def P1328908930026528243.Spec : Prop :=
  ∀ n, P1328908930026528243.a n = A181940 n

end A181940

/-! ## A181940.P8633406681515826202

`abs(A056951(n+1))-1`
-/

namespace A181940.P8633406681515826202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056951 (n + 1)| - 1

end

end A181940.P8633406681515826202

namespace A181940

/-- `abs(A056951(n+1))-1` -/
def P8633406681515826202.Spec : Prop :=
  ∀ n, P8633406681515826202.a n = A181940 n

end A181940

/-! ## A181940.P14651982068719005928

`A162630(n+1)/2-1`
-/

namespace A181940.P14651982068719005928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162630 (n + 1) : ℚ) / 2 - 1

end

end A181940.P14651982068719005928

namespace A181940

/-- `A162630(n+1)/2-1` -/
def P14651982068719005928.Spec : Prop :=
  ∀ n, P14651982068719005928.a n = (A181940 n : ℚ)

end A181940

/-! ## A181940.P3959306377058698260

`root(A133823(2*n), 3)-1`
-/

namespace A181940.P3959306377058698260
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A133823 (2 * n) : ℝ) ^ (1 / (3 : ℝ)) - 1

end

end A181940.P3959306377058698260

namespace A181940

/-- `root(A133823(2*n), 3)-1` -/
def P3959306377058698260.Spec : Prop :=
  ∀ n, P3959306377058698260.a n = (A181940 n : ℝ)

end A181940

/-! ## A181940.P2350956904753263221

`sqrt(A124258(2*n+1))-1`
-/

namespace A181940.P2350956904753263221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A124258 (2 * n + 1) : ℝ) - 1

end

end A181940.P2350956904753263221

namespace A181940

/-- `sqrt(A124258(2*n+1))-1` -/
def P2350956904753263221.Spec : Prop :=
  ∀ n, P2350956904753263221.a n = (A181940 n : ℝ)

end A181940

/-! ## A181940.P7397920068559001420

`∑[char[∑[n]]]-A004739(2*n+1)`
-/

namespace A181940.P7397920068559001420
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004739 (2 * n + 1)

end

end A181940.P7397920068559001420

namespace A181940

/-- `∑[char[∑[n]]]-A004739(2*n+1)` -/
def P7397920068559001420.Spec : Prop :=
  ∀ n, P7397920068559001420.a n = A181940 n

end A181940

/-! ## A181940.P5536474697790663035

`round(sqrt(2*(n+1))-A004739(Δ[n²]))`
-/

namespace A181940.P5536474697790663035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ) - (A004739 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ))

end

end A181940.P5536474697790663035

namespace A181940

/-- `round(sqrt(2*(n+1))-A004739(Δ[n²]))` -/
def P5536474697790663035.Spec : Prop :=
  ∀ n, P5536474697790663035.a n = A181940 n

end A181940

/-! ## A181940.P2146673304223450870

`abs(round(sqrt(2*(n+1)))²-(2*n+1))-A000045(round(n/∑[char[∑[n]]]²))`
-/

namespace A181940.P2146673304223450870
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| - A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ))).toNat

end

end A181940.P2146673304223450870

namespace A181940

/-- `abs(round(sqrt(2*(n+1)))²-(2*n+1))-A000045(round(n/∑[char[∑[n]]]²))` -/
def P2146673304223450870.Spec : Prop :=
  ∀ n, P2146673304223450870.a n = A181940 n

end A181940

/-! ## A181940.P2432941091204391981

`A003056(A335262(n))`
-/

namespace A181940.P2432941091204391981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A335262 n).toNat

end

end A181940.P2432941091204391981

namespace A181940

/-- `A003056(A335262(n))` -/
def P2432941091204391981.Spec : Prop :=
  ∀ n, P2432941091204391981.a n = A181940 n

end A181940

/-! ## A181940.P11736025289552082400

`A000401(A130517(n+1))`
-/

namespace A181940.P11736025289552082400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A130517 (n + 1)).toNat

end

end A181940.P11736025289552082400

namespace A181940

/-- `A000401(A130517(n+1))` -/
def P11736025289552082400.Spec : Prop :=
  ∀ n, P11736025289552082400.a n = A181940 n

end A181940

/-! ## A181940.P8170475517204492198

`A046667(A162630(n+1))`
-/

namespace A181940.P8170475517204492198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A162630 (n + 1)).toNat

end

end A181940.P8170475517204492198

namespace A181940

/-- `A046667(A162630(n+1))` -/
def P8170475517204492198.Spec : Prop :=
  ∀ n, P8170475517204492198.a n = A181940 n

end A181940

/-! ## A181940.P15805536026596338012

`A004739(A195437(n))-1`
-/

namespace A181940.P15805536026596338012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A195437 n).toNat - 1

end

end A181940.P15805536026596338012

namespace A181940

/-- `A004739(A195437(n))-1` -/
def P15805536026596338012.Spec : Prop :=
  ∀ n, P15805536026596338012.a n = A181940 n

end A181940

/-! ## A181940.P1635913053959979274

`A053615(A028391(2*n))`
-/

namespace A181940.P1635913053959979274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A028391 (2 * n)).toNat

end

end A181940.P1635913053959979274

namespace A181940

/-- `A053615(A028391(2*n))` -/
def P1635913053959979274.Spec : Prop :=
  ∀ n, P1635913053959979274.a n = A181940 n

end A181940

/-!
# A181941: Numbers n such that some group of order n has a non-cyclic commutator group.

The programs for A181941, there is no canonical definition to state claims against.
-/

/-! ## A181941.P7983221693206315162

`lt[A061142(n+5), A326644(n)]`
-/

namespace A181941.P7983221693206315162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181941.P7983221693206315162

/-! ## A181941.P7948812910593282739

`lt[A326306(n+5), A326644(n)]`
-/

namespace A181941.P7948812910593282739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326306 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181941.P7948812910593282739

/-! ## A181941.P3553332389438429665

`lt[A326623(A260429(n+1)), A326644(n)]`
-/

namespace A181941.P3553332389438429665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (A260429 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181941.P3553332389438429665

/-!
# A181943: Least prime p > 3 such that p > n (log p) log log p.

The programs for A181943, there is no canonical definition to state claims against.
-/

/-! ## A181943.P3269433125818177569

`p?[A101774(∑[A029395(n)])]`
-/

namespace A181943.P3269433125818177569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101774 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181943.P3269433125818177569

/-! ## A181943.P2014257354330904600

`p?[A341035(2*n+3)-A341021(3*n+4)]`
-/

namespace A181943.P2014257354330904600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341035 (2 * n + 3) - A341021 (3 * n + 4 + 20)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181943.P2014257354330904600

/-!
# A181944: Number of convex quadrilaterals, distinct up to congruence, on an n X n grid (or geoboard).

The programs for A181944, there is no canonical definition to state claims against.
-/

/-! ## A181944.P14918685747695805393

`A249434(A066657(∏[Δ[n²]]))`
-/

namespace A181944.P14918685747695805393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249434 (A066657 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A181944.P14918685747695805393

/-!
# A181945: Number of trapezoids, distinct up to congruence, on an n X n grid (or geoboard).

The programs for A181945, there is no canonical definition to state claims against.
-/

/-! ## A181945.P10214695352825759844

`A225600(A014166(n))`
-/

namespace A181945.P10214695352825759844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225600 (A014166 n).toNat

end

end A181945.P10214695352825759844

/-!
# A181947: Number of rhombi, distinct up to congruence, on an n X n grid (or geoboard).

The programs for A181947, there is no canonical definition to state claims against.
-/

/-! ## A181947.P7941300886192527994

`A130400(C(n, ceil(n/2)+2))+∑[n]`
-/

namespace A181947.P7941300886192527994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 (Nat.choose n (⌈(n : ℚ) / 2⌉ + 2).toNat) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A181947.P7941300886192527994

/-! ## A181947.P13051774664751440558

`∑[A001222(A007662(2*n))]`
-/

namespace A181947.P13051774664751440558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007662 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181947.P13051774664751440558

/-! ## A181947.P15171543682438056136

`A122202(A037956(n))+A000217(n)`
-/

namespace A181947.P15171543682438056136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 (A037956 n).toNat + A000217 n

end

end A181947.P15171543682438056136

/-! ## A181947.P353553375265214544

`∑[A001222(A085158(3*n))]`
-/

namespace A181947.P353553375265214544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A085158 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181947.P353553375265214544

/-!
# A181948: Triangle read by rows: T(n,k) (2 <= k <= n) = dimension of partially ordered set of all 1-element and (k-1)-element subsets of an n-set.

The programs for A181948, there is no canonical definition to state claims against.
-/

/-! ## A181948.P11728568595556912299

`A070941(A008949(n)%A234096(2*n+3))`
-/

namespace A181948.P11728568595556912299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (Int.tmod (A008949 n) (A234096 (2 * n + 3))).toNat

end

end A181948.P11728568595556912299

/-! ## A181948.P12097149349156265614

`A345874(A173786(n))`
-/

namespace A181948.P12097149349156265614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345874 (A173786 n).toNat

end

end A181948.P12097149349156265614

/-! ## A181948.P7400906587465707488

`A345874(A048645(n+2))`
-/

namespace A181948.P7400906587465707488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345874 (A048645 (n + 2)).toNat

end

end A181948.P7400906587465707488

/-! ## A181948.P4963176158078944685

`A070939(A332292(3*n+2)+A221881(n+1))`
-/

namespace A181948.P4963176158078944685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A332292 (3 * n + 2) + A221881 (n + 1)).toNat

end

end A181948.P4963176158078944685

/-! ## A181948.P6824724556714995275

`A110591((A221881(n+1)+1)²)`
-/

namespace A181948.P6824724556714995275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 ((A221881 (n + 1) + 1) ^ 2).toNat

end

end A181948.P6824724556714995275

/-!
# A181949: Weighted sum of all cyclic subgroups of the Symmetric Group.

The programs for A181949, there is no canonical definition to state claims against.
-/

/-! ## A181949.P13766650873446503030

`∑[A004396(Δ[A084785(n)])]`
-/

namespace A181949.P13766650873446503030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181949.P13766650873446503030

/-! ## A181949.P9435534630974396300

`A004396(A084785(n+1)-1)`
-/

namespace A181949.P9435534630974396300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A084785 (n + 1) - 1).toNat

end

end A181949.P9435534630974396300

/-!
# A181950: Weighted sum of all cyclic subgroups of the Alternating Group A_n.

The programs for A181950, there is no canonical definition to state claims against.
-/

/-! ## A181950.P4553267186454000386

`A028242(3*n*A002467(n))`
-/

namespace A181950.P4553267186454000386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((3 * n : ℤ) * A002467 n).toNat

end

end A181950.P4553267186454000386

/-! ## A181950.P11757876363833090494

`A002153(A001586(n))-A000272(n)`
-/

namespace A181950.P11757876363833090494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002153 (A001586 n).toNat - A000272 n

end

end A181950.P11757876363833090494

/-! ## A181950.P14563361128384504984

`A028242(n*A008486(A002467(n)))`
-/

namespace A181950.P14563361128384504984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((n : ℤ) * A008486 (A002467 n).toNat).toNat

end

end A181950.P14563361128384504984

/-!
# A181951: Number of cyclic subgroups of prime order in the Alternating Group A_n.

The programs for A181951, there is no canonical definition to state claims against.
-/

/-! ## A181951.P7515728294959077508

`A186202(n+1)-A001465(n+1)`
-/

namespace A181951.P7515728294959077508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186202 (n + 1) - A001465 (n + 1)

end

end A181951.P7515728294959077508

/-! ## A181951.P11797333437079103798

`A000704(n+1)+A186202(n+1)-A000085(n+1)`
-/

namespace A181951.P11797333437079103798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 (n + 1) + (A186202 (n + 1) - A000085 (n + 1))

end

end A181951.P11797333437079103798

/-! ## A181951.P4795064328729770500

`A001465(n+1)+A181955(n+1)-A214003(n+1)`
-/

namespace A181951.P4795064328729770500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 (n + 1) + (A181955 (n + 1) - A214003 (n + 1))

end

end A181951.P4795064328729770500

/-! ## A181951.P6437314787134030220

`A181954(n+1)-(A214003(n+1)+A001465(n+1))`
-/

namespace A181951.P6437314787134030220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181954 (n + 1) - (A214003 (n + 1) + A001465 (n + 1))

end

end A181951.P6437314787134030220

/-! ## A181951.P3119650927859571088

`A181954(n+1)-(A060181(n+1)-1)-A001465(n+1)`
-/

namespace A181951.P3119650927859571088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181954 (n + 1) - (A060181 (n + 1) - 1) - A001465 (n + 1)

end

end A181951.P3119650927859571088

/-!
# A181952: n!, digits ordered, zeros omitted.

The programs for A181952, there is no canonical definition to state claims against.
-/

/-! ## A181952.P15249129093487958647

`A004185(A004153(n))`
-/

namespace A181952.P15249129093487958647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A004153 n).toNat

end

end A181952.P15249129093487958647

/-! ## A181952.P3560392511862988174

`A004185(A004154(n))`
-/

namespace A181952.P3560392511862988174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A004154 n).toNat

end

end A181952.P3560392511862988174

/-! ## A181952.P12370932448654493526

`A004185(A356757(n))`
-/

namespace A181952.P12370932448654493526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A356757 n).toNat

end

end A181952.P12370932448654493526

/-! ## A181952.P6645291447630053415

`A004185(A004086(n!))`
-/

namespace A181952.P6645291447630053415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A004086 (Nat.factorial n)).toNat

end

end A181952.P6645291447630053415

/-! ## A181952.P7202172623027314811

`A004185(10*A243657(n))`
-/

namespace A181952.P7202172623027314811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (10 * A243657 n).toNat

end

end A181952.P7202172623027314811

/-!
# A181953: Least nonnegative k such that 2*t(n) + t(k) is prime, where t(n) = n *(n+1)/2, the n-th triangular number.

The programs for A181953, there is no canonical definition to state claims against.
-/

/-! ## A181953.P1722796956294632446

`A249061(A002378(n))-char[1]`
-/

namespace A181953.P1722796956294632446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (A002378 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181953.P1722796956294632446

/-! ## A181953.P13005656102599110272

`A249061(∑[2*n])+A159075(n)`
-/

namespace A181953.P13005656102599110272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (∑ j ∈ Finset.range (n + 1), f1 j) + A159075 n

end

end A181953.P13005656102599110272

/-! ## A181953.P15907657142845992559

`A060576(n)*A249061(∑[2*n])`
-/

namespace A181953.P15907657142845992559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A249061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181953.P15907657142845992559

/-! ## A181953.P5414081425621953397

`A249061(n²+n)%A120906(A052475(n+1))`
-/

namespace A181953.P5414081425621953397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249061 (n ^ 2 + n)) (A120906 (A052475 (n + 1)).toNat)

end

end A181953.P5414081425621953397

/-!
# A181954: Weighted sum of all cyclic subgroups of prime order of the symmetric group S_n.

The programs for A181954, there is no canonical definition to state claims against.
-/

/-! ## A181954.P14091503461908859626

`A186202(n+1)+A214003(n+1)`
-/

namespace A181954.P14091503461908859626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186202 (n + 1) + A214003 (n + 1)

end

end A181954.P14091503461908859626

/-! ## A181954.P16088915127274487792

`A060181(n+1)+A186202(n+1)-1`
-/

namespace A181954.P16088915127274487792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060181 (n + 1) + (A186202 (n + 1) - 1)

end

end A181954.P16088915127274487792

/-! ## A181954.P15183340257936532615

`A001465(n+1)+A181955(n+1)+A001465(n+1)`
-/

namespace A181954.P15183340257936532615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 (n + 1) + (A181955 (n + 1) + A001465 (n + 1))

end

end A181954.P15183340257936532615

/-! ## A181954.P7708410831479992423

`A001465(n+1)+A214003(n+1)+A181951(n+1)`
-/

namespace A181954.P7708410831479992423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 (n + 1) + (A214003 (n + 1) + A181951 (n + 1))

end

end A181954.P7708410831479992423

/-! ## A181954.P14954992687654200008

`A060181(n+1)-1+A181951(n+1)+A001465(n+1)`
-/

namespace A181954.P14954992687654200008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060181 (n + 1) - 1 + (A181951 (n + 1) + A001465 (n + 1))

end

end A181954.P14954992687654200008

/-!
# A181955: Weighted sum of all cyclic subgroups of prime order in the Alternating group.

The programs for A181955, there is no canonical definition to state claims against.
-/

/-! ## A181955.P2149946135613200942

`A181954(n+1)-2*A001465(n+1)`
-/

namespace A181955.P2149946135613200942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181954 (n + 1) - 2 * A001465 (n + 1)

end

end A181955.P2149946135613200942

/-! ## A181955.P4187078580348840114

`A181951(n+1)+A214003(n+1)-A001465(n+1)`
-/

namespace A181955.P4187078580348840114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181951 (n + 1) + (A214003 (n + 1) - A001465 (n + 1))

end

end A181955.P4187078580348840114

/-!
# A181956: Smallest prime greater than n*(n+1)^2/2.

The programs for A181956, there is no canonical definition to state claims against.
-/

/-! ## A181956.P15389266707152711681

`A151800((n+1)*∑[n])`
-/

namespace A181956.P15389266707152711681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A181956.P15389266707152711681

/-! ## A181956.P6893135797633158512

`p?[A151800(n*(n+1)²/2)]`
-/

namespace A181956.P6893135797633158512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((n * (n + 1) ^ 2 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181956.P6893135797633158512

/-! ## A181956.P3257080648075322505

`and(-1, A151800(-(xor(n, -1)*∑[n])))`
-/

namespace A181956.P3257080648075322505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A151800 (-(Int.xor (n : ℤ) (-1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat)

end

end A181956.P3257080648075322505

/-! ## A181956.P17867685935387270359

`∏{p}[A151800(∑[2*n²-C(n, 2)]), #]`
-/

namespace A181956.P17867685935387270359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A181956.P17867685935387270359

/-! ## A181956.P12605503906100132235

`and(-1, A151800(n*record[(n-1)²]/2))`
-/

namespace A181956.P12605503906100132235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A151800 (SequenceMachineLib.roundAway (((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)).toNat)

end

end A181956.P12605503906100132235

/-! ## A181956.P8170238509804053628

`and(-1, A151800(∑[C(n+1, 2)+n²]))`
-/

namespace A181956.P8170238509804053628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A151800 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A181956.P8170238509804053628

/-! ## A181956.P4189242721701355618

`∏{p}[A151800(n*∑[or(1, 2*n)]/2), #]`
-/

namespace A181956.P4189242721701355618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (((n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A181956.P4189242721701355618

/-! ## A181956.P9115704061571356508

`A151800(A006002(n))+C(n, 64)`
-/

namespace A181956.P9115704061571356508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006002 n).toNat + (Nat.choose n 64 : ℤ)

end

end A181956.P9115704061571356508

/-! ## A181956.P9255354025409880767

`A006530(A151800(∑[∑[n]+n²]))`
-/

namespace A181956.P9255354025409880767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A151800 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A181956.P9255354025409880767

/-!
# A181961: Number of independent sets of nodes in graph C_6 x P_n (n>=0).

The programs for A181961, there is no canonical definition to state claims against.
-/

/-! ## A181961.P5975619341310347624

`A286513(A056000(n)+16)`
-/

namespace A181961.P5975619341310347624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A056000 n + 16).toNat

end

end A181961.P5975619341310347624

/-! ## A181961.P10399495527178204174

`A286513(Δ[A224039(n+2)])`
-/

namespace A181961.P10399495527178204174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (f1 (n + 1) - f1 n).toNat

end

end A181961.P10399495527178204174

/-! ## A181961.P16967220511853611042

`A286513(A167499(n+3)+1)`
-/

namespace A181961.P16967220511853611042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A167499 (n + 3) + 1).toNat

end

end A181961.P16967220511853611042

/-! ## A181961.P4981512910399799077

`A286513(A000124(n+4)+5)`
-/

namespace A181961.P4981512910399799077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A000124 (n + 4) + 5).toNat

end

end A181961.P4981512910399799077

/-! ## A181961.P3035796351579869285

`A286513(A000217(n+4)+6)`
-/

namespace A181961.P3035796351579869285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A000217 (n + 4) + 6).toNat

end

end A181961.P3035796351579869285

/-!
# A181962: Numbers not of the form pi(p) + pi(sqrt(p)) for some prime p.

The programs for A181962, the canonical program `A181962.P15147201020200271264` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181962 has offset 1).

The definition of A181962 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000879, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181962.P15147201020200271264

`A000879(n+1)+n+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181962

/-- `A000879(n+1)+n+1` -/
def P15147201020200271264.Spec : Prop :=
  ∀ n, P15147201020200271264.a n = A181962 (n + 1)

theorem P15147201020200271264.correct : P15147201020200271264.Spec := by
  intro n
  simp only [A181962, Nat.add_sub_cancel]

end A181962

/-! ## A181962.P11336642125808861089

`∑[A050216(n)+1]`
-/

namespace A181962.P11336642125808861089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181962.P11336642125808861089

namespace A181962

/-- `∑[A050216(n)+1]` -/
def P11336642125808861089.Spec : Prop :=
  ∀ n, P11336642125808861089.a n = A181962 (n + 1)

end A181962

/-! ## A181962.P6704746379540961634

`A062773(n+1)+n`
-/

namespace A181962.P6704746379540961634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) + (n : ℤ)

end

end A181962.P6704746379540961634

namespace A181962

/-- `A062773(n+1)+n` -/
def P6704746379540961634.Spec : Prop :=
  ∀ n, P6704746379540961634.a n = A181962 (n + 1)

end A181962

/-! ## A181962.P7069799009768259200

`A250473(n+1)+2*n`
-/

namespace A181962.P7069799009768259200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) + (2 * n : ℤ)

end

end A181962.P7069799009768259200

namespace A181962

/-- `A250473(n+1)+2*n` -/
def P7069799009768259200.Spec : Prop :=
  ∀ n, P7069799009768259200.a n = A181962 (n + 1)

end A181962

/-! ## A181962.P2607023462092494074

`A054272(n+1)+Δ[n²]`
-/

namespace A181962.P2607023462092494074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A181962.P2607023462092494074

namespace A181962

/-- `A054272(n+1)+Δ[n²]` -/
def P2607023462092494074.Spec : Prop :=
  ∀ n, P2607023462092494074.a n = A181962 (n + 1)

end A181962

/-! ## A181962.P16062364008888761288

`A250474(n+1)+A060747(n)`
-/

namespace A181962.P16062364008888761288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) + A060747 n

end

end A181962.P16062364008888761288

namespace A181962

/-- `A250474(n+1)+A060747(n)` -/
def P16062364008888761288.Spec : Prop :=
  ∀ n, P16062364008888761288.a n = A181962 (n + 1)

end A181962

/-! ## A181962.P221009270471722580

`A250474(n+1)-A165747(n)`
-/

namespace A181962.P221009270471722580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - A165747 n

end

end A181962.P221009270471722580

namespace A181962

/-- `A250474(n+1)-A165747(n)` -/
def P221009270471722580.Spec : Prop :=
  ∀ n, P221009270471722580.a n = A181962 (n + 1)

end A181962

/-! ## A181962.P1465527113136150434

`A038107(A000040(n+1))+n+1`
-/

namespace A181962.P1465527113136150434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A000040 (n + 1)).toNat + (n + 1 : ℤ)

end

end A181962.P1465527113136150434

namespace A181962

/-- `A038107(A000040(n+1))+n+1` -/
def P1465527113136150434.Spec : Prop :=
  ∀ n, P1465527113136150434.a n = A181962 (n + 1)

end A181962

/-! ## A181962.P10346200131054312043

`A079047(n+1)+2*(n+1)`
-/

namespace A181962.P10346200131054312043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079047 (n + 1) + (2 * (n + 1) : ℤ)

end

end A181962.P10346200131054312043

namespace A181962

/-- `A079047(n+1)+2*(n+1)` -/
def P10346200131054312043.Spec : Prop :=
  ∀ n, P10346200131054312043.a n = A181962 (n + 1)

end A181962

/-! ## A181962.P2716032849626917418

`A000720(A062772(n+1))+n`
-/

namespace A181962.P2716032849626917418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062772 (n + 1)).toNat + (n : ℤ)

end

end A181962.P2716032849626917418

namespace A181962

/-- `A000720(A062772(n+1))+n` -/
def P2716032849626917418.Spec : Prop :=
  ∀ n, P2716032849626917418.a n = A181962 (n + 1)

end A181962

/-!
# A181963: Prime-generating polynomial: a(n) = 25*n^2 - 1185*n + 14083.

The programs for A181963, there is no canonical definition to state claims against.
-/

/-! ## A181963.P15000925117692212483

`A140708(4*n+1)`
-/

namespace A181963.P15000925117692212483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140708 (4 * n + 1)

end

end A181963.P15000925117692212483

/-! ## A181963.P15314486984749352368

`p?[A140708(n+1)+gcd(4, n)%4]`
-/

namespace A181963.P15314486984749352368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140708 (n + 1) + ((Nat.gcd 4 n % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181963.P15314486984749352368

/-! ## A181963.P17822511530059334982

`p?[A140708(A016813(n))]`
-/

namespace A181963.P17822511530059334982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140708 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181963.P17822511530059334982

/-! ## A181963.P12412363636156746289

`p?[A140708(record[A009001(n)])]`
-/

namespace A181963.P12412363636156746289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140708 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181963.P12412363636156746289

/-! ## A181963.P16738587456357096242

`p?[A140708(record[A127630(n)])]`
-/

namespace A181963.P16738587456357096242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127630 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140708 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181963.P16738587456357096242

/-!
# A181964: Sum of the sizes of normalizers of all the cyclic subgroups of Alternating Group of order n.

The programs for A181964, there is no canonical definition to state claims against.
-/

/-! ## A181964.P15007964640867092700

`A001710(n+1)*A046682(n+1)`
-/

namespace A181964.P15007964640867092700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 1) * A046682 (n + 1)

end

end A181964.P15007964640867092700

/-! ## A181964.P11161608057914522163

`A046682(n+1)*A187741(2*n)`
-/

namespace A181964.P11161608057914522163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (n + 1) * A187741 (2 * n)

end

end A181964.P11161608057914522163

/-! ## A181964.P7088809274940358782

`A046682(n+1)/A000702(n+1)*A073584(n+1)`
-/

namespace A181964.P7088809274940358782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046682 (n + 1) : ℚ) / (A000702 (n + 1) : ℚ) * (A073584 (n + 1) : ℚ)

end

end A181964.P7088809274940358782

/-! ## A181964.P10905349509702591487

`A046682(n+1)*A277408(A000124(n))`
-/

namespace A181964.P10905349509702591487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (n + 1) * A277408 (A000124 n).toNat

end

end A181964.P10905349509702591487

/-!
# A181965: a(n) = 10^(2*n+1) - 10^n - 1.

The programs for A181965, the canonical program `A181965.P12693707315523960175` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181965 has offset 0).

The definition of A181965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(2*n+1)-10^n-1` (program `A181965.P12693707315523960175`, by `A181965.P12693707315523960175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181965.P1608742120604041968

`10^(2*n+1)-1-10^n`
-/

namespace A181965.P1608742120604041968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (2 * n + 1) : ℤ) - 1 - (10 ^ n : ℤ)

end

end A181965.P1608742120604041968

namespace A181965

/-- `10^(2*n+1)-1-10^n` -/
def P1608742120604041968.Spec : Prop :=
  ∀ n, P1608742120604041968.a n = A181965 n

theorem P1608742120604041968.correct : P1608742120604041968.Spec := by
  intro n
  simp only [A181965, Nat.add_sub_cancel, A181965.P1608742120604041968.a, A181965.P12693707315523960175.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A181965

/-! ## A181965.P12693707315523960175

`10^(2*n+1)-10^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181965

/-- `10^(2*n+1)-10^n-1` -/
def P12693707315523960175.Spec : Prop :=
  ∀ n, P12693707315523960175.a n = A181965 n

theorem P12693707315523960175.correct : P12693707315523960175.Spec := by
  intro n
  simp only [A181965]

end A181965

/-! ## A181965.P5629790381392853586

`floor(A086695(n+1)/10)`
-/

namespace A181965.P5629790381392853586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086695 (n + 1) : ℚ) / 10⌋

end

end A181965.P5629790381392853586

namespace A181965

/-- `floor(A086695(n+1)/10)` -/
def P5629790381392853586.Spec : Prop :=
  ∀ n, P5629790381392853586.a n = A181965 n

end A181965

/-! ## A181965.P15518331764056323799

`or(n, A332197(n)+A011557(n))`
-/

namespace A181965.P15518331764056323799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A332197 n + A011557 n)

end

end A181965.P15518331764056323799

namespace A181965

/-- `or(n, A332197(n)+A011557(n))` -/
def P15518331764056323799.Spec : Prop :=
  ∀ n, P15518331764056323799.a n = A181965 n

end A181965

/-! ## A181965.P4063832994061677977

`or(n, A332163(n)+A332135(n))`
-/

namespace A181965.P4063832994061677977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A332163 n + A332135 n)

end

end A181965.P4063832994061677977

namespace A181965

/-- `or(n, A332163(n)+A332135(n))` -/
def P4063832994061677977.Spec : Prop :=
  ∀ n, P4063832994061677977.a n = A181965 n

end A181965

/-! ## A181965.P14403266657993175275

`or(n, A332164(n)+A332134(n))`
-/

namespace A181965.P14403266657993175275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A332164 n + A332134 n)

end

end A181965.P14403266657993175275

namespace A181965

/-- `or(n, A332164(n)+A332134(n))` -/
def P14403266657993175275.Spec : Prop :=
  ∀ n, P14403266657993175275.a n = A181965 n

end A181965

/-! ## A181965.P4516917922420934799

`or(n, A332184(n)+A332114(n))`
-/

namespace A181965.P4516917922420934799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A332184 n + A332114 n)

end

end A181965.P4516917922420934799

namespace A181965

/-- `or(n, A332184(n)+A332114(n))` -/
def P4516917922420934799.Spec : Prop :=
  ∀ n, P4516917922420934799.a n = A181965 n

end A181965

/-!
# A181966: Sum of the sizes of normalizers of all prime order cyclic subgroups of the symmetric group S_n.

The programs for A181966, the canonical program `A181966.P3642588187185177021` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181966 has offset 1).

The definition of A181966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181966.P3642588187185177021

`(n+1)!*A013939(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181966

/-- `(n+1)!*A013939(n+1)` -/
def P3642588187185177021.Spec : Prop :=
  ∀ n, P3642588187185177021.a n = A181966 (n + 1)

theorem P3642588187185177021.correct : P3642588187185177021.Spec := by
  intro n
  simp only [A181966, Nat.add_sub_cancel]

end A181966

/-! ## A181966.P16660919766812737915

`(n+1)!*∑[∑{p}[n+1, gcd(n, #)]]`
-/

namespace A181966.P16660919766812737915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181966.P16660919766812737915

namespace A181966

/-- `(n+1)!*∑[∑{p}[n+1, gcd(n, #)]]` -/
def P16660919766812737915.Spec : Prop :=
  ∀ n, (P16660919766812737915.a n : ℤ) = A181966 (n + 1)

end A181966

/-! ## A181966.P4121173186809881135

`(n+1)!*∑[A001221(n+1)]`
-/

namespace A181966.P4121173186809881135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181966.P4121173186809881135

namespace A181966

/-- `(n+1)!*∑[A001221(n+1)]` -/
def P4121173186809881135.Spec : Prop :=
  ∀ n, P4121173186809881135.a n = A181966 (n + 1)

end A181966

/-! ## A181966.P2683160457957591995

`(n+1)!*∑[∑{p}[n+1, A001222(#)]]`
-/

namespace A181966.P2683160457957591995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A001222 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181966.P2683160457957591995

namespace A181966

/-- `(n+1)!*∑[∑{p}[n+1, A001222(#)]]` -/
def P2683160457957591995.Spec : Prop :=
  ∀ n, P2683160457957591995.a n = A181966 (n + 1)

end A181966

/-! ## A181966.P2016229718047700815

`(n+1)!*∑[A001222(∏{p}[n+1, #])]`
-/

namespace A181966.P2016229718047700815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181966.P2016229718047700815

namespace A181966

/-- `(n+1)!*∑[A001222(∏{p}[n+1, #])]` -/
def P2016229718047700815.Spec : Prop :=
  ∀ n, P2016229718047700815.a n = A181966 (n + 1)

end A181966

/-! ## A181966.P13351933469132163547

`∑[A001221(record[(1-n)²])]*∏[n+1]`
-/

namespace A181966.P13351933469132163547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A181966.P13351933469132163547

namespace A181966

/-- `∑[A001221(record[(1-n)²])]*∏[n+1]` -/
def P13351933469132163547.Spec : Prop :=
  ∀ n, P13351933469132163547.a n = A181966 (n + 1)

end A181966

/-! ## A181966.P16289044285378546810

`A000142(n+1)*A013939(n+1)`
-/

namespace A181966.P16289044285378546810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A013939 (n + 1)

end

end A181966.P16289044285378546810

namespace A181966

/-- `A000142(n+1)*A013939(n+1)` -/
def P16289044285378546810.Spec : Prop :=
  ∀ n, P16289044285378546810.a n = A181966 (n + 1)

end A181966

/-! ## A181966.P4202374606034821259

`∑[A001221(n+1)]*Δ[A007489(n)]`
-/

namespace A181966.P4202374606034821259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A181966.P4202374606034821259

namespace A181966

/-- `∑[A001221(n+1)]*Δ[A007489(n)]` -/
def P4202374606034821259.Spec : Prop :=
  ∀ n, P4202374606034821259.a n = A181966 (n + 1)

end A181966

/-! ## A181966.P10017882305136678313

`∑[A001221(n+1)]*A000142(n+1)`
-/

namespace A181966.P10017882305136678313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 (n + 1)

end

end A181966.P10017882305136678313

namespace A181966

/-- `∑[A001221(n+1)]*A000142(n+1)` -/
def P10017882305136678313.Spec : Prop :=
  ∀ n, P10017882305136678313.a n = A181966 (n + 1)

end A181966

/-! ## A181966.P3510284424826046279

`(n+1)!*∑[A001222(A007947(n+1))]`
-/

namespace A181966.P3510284424826046279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181966.P3510284424826046279

namespace A181966

/-- `(n+1)!*∑[A001222(A007947(n+1))]` -/
def P3510284424826046279.Spec : Prop :=
  ∀ n, P3510284424826046279.a n = A181966 (n + 1)

end A181966

/-!
# A181967: Sum of the sizes of the normalizers of all prime order cyclic subgroups of the alternating group A_n.

The programs for A181967, the canonical program `A181967.P15063776674140415528` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181967 has offset 1).

The definition of A181967 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181967.P15063776674140415528

`(n+1)!*(A013939(n+1)-floor((n+3)/4))/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181967

/-- `(n+1)!*(A013939(n+1)-floor((n+3)/4))/2` -/
def P15063776674140415528.Spec : Prop :=
  ∀ n, P15063776674140415528.a n = (A181967 (n + 1) : ℚ)

end A181967

/-!
# A181968: a(n) = 54n^3 - 1.

The programs for A181968, the canonical program `A181968.P18204790417632401836` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181968 has offset 1).

The definition of A181968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `54*(n+1)^3-1` (program `A181968.P18204790417632401836`, by `A181968.P18204790417632401836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181968.P18204790417632401836

`54*(n+1)^3-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181968

/-- `54*(n+1)^3-1` -/
def P18204790417632401836.Spec : Prop :=
  ∀ n, P18204790417632401836.a n = A181968 (n + 1)

theorem P18204790417632401836.correct : P18204790417632401836.Spec := by
  intro n
  simp only [A181968, Nat.add_sub_cancel]

end A181968

/-! ## A181968.P12543887312754980080

`(A085482(n+1)-A000584(n+1))/A000584(n+1)`
-/

namespace A181968.P12543887312754980080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085482 (n + 1) - A000584 (n + 1) : ℚ) / (A000584 (n + 1) : ℚ)

end

end A181968.P12543887312754980080

namespace A181968

/-- `(A085482(n+1)-A000584(n+1))/A000584(n+1)` -/
def P12543887312754980080.Spec : Prop :=
  ∀ n, P12543887312754980080.a n = (A181968 (n + 1) : ℚ)

end A181968

/-! ## A181968.P2113584917343259441

`abs(1-A033431(3*(n+1)))`
-/

namespace A181968.P2113584917343259441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A033431 (3 * (n + 1))|

end

end A181968.P2113584917343259441

namespace A181968

/-- `abs(1-A033431(3*(n+1)))` -/
def P2113584917343259441.Spec : Prop :=
  ∀ n, P2113584917343259441.a n = A181968 (n + 1)

end A181968

/-! ## A181968.P11993475667448762778

`or(1, 2*A000578(3*(n+1))-1)`
-/

namespace A181968.P11993475667448762778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A000578 (3 * (n + 1)) - 1)

end

end A181968.P11993475667448762778

namespace A181968

/-- `or(1, 2*A000578(3*(n+1))-1)` -/
def P11993475667448762778.Spec : Prop :=
  ∀ n, P11993475667448762778.a n = A181968 (n + 1)

end A181968

/-! ## A181968.P13722748626582873239

`(1-A033431(A008486(n+1)))*(1-4/2)`
-/

namespace A181968.P13722748626582873239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A033431 (A008486 (n + 1)).toNat : ℚ) * (1 - (4 : ℚ) / 2)

end

end A181968.P13722748626582873239

namespace A181968

/-- `(1-A033431(A008486(n+1)))*(1-4/2)` -/
def P13722748626582873239.Spec : Prop :=
  ∀ n, P13722748626582873239.a n = (A181968 (n + 1) : ℚ)

end A181968

/-! ## A181968.P7291685657684663795

`(A000578(6*(n+1))-4)/4`
-/

namespace A181968.P7291685657684663795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (6 * (n + 1)) - 4 : ℚ) / 4

end

end A181968.P7291685657684663795

namespace A181968

/-- `(A000578(6*(n+1))-4)/4` -/
def P7291685657684663795.Spec : Prop :=
  ∀ n, P7291685657684663795.a n = (A181968 (n + 1) : ℚ)

end A181968

/-! ## A181968.P12844953894353326036

`Δ[A033581(A045943(n))-n]`
-/

namespace A181968.P12844953894353326036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (A045943 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181968.P12844953894353326036

namespace A181968

/-- `Δ[A033581(A045943(n))-n]` -/
def P12844953894353326036.Spec : Prop :=
  ∀ n, P12844953894353326036.a n = A181968 (n + 1)

end A181968

/-!
# A181969: Prime-generating polynomial: a(n) = 16*n^2 - 292*n + 1373.

The programs for A181969, the canonical program `A181969.P2584642580505507836` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181969 has offset 0).

The definition of A181969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181969.P2584642580505507836

`A226097(Δ[n²])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181969

/-- `A226097(Δ[n²])` -/
def P2584642580505507836.Spec : Prop :=
  ∀ n, P2584642580505507836.a n = A181969 n

theorem P2584642580505507836.correct : P2584642580505507836.Spec := by
  intro n
  simp only [A181969]

end A181969

/-! ## A181969.P11522443929216676006

`root(A226097(2*n+1), 2)²`
-/

namespace A181969.P11522443929216676006
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A226097 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A181969.P11522443929216676006

namespace A181969

/-- `root(A226097(2*n+1), 2)²` -/
def P11522443929216676006.Spec : Prop :=
  ∀ n, P11522443929216676006.a n = (A181969 n : ℝ)

end A181969

/-! ## A181969.P8990924544897359391

`or(1, A226097(A005843(n)+1))`
-/

namespace A181969.P8990924544897359391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226097 (A005843 n + 1).toNat)

end

end A181969.P8990924544897359391

namespace A181969

/-- `or(1, A226097(A005843(n)+1))` -/
def P8990924544897359391.Spec : Prop :=
  ∀ n, P8990924544897359391.a n = A181969 n

end A181969

/-! ## A181969.P3770144312808454435

`or(1, A226097(or(1, A005843(n))))`
-/

namespace A181969.P3770144312808454435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226097 (Int.lor 1 (A005843 n)).toNat)

end

end A181969.P3770144312808454435

namespace A181969

/-- `or(1, A226097(or(1, A005843(n))))` -/
def P3770144312808454435.Spec : Prop :=
  ∀ n, P3770144312808454435.a n = A181969 n

end A181969

/-! ## A181969.P6875395726951590546

`A226097(2*n+1)%∑[A226097(n)]`
-/

namespace A181969.P6875395726951590546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226097 (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181969.P6875395726951590546

namespace A181969

/-- `A226097(2*n+1)%∑[A226097(n)]` -/
def P6875395726951590546.Spec : Prop :=
  ∀ n, P6875395726951590546.a n = A181969 n

end A181969

/-! ## A181969.P4699910582510651433

`A226097(A109613(2*n))-A000035(2*n)`
-/

namespace A181969.P4699910582510651433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (A109613 (2 * n)).toNat - A000035 (2 * n)

end

end A181969.P4699910582510651433

namespace A181969

/-- `A226097(A109613(2*n))-A000035(2*n)` -/
def P4699910582510651433.Spec : Prop :=
  ∀ n, P4699910582510651433.a n = A181969 n

end A181969

/-! ## A181969.P1873084324010939169

`A060566(4*n+3)`
-/

namespace A181969.P1873084324010939169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (4 * n + 3)

end

end A181969.P1873084324010939169

namespace A181969

/-- `A060566(4*n+3)` -/
def P1873084324010939169.Spec : Prop :=
  ∀ n, P1873084324010939169.a n = A181969 n

end A181969

/-! ## A181969.P5449702434898048977

`filter[A226097(2*n+1), A008966(#)]`
-/

namespace A181969.P5449702434898048977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A181969.P5449702434898048977

namespace A181969

/-- `filter[A226097(2*n+1), A008966(#)]` -/
def P5449702434898048977.Spec : Prop :=
  ∀ n, P5449702434898048977.a n = A181969 n

end A181969

/-! ## A181969.P11345479706443428267

`filter[A226097(2*n+1), A014578(#)]`
-/

namespace A181969.P11345479706443428267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A181969.P11345479706443428267

namespace A181969

/-- `filter[A226097(2*n+1), A014578(#)]` -/
def P11345479706443428267.Spec : Prop :=
  ∀ n, P11345479706443428267.a n = A181969 n

end A181969

/-! ## A181969.P3730556191896555751

`filter[A226097(n), A290098(#)]`
-/

namespace A181969.P3730556191896555751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A181969.P3730556191896555751

namespace A181969

/-- `filter[A226097(n), A290098(#)]` -/
def P3730556191896555751.Spec : Prop :=
  ∀ n, P3730556191896555751.a n = A181969 n

end A181969

/-!
# A181970: Places of nonprimes in A050376.

The programs for A181970, there is no canonical definition to state claims against.
-/

/-! ## A181970.P9433746858381187020

`A038107(A050376(n+1))+1+n`
-/

namespace A181970.P9433746858381187020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A050376 (n + 1)).toNat + 1 + (n : ℤ)

end

end A181970.P9433746858381187020

/-! ## A181970.P17320389150708317935

`lt[2, A000005(A084400(n+1))]`
-/

namespace A181970.P17320389150708317935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A084400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A181970.P17320389150708317935

/-! ## A181970.P5280127557474488138

`A000720(A082522(n+1))+1+n`
-/

namespace A181970.P5280127557474488138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082522 (n + 1)).toNat + 1 + (n : ℤ)

end

end A181970.P5280127557474488138

/-! ## A181970.P7376507552596930802

`A000720(A050376(n+1)²)+1+n`
-/

namespace A181970.P7376507552596930802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A050376 (n + 1) ^ 2).toNat + 1 + (n : ℤ)

end

end A181970.P7376507552596930802

/-! ## A181970.P18368155147379904249

`A000720(A084400(n+2)²)+1+n`
-/

namespace A181970.P18368155147379904249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084400 (n + 2) ^ 2).toNat + 1 + (n : ℤ)

end

end A181970.P18368155147379904249

/-! ## A181970.P14905106070331698998

`A000720(A084400(n+2)^2)+1+n`
-/

namespace A181970.P14905106070331698998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084400 (n + 2) ^ 2).toNat + 1 + (n : ℤ)

end

end A181970.P14905106070331698998

/-! ## A181970.P11809148655082986626

`A000720(A050376(n+1)*A050376(n+1))+n+1`
-/

namespace A181970.P11809148655082986626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A050376 (n + 1) * A050376 (n + 1)).toNat + (n + 1 : ℤ)

end

end A181970.P11809148655082986626

/-! ## A181970.P8855670154185264025

`record[A302785((n+2)²)]`
-/

namespace A181970.P8855670154185264025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302785 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181970.P8855670154185264025

/-! ## A181970.P15245739787555037776

`record[A302786((n+2)²)]`
-/

namespace A181970.P15245739787555037776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302786 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181970.P15245739787555037776

/-! ## A181970.P11443296200144958497

`A302778(A082522(n+1))`
-/

namespace A181970.P11443296200144958497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (A082522 (n + 1)).toNat

end

end A181970.P11443296200144958497

/-!
# A181971: Triangle read by rows: T(n,0) = 1, T(n,n) = floor((n+3)/2) and T(n,k) = T(n-1,k-1) + T(n-1,k), 0 < k < n.

The programs for A181971, there is no canonical definition to state claims against.
-/

/-! ## A181971.P17901537112914252763

`A029656(n+1)-A035317(n)`
-/

namespace A181971.P17901537112914252763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A035317 n

end

end A181971.P17901537112914252763

/-! ## A181971.P16499907644846232716

`A007318(n)+A035317(n)-A059259(n)`
-/

namespace A181971.P16499907644846232716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A035317 n - A059259 n)

end

end A181971.P16499907644846232716

/-! ## A181971.P10910826726921351225

`A007318(n)+A074909(n)-A035317(n)`
-/

namespace A181971.P10910826726921351225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A074909 n - A035317 n)

end

end A181971.P10910826726921351225

/-! ## A181971.P1201898493759881562

`A035317(n)+A059259(n)-A108561(n)`
-/

namespace A181971.P1201898493759881562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 n + (A059259 n - A108561 n)

end

end A181971.P1201898493759881562

/-! ## A181971.P6244309198353602803

`A029656(n+1)-A128176(A038722(n+1))`
-/

namespace A181971.P6244309198353602803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A128176 (A038722 (n + 1)).toNat

end

end A181971.P6244309198353602803

/-!
# A181972: Number of integer pairs (x,y) such that 0

The programs for A181972, the canonical program `A181972.P14820601943036584193` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181972 has offset 1).

The definition of A181972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181972.P14820601943036584193

`∑[val(∏{d}[n+1, gcd(2, #)], 4)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181972

/-- `∑[val(∏{d}[n+1, gcd(2, #)], 4)]` -/
def P14820601943036584193.Spec : Prop :=
  ∀ n, (P14820601943036584193.a n : ℤ) = A181972 (n + 1)

theorem P14820601943036584193.correct : P14820601943036584193.Spec := by
  intro n
  simp only [A181972, Nat.add_sub_cancel]

end A181972

/-! ## A181972.P6922398840482007972

`∑[floor(A183063(n+1)/2)]`
-/

namespace A181972.P6922398840482007972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183063 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P6922398840482007972

namespace A181972

/-- `∑[floor(A183063(n+1)/2)]` -/
def P6922398840482007972.Spec : Prop :=
  ∀ n, P6922398840482007972.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P18375293171609413963

`∑[val(∏{d}[n+1, A020639(#)], 4)]`
-/

namespace A181972.P18375293171609413963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f2 n), A020639 d).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P18375293171609413963

namespace A181972

/-- `∑[val(∏{d}[n+1, A020639(#)], 4)]` -/
def P18375293171609413963.Spec : Prop :=
  ∀ n, (P18375293171609413963.a n : ℤ) = A181972 (n + 1)

end A181972

/-! ## A181972.P16050841519889409192

`∑[∑{d}[∑[n]%(n+1), A001222(#)%2]]`
-/

namespace A181972.P16050841519889409192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A001222 d) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P16050841519889409192

namespace A181972

/-- `∑[∑{d}[∑[n]%(n+1), A001222(#)%2]]` -/
def P16050841519889409192.Spec : Prop :=
  ∀ n, P16050841519889409192.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P1958304185067992166

`A211264(A065033(n))`
-/

namespace A181972.P1958304185067992166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (A065033 n).toNat

end

end A181972.P1958304185067992166

namespace A181972

/-- `A211264(A065033(n))` -/
def P1958304185067992166.Spec : Prop :=
  ∀ n, P1958304185067992166.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P7072643649361628191

`∑[A004526(A183063(n+1))]`
-/

namespace A181972.P7072643649361628191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A183063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P7072643649361628191

namespace A181972

/-- `∑[A004526(A183063(n+1))]` -/
def P7072643649361628191.Spec : Prop :=
  ∀ n, P7072643649361628191.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P17127502118380496686

`A211264(∑[char[A103517(n)-1]])`
-/

namespace A181972.P17127502118380496686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181972.P17127502118380496686

namespace A181972

/-- `A211264(∑[char[A103517(n)-1]])` -/
def P17127502118380496686.Spec : Prop :=
  ∀ n, P17127502118380496686.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P14651632521607123338

`A362059(n+1)-A211275(n+1)`
-/

namespace A181972.P14651632521607123338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (n + 1) - A211275 (n + 1)

end

end A181972.P14651632521607123338

namespace A181972

/-- `A362059(n+1)-A211275(n+1)` -/
def P14651632521607123338.Spec : Prop :=
  ∀ n, P14651632521607123338.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P12195038548523514655

`∑[val(∏{d}[n+1, or(2, #)], 4)]`
-/

namespace A181972.P12195038548523514655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f2 n), Nat.lor 2 d) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P12195038548523514655

namespace A181972

/-- `∑[val(∏{d}[n+1, or(2, #)], 4)]` -/
def P12195038548523514655.Spec : Prop :=
  ∀ n, (P12195038548523514655.a n : ℤ) = A181972 (n + 1)

end A181972

/-! ## A181972.P16520750985178316570

`∑[val(∏{d}[n+1, #], 2*(n+1))]`
-/

namespace A181972.P16520750985178316570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f2 n), d) (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P16520750985178316570

namespace A181972

/-- `∑[val(∏{d}[n+1, #], 2*(n+1))]` -/
def P16520750985178316570.Spec : Prop :=
  ∀ n, (P16520750985178316570.a n : ℤ) = A181972 (n + 1)

end A181972

/-! ## A181972.P8244650526385660002

`∑[A100073(2*(n+1))]`
-/

namespace A181972.P8244650526385660002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P8244650526385660002

namespace A181972

/-- `∑[A100073(2*(n+1))]` -/
def P8244650526385660002.Spec : Prop :=
  ∀ n, P8244650526385660002.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P5928017312185177963

`∑[A002265(A094572(2*(n+1)))]`
-/

namespace A181972.P5928017312185177963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A094572 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P5928017312185177963

namespace A181972

/-- `∑[A002265(A094572(2*(n+1)))]` -/
def P5928017312185177963.Spec : Prop :=
  ∀ n, P5928017312185177963.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P5281580950264297957

`∑[A000005(n+1)-A038548(2*(n+1))]`
-/

namespace A181972.P5281580950264297957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A038548 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P5281580950264297957

namespace A181972

/-- `∑[A000005(n+1)-A038548(2*(n+1))]` -/
def P5281580950264297957.Spec : Prop :=
  ∀ n, P5281580950264297957.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P16296845538998292392

`∑[A334954(n+1)-1-A038548(2*(n+1))]`
-/

namespace A181972.P16296845538998292392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - 1 - A038548 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P16296845538998292392

namespace A181972

/-- `∑[A334954(n+1)-1-A038548(2*(n+1))]` -/
def P16296845538998292392.Spec : Prop :=
  ∀ n, P16296845538998292392.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P1189404456889175658

`∑[∑{d}[n+1, A057427(#)]-A038548(2*(n+1))]`
-/

namespace A181972.P1189404456889175658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A057427 d - A038548 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P1189404456889175658

namespace A181972

/-- `∑[∑{d}[n+1, A057427(#)]-A038548(2*(n+1))]` -/
def P1189404456889175658.Spec : Prop :=
  ∀ n, P1189404456889175658.a n = A181972 (n + 1)

end A181972

/-! ## A181972.P14958739163943901277

`∑[A038040(n+1)/(n+1)-A038548(2*(n+1))]`
-/

namespace A181972.P14958739163943901277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A038548 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181972.P14958739163943901277

namespace A181972

/-- `∑[A038040(n+1)/(n+1)-A038548(2*(n+1))]` -/
def P14958739163943901277.Spec : Prop :=
  ∀ n, P14958739163943901277.a n = (A181972 (n + 1) : ℚ)

end A181972

/-!
# A181973: Prime-generating polynomial: a(n) = 16*n^2 - 300*n + 1447.

The programs for A181973, the canonical program `A181973.P8315557034956440561` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181973 has offset 0).

The definition of A181973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181973.P8315557034956440561

`A226097(2*n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181973

/-- `A226097(2*n)` -/
def P8315557034956440561.Spec : Prop :=
  ∀ n, P8315557034956440561.a n = A181973 n

theorem P8315557034956440561.correct : P8315557034956440561.Spec := by
  intro n
  simp only [A181973]

end A181973

/-! ## A181973.P2370832541329619008

`or(1, A226097(A005843(n)))`
-/

namespace A181973.P2370832541329619008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226097 (A005843 n).toNat)

end

end A181973.P2370832541329619008

namespace A181973

/-- `or(1, A226097(A005843(n)))` -/
def P2370832541329619008.Spec : Prop :=
  ∀ n, P2370832541329619008.a n = A181973 n

end A181973

/-! ## A181973.P6709930833627856413

`A226097(A005843(n))%A017510(n)²`
-/

namespace A181973.P6709930833627856413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226097 (A005843 n).toNat) (A017510 n ^ 2)

end

end A181973.P6709930833627856413

namespace A181973

/-- `A226097(A005843(n))%A017510(n)²` -/
def P6709930833627856413.Spec : Prop :=
  ∀ n, P6709930833627856413.a n = A181973 n

end A181973

/-! ## A181973.P8010854731950967152

`A226097(A005843(n))+A000007(n+1)`
-/

namespace A181973.P8010854731950967152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (A005843 n).toNat + A000007 (n + 1)

end

end A181973.P8010854731950967152

namespace A181973

/-- `A226097(A005843(n))+A000007(n+1)` -/
def P8010854731950967152.Spec : Prop :=
  ∀ n, P8010854731950967152.a n = A181973 n

end A181973

/-! ## A181973.P8785696448660607403

`A060566(4*n+2)`
-/

namespace A181973.P8785696448660607403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (4 * n + 2)

end

end A181973.P8785696448660607403

namespace A181973

/-- `A060566(4*n+2)` -/
def P8785696448660607403.Spec : Prop :=
  ∀ n, P8785696448660607403.a n = A181973 n

end A181973

/-! ## A181973.P2986971752297987295

`A060566(A016825(n))%A297005(n+1)`
-/

namespace A181973.P2986971752297987295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060566 (A016825 n).toNat) (A297005 (n + 1))

end

end A181973.P2986971752297987295

namespace A181973

/-- `A060566(A016825(n))%A297005(n+1)` -/
def P2986971752297987295.Spec : Prop :=
  ∀ n, P2986971752297987295.a n = A181973 n

end A181973

/-! ## A181973.P1051926865013249637

`A226097(n+n)%A226524(A008574(n+1))`
-/

namespace A181973.P1051926865013249637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226097 (n + n)) (A226524 (A008574 (n + 1)).toNat)

end

end A181973.P1051926865013249637

namespace A181973

/-- `A226097(n+n)%A226524(A008574(n+1))` -/
def P1051926865013249637.Spec : Prop :=
  ∀ n, P1051926865013249637.a n = A181973 n

end A181973

/-! ## A181973.P616198668355428044

`A226097(n+n)^A124927(∑[n])`
-/

namespace A181973.P616198668355428044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226097 (n + n) : ℚ) ^ (A124927 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A181973.P616198668355428044

namespace A181973

/-- `A226097(n+n)^A124927(∑[n])` -/
def P616198668355428044.Spec : Prop :=
  ∀ n, P616198668355428044.a n = (A181973 n : ℚ)

end A181973

/-!
# A181974: Triangle T(n,k), read by rows, given by (1, 1, -1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 0, -3, 2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A181974, there is no canonical definition to state claims against.
-/

/-! ## A181974.P15659854783851705987

`A007895(A151800(A117852(n)²))`
-/

namespace A181974.P15659854783851705987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A151800 (A117852 n ^ 2).toNat).toNat

end

end A181974.P15659854783851705987

/-! ## A181974.P15031051433117192755

`dr(A341916(A007059(A055248(n))))`
-/

namespace A181974.P15031051433117192755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A341916 (A007059 (A055248 n).toNat).toNat)

end

end A181974.P15031051433117192755

/-! ## A181974.P10394905391989578088

`A103923(n)+A055641(A008956(n))`
-/

namespace A181974.P10394905391989578088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 n + A055641 (A008956 n).toNat

end

end A181974.P10394905391989578088

/-! ## A181974.P8263832924402955317

`A160086(A048573(n))+A103923(n)`
-/

namespace A181974.P8263832924402955317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A048573 n).toNat + A103923 n

end

end A181974.P8263832924402955317

/-! ## A181974.P11992368255799953581

`A103923(n)+A025455(A054581(n+1))`
-/

namespace A181974.P11992368255799953581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 n + A025455 (A054581 (n + 1)).toNat

end

end A181974.P11992368255799953581

/-!
# A181975: The sequence {1, 2, 3, 4, 5, 4, 3, 2} repeated.

The programs for A181975, the canonical program `A181975.P13488656323094127608` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181975 has offset 1).

The definition of A181975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181975.P13488656323094127608

`abs((n+4)%8-4)+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181975

/-- `abs((n+4)%8-4)+1` -/
def P13488656323094127608.Spec : Prop :=
  ∀ n, P13488656323094127608.a n = A181975 (n + 1)

theorem P13488656323094127608.correct : P13488656323094127608.Spec := by
  intro n
  simp only [A181975, Nat.add_sub_cancel]

end A181975

/-!
# A181976: Expansion of a(q) * b(q)^2 in powers of q where a(), b() are cubic AGM theta functions.

The programs for A181976, there is no canonical definition to state claims against.
-/

/-! ## A181976.P16038658105241037596

`A005129(n)/Δ[A117967(n)]`
-/

namespace A181976.P16038658105241037596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005129 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A181976.P16038658105241037596

/-! ## A181976.P453002052165150106

`A005129(n)/A061347(n+1)`
-/

namespace A181976.P453002052165150106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005129 n : ℚ) / (A061347 (n + 1) : ℚ)

end

end A181976.P453002052165150106

/-! ## A181976.P14400517354848206909

`A005129(n)/A131713(n+2)`
-/

namespace A181976.P14400517354848206909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005129 n : ℚ) / (A131713 (n + 2) : ℚ)

end

end A181976.P14400517354848206909

/-! ## A181976.P2505047144137311693

`A005129(n)/A117188(4*n)`
-/

namespace A181976.P2505047144137311693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005129 n : ℚ) / (A117188 (4 * n) : ℚ)

end

end A181976.P2505047144137311693

/-! ## A181976.P10785725591666740199

`A005129(n)/A100051(A017353(n))`
-/

namespace A181976.P10785725591666740199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005129 n : ℚ) / (A100051 (A017353 n).toNat : ℚ)

end

end A181976.P10785725591666740199

/-!
# A181978: Indices of primes in A181938.

The programs for A181978, there is no canonical definition to state claims against.
-/

/-! ## A181978.P935735378325181757

`A000720(A181938(n+1))`
-/

namespace A181978.P935735378325181757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A181938 (n + 1)).toNat

end

end A181978.P935735378325181757

/-! ## A181978.P1051768603969265044

`A003963(p?[A181938(n+1)])`
-/

namespace A181978.P1051768603969265044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181978.P1051768603969265044

/-! ## A181978.P9698425877206958901

`A026233(p?[A181938(n+1)])`
-/

namespace A181978.P9698425877206958901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181978.P9698425877206958901

/-! ## A181978.P154785944568504819

`A049084(p?[A181938(n+1)])`
-/

namespace A181978.P154785944568504819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181978.P154785944568504819

/-! ## A181978.P5132127396334403457

`A061395(p?[A181938(n+1)])`
-/

namespace A181978.P5132127396334403457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181978.P5132127396334403457

/-! ## A181978.P934368714446385534

`A065770(p?[A181938(n+1)])`
-/

namespace A181978.P934368714446385534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181978.P934368714446385534

/-! ## A181978.P10089200393988200731

`A066328(p?[A181938(n+1)])`
-/

namespace A181978.P10089200393988200731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181978.P10089200393988200731

/-! ## A181978.P1383499954937784214

`A230980(p?[A181938(n+1)])`
-/

namespace A181978.P1383499954937784214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181978.P1383499954937784214

/-! ## A181978.P524950261576566441

`A289508(p?[A181938(n+1)])`
-/

namespace A181978.P524950261576566441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181978.P524950261576566441

/-! ## A181978.P2145208705899036155

`A230980(A181938(n+1)+1)`
-/

namespace A181978.P2145208705899036155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A181938 (n + 1) + 1).toNat

end

end A181978.P2145208705899036155

/-!
# A181980: Least positive integer m > 1 such that 1 - m^k + m^(2k) - m^(3k) + m^(4k) is prime, where k = A003592(n).

The programs for A181980, there is no canonical definition to state claims against.
-/

/-! ## A181980.P3948369716036641718

`A085398(10*A003592(n+1))`
-/

namespace A181980.P3948369716036641718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (10 * A003592 (n + 1)).toNat

end

end A181980.P3948369716036641718

/-! ## A181980.P51810703263741937

`A085398(A033846(n+1))`
-/

namespace A181980.P51810703263741937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A033846 (n + 1)).toNat

end

end A181980.P51810703263741937

/-! ## A181980.P4712526501035906677

`A085398(2*A086761(n+1))`
-/

namespace A181980.P4712526501035906677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (2 * A086761 (n + 1)).toNat

end

end A181980.P4712526501035906677

/-! ## A181980.P8641969669148895742

`A085398(record[A132741(10*(n+1))])`
-/

namespace A181980.P8641969669148895742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (10 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181980.P8641969669148895742

/-!
# A181982: Expansion of (1 - x^2)^2 * (1 + x)^2 / (1 - x^6) in powers of x.

The programs for A181982, the canonical program `A181982.P8039711668695831568` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181982 has offset 0).

The definition of A181982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2-4x^3-x^4+2x^5+x^6)/(1-x^6))` (program `A181982.P8039711668695831568`, by `A181982.P8039711668695831568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181982.P18091898419952240182

`a(n-6)` with `a(0)=1, a(1)=2, a(2)=-1, a(3)=-4, a(4)=-1, a(5)=2, a(6)=2`
-/

namespace A181982.P18091898419952240182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1, -4, -1, 2, 2] fun n a =>
  a (n - 6)

end

end A181982.P18091898419952240182

namespace A181982

/-- `a(n-6)` -/
def P18091898419952240182.Spec : Prop :=
  ∀ n, P18091898419952240182.a n = A181982 n

end A181982

/-! ## A181982.P8039711668695831568

`ogf((1+2x-x^2-4x^3-x^4+2x^5+x^6)/(1-x^6))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181982

/-- `ogf((1+2x-x^2-4x^3-x^4+2x^5+x^6)/(1-x^6))` -/
def P8039711668695831568.Spec : Prop :=
  ∀ n, P8039711668695831568.a n = A181982 n

theorem P8039711668695831568.correct : P8039711668695831568.Spec := by
  intro n
  simp only [A181982]

end A181982

/-!
# A181983: a(n) = (-1)^(n+1) * n.

The programs for A181983, the canonical program `A181983.P3699358180015306672` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181983 has offset 0).

The definition of A181983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(n+1)*n` (program `A181983.P3699358180015306672`, by `A181983.P3699358180015306672.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181983.P3699358180015306672

`(-1)^(n+1)*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181983

/-- `(-1)^(n+1)*n` -/
def P3699358180015306672.Spec : Prop :=
  ∀ n, P3699358180015306672.a n = A181983 n

theorem P3699358180015306672.correct : P3699358180015306672.Spec := by
  intro n
  simp only [A181983]

end A181983

/-! ## A181983.P1268741944855499900

`-A038608(n)`
-/

namespace A181983.P1268741944855499900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038608 n

end

end A181983.P1268741944855499900

namespace A181983

/-- `-A038608(n)` -/
def P1268741944855499900.Spec : Prop :=
  ∀ n, P1268741944855499900.a n = A181983 n

end A181983

/-! ## A181983.P2965765473715475576

`n/(n-xor(1, n))`
-/

namespace A181983.P2965765473715475576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((n : ℤ) - (Nat.xor 1 n : ℤ) : ℚ)

end

end A181983.P2965765473715475576

namespace A181983

/-- `n/(n-xor(1, n))` -/
def P2965765473715475576.Spec : Prop :=
  ∀ n, P2965765473715475576.a n = (A181983 n : ℚ)

end A181983

/-! ## A181983.P7363289095731013975

`ogf(x/(1+2x+x^2))`
-/

namespace A181983.P7363289095731013975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 2, 1] n

end

end A181983.P7363289095731013975

namespace A181983

/-- `ogf(x/(1+2x+x^2))` -/
def P7363289095731013975.Spec : Prop :=
  ∀ n, P7363289095731013975.a n = A181983 n

end A181983

/-! ## A181983.P14203227045218152684

`xor(1, -a(n-1))` with `a(0)=0`
-/

namespace A181983.P14203227045218152684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 1 (-a (n - 1))

end

end A181983.P14203227045218152684

namespace A181983

/-- `xor(1, -a(n-1))` -/
def P14203227045218152684.Spec : Prop :=
  ∀ n, P14203227045218152684.a n = A181983 n

end A181983

/-! ## A181983.P7535345605956445463

`n/(-1)^xor(1, n)`
-/

namespace A181983.P7535345605956445463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((-1) ^ Nat.xor 1 n : ℚ)

end

end A181983.P7535345605956445463

namespace A181983

/-- `n/(-1)^xor(1, n)` -/
def P7535345605956445463.Spec : Prop :=
  ∀ n, P7535345605956445463.a n = (A181983 n : ℚ)

end A181983

/-! ## A181983.P9349219955124688864

`n/(Δ[or(1, n)]-1)`
-/

namespace A181983.P9349219955124688864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 : ℚ)

end

end A181983.P9349219955124688864

namespace A181983

/-- `n/(Δ[or(1, n)]-1)` -/
def P9349219955124688864.Spec : Prop :=
  ∀ n, P9349219955124688864.a n = (A181983 n : ℚ)

end A181983

/-! ## A181983.P9368753019986378370

`gcd(2, n)-Δ[lcm(2, n)]`
-/

namespace A181983.P9368753019986378370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A181983.P9368753019986378370

namespace A181983

/-- `gcd(2, n)-Δ[lcm(2, n)]` -/
def P9368753019986378370.Spec : Prop :=
  ∀ n, P9368753019986378370.a n = A181983 n

end A181983

/-! ## A181983.P8592196694997346940

`lcm(4, 2*n)-3*n`
-/

namespace A181983.P8592196694997346940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (2 * n) : ℤ) - (3 * n : ℤ)

end

end A181983.P8592196694997346940

namespace A181983

/-- `lcm(4, 2*n)-3*n` -/
def P8592196694997346940.Spec : Prop :=
  ∀ n, P8592196694997346940.a n = A181983 n

end A181983

/-! ## A181983.P13279698209611734710

`xor(n-1, -(-1)^n)`
-/

namespace A181983.P13279698209611734710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (-((-1) ^ n))

end

end A181983.P13279698209611734710

namespace A181983

/-- `xor(n-1, -(-1)^n)` -/
def P13279698209611734710.Spec : Prop :=
  ∀ n, P13279698209611734710.a n = A181983 n

end A181983

/-! ## A181983.P7617589214476785933

`n/(and(2, Δ[n²])-1)`
-/

namespace A181983.P7617589214476785933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.land 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - 1 : ℚ)

end

end A181983.P7617589214476785933

namespace A181983

/-- `n/(and(2, Δ[n²])-1)` -/
def P7617589214476785933.Spec : Prop :=
  ∀ n, P7617589214476785933.a n = (A181983 n : ℚ)

end A181983

/-! ## A181983.P2179221779975317870

`n/(-1)^a(n-1)` with `a(0)=0`
-/

namespace A181983.P2179221779975317870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℝ) / (-1 : ℝ) ^ (a (n - 1))

end

end A181983.P2179221779975317870

namespace A181983

/-- `n/(-1)^a(n-1)` -/
def P2179221779975317870.Spec : Prop :=
  ∀ n, P2179221779975317870.a n = (A181983 n : ℝ)

end A181983

/-! ## A181983.P5900794301023069567

`n/(-1)^((n+1)%2)`
-/

namespace A181983.P5900794301023069567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((-1) ^ ((n + 1) % 2) : ℚ)

end

end A181983.P5900794301023069567

namespace A181983

/-- `n/(-1)^((n+1)%2)` -/
def P5900794301023069567.Spec : Prop :=
  ∀ n, P5900794301023069567.a n = (A181983 n : ℚ)

end A181983

/-! ## A181983.P2984537464671340322

`a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A181983.P2984537464671340322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 2 * (-1) ^ n

end

end A181983.P2984537464671340322

namespace A181983

/-- `a(n-2)-2*(-1)^n` -/
def P2984537464671340322.Spec : Prop :=
  ∀ n, P2984537464671340322.a n = A181983 n

theorem P2984537464671340322.correct : P2984537464671340322.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A181983, Nat.add_sub_cancel, A181983.P2984537464671340322.a, A181983.P3699358180015306672.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A181983, Nat.add_sub_cancel, A181983.P2984537464671340322.a, A181983.P3699358180015306672.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181983

/-!
# A181984: INVERT transform of A028310.

The programs for A181984, the canonical program `A181984.P13479675070080437777` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181984 has offset 0).

The definition of A181984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181984.P13479675070080437777

`A034943(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181984

/-- `A034943(n+2)` -/
def P13479675070080437777.Spec : Prop :=
  ∀ n, P13479675070080437777.a n = A181984 n

theorem P13479675070080437777.correct : P13479675070080437777.Spec := by
  intro n
  simp only [A181984]

end A181984

/-! ## A181984.P773440687906295402

`A000931(3*n+6)`
-/

namespace A181984.P773440687906295402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * n + 6)

end

end A181984.P773440687906295402

namespace A181984

/-- `A000931(3*n+6)` -/
def P773440687906295402.Spec : Prop :=
  ∀ n, P773440687906295402.a n = A181984 n

end A181984

/-! ## A181984.P12357395428134819884

`ogf((1-x+x^2)/(1-3x+2x^2-x^3))`
-/

namespace A181984.P12357395428134819884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 2, -1] n

end

end A181984.P12357395428134819884

namespace A181984

/-- `ogf((1-x+x^2)/(1-3x+2x^2-x^3))` -/
def P12357395428134819884.Spec : Prop :=
  ∀ n, P12357395428134819884.a n = A181984 n

end A181984

/-! ## A181984.P3906088055687149130

`A182097(3*(n+1))`
-/

namespace A181984.P3906088055687149130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (3 * (n + 1))

end

end A181984.P3906088055687149130

namespace A181984

/-- `A182097(3*(n+1))` -/
def P3906088055687149130.Spec : Prop :=
  ∀ n, P3906088055687149130.a n = A181984 n

end A181984

/-! ## A181984.P2187861294380938519

`A134816(3*n+2)`
-/

namespace A181984.P2187861294380938519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (3 * n + 2)

end

end A181984.P2187861294380938519

namespace A181984

/-- `A134816(3*n+2)` -/
def P2187861294380938519.Spec : Prop :=
  ∀ n, P2187861294380938519.a n = A181984 n

end A181984

/-! ## A181984.P17155136354877006029

`A127682(6*n+2)`
-/

namespace A181984.P17155136354877006029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (6 * n + 2)

end

end A181984.P17155136354877006029

namespace A181984

/-- `A127682(6*n+2)` -/
def P17155136354877006029.Spec : Prop :=
  ∀ n, P17155136354877006029.a n = A181984 n

end A181984

/-! ## A181984.P16785069172358373513

`A078027(3*n+8)`
-/

namespace A181984.P16785069172358373513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * n + 8)

end

end A181984.P16785069172358373513

namespace A181984

/-- `A078027(3*n+8)` -/
def P16785069172358373513.Spec : Prop :=
  ∀ n, P16785069172358373513.a n = A181984 n

end A181984

/-! ## A181984.P8489861662827943910

`A133034(3*n+10)`
-/

namespace A181984.P8489861662827943910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (3 * n + 10)

end

end A181984.P8489861662827943910

namespace A181984

/-- `A133034(3*n+10)` -/
def P8489861662827943910.Spec : Prop :=
  ∀ n, P8489861662827943910.a n = A181984 n

end A181984

/-! ## A181984.P3156033766375441885

`A052954(3*(n+1))-1`
-/

namespace A181984.P3156033766375441885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (3 * (n + 1)) - 1

end

end A181984.P3156033766375441885

namespace A181984

/-- `A052954(3*(n+1))-1` -/
def P3156033766375441885.Spec : Prop :=
  ∀ n, P3156033766375441885.a n = A181984 n

end A181984

/-! ## A181984.P11036156877889884967

`A095263(n)+a(n-1)` with `a(0)=1`
-/

namespace A181984.P11036156877889884967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095263 n + a (n - 1)

end

end A181984.P11036156877889884967

namespace A181984

/-- `A095263(n)+a(n-1)` -/
def P11036156877889884967.Spec : Prop :=
  ∀ n, P11036156877889884967.a n = A181984 n

end A181984

/-! ## A181984.P5584130222983035636

`A010912(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A181984.P5584130222983035636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A010912 (n - 2) + a (n - 1)

end

end A181984.P5584130222983035636

namespace A181984

/-- `A010912(n-2)+a(n-1)` -/
def P5584130222983035636.Spec : Prop :=
  ∀ n, P5584130222983035636.a n = A181984 n

end A181984

/-! ## A181984.P11636061800012307036

`∑[A134816(A008486(n))]`
-/

namespace A181984.P11636061800012307036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181984.P11636061800012307036

namespace A181984

/-- `∑[A134816(A008486(n))]` -/
def P11636061800012307036.Spec : Prop :=
  ∀ n, P11636061800012307036.a n = A181984 n

end A181984

/-! ## A181984.P1791498493390944856

`A023434(A004273(n)+n)+1`
-/

namespace A181984.P1791498493390944856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (A004273 n + (n : ℤ)).toNat + 1

end

end A181984.P1791498493390944856

namespace A181984

/-- `A023434(A004273(n)+n)+1` -/
def P1791498493390944856.Spec : Prop :=
  ∀ n, P1791498493390944856.a n = A181984 n

end A181984

/-! ## A181984.P11200243957812578329

`A228361(A004280(n+2)+n)`
-/

namespace A181984.P11200243957812578329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A004280 (n + 2) + (n : ℤ)).toNat

end

end A181984.P11200243957812578329

namespace A181984

/-- `A228361(A004280(n+2)+n)` -/
def P11200243957812578329.Spec : Prop :=
  ∀ n, P11200243957812578329.a n = A181984 n

end A181984

/-! ## A181984.P9052692523179289821

`record[A078027(∑[A108715(n)]+n)]`
-/

namespace A181984.P9052692523179289821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108715 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181984.P9052692523179289821

namespace A181984

/-- `record[A078027(∑[A108715(n)]+n)]` -/
def P9052692523179289821.Spec : Prop :=
  ∀ n, P9052692523179289821.a n = A181984 n

end A181984

/-! ## A181984.P8220729876678910663

`A228361(A233583(2*(n+1))+n)`
-/

namespace A181984.P8220729876678910663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A233583 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A181984.P8220729876678910663

namespace A181984

/-- `A228361(A233583(2*(n+1))+n)` -/
def P8220729876678910663.Spec : Prop :=
  ∀ n, P8220729876678910663.a n = A181984 n

end A181984

/-! ## A181984.P15848909764100513984

`Δ[A052921(n)]`
-/

namespace A181984.P15848909764100513984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181984.P15848909764100513984

namespace A181984

/-- `Δ[A052921(n)]` -/
def P15848909764100513984.Spec : Prop :=
  ∀ n, P15848909764100513984.a n = A181984 n

end A181984

/-! ## A181984.P10736878254849212945

`A159328(n)/2`
-/

namespace A181984.P10736878254849212945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159328 n : ℚ) / 2

end

end A181984.P10736878254849212945

namespace A181984

/-- `A159328(n)/2` -/
def P10736878254849212945.Spec : Prop :=
  ∀ n, P10736878254849212945.a n = (A181984 n : ℚ)

end A181984

/-! ## A181984.P11764053635859738651

`Δ[A329244(n+1)]`
-/

namespace A181984.P11764053635859738651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181984.P11764053635859738651

namespace A181984

/-- `Δ[A329244(n+1)]` -/
def P11764053635859738651.Spec : Prop :=
  ∀ n, P11764053635859738651.a n = A181984 n

end A181984

/-! ## A181984.P507597064810670076

`A068924(3*(n+1))/2`
-/

namespace A181984.P507597064810670076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068924 (3 * (n + 1)) : ℚ) / 2

end

end A181984.P507597064810670076

namespace A181984

/-- `A068924(3*(n+1))/2` -/
def P507597064810670076.Spec : Prop :=
  ∀ n, P507597064810670076.a n = (A181984 n : ℚ)

end A181984

/-!
# A181985: Generalized Euler numbers. Square array A(n,k), n >= 1, k >= 0, read by antidiagonals. A(n,k) = n-alternating permutations of length n*k.

The programs for A181985, there is no canonical definition to state claims against.
-/

/-! ## A181985.P3328898027638768764

`abs(A260877(comp[∑[n]]))`
-/

namespace A181985.P3328898027638768764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260877 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A181985.P3328898027638768764

/-!
# A181986: Digitally balanced numbers: ternary numbers which have the same number of 0's as 1's as 2's.

The programs for A181986, the canonical program `A181986.P2870521269527249450` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181986 has offset 1).

The definition of A181986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181986.P2870521269527249450

`A007089(A049354(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A181986

/-- `A007089(A049354(n+1))` -/
def P2870521269527249450.Spec : Prop :=
  ∀ n, P2870521269527249450.a n = A181986 (n + 1)

theorem P2870521269527249450.correct : P2870521269527249450.Spec := by
  intro n
  simp only [A181986, Nat.add_sub_cancel]

end A181986

/-! ## A181986.P5919120571156331676

`A007089(∩[A031452(n+1), A039000(n+1)])`
-/

namespace A181986.P5919120571156331676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A181986.P5919120571156331676

namespace A181986

/-- `A007089(∩[A031452(n+1), A039000(n+1)])` -/
def P5919120571156331676.Spec : Prop :=
  ∀ n, P5919120571156331676.a n = A181986 (n + 1)

end A181986

/-! ## A181986.P15677770550251731359

`A007089(∩[A031452(n+1), A039001(n+1)])`
-/

namespace A181986.P15677770550251731359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A181986.P15677770550251731359

namespace A181986

/-- `A007089(∩[A031452(n+1), A039001(n+1)])` -/
def P15677770550251731359.Spec : Prop :=
  ∀ n, P15677770550251731359.a n = A181986 (n + 1)

end A181986

/-! ## A181986.P15739721255698733136

`A007089(∩[A031452(n+1), A039275(n+1)])`
-/

namespace A181986.P15739721255698733136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A181986.P15739721255698733136

namespace A181986

/-- `A007089(∩[A031452(n+1), A039275(n+1)])` -/
def P15739721255698733136.Spec : Prop :=
  ∀ n, P15739721255698733136.a n = A181986 (n + 1)

end A181986

/-! ## A181986.P9979728419786952465

`A007089(∩[A039001(n+1), A039276(n+1)])`
-/

namespace A181986.P9979728419786952465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A181986.P9979728419786952465

namespace A181986

/-- `A007089(∩[A039001(n+1), A039276(n+1)])` -/
def P9979728419786952465.Spec : Prop :=
  ∀ n, P9979728419786952465.a n = A181986 (n + 1)

end A181986

/-! ## A181986.P94766684772182537

`A343810(∩[A031452(n+1), A039000(n+1)])/4`
-/

namespace A181986.P94766684772182537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 4

end

end A181986.P94766684772182537

namespace A181986

/-- `A343810(∩[A031452(n+1), A039000(n+1)])/4` -/
def P94766684772182537.Spec : Prop :=
  ∀ n, P94766684772182537.a n = (A181986 (n + 1) : ℚ)

end A181986

/-! ## A181986.P10047006868735484482

`A343810(∩[A031452(n+1), A039001(n+1)])/4`
-/

namespace A181986.P10047006868735484482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 4

end

end A181986.P10047006868735484482

namespace A181986

/-- `A343810(∩[A031452(n+1), A039001(n+1)])/4` -/
def P10047006868735484482.Spec : Prop :=
  ∀ n, P10047006868735484482.a n = (A181986 (n + 1) : ℚ)

end A181986

/-! ## A181986.P7637127771760600859

`A343810(∩[A039001(n+1), A039276(n+1)])/4`
-/

namespace A181986.P7637127771760600859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 4

end

end A181986.P7637127771760600859

namespace A181986

/-- `A343810(∩[A039001(n+1), A039276(n+1)])/4` -/
def P7637127771760600859.Spec : Prop :=
  ∀ n, P7637127771760600859.a n = (A181986 (n + 1) : ℚ)

end A181986

/-!
# A181988: If n is odd, a(n) = (n+1)/2; if n is even, a(n) = a(n/2) + A003602(n).

The programs for A181988, the canonical program `A181988.P6768559129986484408` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181988 has offset 1).

The definition of A181988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181988.P6768559129986484408

`A001511(n+1)*A003602(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A181988

/-- `A001511(n+1)*A003602(n+1)` -/
def P6768559129986484408.Spec : Prop :=
  ∀ n, P6768559129986484408.a n = A181988 (n + 1)

theorem P6768559129986484408.correct : P6768559129986484408.Spec := by
  intro n
  simp only [A181988, Nat.add_sub_cancel]

end A181988

/-! ## A181988.P7846162057497176492

`(val(n+1, 2)+1)*(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A181988.P7846162057497176492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

end

end A181988.P7846162057497176492

namespace A181988

/-- `(val(n+1, 2)+1)*(floor(n/(xor(n, n+1)+1))+1)` -/
def P7846162057497176492.Spec : Prop :=
  ∀ n, P7846162057497176492.a n = A181988 (n + 1)

end A181988

/-! ## A181988.P9722870848933730384

`(val(n+1, 2)+1)*((n+1)/and(n+1, -(n+1))+1)/2`
-/

namespace A181988.P9722870848933730384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ) * (((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2)

end

end A181988.P9722870848933730384

namespace A181988

/-- `(val(n+1, 2)+1)*((n+1)/and(n+1, -(n+1))+1)/2` -/
def P9722870848933730384.Spec : Prop :=
  ∀ n, P9722870848933730384.a n = (A181988 (n + 1) : ℚ)

end A181988

/-! ## A181988.P14906019754445976724

`((n+1)/and(n+1, -(n+1))+1)/2*log2(xor(n, n+1)+1)`
-/

namespace A181988.P14906019754445976724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 : ℝ) * Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

end

end A181988.P14906019754445976724

namespace A181988

/-- `((n+1)/and(n+1, -(n+1))+1)/2*log2(xor(n, n+1)+1)` -/
def P14906019754445976724.Spec : Prop :=
  ∀ n, P14906019754445976724.a n = (A181988 (n + 1) : ℝ)

end A181988

/-! ## A181988.P12603539811556222

`(log2(1-and(n, n+1)+n)+1)*(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A181988.P12603539811556222
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℝ) + 1) * (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 : ℝ)

end

end A181988.P12603539811556222

namespace A181988

/-- `(log2(1-and(n, n+1)+n)+1)*(floor(n/(xor(n, n+1)+1))+1)` -/
def P12603539811556222.Spec : Prop :=
  ∀ n, P12603539811556222.a n = (A181988 (n + 1) : ℝ)

end A181988

/-! ## A181988.P3985440363392864551

`(log2(1-and(n, n+1)+n)+1)*ceil((n+1)/(xor(n, n+1)+1))`
-/

namespace A181988.P3985440363392864551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℝ) + 1) * (⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉ : ℝ)

end

end A181988.P3985440363392864551

namespace A181988

/-- `(log2(1-and(n, n+1)+n)+1)*ceil((n+1)/(xor(n, n+1)+1))` -/
def P3985440363392864551.Spec : Prop :=
  ∀ n, P3985440363392864551.a n = (A181988 (n + 1) : ℝ)

end A181988

/-! ## A181988.P4745012508146709477

`((n+1)/and(n+1, -(n+1))+1)/2*∑{e}[xor(n, n+1)+1, #]`
-/

namespace A181988.P4745012508146709477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 * ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)

end

end A181988.P4745012508146709477

namespace A181988

/-- `((n+1)/and(n+1, -(n+1))+1)/2*∑{e}[xor(n, n+1)+1, #]` -/
def P4745012508146709477.Spec : Prop :=
  ∀ n, P4745012508146709477.a n = (A181988 (n + 1) : ℚ)

end A181988

/-! ## A181988.P1848127971582408912

`((n+1)/and(n+1, -(n+1))+1)/2*∏{e}[xor(n, n+1)+1, #]`
-/

namespace A181988.P1848127971582408912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 * ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)

end

end A181988.P1848127971582408912

namespace A181988

/-- `((n+1)/and(n+1, -(n+1))+1)/2*∏{e}[xor(n, n+1)+1, #]` -/
def P1848127971582408912.Spec : Prop :=
  ∀ n, P1848127971582408912.a n = (A181988 (n + 1) : ℚ)

end A181988

/-! ## A181988.P9969461087286590183

`(log2(and(n+1, -(n+1)))+1)*((n+1)/and(n+1, -(n+1))+1)/2`
-/

namespace A181988.P9969461087286590183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 1) * (((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 : ℝ)

end

end A181988.P9969461087286590183

namespace A181988

/-- `(log2(and(n+1, -(n+1)))+1)*((n+1)/and(n+1, -(n+1))+1)/2` -/
def P9969461087286590183.Spec : Prop :=
  ∀ n, P9969461087286590183.a n = (A181988 (n + 1) : ℝ)

end A181988

/-! ## A181988.P15422388504080436703

`((n+1)/and(n+1, -(n+1))+1)/2*A001222(xor(n, n+1)+1)`
-/

namespace A181988.P15422388504080436703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 * (A001222 (Nat.xor n (n + 1) + 1) : ℚ)

end

end A181988.P15422388504080436703

namespace A181988

/-- `((n+1)/and(n+1, -(n+1))+1)/2*A001222(xor(n, n+1)+1)` -/
def P15422388504080436703.Spec : Prop :=
  ∀ n, P15422388504080436703.a n = (A181988 (n + 1) : ℚ)

end A181988

/-! ## A181988.P4002028449206095474

`((n+1)/and(n+1, -(n+1))+1)/2*A000005(and(n+1, -(n+1)))`
-/

namespace A181988.P4002028449206095474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 * (A000005 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat : ℚ)

end

end A181988.P4002028449206095474

namespace A181988

/-- `((n+1)/and(n+1, -(n+1))+1)/2*A000005(and(n+1, -(n+1)))` -/
def P4002028449206095474.Spec : Prop :=
  ∀ n, P4002028449206095474.a n = (A181988 (n + 1) : ℚ)

end A181988

/-! ## A181988.P12161968607414806627

`(A001222(or(n, n+1)-n)+1)*((n+1)/and(n+1, -(n+1))+1)/2`
-/

namespace A181988.P12161968607414806627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (Nat.lor n (n + 1) - n) + 1 : ℚ) * (((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2)

end

end A181988.P12161968607414806627

namespace A181988

/-- `(A001222(or(n, n+1)-n)+1)*((n+1)/and(n+1, -(n+1))+1)/2` -/
def P12161968607414806627.Spec : Prop :=
  ∀ n, P12161968607414806627.a n = (A181988 (n + 1) : ℚ)

end A181988

/-! ## A181988.P7954341124063944126

`(A025480(n)+1)*Δ[A005187(n)]`
-/

namespace A181988.P7954341124063944126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025480 n + 1) * (f1 (n + 1) - f1 n)

end

end A181988.P7954341124063944126

namespace A181988

/-- `(A025480(n)+1)*Δ[A005187(n)]` -/
def P7954341124063944126.Spec : Prop :=
  ∀ n, P7954341124063944126.a n = A181988 (n + 1)

end A181988

/-! ## A181988.P17611600389063390890

`A349347(n+1)-A349346(n+1)`
-/

namespace A181988.P17611600389063390890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349347 (n + 1) - A349346 (n + 1)

end

end A181988.P17611600389063390890

namespace A181988

/-- `A349347(n+1)-A349346(n+1)` -/
def P17611600389063390890.Spec : Prop :=
  ∀ n, P17611600389063390890.a n = A181988 (n + 1)

end A181988

/-! ## A181988.P13996601059470534163

`(A025480(n)+1)*A001511(n+1)`
-/

namespace A181988.P13996601059470534163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025480 n + 1) * A001511 (n + 1)

end

end A181988.P13996601059470534163

namespace A181988

/-- `(A025480(n)+1)*A001511(n+1)` -/
def P13996601059470534163.Spec : Prop :=
  ∀ n, P13996601059470534163.a n = A181988 (n + 1)

end A181988

/-! ## A181988.P16026715055627652058

`(A085058(n)-1)*A003602(n+1)`
-/

namespace A181988.P16026715055627652058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085058 n - 1) * A003602 (n + 1)

end

end A181988.P16026715055627652058

namespace A181988

/-- `(A085058(n)-1)*A003602(n+1)` -/
def P16026715055627652058.Spec : Prop :=
  ∀ n, P16026715055627652058.a n = A181988 (n + 1)

end A181988

/-! ## A181988.P12793530577859918506

`(A007814(n+1)+1)*A003602(n+1)`
-/

namespace A181988.P12793530577859918506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A003602 (n + 1)

end

end A181988.P12793530577859918506

namespace A181988

/-- `(A007814(n+1)+1)*A003602(n+1)` -/
def P12793530577859918506.Spec : Prop :=
  ∀ n, P12793530577859918506.a n = A181988 (n + 1)

end A181988

/-! ## A181988.P18052800426634470192

`A001511(n+1)*A110963(2*n+1)`
-/

namespace A181988.P18052800426634470192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A110963 (2 * n + 1)

end

end A181988.P18052800426634470192

namespace A181988

/-- `A001511(n+1)*A110963(2*n+1)` -/
def P18052800426634470192.Spec : Prop :=
  ∀ n, P18052800426634470192.a n = A181988 (n + 1)

end A181988

/-! ## A181988.P10903471504068017609

`∑{d}[n+1, A113415(#)*A209635((n+1)/#)]`
-/

namespace A181988.P10903471504068017609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113415 d * A209635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A181988.P10903471504068017609

namespace A181988

/-- `∑{d}[n+1, A113415(#)*A209635((n+1)/#)]` -/
def P10903471504068017609.Spec : Prop :=
  ∀ n, P10903471504068017609.a n = A181988 (n + 1)

end A181988

/-! ## A181988.P8356567476227596202

`∑{d}[n+1, A001511(#)*A349136((n+1)/#)]`
-/

namespace A181988.P8356567476227596202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A181988.P8356567476227596202

namespace A181988

/-- `∑{d}[n+1, A001511(#)*A349136((n+1)/#)]` -/
def P8356567476227596202.Spec : Prop :=
  ∀ n, P8356567476227596202.a n = A181988 (n + 1)

end A181988

/-!
# A181989: Number of independent sets of nodes in graph C_5 x P_n (n >= 0).

The programs for A181989, the canonical program `A181989.P17985924312246638134` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181989 has offset 0).

The definition of A181989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181989.P17985924312246638134

`7*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=1, a(1)=11, a(2)=81`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181989

/-- `7*a(n-1)+5*a(n-2)-a(n-3)` -/
def P17985924312246638134.Spec : Prop :=
  ∀ n, P17985924312246638134.a n = A181989 n

theorem P17985924312246638134.correct : P17985924312246638134.Spec := by
  intro n
  simp only [A181989]

end A181989

/-! ## A181989.P6891950544866369635

`ogf((1+4x-x^2)/(1-7x-5x^2+x^3))`
-/

namespace A181989.P6891950544866369635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, -7, -5, 1] n

end

end A181989.P6891950544866369635

namespace A181989

/-- `ogf((1+4x-x^2)/(1-7x-5x^2+x^3))` -/
def P6891950544866369635.Spec : Prop :=
  ∀ n, P6891950544866369635.a n = A181989 n

end A181989

/-! ## A181989.P5263442166907854044

`A286513(A167499(n+2))`
-/

namespace A181989.P5263442166907854044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A167499 (n + 2)).toNat

end

end A181989.P5263442166907854044

namespace A181989

/-- `A286513(A167499(n+2))` -/
def P5263442166907854044.Spec : Prop :=
  ∀ n, P5263442166907854044.a n = A181989 n

end A181989

/-! ## A181989.P17243429809829936054

`A286513(A052905(n)+10)`
-/

namespace A181989.P17243429809829936054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A052905 n + 10).toNat

end

end A181989.P17243429809829936054

namespace A181989

/-- `A286513(A052905(n)+10)` -/
def P17243429809829936054.Spec : Prop :=
  ∀ n, P17243429809829936054.a n = A181989 n

end A181989

/-!
# A181991: n-alternating permutations of length 4n.

The programs for A181991, there is no canonical definition to state claims against.
-/

/-! ## A181991.P12451098973341949667

`A181985(∑[n+4]+11)`
-/

namespace A181991.P12451098973341949667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181985 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A181991.P12451098973341949667

/-!
# A181992: n-alternating permutations of length n^2.

The programs for A181992, there is no canonical definition to state claims against.
-/

/-! ## A181992.P1646773544631051852

`A181985(2*n²+1)`
-/

namespace A181992.P1646773544631051852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181985 (2 * n ^ 2 + 1)

end

end A181992.P1646773544631051852

/-!
# A181993: Denominator of (4^n*(4^n-1)/2)*B_{2n}/(2n)!, B_{n} Bernoulli number.

The programs for A181993, there is no canonical definition to state claims against.
-/

/-! ## A181993.P17074957426579228882

`A046991(n)/gcd(n, A046991(n))`
-/

namespace A181993.P17074957426579228882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046991 n : ℚ) / (Int.gcd (n : ℤ) (A046991 n) : ℚ)

end

end A181993.P17074957426579228882

/-! ## A181993.P14194845855912460434

`gcd(A002432(n), A050971(A004277(n)))`
-/

namespace A181993.P14194845855912460434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002432 n) (A050971 (A004277 n).toNat)

end

end A181993.P14194845855912460434

/-! ## A181993.P11845822878124595628

`A046991(n)/A000523(A000051(n))`
-/

namespace A181993.P11845822878124595628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046991 n : ℚ) / (A000523 (A000051 n).toNat : ℚ)

end

end A181993.P11845822878124595628

/-! ## A181993.P15846563500284878738

`A046991(n)/A054725(A000079(n))`
-/

namespace A181993.P15846563500284878738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046991 n : ℚ) / (A054725 (A000079 n).toNat : ℚ)

end

end A181993.P15846563500284878738

/-! ## A181993.P8761668203711082872

`A046991(n)/A002487(A095121(n))`
-/

namespace A181993.P8761668203711082872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046991 n : ℚ) / (A002487 (A095121 n).toNat : ℚ)

end

end A181993.P8761668203711082872

/-!
# A181994: Initial members of prime triples p < q < r such that r-q = n*(q-p).

The programs for A181994, there is no canonical definition to state claims against.
-/

/-! ## A181994.P4266427434411240742

`A008578(A078563(n+1))`
-/

namespace A181994.P4266427434411240742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A078563 (n + 1)).toNat

end

end A181994.P4266427434411240742

/-! ## A181994.P15897802390836006941

`A158611(A078563(n+1)+1)`
-/

namespace A181994.P15897802390836006941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A078563 (n + 1) + 1).toNat

end

end A181994.P15897802390836006941

/-! ## A181994.P14514461014173473038

`A000040(A078563(n+1)-1)`
-/

namespace A181994.P14514461014173473038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A078563 (n + 1) - 1).toNat

end

end A181994.P14514461014173473038

/-!
# A181995: a(n) = if n mod 2 = 1 then n*(n - 1) else (n - 1)^2 + (n - 2)/2.

The programs for A181995, the canonical program `A181995.P3746387336811046779` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181995 has offset 0).

The definition of A181995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181995.P8737106146348520761

`n*(4*n-5-(-1)^n)/4`
-/

namespace A181995.P8737106146348520761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((4 * n : ℤ) - 5 - (-1) ^ n) : ℚ) / 4

end

end A181995.P8737106146348520761

namespace A181995

/-- `n*(4*n-5-(-1)^n)/4` -/
def P8737106146348520761.Spec : Prop :=
  ∀ n, P8737106146348520761.a n = (A181995 n : ℚ)

theorem P8737106146348520761.correct : P8737106146348520761.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A181995, Nat.add_sub_cancel, A181995.P8737106146348520761.a, A181995.P3746387336811046779.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A181995, Nat.add_sub_cancel, A181995.P8737106146348520761.a, A181995.P3746387336811046779.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181995

/-! ## A181995.P3746387336811046779

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181995

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P3746387336811046779.Spec : Prop :=
  ∀ n, P3746387336811046779.a n = A181995 n

theorem P3746387336811046779.correct : P3746387336811046779.Spec := by
  intro n
  simp only [A181995]

end A181995

/-! ## A181995.P3935993857146643334

`gcd(n, ∑[n])+n*(n-2)`
-/

namespace A181995.P3935993857146643334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + (n : ℤ) * ((n : ℤ) - 2)

end

end A181995.P3935993857146643334

namespace A181995

/-- `gcd(n, ∑[n])+n*(n-2)` -/
def P3935993857146643334.Spec : Prop :=
  ∀ n, P3935993857146643334.a n = A181995 n

end A181995

/-! ## A181995.P6086672909286569815

`n*((n%2-3)/2+n)`
-/

namespace A181995.P6086672909286569815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((((n % 2 : ℕ) : ℤ) - 3 : ℚ) / 2 + (n : ℚ))

end

end A181995.P6086672909286569815

namespace A181995

/-- `n*((n%2-3)/2+n)` -/
def P6086672909286569815.Spec : Prop :=
  ∀ n, P6086672909286569815.a n = (A181995 n : ℚ)

end A181995

/-! ## A181995.P11094574481642888681

`lcm(2, n)/2+n*(n-2)`
-/

namespace A181995.P11094574481642888681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2 + ((n : ℤ) * ((n : ℤ) - 2) : ℚ)

end

end A181995.P11094574481642888681

namespace A181995

/-- `lcm(2, n)/2+n*(n-2)` -/
def P11094574481642888681.Spec : Prop :=
  ∀ n, P11094574481642888681.a n = (A181995 n : ℚ)

end A181995

/-! ## A181995.P14373628571985274562

`n*((and(1, n)-3)/2+n)`
-/

namespace A181995.P14373628571985274562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((Nat.land 1 n : ℤ) - 3 : ℚ) / 2 + (n : ℚ))

end

end A181995.P14373628571985274562

namespace A181995

/-- `n*((and(1, n)-3)/2+n)` -/
def P14373628571985274562.Spec : Prop :=
  ∀ n, P14373628571985274562.a n = (A181995 n : ℚ)

end A181995

/-! ## A181995.P17832759753302435655

`(or(1, n-3)+n)*n/2`
-/

namespace A181995.P17832759753302435655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 ((n : ℤ) - 3) + (n : ℤ) : ℚ) * ((n : ℚ) / 2)

end

end A181995.P17832759753302435655

namespace A181995

/-- `(or(1, n-3)+n)*n/2` -/
def P17832759753302435655.Spec : Prop :=
  ∀ n, P17832759753302435655.a n = (A181995 n : ℚ)

end A181995

/-! ## A181995.P11514552341159641663

`n/2*record[and(n-1, n-3)]`
-/

namespace A181995.P11514552341159641663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) ((n : ℤ) - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A181995.P11514552341159641663

namespace A181995

/-- `n/2*record[and(n-1, n-3)]` -/
def P11514552341159641663.Spec : Prop :=
  ∀ n, P11514552341159641663.a n = (A181995 n : ℚ)

end A181995

/-! ## A181995.P15738490033063526307

`n*(gcd(2, n+1)/2+n-2)`
-/

namespace A181995.P15738490033063526307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.gcd 2 (n + 1) : ℚ) / 2 + ((n : ℤ) - 2 : ℚ))

end

end A181995.P15738490033063526307

namespace A181995

/-- `n*(gcd(2, n+1)/2+n-2)` -/
def P15738490033063526307.Spec : Prop :=
  ∀ n, P15738490033063526307.a n = (A181995 n : ℚ)

end A181995

/-! ## A181995.P16941301831370144404

`n/2*∑[∑[ogf((x^2+3x^3)/(1+x))]]`
-/

namespace A181995.P16941301831370144404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A181995.P16941301831370144404

namespace A181995

/-- `n/2*∑[∑[ogf((x^2+3x^3)/(1+x))]]` -/
def P16941301831370144404.Spec : Prop :=
  ∀ n, P16941301831370144404.a n = (A181995 n : ℚ)

end A181995

/-! ## A181995.P919299669456310510

`n*(n-A020639(3*(n+1))/2)`
-/

namespace A181995.P919299669456310510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) - (A020639 (3 * (n + 1)) : ℚ) / 2)

end

end A181995.P919299669456310510

namespace A181995

/-- `n*(n-A020639(3*(n+1))/2)` -/
def P919299669456310510.Spec : Prop :=
  ∀ n, P919299669456310510.a n = (A181995 n : ℚ)

end A181995

/-! ## A181995.P13034122836585742829

`A357740(n+1)%A253909(n)`
-/

namespace A181995.P13034122836585742829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357740 (n + 1)) (A253909 n)

end

end A181995.P13034122836585742829

namespace A181995

/-- `A357740(n+1)%A253909(n)` -/
def P13034122836585742829.Spec : Prop :=
  ∀ n, P13034122836585742829.a n = A181995 n

end A181995

/-! ## A181995.P17181310982240235113

`abs(A064680(n)+n*A109613(n)-3*n)`
-/

namespace A181995.P17181310982240235113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064680 n + (n : ℤ) * A109613 n - (3 * n : ℤ)|

end

end A181995.P17181310982240235113

namespace A181995

/-- `abs(A064680(n)+n*A109613(n)-3*n)` -/
def P17181310982240235113.Spec : Prop :=
  ∀ n, P17181310982240235113.a n = A181995 n

end A181995

/-! ## A181995.P6149294538994722948

`A118729(A047615(n+1))`
-/

namespace A181995.P6149294538994722948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (A047615 (n + 1)).toNat

end

end A181995.P6149294538994722948

namespace A181995

/-- `A118729(A047615(n+1))` -/
def P6149294538994722948.Spec : Prop :=
  ∀ n, P6149294538994722948.a n = A181995 n

end A181995

/-!
# A181996: Triangle of Ward numbers T(n,k) (n>=0, k=0 if n=0, otherwise 0 <= k <= n-1) read by rows.

The programs for A181996, there is no canonical definition to state claims against.
-/

/-! ## A181996.P3696388781623043293

`A134991(∑[char[∑[n]]]²+1-n)`
-/

namespace A181996.P3696388781623043293
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - (n : ℤ))).toNat

end

end A181996.P3696388781623043293

/-! ## A181996.P8388024718158073775

`A269939(A185782(n+1)+n+3)`
-/

namespace A181996.P8388024718158073775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269939 (A185782 (n + 1) + (n + 3 : ℤ)).toNat

end

end A181996.P8388024718158073775

/-! ## A181996.P13941224813958711286

`abs(A134685(record[A252648(n)]))`
-/

namespace A181996.P13941224813958711286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134685 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A181996.P13941224813958711286

/-! ## A181996.P12339983471132259702

`abs(A134685(A061219(n+1)))`
-/

namespace A181996.P12339983471132259702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134685 (A061219 (n + 1)).toNat|

end

end A181996.P12339983471132259702

/-! ## A181996.P6524040427435408492

`gcd(A005928(A072856(n)), A134685(n+1))`
-/

namespace A181996.P6524040427435408492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005928 (A072856 n).toNat) (A134685 (n + 1))

end

end A181996.P6524040427435408492

/-!
# A181997: G.f. satisfies: x = Sum_{n>=1} 1/A(x)^(3*n) * Product_{k=1..n} (1 - 1/A(x)^k).

The programs for A181997, there is no canonical definition to state claims against.
-/

/-! ## A181997.P13155546453923967929

`A186445(n)+A057366(A361305(n+1))`
-/

namespace A181997.P13155546453923967929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186445 n + A057366 (A361305 (n + 1)).toNat

end

end A181997.P13155546453923967929

/-! ## A181997.P10307531001172438837

`ceil(sqrt(A324171(comp[2*n+3])))`
-/

namespace A181997.P10307531001172438837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A324171 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)⌉

end

end A181997.P10307531001172438837

/-!
# A181998: G.f. satisfies: x = Sum_{n>=1} 1/A(x)^(4*n) * Product_{k=1..n} (1 - 1/A(x)^k).

The programs for A181998, there is no canonical definition to state claims against.
-/

/-! ## A181998.P2544463683518806457

`A008615(A365752(n)+ceil(2^(n-1)))`
-/

namespace A181998.P2544463683518806457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A365752 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A181998.P2544463683518806457

/-! ## A181998.P11833511756834023629

`A349603(n)-A037880(A016269(n))`
-/

namespace A181998.P11833511756834023629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349603 n - A037880 (A016269 n).toNat

end

end A181998.P11833511756834023629

/-!
# A181999: G.f. A(x) satisfies A(x) = A(x^2) + x*A(x)^2.

The programs for A181999, there is no canonical definition to state claims against.
-/

/-! ## A181999.P4928739492486050582

`or(1, A214701(A279557(n))+A032741(n))`
-/

namespace A181999.P4928739492486050582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A214701 (A279557 n).toNat + A032741 n)

end

end A181999.P4928739492486050582

/-! ## A181999.P7326028303539546246

`or(1, round(A108954(and(n, n-1)+4^n)/2))`
-/

namespace A181999.P7326028303539546246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((A108954 (Int.land (n : ℤ) ((n : ℤ) - 1) + (4 ^ n : ℤ)).toNat : ℚ) / 2))

end

end A181999.P7326028303539546246

/-! ## A181999.P8463355101894523588

`A082226(A148205(n))`
-/

namespace A181999.P8463355101894523588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082226 (A148205 n).toNat

end

end A181999.P8463355101894523588

