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
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
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
# A373000: a(n) = Sum_{k=1..n} sigma( (n/gcd(k,n))^4 ).

The programs for A373000, there is no canonical definition to state claims against.
-/

/-! ## A373000.P2358927890830303894

`A351603(n+1)-A005929(A129329(n))`
-/

namespace A373000.P2358927890830303894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351603 (n + 1) - A005929 (A129329 n).toNat

end

end A373000.P2358927890830303894

/-! ## A373000.P3182985592531795589

`A351603(n+1)-A083915(A279013(n))`
-/

namespace A373000.P3182985592531795589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351603 (n + 1) - A083915 (A279013 n).toNat

end

end A373000.P3182985592531795589

/-! ## A373000.P1692883762072568623

`A351603(n+1)-A262888(A130905(n))`
-/

namespace A373000.P1692883762072568623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351603 (n + 1) - A262888 (A130905 n).toNat

end

end A373000.P1692883762072568623

/-!
# A373002: a(n) = Sum_{k=1..n} tau( (n/gcd(k,n))^n ).

The programs for A373002, there is no canonical definition to state claims against.
-/

/-! ## A373002.P201065544897001193

`(n+1)*A373003(n+1)`
-/

namespace A373002.P201065544897001193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373003 (n + 1)

end

end A373002.P201065544897001193

/-! ## A373002.P5420598727834447069

`A114595(A166753(n))`
-/

namespace A373002.P5420598727834447069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114595 (A166753 n).toNat

end

end A373002.P5420598727834447069

/-!
# A373003: a(n) = (1/n) * Sum_{k=1..n} tau( (n/gcd(k,n))^n ).

The programs for A373003, there is no canonical definition to state claims against.
-/

/-! ## A373003.P11532680450857254565

`A373002(n+1)/(n+1)`
-/

namespace A373003.P11532680450857254565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373002 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A373003.P11532680450857254565

/-!
# A373004: a(n) = Sum_{k=1..n} sigma( (n/gcd(k,n))^n ).

The programs for A373004, there is no canonical definition to state claims against.
-/

/-! ## A373004.P8510317170543206165

`record[∑{d}[1-n, #^n]]-A279782(A280685(n+1))`
-/

namespace A373004.P8510317170543206165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A279782 (A280685 (n + 1)).toNat

end

end A373004.P8510317170543206165

/-!
# A373005: Array read by ascending antidiagonals: A(n,k) is the maximum possible cardinality of a set of points of diameter at most k-1 in {0,1}^n.

The programs for A373005, there is no canonical definition to state claims against.
-/

/-! ## A373005.P7945715627257893117

`A260693(n)%A036450(A000292(2*(n+1)))`
-/

namespace A373005.P7945715627257893117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260693 n) (A036450 (A000292 (2 * (n + 1))).toNat)

end

end A373005.P7945715627257893117

/-! ## A373005.P14366490803317195489

`A328114(A304330(n))%4`
-/

namespace A373005.P14366490803317195489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328114 (A304330 n).toNat) 4

end

end A373005.P14366490803317195489

/-! ## A373005.P13381669715497648749

`A109294(A394823(n))`
-/

namespace A373005.P13381669715497648749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109294 (A394823 n).toNat

end

end A373005.P13381669715497648749

/-! ## A373005.P7714235840351333258

`A316717(A369056(n+1))`
-/

namespace A373005.P7714235840351333258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316717 (A369056 (n + 1)).toNat

end

end A373005.P7714235840351333258

/-! ## A373005.P10129448875525788906

`A287267(A344614(n)+A005097(n+1))`
-/

namespace A373005.P10129448875525788906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A344614 n + A005097 (n + 1)).toNat

end

end A373005.P10129448875525788906

/-!
# A373007: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} ( n/gcd(x_1, x_2, x_3, x_4, x_5, n) )^2.

The programs for A373007, the canonical program `A373007.P1458280276416540724` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373007 has offset 1).

The definition of A373007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373007.P1458280276416540724

`∑{d}[n+1, A013955(#)*A334657((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373007

/-- `∑{d}[n+1, A013955(#)*A334657((n+1)/#)]` -/
def P1458280276416540724.Spec : Prop :=
  ∀ n, P1458280276416540724.a n = A373007 (n + 1)

theorem P1458280276416540724.correct : P1458280276416540724.Spec := by
  intro n
  simp only [A373007, Nat.add_sub_cancel]

end A373007

/-! ## A373007.P3063884278440423392

`∑{d}[n+1, A053191(#)*A372964((n+1)/#)]`
-/

namespace A373007.P3063884278440423392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A372964 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373007.P3063884278440423392

namespace A373007

/-- `∑{d}[n+1, A053191(#)*A372964((n+1)/#)]` -/
def P3063884278440423392.Spec : Prop :=
  ∀ n, P3063884278440423392.a n = A373007 (n + 1)

end A373007

/-! ## A373007.P10372640512038175952

`∑{d}[n+1, A239442(#)*A372963((n+1)/#)]`
-/

namespace A373007.P10372640512038175952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239442 d * A372963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373007.P10372640512038175952

namespace A373007

/-- `∑{d}[n+1, A239442(#)*A372963((n+1)/#)]` -/
def P10372640512038175952.Spec : Prop :=
  ∀ n, P10372640512038175952.a n = A373007 (n + 1)

end A373007

/-!
# A373010: Lexicographically earliest sequence of positive integers such that no three terms a(j), a(j+k), a(j+2k) (for any j and k) form a progression of the form p, p-2*q, p-q, where q >= 0.

The programs for A373010, there is no canonical definition to state claims against.
-/

/-! ## A373010.P16840891682391181366

`gcd(A332831(3*n+1), A373111(n+1))`
-/

namespace A373010.P16840891682391181366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A332831 (3 * n + 1)) (A373111 (n + 1))

end

end A373010.P16840891682391181366

/-! ## A373010.P11791392924404953947

`gcd(A060120(A229934(n+1)), A373111(n+1))`
-/

namespace A373010.P11791392924404953947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060120 (A229934 (n + 1)).toNat) (A373111 (n + 1))

end

end A373010.P11791392924404953947

/-! ## A373010.P1852611955091730

`A058061(C(A216285(n+1), A090822(n+1)))`
-/

namespace A373010.P1852611955091730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (Nat.choose (A216285 (n + 1)).toNat (A090822 (n + 1)).toNat)

end

end A373010.P1852611955091730

/-! ## A373010.P7057710162107017503

`A381658(comp[∑[n-2]]+1)%A344607(3*n+2)`
-/

namespace A373010.P7057710162107017503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381658 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)) (A344607 (3 * n + 2))

end

end A373010.P7057710162107017503

/-! ## A373010.P17582736149861796144

`A381658((comp[∑[n-2]]+1)%A127821(2*n+5))`
-/

namespace A373010.P17582736149861796144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381658 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) (A127821 (2 * n + 5))).toNat

end

end A373010.P17582736149861796144

/-!
# A373011: Number of congruences of the 0-twisted Temperley-Lieb monoid of degree n.

The programs for A373011, the canonical program `A373011.P18277648109206096857` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373011 has offset 0).

The definition of A373011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373011.P18277648109206096857

`a(n-2)+1` with `a(0)=2, a(1)=2, a(2)=3, a(3)=3, a(4)=7`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373011

/-- `a(n-2)+1` -/
def P18277648109206096857.Spec : Prop :=
  ∀ n, (P18277648109206096857.a n : ℤ) = A373011 n

theorem P18277648109206096857.correct : P18277648109206096857.Spec := by
  intro n
  simp only [A373011]

end A373011

/-! ## A373011.P6415798329584014651

`∑[1-a(n-1)]` with `a(0)=2, a(1)=0, a(2)=1, a(3)=0, a(4)=4`
-/

namespace A373011.P6415798329584014651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1, 0, 4] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373011.P6415798329584014651

namespace A373011

/-- `∑[1-a(n-1)]` -/
def P6415798329584014651.Spec : Prop :=
  ∀ n, P6415798329584014651.a n = A373011 n

end A373011

/-! ## A373011.P16054123982660671174

`6-(a(n-1)-n)` with `a(0)=2, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A373011.P16054123982660671174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3, 3] fun n a =>
  6 - (a (n - 1) - (n : ℤ))

end

end A373011.P16054123982660671174

namespace A373011

/-- `6-(a(n-1)-n)` -/
def P16054123982660671174.Spec : Prop :=
  ∀ n, P16054123982660671174.a n = A373011 n

end A373011

/-! ## A373011.P9753677990756740446

`ogf((2-x^2+3x^4-3x^5)/(1-x-x^2+x^3))`
-/

namespace A373011.P9753677990756740446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1, 0, 3, -3] [1, -1, -1, 1] n

end

end A373011.P9753677990756740446

namespace A373011

/-- `ogf((2-x^2+3x^4-3x^5)/(1-x-x^2+x^3))` -/
def P9753677990756740446.Spec : Prop :=
  ∀ n, P9753677990756740446.a n = A373011 n

end A373011

/-! ## A373011.P6080137665267103243

`A014566(A290682(n)-A289098(n))+A004526(n)`
-/

namespace A373011.P6080137665267103243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014566 (A290682 n - A289098 n).toNat + A004526 n

end

end A373011.P6080137665267103243

namespace A373011

/-- `A014566(A290682(n)-A289098(n))+A004526(n)` -/
def P6080137665267103243.Spec : Prop :=
  ∀ n, P6080137665267103243.a n = A373011 n

end A373011

/-!
# A373012: Number of distinct partitions p of n such that max(p) == 1 mod 3.

The programs for A373012, there is no canonical definition to state claims against.
-/

/-! ## A373012.P2863599272919960142

`A000009(n)-(A373013(n)+A372893(n))`
-/

namespace A373012.P2863599272919960142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A373013 n + A372893 n)

end

end A373012.P2863599272919960142

/-!
# A373013: Number of distinct partitions p of n such that max(p) == 2 mod 3.

The programs for A373013, there is no canonical definition to state claims against.
-/

/-! ## A373013.P15550086637724208102

`A000009(n)-(A373012(n)+A372893(n))`
-/

namespace A373013.P15550086637724208102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A373012 n + A372893 n)

end

end A373013.P15550086637724208102

/-!
# A373014: Number of partitions p of n such that max(p) == 1 mod 3.

The programs for A373014, there is no canonical definition to state claims against.
-/

/-! ## A373014.P437438010065595415

`A000041(n)-(A373015(n)+A363045(n))`
-/

namespace A373014.P437438010065595415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A373015 n + A363045 n)

end

end A373014.P437438010065595415

/-!
# A373015: Number of partitions p of n such that max(p) == 2 mod 3.

The programs for A373015, there is no canonical definition to state claims against.
-/

/-! ## A373015.P14538238746114294328

`A000041(n)-(A373014(n)+A363045(n))`
-/

namespace A373015.P14538238746114294328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A373014 n + A363045 n)

end

end A373015.P14538238746114294328

/-! ## A373015.P9950139311575337233

`A259361(A003116(n)%A239412(n+3))`
-/

namespace A373015.P9950139311575337233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Int.tmod (A003116 n) (A239412 (n + 3))).toNat

end

end A373015.P9950139311575337233

/-! ## A373015.P13119758531026236875

`A057363(A188674(n+3))%A255206(3*n+5)`
-/

namespace A373015.P13119758531026236875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057363 (A188674 (n + 3)).toNat) (A255206 (3 * n + 5))

end

end A373015.P13119758531026236875

/-!
# A373016: a(n) is the least positive integer k such that 3*n^2 + 2*n + k is a square.

The programs for A373016, the canonical program `A373016.P2031291891959253969` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373016 has offset 1).

The definition of A373016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373016.P2031291891959253969

`A080883(A045944(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373016

/-- `A080883(A045944(n+1))` -/
def P2031291891959253969.Spec : Prop :=
  ∀ n, P2031291891959253969.a n = A373016 (n + 1)

theorem P2031291891959253969.correct : P2031291891959253969.Spec := by
  intro n
  simp only [A373016, Nat.add_sub_cancel]

end A373016

/-! ## A373016.P16826114814202784411

`A080883(A005563(3*(n+1))/3)`
-/

namespace A373016.P16826114814202784411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (SequenceMachineLib.roundAway ((A005563 (3 * (n + 1)) : ℚ) / 3)).toNat

end

end A373016.P16826114814202784411

namespace A373016

/-- `A080883(A005563(3*(n+1))/3)` -/
def P16826114814202784411.Spec : Prop :=
  ∀ n, P16826114814202784411.a n = A373016 (n + 1)

end A373016

/-!
# A373026: a(n) is the least positive integer k such that 3*n^2 + 2*n - k is a square.

The programs for A373026, there is no canonical definition to state claims against.
-/

/-! ## A373026.P16075239982200962645

`A071797(∑[A016969(n)])`
-/

namespace A373026.P16075239982200962645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373026.P16075239982200962645

/-! ## A373026.P1685375366775878580

`A071797(A045944(n+1))`
-/

namespace A373026.P1685375366775878580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A045944 (n + 1)).toNat

end

end A373026.P1685375366775878580

/-! ## A373026.P5616679100130994014

`A071797(∑[A016957(n)+1])`
-/

namespace A373026.P5616679100130994014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373026.P5616679100130994014

/-! ## A373026.P9079081368782050611

`A071797(A001082(2*n+3))`
-/

namespace A373026.P9079081368782050611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A001082 (2 * n + 3)).toNat

end

end A373026.P9079081368782050611

/-! ## A373026.P4526919071478651257

`A071797(∑[A269369(2*(n+2))])`
-/

namespace A373026.P4526919071478651257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373026.P4526919071478651257

/-! ## A373026.P13030557867563006726

`A071797(A014682(2*n+3)*(n+1))`
-/

namespace A373026.P13030557867563006726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A014682 (2 * n + 3) * (n + 1 : ℤ)).toNat

end

end A373026.P13030557867563006726

/-! ## A373026.P9467037670516917874

`A071797(A000027(3*n+5)*(n+1))`
-/

namespace A373026.P9467037670516917874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A000027 (3 * n + 5) * (n + 1 : ℤ)).toNat

end

end A373026.P9467037670516917874

/-!
# A373027: Number of (0,1)-matrices with sum of entries equal to 2*n or 2*n+1, no zero rows or columns, which are centrally symmetric.

The programs for A373027, there is no canonical definition to state claims against.
-/

/-! ## A373027.P4446031562347001404

`A018252(A106228(2*n)+A048720(3*n))`
-/

namespace A373027.P4446031562347001404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A106228 (2 * n) + A048720 (3 * n)).toNat

end

end A373027.P4446031562347001404

/-!
# A373028: a(n) is the least positive integer k such that 3*n^2 + 2*n + k^2 is a square.

The programs for A373028, there is no canonical definition to state claims against.
-/

/-! ## A373028.P2086392941015264227

`A204995(A045944(n+1))`
-/

namespace A373028.P2086392941015264227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 (A045944 (n + 1)).toNat

end

end A373028.P2086392941015264227

/-! ## A373028.P4528241461705876378

`A204995((n+1)*A000027(3*n+5))`
-/

namespace A373028.P4528241461705876378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 ((n + 1 : ℤ) * A000027 (3 * n + 5)).toNat

end

end A373028.P4528241461705876378

/-! ## A373028.P8959221410520675077

`A204995(A038502(3*n+5)*A038572(2*(n+1)))`
-/

namespace A373028.P8959221410520675077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 (A038502 (3 * n + 5) * A038572 (2 * (n + 1))).toNat

end

end A373028.P8959221410520675077

/-!
# A373029: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) is the number of distinct partitions p of n such that max(p) is a multiple of k.

The programs for A373029, there is no canonical definition to state claims against.
-/

/-! ## A373029.P8745502770454796829

`gcd(A033112(A244490(n)), A333213(n))`
-/

namespace A373029.P8745502770454796829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033112 (A244490 n).toNat) (A333213 n)

end

end A373029.P8745502770454796829

/-! ## A373029.P562700907131707413

`A333213(n)^A374240(A187596(n))`
-/

namespace A373029.P562700907131707413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333213 n : ℚ) ^ (A374240 (A187596 n).toNat : ℤ)

end

end A373029.P562700907131707413

/-! ## A373029.P3964913561551708152

`A333213(n)%A049115(A007766(2*n+1))`
-/

namespace A373029.P3964913561551708152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333213 n) (A049115 (A007766 (2 * n + 1)).toNat)

end

end A373029.P3964913561551708152

/-! ## A373029.P16468367082499789286

`A061336(A333755(n)^A238343(n))`
-/

namespace A373029.P16468367082499789286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (SequenceMachineLib.roundAway ((A333755 n : ℚ) ^ (A238343 n : ℤ))).toNat

end

end A373029.P16468367082499789286

/-! ## A373029.P9632139210698881633

`A285229(n)^A214568(A271835(n))`
-/

namespace A373029.P9632139210698881633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285229 n : ℚ) ^ (A214568 (A271835 n).toNat : ℤ)

end

end A373029.P9632139210698881633

/-!
# A373031: Expansion of Sum_{k>=1} (-1)^(k+1) * k^2 * x^(k^2) / (1 - x^k).

The programs for A373031, there is no canonical definition to state claims against.
-/

/-! ## A373031.P6633343939720231660

`2*A347173(n+1)-A095118(n+1)`
-/

namespace A373031.P6633343939720231660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347173 (n + 1) - A095118 (n + 1)

end

end A373031.P6633343939720231660

/-! ## A373031.P7736977041082753023

`A083323(A366519(n+1))-(A098002(A077168(n))+1)`
-/

namespace A373031.P7736977041082753023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 (A366519 (n + 1)).toNat - (A098002 (A077168 n).toNat + 1)

end

end A373031.P7736977041082753023

/-!
# A373032: Expansion of Sum_{k>=1} (-1)^(k+1) * k^2 * x^(k*(k+1)) / (1 - x^k).

The programs for A373032, there is no canonical definition to state claims against.
-/

/-! ## A373032.P7415723003117244834

`2*A347161(n+1)-A339353(n+1)`
-/

namespace A373032.P7415723003117244834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347161 (n + 1) - A339353 (n + 1)

end

end A373032.P7415723003117244834

/-! ## A373032.P9184347473068149713

`A005843(A347161(n+1))-(A095118(n+1)-A037213(n+1)²)`
-/

namespace A373032.P9184347473068149713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A347161 (n + 1)).toNat - (A095118 (n + 1) - A037213 (n + 1) ^ 2)

end

end A373032.P9184347473068149713

/-! ## A373032.P12009817532428698529

`A070039(n+1)*A165476(A205490(n+2))`
-/

namespace A373032.P12009817532428698529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) * A165476 (A205490 (n + 2)).toNat

end

end A373032.P12009817532428698529

/-!
# A373033: a(0) = 5. For n >= 1, a(n) = a(n-1) converted to base 4 and interpreted in base 10.

The programs for A373033, there is no canonical definition to state claims against.
-/

/-! ## A373033.P16894264080525193795

`A023378(n+1)+1`
-/

namespace A373033.P16894264080525193795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023378 (n + 1) + 1

end

end A373033.P16894264080525193795

/-! ## A373033.P12537178415898654183

`A007090(a(n-1))` with `a(0)=5`
-/

namespace A373033.P12537178415898654183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A007090 (a (n - 1)).toNat

end

end A373033.P12537178415898654183

/-!
# A373035: Number of edge subsets E of the n-dimensional hypercube graph such that E contains a path between two given antipodal nodes.

The programs for A373035, there is no canonical definition to state claims against.
-/

/-! ## A373035.P8883175156964458348

`A373034(∑[n]+n)`
-/

namespace A373035.P8883175156964458348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373034 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A373035.P8883175156964458348

/-!
# A373037: Number of edge subsets E of the n X n square grid graph such that E contains a path between the top left node and the bottom right node.

The programs for A373037, there is no canonical definition to state claims against.
-/

/-! ## A373037.P4553757057494901000

`A373036(∑[n+1])`
-/

namespace A373037.P4553757057494901000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373036 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373037.P4553757057494901000

/-! ## A373037.P16102825229313145404

`record[ratio[1/A373036(n+1)]]`
-/

namespace A373037.P16102825229313145404
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A373036 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373037.P16102825229313145404

/-!
# A373038: In the binary expansion of any nonnegative number n, say with Hamming weight w, reverse the order of the w rightmost bits.

The programs for A373038, there is no canonical definition to state claims against.
-/

/-! ## A373038.P3776311124625282652

`A267112(n+1)-A300409(A000051(n))`
-/

namespace A373038.P3776311124625282652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (n + 1) - A300409 (A000051 n).toNat

end

end A373038.P3776311124625282652

/-!
# A373039: a(n) = (A372966(n) - 1)/240.

The programs for A373039, the canonical program `A373039.P3502463588210789433` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373039 has offset 1).

The definition of A373039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373039.P3502463588210789433

`(A372966(n+1)-1)/240`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373039

/-- `(A372966(n+1)-1)/240` -/
def P3502463588210789433.Spec : Prop :=
  ∀ n, P3502463588210789433.a n = (A373039 (n + 1) : ℚ)

end A373039

/-! ## A373039.P5881931764819265368

`floor(∑{d}[n+1, A013956(#)*A334660((n+1)/#)]/240)`
-/

namespace A373039.P5881931764819265368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), A013956 d * A334660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / 240⌋

end

end A373039.P5881931764819265368

namespace A373039

/-- `floor(∑{d}[n+1, A013956(#)*A334660((n+1)/#)]/240)` -/
def P5881931764819265368.Spec : Prop :=
  ∀ n, P5881931764819265368.a n = A373039 (n + 1)

end A373039

/-!
# A373040: a(n) = (A084218(n) - 1)/12.

The programs for A373040, the canonical program `A373040.P10623131507799743519` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373040 has offset 1).

The definition of A373040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373040.P10623131507799743519

`(A084218(n+1)-1)/12`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A373040

/-- `(A084218(n+1)-1)/12` -/
def P10623131507799743519.Spec : Prop :=
  ∀ n, P10623131507799743519.a n = (A373040 (n + 1) : ℚ)

end A373040

/-! ## A373040.P4749844054983923757

`floor(A084218(n+1)/12)`
-/

namespace A373040.P4749844054983923757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084218 (n + 1) : ℚ) / 12⌋

end

end A373040.P4749844054983923757

namespace A373040

/-- `floor(A084218(n+1)/12)` -/
def P4749844054983923757.Spec : Prop :=
  ∀ n, P4749844054983923757.a n = A373040 (n + 1)

end A373040

/-! ## A373040.P4283567606195002209

`A008647(A084218(n+1))`
-/

namespace A373040.P4283567606195002209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A084218 (n + 1)).toNat

end

end A373040.P4283567606195002209

namespace A373040

/-- `A008647(A084218(n+1))` -/
def P4283567606195002209.Spec : Prop :=
  ∀ n, P4283567606195002209.a n = A373040 (n + 1)

end A373040

/-! ## A373040.P14584865233312362016

`A008647(A076792((n+1)²))`
-/

namespace A373040.P14584865233312362016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A076792 ((n + 1) ^ 2)).toNat

end

end A373040.P14584865233312362016

namespace A373040

/-- `A008647(A076792((n+1)²))` -/
def P14584865233312362016.Spec : Prop :=
  ∀ n, P14584865233312362016.a n = A373040 (n + 1)

end A373040

/-! ## A373040.P10901425397584998979

`A051724(A084218(n+1)-1)`
-/

namespace A373040.P10901425397584998979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A084218 (n + 1) - 1).toNat

end

end A373040.P10901425397584998979

namespace A373040

/-- `A051724(A084218(n+1)-1)` -/
def P10901425397584998979.Spec : Prop :=
  ∀ n, P10901425397584998979.a n = A373040 (n + 1)

end A373040

/-!
# A373041: 2*a(n) is the number of triangles with integer sides (x, y, n), x < y < n, and gcd(x, y, n) = 1.

The programs for A373041, the canonical program `A373041.P17794873688395257527` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373041 has offset 5).

The definition of A373041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, A123323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373041.P16503217781850986192

`(A373051(n+5)-A373051(n+4))/2`
-/

namespace A373041.P16503217781850986192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373051 (n + 5) - A373051 (n + 4) : ℚ) / 2

end

end A373041.P16503217781850986192

namespace A373041

/-- `(A373051(n+5)-A373051(n+4))/2` -/
def P16503217781850986192.Spec : Prop :=
  ∀ n, P16503217781850986192.a n = (A373041 (n + 5) : ℚ)

end A373041

/-! ## A373041.P17794873688395257527

`(A123323(n+5)-3*A023022(n+5))/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A373041

/-- `(A123323(n+5)-3*A023022(n+5))/2` -/
def P17794873688395257527.Spec : Prop :=
  ∀ n, P17794873688395257527.a n = (A373041 (n + 5) : ℚ)

end A373041

/-! ## A373041.P1416712010826420882

`A006370(Δ[A373051(n+4)])`
-/

namespace A373041.P1416712010826420882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373051 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat

end

end A373041.P1416712010826420882

namespace A373041

/-- `A006370(Δ[A373051(n+4)])` -/
def P1416712010826420882.Spec : Prop :=
  ∀ n, P1416712010826420882.a n = A373041 (n + 5)

end A373041

/-! ## A373041.P13050874201656265355

`A006370(A346758(n+5)-A000010(n+5))`
-/

namespace A373041.P13050874201656265355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A346758 (n + 5) - A000010 (n + 5)).toNat

end

end A373041.P13050874201656265355

namespace A373041

/-- `A006370(A346758(n+5)-A000010(n+5))` -/
def P13050874201656265355.Spec : Prop :=
  ∀ n, P13050874201656265355.a n = A373041 (n + 5)

end A373041

/-!
# A373043: a(n) is the number of products P = j*k*n, 1 < j < k < n, such that P is a square.

The programs for A373043, there is no canonical definition to state claims against.
-/

/-! ## A373043.P1607109560185055406

`A122923(A122924(n)+A067558(n+4))`
-/

namespace A373043.P1607109560185055406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122923 (A122924 n + A067558 (n + 4)).toNat

end

end A373043.P1607109560185055406

/-! ## A373043.P14754744006723276557

`A244569(n)-A047999(A071879(n))`
-/

namespace A373043.P14754744006723276557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n - A047999 (A071879 n).toNat

end

end A373043.P14754744006723276557

/-! ## A373043.P12115238651508235326

`A040076(n+3)*A040076(A041011(n))`
-/

namespace A373043.P12115238651508235326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (n + 3) * A040076 (A041011 n).toNat

end

end A373043.P12115238651508235326

/-! ## A373043.P8568015335283816942

`A363855(n+1)+A114611(A316856(n+1))`
-/

namespace A373043.P8568015335283816942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363855 (n + 1) + A114611 (A316856 (n + 1)).toNat

end

end A373043.P8568015335283816942

/-! ## A373043.P6692877724260076206

`A083894(A156242(n+1)*A203452(n+1))`
-/

namespace A373043.P6692877724260076206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (A156242 (n + 1) * A203452 (n + 1)).toNat

end

end A373043.P6692877724260076206

/-!
# A373044: Prime concatenated analog clock numbers read clockwise. Version 2: hours > 9 are split in 2 digits.

The programs for A373044, there is no canonical definition to state claims against.
-/

/-! ## A373044.P4920225348603906785

`filter[A068148(n+1), A334465(#)]`
-/

namespace A373044.P4920225348603906785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334465 (f1 j).toNat = 1) n)

end

end A373044.P4920225348603906785

/-! ## A373044.P1102715250359712210

`∩[A006514(n+1), A032981(n+1)]`
-/

namespace A373044.P1102715250359712210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373044.P1102715250359712210

/-! ## A373044.P899594467117654064

`∩[A006514(n+1), A134336(n+1)]`
-/

namespace A373044.P899594467117654064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373044.P899594467117654064

/-!
# A373045: Prime concatenated analog clock numbers read counterclockwise. Version 2: hours > 9 may be split into individual digits.

The programs for A373045, there is no canonical definition to state claims against.
-/

/-! ## A373045.P13324953812230479861

`A063905(A065847(n+1)+n)`
-/

namespace A373045.P13324953812230479861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A065847 (n + 1) + (n : ℤ)).toNat

end

end A373045.P13324953812230479861

/-! ## A373045.P3536137683848651664

`A129759(A129775(n)+A028260(n+1))`
-/

namespace A373045.P3536137683848651664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (A129775 n + A028260 (n + 1)).toNat

end

end A373045.P3536137683848651664

/-! ## A373045.P6422210665322446479

`A175944(A065847(n+1)+A005145(n+1))`
-/

namespace A373045.P6422210665322446479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A065847 (n + 1) + A005145 (n + 1)).toNat

end

end A373045.P6422210665322446479

/-! ## A373045.P7426298876917629839

`A175944(A065847(n+1)+A025523(n+1))`
-/

namespace A373045.P7426298876917629839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A065847 (n + 1) + A025523 (n + 1)).toNat

end

end A373045.P7426298876917629839

/-! ## A373045.P5856918944001796526

`A175944(A115732(n+1)+A065847(n+1))`
-/

namespace A373045.P5856918944001796526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A115732 (n + 1) + A065847 (n + 1)).toNat

end

end A373045.P5856918944001796526

/-!
# A373046: Number of binary strings of length n that contain the substring 1000.

The programs for A373046, the canonical program `A373046.P16169006219568415686` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373046 has offset 0).

The definition of A373046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373046.P8270976733732605072

`2^(n-3)+a(n-1)+a(n-2)+a(n-3)-1` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A373046.P8270976733732605072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) + a (n - 1) + a (n - 2) + a (n - 3) - 1

end

end A373046.P8270976733732605072

namespace A373046

/-- `2^(n-3)+a(n-1)+a(n-2)+a(n-3)-1` -/
def P8270976733732605072.Spec : Prop :=
  ∀ n, P8270976733732605072.a n = (A373046 n : ℚ)

end A373046

/-! ## A373046.P16169006219568415686

`3*a(n-1)-a(n-2)-a(n-3)-2*a(n-4)+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373046

/-- `3*a(n-1)-a(n-2)-a(n-3)-2*a(n-4)+1` -/
def P16169006219568415686.Spec : Prop :=
  ∀ n, P16169006219568415686.a n = A373046 n

theorem P16169006219568415686.correct : P16169006219568415686.Spec := by
  intro n
  simp only [A373046]

end A373046

/-! ## A373046.P12658860389141679400

`∑[A265725(n)/2]`
-/

namespace A373046.P12658860389141679400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265725 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373046.P12658860389141679400

namespace A373046

/-- `∑[A265725(n)/2]` -/
def P12658860389141679400.Spec : Prop :=
  ∀ n, P12658860389141679400.a n = (A373046 n : ℚ)

end A373046

/-! ## A373046.P14125522753286666605

`2^n-A008937(n+1)`
-/

namespace A373046.P14125522753286666605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A008937 (n + 1)

end

end A373046.P14125522753286666605

namespace A373046

/-- `2^n-A008937(n+1)` -/
def P14125522753286666605.Spec : Prop :=
  ∀ n, P14125522753286666605.a n = A373046 n

end A373046

/-! ## A373046.P10723833425671936684

`A007800(n+1)+A000225(n)-A062544(n+1)`
-/

namespace A373046.P10723833425671936684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (n + 1) + (A000225 n - A062544 (n + 1))

end

end A373046.P10723833425671936684

namespace A373046

/-- `A007800(n+1)+A000225(n)-A062544(n+1)` -/
def P10723833425671936684.Spec : Prop :=
  ∀ n, P10723833425671936684.a n = A373046 n

end A373046

/-! ## A373046.P2195111105279322706

`A007800(n+1)+A000079(n)-A007800(n+2)`
-/

namespace A373046.P2195111105279322706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (n + 1) + (A000079 n - A007800 (n + 2))

end

end A373046.P2195111105279322706

namespace A373046

/-- `A007800(n+1)+A000079(n)-A007800(n+2)` -/
def P2195111105279322706.Spec : Prop :=
  ∀ n, P2195111105279322706.a n = A373046 n

end A373046

/-! ## A373046.P15713155767003722836

`∑[2^n-A135491(n)]/2`
-/

namespace A373046.P15713155767003722836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A135491 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A373046.P15713155767003722836

namespace A373046

/-- `∑[2^n-A135491(n)]/2` -/
def P15713155767003722836.Spec : Prop :=
  ∀ n, P15713155767003722836.a n = (A373046 n : ℚ)

end A373046

/-!
# A373048: Number of squares between n! and (n+1)!, exclusive.

The programs for A373048, the canonical program `A373048.P12956872335884234756` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373048 has offset 0).

The definition of A373048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373048.P12956872335884234756

`A055226(n+1)-A055226(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A373048

/-- `A055226(n+1)-A055226(n)` -/
def P12956872335884234756.Spec : Prop :=
  ∀ n, P12956872335884234756.a n = A373048 n

theorem P12956872335884234756.correct : P12956872335884234756.Spec := by
  intro n
  simp only [A373048]

end A373048

/-! ## A373048.P13590398240746368648

`floor(sqrt((n+1)!))-floor(sqrt(n!))`
-/

namespace A373048.P13590398240746368648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (Nat.factorial (n + 1)) : ℤ) - (Nat.sqrt (Nat.factorial n) : ℤ)

end

end A373048.P13590398240746368648

namespace A373048

/-- `floor(sqrt((n+1)!))-floor(sqrt(n!))` -/
def P13590398240746368648.Spec : Prop :=
  ∀ n, P13590398240746368648.a n = A373048 n

end A373048

/-! ## A373048.P14194386602105914060

`Δ[A055226(n)]`
-/

namespace A373048.P14194386602105914060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373048.P14194386602105914060

namespace A373048

/-- `Δ[A055226(n)]` -/
def P14194386602105914060.Spec : Prop :=
  ∀ n, P14194386602105914060.a n = A373048 n

theorem P14194386602105914060.correct : P14194386602105914060.Spec := by
  intro n
  simp only [A373048, Nat.add_sub_cancel, A373048.P14194386602105914060.f1, A373048.P14194386602105914060.a, A373048.P12956872335884234756.a, SequenceMachineLib.memo_apply]

end A373048

/-! ## A373048.P3629556433985151497

`Δ[floor(sqrt(n!))]`
-/

namespace A373048.P3629556433985151497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373048.P3629556433985151497

namespace A373048

/-- `Δ[floor(sqrt(n!))]` -/
def P3629556433985151497.Spec : Prop :=
  ∀ n, P3629556433985151497.a n = A373048 n

end A373048

/-! ## A373048.P292180396845764645

`Δ[floor(n!^(1/2))]`
-/

namespace A373048.P292180396845764645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373048.P292180396845764645

namespace A373048

/-- `Δ[floor(n!^(1/2))]` -/
def P292180396845764645.Spec : Prop :=
  ∀ n, P292180396845764645.a n = A373048 n

end A373048

/-! ## A373048.P16278976823977565758

`Δ[sqrt(A065731(n))]`
-/

namespace A373048.P16278976823977565758
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065731 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373048.P16278976823977565758

namespace A373048

/-- `Δ[sqrt(A065731(n))]` -/
def P16278976823977565758.Spec : Prop :=
  ∀ n, P16278976823977565758.a n = (A373048 n : ℝ)

end A373048

/-!
# A373051: Number of non-similar triangles possible with distinct positive integer side lengths of at most n units.

The programs for A373051, there is no canonical definition to state claims against.
-/

/-! ## A373051.P12370173892707836093

`A172152(A011849(n+1))`
-/

namespace A373051.P12370173892707836093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172152 (A011849 (n + 1)).toNat

end

end A373051.P12370173892707836093

/-! ## A373051.P4566696773371443117

`A000196(A000041(3*n+2))-A330688(n+1)`
-/

namespace A373051.P4566696773371443117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000041 (3 * n + 2)).toNat - A330688 (n + 1)

end

end A373051.P4566696773371443117

/-! ## A373051.P13653473115118577529

`∑[A331195(A189912(n))]`
-/

namespace A373051.P13653473115118577529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 (A189912 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373051.P13653473115118577529

/-! ## A373051.P6364057623809285556

`∑[∑[A001221(A020093(n))]]`
-/

namespace A373051.P6364057623809285556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020093 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373051.P6364057623809285556

/-! ## A373051.P3925130385975677892

`∑[∑[A211263(A050535(n))]]`
-/

namespace A373051.P3925130385975677892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211263 (A050535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373051.P3925130385975677892

/-!
# A373056: Numbers k that divide the k-th Ulam number.

The programs for A373056, there is no canonical definition to state claims against.
-/

/-! ## A373056.P16662554574865525984

`lt[A002858(n+1)%(n+1), 1]+1`
-/

namespace A373056.P16662554574865525984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002858 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A373056.P16662554574865525984

/-! ## A373056.P8263084605359882752

`record[gcd(A270929(n+1), A279411(3*n+2))]`
-/

namespace A373056.P8263084605359882752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A270929 (n + 1)) (A279411 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373056.P8263084605359882752

/-! ## A373056.P12904660884652025651

`A388072(A003464(n))+A000110(n)`
-/

namespace A373056.P12904660884652025651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388072 (A003464 n).toNat + A000110 n

end

end A373056.P12904660884652025651

/-!
# A373058: The sum of the aliquot coreful divisors of the nonsquarefree numbers.

The programs for A373058, the canonical program `A373058.P8412675158221474829` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373058 has offset 1).

The definition of A373058 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A336563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373058.P8412675158221474829

`A336563(A013929(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A373058

/-- `A336563(A013929(n+1))` -/
def P8412675158221474829.Spec : Prop :=
  ∀ n, P8412675158221474829.a n = A373058 (n + 1)

theorem P8412675158221474829.correct : P8412675158221474829.Spec := by
  intro n
  simp only [A373058, Nat.add_sub_cancel]

end A373058

/-! ## A373058.P7716569769471949914

`A336563(A162966(n+2))`
-/

namespace A373058.P7716569769471949914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (A162966 (n + 2)).toNat

end

end A373058.P7716569769471949914

namespace A373058

/-- `A336563(A162966(n+2))` -/
def P7716569769471949914.Spec : Prop :=
  ∀ n, P7716569769471949914.a n = A373058 (n + 1)

end A373058

/-! ## A373058.P15045986961911659696

`A336563(comp[C(A007913(n+1), n)])`
-/

namespace A373058.P15045986961911659696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007913 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A373058.P15045986961911659696

namespace A373058

/-- `A336563(comp[C(A007913(n+1), n)])` -/
def P15045986961911659696.Spec : Prop :=
  ∀ n, P15045986961911659696.a n = A373058 (n + 1)

end A373058

/-! ## A373058.P5384809334217018116

`A336563(lt[A008683(n+2)², 1]+2)`
-/

namespace A373058.P5384809334217018116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A373058.P5384809334217018116

namespace A373058

/-- `A336563(lt[A008683(n+2)², 1]+2)` -/
def P5384809334217018116.Spec : Prop :=
  ∀ n, P5384809334217018116.a n = A373058 (n + 1)

end A373058

/-! ## A373058.P16806727530158271864

`A336563(∪[A049199(n+1), A034023(n)])`
-/

namespace A373058.P16806727530158271864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A373058.P16806727530158271864

namespace A373058

/-- `A336563(∪[A049199(n+1), A034023(n)])` -/
def P16806727530158271864.Spec : Prop :=
  ∀ n, P16806727530158271864.a n = A373058 (n + 1)

end A373058

/-! ## A373058.P3606180917974794404

`A057723(A013929(n+1))-sqrt(A062320(n+1))`
-/

namespace A373058.P3606180917974794404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057723 (A013929 (n + 1)).toNat : ℝ) - Real.sqrt (A062320 (n + 1) : ℝ)

end

end A373058.P3606180917974794404

namespace A373058

/-- `A057723(A013929(n+1))-sqrt(A062320(n+1))` -/
def P3606180917974794404.Spec : Prop :=
  ∀ n, P3606180917974794404.a n = (A373058 (n + 1) : ℝ)

end A373058

/-!
# A373059: a(n) = Sum_{1 <= x_1, x_2 <= n} gcd(x_1, n)/gcd(x_1, x_2, n).

The programs for A373059, the canonical program `A373059.P5067458892054263835` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373059 has offset 1).

The definition of A373059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373059.P6697082074762041687

`∑{d}[n+1, #*A029935(#)]`
-/

namespace A373059.P6697082074762041687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A029935 d

end

end A373059.P6697082074762041687

namespace A373059

/-- `∑{d}[n+1, #*A029935(#)]` -/
def P6697082074762041687.Spec : Prop :=
  ∀ n, P6697082074762041687.a n = A373059 (n + 1)

end A373059

/-! ## A373059.P1521694527328449032

`∑{d}[n+1, A002618(#)*A057660((n+1)/#)]`
-/

namespace A373059.P1521694527328449032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373059.P1521694527328449032

namespace A373059

/-- `∑{d}[n+1, A002618(#)*A057660((n+1)/#)]` -/
def P1521694527328449032.Spec : Prop :=
  ∀ n, P1521694527328449032.a n = A373059 (n + 1)

end A373059

/-! ## A373059.P5067458892054263835

`∑{d}[n+1, A034714(#)*A101035((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373059

/-- `∑{d}[n+1, A034714(#)*A101035((n+1)/#)]` -/
def P5067458892054263835.Spec : Prop :=
  ∀ n, P5067458892054263835.a n = A373059 (n + 1)

theorem P5067458892054263835.correct : P5067458892054263835.Spec := by
  intro n
  simp only [A373059, Nat.add_sub_cancel]

end A373059

/-! ## A373059.P8312789524509208110

`∑{d}[n+1, A327960(#)*A328490((n+1)/#)]`
-/

namespace A373059.P8312789524509208110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d * A328490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373059.P8312789524509208110

namespace A373059

/-- `∑{d}[n+1, A327960(#)*A328490((n+1)/#)]` -/
def P8312789524509208110.Spec : Prop :=
  ∀ n, P8312789524509208110.a n = A373059 (n + 1)

end A373059

/-! ## A373059.P1205607436289805010

`∑{d}[n+1, A328641(#)*A360428((n+1)/#)]`
-/

namespace A373059.P1205607436289805010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A360428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373059.P1205607436289805010

namespace A373059

/-- `∑{d}[n+1, A328641(#)*A360428((n+1)/#)]` -/
def P1205607436289805010.Spec : Prop :=
  ∀ n, P1205607436289805010.a n = A373059 (n + 1)

end A373059

/-! ## A373059.P2355790703702625297

`∑{d}[n+1, A328722(#)*A360429((n+1)/#)]`
-/

namespace A373059.P2355790703702625297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A360429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373059.P2355790703702625297

namespace A373059

/-- `∑{d}[n+1, A328722(#)*A360429((n+1)/#)]` -/
def P2355790703702625297.Spec : Prop :=
  ∀ n, P2355790703702625297.a n = A373059 (n + 1)

end A373059

/-!
# A373060: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, n)/gcd(x_1, x_2, x_3, n).

The programs for A373060, the canonical program `A373060.P5015462163291241472` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373060 has offset 1).

The definition of A373060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373060.P11604739133021984528

`∑{d}[n+1, A000056(#)*A068963((n+1)/#)]`
-/

namespace A373060.P11604739133021984528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A068963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373060.P11604739133021984528

namespace A373060

/-- `∑{d}[n+1, A000056(#)*A068963((n+1)/#)]` -/
def P11604739133021984528.Spec : Prop :=
  ∀ n, P11604739133021984528.a n = A373060 (n + 1)

end A373060

/-! ## A373060.P5015462163291241472

`∑{d}[n+1, A053191(#)*A350156((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373060

/-- `∑{d}[n+1, A053191(#)*A350156((n+1)/#)]` -/
def P5015462163291241472.Spec : Prop :=
  ∀ n, P5015462163291241472.a n = A373060 (n + 1)

theorem P5015462163291241472.correct : P5015462163291241472.Spec := by
  intro n
  simp only [A373060, Nat.add_sub_cancel]

end A373060

/-! ## A373060.P8308498451811343128

`∑{d}[n+1, A349469(#)*A373061((n+1)/#)]`
-/

namespace A373060.P8308498451811343128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349469 d * A373061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373060.P8308498451811343128

namespace A373060

/-- `∑{d}[n+1, A349469(#)*A373061((n+1)/#)]` -/
def P8308498451811343128.Spec : Prop :=
  ∀ n, P8308498451811343128.a n = A373060 (n + 1)

end A373060

/-! ## A373060.P6175384798808993874

`∑{d}[n+1, A351654(#)*A386012((n+1)/#)]`
-/

namespace A373060.P6175384798808993874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351654 d * A386012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373060.P6175384798808993874

namespace A373060

/-- `∑{d}[n+1, A351654(#)*A386012((n+1)/#)]` -/
def P6175384798808993874.Spec : Prop :=
  ∀ n, P6175384798808993874.a n = A373060 (n + 1)

end A373060

/-!
# A373061: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, n)/gcd(x_1, x_2, x_3, n).

The programs for A373061, the canonical program `A373061.P4996465783766224626` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373061 has offset 1).

The definition of A373061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373061.P4996465783766224626

`∑{d}[n+1, #*A341772(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373061

/-- `∑{d}[n+1, #*A341772(#)]` -/
def P4996465783766224626.Spec : Prop :=
  ∀ n, P4996465783766224626.a n = A373061 (n + 1)

theorem P4996465783766224626.correct : P4996465783766224626.Spec := by
  intro n
  simp only [A373061, Nat.add_sub_cancel]

end A373061

/-! ## A373061.P11585894418389426130

`∑{d}[n+1, A020478(#)*A023900((n+1)/#)]`
-/

namespace A373061.P11585894418389426130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020478 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373061.P11585894418389426130

namespace A373061

/-- `∑{d}[n+1, A020478(#)*A023900((n+1)/#)]` -/
def P11585894418389426130.Spec : Prop :=
  ∀ n, P11585894418389426130.a n = A373061 (n + 1)

end A373061

/-! ## A373061.P7616822694860652209

`∑{d}[n+1, A000056(#)*A057660((n+1)/#)]`
-/

namespace A373061.P7616822694860652209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373061.P7616822694860652209

namespace A373061

/-- `∑{d}[n+1, A000056(#)*A057660((n+1)/#)]` -/
def P7616822694860652209.Spec : Prop :=
  ∀ n, P7616822694860652209.a n = A373061 (n + 1)

end A373061

/-! ## A373061.P8861404338871467649

`∑{d}[n+1, A078747(#)*A208895((n+1)/#)]`
-/

namespace A373061.P8861404338871467649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078747 d * A208895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373061.P8861404338871467649

namespace A373061

/-- `∑{d}[n+1, A078747(#)*A208895((n+1)/#)]` -/
def P8861404338871467649.Spec : Prop :=
  ∀ n, P8861404338871467649.a n = A373061 (n + 1)

end A373061

/-! ## A373061.P12216853347481190941

`∑{d}[n+1, A002618(#)*A350156((n+1)/#)]`
-/

namespace A373061.P12216853347481190941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373061.P12216853347481190941

namespace A373061

/-- `∑{d}[n+1, A002618(#)*A350156((n+1)/#)]` -/
def P12216853347481190941.Spec : Prop :=
  ∀ n, P12216853347481190941.a n = A373061 (n + 1)

end A373061

/-! ## A373061.P7185528691273428502

`∑{d}[n+1, A053191(#)*A373059((n+1)/#)]`
-/

namespace A373061.P7185528691273428502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A373059 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373061.P7185528691273428502

namespace A373061

/-- `∑{d}[n+1, A053191(#)*A373059((n+1)/#)]` -/
def P7185528691273428502.Spec : Prop :=
  ∀ n, P7185528691273428502.a n = A373061 (n + 1)

end A373061

/-! ## A373061.P8690527245522927458

`∑{d}[n+1, A328641(#)*A368743((n+1)/#)]`
-/

namespace A373061.P8690527245522927458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A368743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373061.P8690527245522927458

namespace A373061

/-- `∑{d}[n+1, A328641(#)*A368743((n+1)/#)]` -/
def P8690527245522927458.Spec : Prop :=
  ∀ n, P8690527245522927458.a n = A373061 (n + 1)

end A373061

/-!
# A373063: Greatest k >= 1 such that (p + 1 - 2^i) / 2^i is prime for i = 1..k and p is prime from A005385.

The programs for A373063, there is no canonical definition to state claims against.
-/

/-! ## A373063.P4642463857664660948

`A095750(n)+1`
-/

namespace A373063.P4642463857664660948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095750 n + 1

end

end A373063.P4642463857664660948

/-! ## A373063.P12991452016929259669

`A074313(A072192(n+1))`
-/

namespace A373063.P12991452016929259669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074313 (A072192 (n + 1)).toNat

end

end A373063.P12991452016929259669

/-! ## A373063.P49425144890631880

`A292936(A005384(n+1))`
-/

namespace A373063.P49425144890631880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A005384 (n + 1)).toNat

end

end A373063.P49425144890631880

/-! ## A373063.P1357312812228889165

`A292936(record[A023503(n+2)])`
-/

namespace A373063.P1357312812228889165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A373063.P1357312812228889165

/-! ## A373063.P2074870515718760929

`A292936(record[A112037(n+2)])`
-/

namespace A373063.P2074870515718760929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A373063.P2074870515718760929

/-! ## A373063.P10608462696874335182

`A292936(A005385(n+1))-1`
-/

namespace A373063.P10608462696874335182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A005385 (n + 1)).toNat - 1

end

end A373063.P10608462696874335182

/-! ## A373063.P15659963103284950745

`A292936(A079148(n+3))-1`
-/

namespace A373063.P15659963103284950745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A079148 (n + 3)).toNat - 1

end

end A373063.P15659963103284950745

/-! ## A373063.P5551958080110171403

`A292936(floor(A005385(n+1)/2))`
-/

namespace A373063.P5551958080110171403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 ⌊(A005385 (n + 1) : ℚ) / 2⌋.toNat

end

end A373063.P5551958080110171403

/-!
# A373064: The mode of the digits of n (using largest mode if multimodal).

The programs for A373064, there is no canonical definition to state claims against.
-/

/-! ## A373064.P7322816503372322086

`A010879(A244112(n)+A040115(n))`
-/

namespace A373064.P7322816503372322086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A244112 n + A040115 n).toNat

end

end A373064.P7322816503372322086

/-!
# A373065: Expansion of e.g.f. (1/2)*(x^2*exp(x))*(cosh(x))^2.

The programs for A373065, the canonical program `A373065.P6283408215570052146` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373065 has offset 0).

The definition of A373065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373065.P6283408215570052146

`C(n, 2)*(3^(n-2)+(-1)^n+2)/4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373065

/-- `C(n, 2)*(3^(n-2)+(-1)^n+2)/4` -/
def P6283408215570052146.Spec : Prop :=
  ∀ n, P6283408215570052146.a n = (A373065 n : ℚ)

end A373065

/-! ## A373065.P14177385434117474908

`A373134(n)+A161680(n)`
-/

namespace A373065.P14177385434117474908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373134 n + A161680 n

end

end A373065.P14177385434117474908

namespace A373065

/-- `A373134(n)+A161680(n)` -/
def P14177385434117474908.Spec : Prop :=
  ∀ n, P14177385434117474908.a n = A373065 n

end A373065

/-! ## A373065.P8130756631221640058

`A033183(A000244(n))*A033440(n)`
-/

namespace A373065.P8130756631221640058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A000244 n).toNat * A033440 n

end

end A373065.P8130756631221640058

namespace A373065

/-- `A033183(A000244(n))*A033440(n)` -/
def P8130756631221640058.Spec : Prop :=
  ∀ n, P8130756631221640058.a n = A373065 n

end A373065

/-!
# A373067: Number of partitions of n such that (smallest part) >= 2*(number of parts).

The programs for A373067, there is no canonical definition to state claims against.
-/

/-! ## A373067.P15368013932208489117

`A025153(lt[A031146(n), A362995(n)])`
-/

namespace A373067.P15368013932208489117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373067.P15368013932208489117

/-! ## A373067.P1962152164564117918

`A025153(lt[A283474(n), A334887(n)])`
-/

namespace A373067.P1962152164564117918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373067.P1962152164564117918

/-!
# A373068: Number of partitions of n such that (smallest part) >= 3*(number of parts).

The programs for A373068, there is no canonical definition to state claims against.
-/

/-! ## A373068.P10279377021424600142

`A244415(2^A373076(2*n))`
-/

namespace A373068.P10279377021424600142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A373076 (2 * n) : ℤ))).toNat

end

end A373068.P10279377021424600142

/-!
# A373069: Number of partitions of n such that (smallest part) >= 4*(number of parts).

The programs for A373069, there is no canonical definition to state claims against.
-/

/-! ## A373069.P1618264237716521384

`A373075(lt[A294647(n+1), A261172(n+1)])`
-/

namespace A373069.P1618264237716521384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373075 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373069.P1618264237716521384

/-! ## A373069.P5999297956522327455

`A373075(lt[A327239(3*n+2), A261172(n+1)])`
-/

namespace A373069.P5999297956522327455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327239 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373075 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373069.P5999297956522327455

/-! ## A373069.P9696295148837854737

`A373075(lt[A332273(n+1), A261172(n+3)])`
-/

namespace A373069.P9696295148837854737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261172 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373075 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373069.P9696295148837854737

/-! ## A373069.P12859294582616390575

`A373075(lt[A339733(3*n+1), A088975(n)])`
-/

namespace A373069.P12859294582616390575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339733 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373075 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373069.P12859294582616390575

/-! ## A373069.P13274654120816975702

`A373076(lt[n², A064293(n+1)])`
-/

namespace A373069.P13274654120816975702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A373069.P13274654120816975702

/-!
# A373070: Number of partitions of n such that (smallest part) >= 5*(number of parts).

The programs for A373070, there is no canonical definition to state claims against.
-/

/-! ## A373070.P8828043077556369908

`A373076(n+2)+A240332(A283553(n+1))`
-/

namespace A373070.P8828043077556369908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373076 (n + 2) + A240332 (A283553 (n + 1)).toNat

end

end A373070.P8828043077556369908

/-! ## A373070.P4883010133650104909

`A373076(lt[1, A338481(3*n+5)])`
-/

namespace A373070.P4883010133650104909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338481 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A373070.P4883010133650104909

/-!
# A373071: Integers k such that k-1 is a multiple of Sum_{prime|k}(prime-1).

The programs for A373071, there is no canonical definition to state claims against.
-/

/-! ## A373071.P11705227028217937020

`A382351(A347520(n+1))`
-/

namespace A373071.P11705227028217937020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382351 (A347520 (n + 1)).toNat

end

end A373071.P11705227028217937020

/-! ## A373071.P3659169674762736521

`A246655(n+1)-A010894(A030303(n+1))`
-/

namespace A373071.P3659169674762736521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - A010894 ((A030303 (n + 1)).toNat + 21)

end

end A373071.P3659169674762736521

/-!
# A373073: Number of partitions of n such that (smallest part) > 2*(number of parts).

The programs for A373073, there is no canonical definition to state claims against.
-/

/-! ## A373073.P5963446033346713562

`A264594(lt[A259651(n+1), A167971(3*(n+1))])`
-/

namespace A373073.P5963446033346713562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167971 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264594 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373073.P5963446033346713562

/-!
# A373074: Number of partitions of n such that (smallest part) > 3*(number of parts).

The programs for A373074, there is no canonical definition to state claims against.
-/

/-! ## A373074.P6272444941754648528

`A023416(or(30, A158780(n)))`
-/

namespace A373074.P6272444941754648528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.lor 30 (A158780 n)).toNat

end

end A373074.P6272444941754648528

/-! ## A373074.P12486356481643597602

`A350893(n+4)+A002448(A229183(n))`
-/

namespace A373074.P12486356481643597602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350893 (n + 4) + A002448 (A229183 n).toNat

end

end A373074.P12486356481643597602

/-! ## A373074.P12598995091128528444

`A350893(n+4)-A010815(A029470(2*n+5))`
-/

namespace A373074.P12598995091128528444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350893 (n + 4) - A010815 (A029470 (2 * n + 5)).toNat

end

end A373074.P12598995091128528444

/-!
# A373075: Number of partitions of n such that (smallest part) > 4*(number of parts).

The programs for A373075, there is no canonical definition to state claims against.
-/

/-! ## A373075.P10392439275380282914

`A350894(lt[A196009(n+1), A057054(n+1)])`
-/

namespace A373075.P10392439275380282914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350894 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373075.P10392439275380282914

/-! ## A373075.P15256989842620163022

`A373076(lt[A379305(n), A035470(n+1)])`
-/

namespace A373075.P15256989842620163022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373076 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373075.P15256989842620163022

/-!
# A373077: Perfect powers that are sandwiched between squarefree numbers.

The programs for A373077, there is no canonical definition to state claims against.
-/

/-! ## A373077.P3596786401253967299

`filter[A001597(n+1), A379971(#)]`
-/

namespace A373077.P3596786401253967299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A373077.P3596786401253967299

/-! ## A373077.P4127412681066971927

`filter[A075090(n+1), A379971(#)]`
-/

namespace A373077.P4127412681066971927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A373077.P4127412681066971927

/-! ## A373077.P9015847571874250371

`∩[A001597(n+1), A280892(n+1)]`
-/

namespace A373077.P9015847571874250371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373077.P9015847571874250371

/-! ## A373077.P12994932597141939348

`∩[A075090(n+1), A280892(n+1)]`
-/

namespace A373077.P12994932597141939348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373077.P12994932597141939348

/-! ## A373077.P1677738655145884456

`∩[A280892(n+1), A396856(n+1)]`
-/

namespace A373077.P1677738655145884456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373077.P1677738655145884456

/-! ## A373077.P16115079812045148615

`∩[A001597(n+1), A067874(n+1)]`
-/

namespace A373077.P16115079812045148615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373077.P16115079812045148615

/-! ## A373077.P5759596335249203382

`∩[A067874(n+1), A075090(n+1)]`
-/

namespace A373077.P5759596335249203382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373077.P5759596335249203382

/-!
# A373080: a(n) is the number of binary strings of length n not containing the substrings 0000, 0001, 0011, 0111, 1111.

The programs for A373080, the canonical program `A373080.P11143827667309540259` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373080 has offset 0).

The definition of A373080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373080.P11143827667309540259

`a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=11, a(5)=18, a(6)=28`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373080

/-- `a(n-2)+2*a(n-3)` -/
def P11143827667309540259.Spec : Prop :=
  ∀ n, (P11143827667309540259.a n : ℤ) = A373080 n

theorem P11143827667309540259.correct : P11143827667309540259.Spec := by
  intro n
  simp only [A373080]

end A373080

/-! ## A373080.P3623782437726135088

`A255554(A087980(n+1)+A008382(n+1))`
-/

namespace A373080.P3623782437726135088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255554 (A087980 (n + 1) + A008382 (n + 1)).toNat

end

end A373080.P3623782437726135088

namespace A373080

/-- `A255554(A087980(n+1)+A008382(n+1))` -/
def P3623782437726135088.Spec : Prop :=
  ∀ n, P3623782437726135088.a n = A373080 n

end A373080

/-!
# A373081: The area of the n-th convex honeycomb formed by spirals of incrementing strips of hexagons.

The programs for A373081, there is no canonical definition to state claims against.
-/

/-! ## A373081.P7536562472868697411

`∩[A001399(n+1), A000217(n)]`
-/

namespace A373081.P7536562472868697411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373081.P7536562472868697411

/-! ## A373081.P9115783692603743823

`∩[A069905(n+4), ∑[n]]`
-/

namespace A373081.P9115783692603743823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A373081.P9115783692603743823

/-! ## A373081.P1347862274304614858

`∩[∑[n], record[A266755(n)]]`
-/

namespace A373081.P1347862274304614858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A373081.P1347862274304614858

/-! ## A373081.P13794306594385651432

`∩[record[A266755(n)], A000217(n)]`
-/

namespace A373081.P13794306594385651432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A373081.P13794306594385651432

/-! ## A373081.P4405214690060286638

`∩[A266755(2*(n+1)), A000217(n)]`
-/

namespace A373081.P4405214690060286638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373081.P4405214690060286638

/-!
# A373082: Number of runs of 0's in A014550(n).

The programs for A373082, the canonical program `A373082.P13712031001074262158` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373082 has offset 0).

The definition of A373082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373082.P13712031001074262158

`A087116(xor(n, floor(n/2)))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373082

/-- `A087116(xor(n, floor(n/2)))` -/
def P13712031001074262158.Spec : Prop :=
  ∀ n, P13712031001074262158.a n = A373082 n

theorem P13712031001074262158.correct : P13712031001074262158.Spec := by
  intro n
  simp only [A373082]

end A373082

/-! ## A373082.P6827684011245319773

`A087116(A003188(n))`
-/

namespace A373082.P6827684011245319773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A003188 n).toNat

end

end A373082.P6827684011245319773

namespace A373082

/-- `A087116(A003188(n))` -/
def P6827684011245319773.Spec : Prop :=
  ∀ n, P6827684011245319773.a n = A373082 n

end A373082

/-! ## A373082.P15459408755215165091

`A069010(A281499(n))`
-/

namespace A373082.P15459408755215165091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A281499 n).toNat

end

end A373082.P15459408755215165091

namespace A373082

/-- `A069010(A281499(n))` -/
def P15459408755215165091.Spec : Prop :=
  ∀ n, P15459408755215165091.a n = A373082 n

end A373082

/-! ## A373082.P6544540689357658635

`A087116(A341915(n))`
-/

namespace A373082.P6544540689357658635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A341915 n).toNat

end

end A373082.P6544540689357658635

namespace A373082

/-- `A087116(A341915(n))` -/
def P6544540689357658635.Spec : Prop :=
  ∀ n, P6544540689357658635.a n = A373082 n

end A373082

/-! ## A373082.P7556031631968082452

`A087116(A286548(n)+n)`
-/

namespace A373082.P7556031631968082452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A286548 n + (n : ℤ)).toNat

end

end A373082.P7556031631968082452

namespace A373082

/-- `A087116(A286548(n)+n)` -/
def P7556031631968082452.Spec : Prop :=
  ∀ n, P7556031631968082452.a n = A373082 n

theorem P7556031631968082452.correct : P7556031631968082452.Spec := by
  intro n
  simp only [A373082, Nat.add_sub_cancel, A373082.P7556031631968082452.a, A373082.P13712031001074262158.a, A087116, A087116.P11350810953562711327.f1, A087116.P11350810953562711327.a, A286548, A286548.P11712479418656410754.a, A003188, A003188.P10544524695508875182.a, A069010, A069010.P14932719103722593844.a, A005811, A005811.P8696411420205566785.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373082

/-!
# A373083: a(1) = 1; for n > 1, a(n) = a(n-1) + n if n is prime, else a(n) = a(n-1) + largest divisor of n < n.

The programs for A373083, there is no canonical definition to state claims against.
-/

/-! ## A373083.P10225410656392332920

`a(n-1)+A117818(n+1)` with `a(0)=1`
-/

namespace A373083.P10225410656392332920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A117818 (n + 1)

end

end A373083.P10225410656392332920

/-! ## A373083.P3344188951432014948

`∑[A117818(n+1)]`
-/

namespace A373083.P3344188951432014948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373083.P3344188951432014948

/-! ## A373083.P14724210540490797454

`∑[(n+1)/A107286(n+1)]`
-/

namespace A373083.P14724210540490797454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A107286 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373083.P14724210540490797454

/-! ## A373083.P11475628770753003893

`∑[A032742(n+1)+n*and(1, ∑{e}[n+1, #]!)]`
-/

namespace A373083.P11475628770753003893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + (n * Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373083.P11475628770753003893

/-! ## A373083.P11691372053611042422

`∑[lcm(A006530(n+1), A032742(n+1))]`
-/

namespace A373083.P11691372053611042422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (n + 1)) (A032742 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373083.P11691372053611042422

/-!
# A373086: Triangle read by rows: T(n, k) is the number of parking functions of length n with preferences restricted to {1, ..., k} for 0 <= k <= n.

The programs for A373086, there is no canonical definition to state claims against.
-/

/-! ## A373086.P17784445044213902082

`A394247(A278073(n))`
-/

namespace A373086.P17784445044213902082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A278073 n).toNat

end

end A373086.P17784445044213902082

/-!
# A373087: k is a term if k is a square and its odd part is divisible by exactly two distinct primes.

The programs for A373087, the canonical program `A373087.P7180067676949029928` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373087 has offset 1).

The definition of A373087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373087.P7180067676949029928

`(eq[3, A001221(2*(n+1))]+1)²`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373087

/-- `(eq[3, A001221(2*(n+1))]+1)²` -/
def P7180067676949029928.Spec : Prop :=
  ∀ n, (P7180067676949029928.a n : ℤ) = A373087 (n + 1)

theorem P7180067676949029928.correct : P7180067676949029928.Spec := by
  intro n
  simp only [A373087, Nat.add_sub_cancel]

end A373087

/-! ## A373087.P17277450545095165570

`A005563(eq[3, A061498(n+1)])+1`
-/

namespace A373087.P17277450545095165570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A373087.P17277450545095165570

namespace A373087

/-- `A005563(eq[3, A061498(n+1)])+1` -/
def P17277450545095165570.Spec : Prop :=
  ∀ n, P17277450545095165570.a n = A373087 (n + 1)

end A373087

/-! ## A373087.P5762945239554609411

`record[A273943(eq[2, A297155(n+1)]+1)²]`
-/

namespace A373087.P5762945239554609411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373087.P5762945239554609411

namespace A373087

/-- `record[A273943(eq[2, A297155(n+1)]+1)²]` -/
def P5762945239554609411.Spec : Prop :=
  ∀ n, P5762945239554609411.a n = A373087 (n + 1)

end A373087

/-! ## A373087.P18396838184710312890

`record[A097140(A214195(n+2))]²`
-/

namespace A373087.P18396838184710312890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A214195 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A373087.P18396838184710312890

namespace A373087

/-- `record[A097140(A214195(n+2))]²` -/
def P18396838184710312890.Spec : Prop :=
  ∀ n, P18396838184710312890.a n = A373087 (n + 1)

end A373087

/-! ## A373087.P17613985399109563377

`record[A057979(A033992(n+1)+1)²]`
-/

namespace A373087.P17613985399109563377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A033992 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373087.P17613985399109563377

namespace A373087

/-- `record[A057979(A033992(n+1)+1)²]` -/
def P17613985399109563377.Spec : Prop :=
  ∀ n, P17613985399109563377.a n = A373087 (n + 1)

end A373087

/-!
# A373089: Coefficients of the power series expansion at p=1 of the time constant C(-1,p) for last passage percolation on the complete directed acyclic graph, where the edges' weights are equal to 1 or -1 with respective probabilities p and 1-p.

The programs for A373089, there is no canonical definition to state claims against.
-/

/-! ## A373089.P15760590610550894432

`A257639(A361752(n)-n)`
-/

namespace A373089.P15760590610550894432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A361752 n - (n : ℤ)).toNat

end

end A373089.P15760590610550894432

/-! ## A373089.P4577490605067970110

`A002024(A192206(n)-A130258(n))`
-/

namespace A373089.P4577490605067970110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A192206 n - A130258 n).toNat

end

end A373089.P4577490605067970110

/-! ## A373089.P5260580795874039534

`or(A122391(n), A351596(A351018(n)))`
-/

namespace A373089.P5260580795874039534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122391 n) (A351596 (A351018 n).toNat)

end

end A373089.P5260580795874039534

/-!
# A373090: Coefficients of the power series expansion at p=1 of the time constant C(-2,p) for last passage percolation on the complete directed acyclic graph, where the edges' weights are equal to 1 or -2 with respective probabilities p and 1-p.

The programs for A373090, there is no canonical definition to state claims against.
-/

/-! ## A373090.P73030771622615986

`A373091(n)+A171368(A068041(n))`
-/

namespace A373090.P73030771622615986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373091 n + A171368 (A068041 n).toNat

end

end A373090.P73030771622615986

/-!
# A373091: Coefficients of the power series expansion at p=1 of the time constant C(-3,p) for last passage percolation on the complete directed acyclic graph, where the edges' weights are equal to 1 or -3 with respective probabilities p and 1-p.

The programs for A373091, there is no canonical definition to state claims against.
-/

/-! ## A373091.P3567626428744975157

`A321309(n)-A333307(A184955(n))`
-/

namespace A373091.P3567626428744975157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321309 n - A333307 (A184955 n).toNat

end

end A373091.P3567626428744975157

/-! ## A373091.P12872769275723109849

`A321309(n)-A370813(A292918(n+1))`
-/

namespace A373091.P12872769275723109849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321309 n - A370813 (A292918 (n + 1)).toNat

end

end A373091.P12872769275723109849

/-!
# A373092: The number of iterations of the map x -> A093653(x) that are required to reach from n to one of the fixed points, 1, 2, 3 or 6.

The programs for A373092, there is no canonical definition to state claims against.
-/

/-! ## A373092.P12127780709735738888

`A000720(A136378(n))-A036043(n+1)`
-/

namespace A373092.P12127780709735738888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A136378 n).toNat - A036043 (n + 1)

end

end A373092.P12127780709735738888

/-!
# A373094: a(n) is the least number k such that A373092(k) = n.

The programs for A373094, there is no canonical definition to state claims against.
-/

/-! ## A373094.P12129952348857999216

`A258037(A182857(n))+n`
-/

namespace A373094.P12129952348857999216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258037 (A182857 n).toNat + (n : ℤ)

end

end A373094.P12129952348857999216

/-! ## A373094.P16474047380911381217

`A214028(∑[A369650(n+1)])`
-/

namespace A373094.P16474047380911381217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373094.P16474047380911381217

/-!
# A373095: a(n) = a[n/4] + a[n/8] + a[n/16] + ..., where a(0) = 0, a(1) = 1, and [ ] = floor.

The programs for A373095, the canonical program `A373095.P265184573945990704` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373095 has offset 0).

The definition of A373095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373095.P2092197070382270102

`A281185(2^ceil(log2(n+1))+1)`
-/

namespace A373095.P2092197070382270102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281185 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + 1)).toNat

end

end A373095.P2092197070382270102

namespace A373095

/-- `A281185(2^ceil(log2(n+1))+1)` -/
def P2092197070382270102.Spec : Prop :=
  ∀ n, P2092197070382270102.a n = A373095 n

end A373095

/-! ## A373095.P4448961460625594646

`A106345(or(1, 2^ceil(log2(n+1))))`
-/

namespace A373095.P4448961460625594646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (Int.lor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))).toNat

end

end A373095.P4448961460625594646

namespace A373095

/-- `A106345(or(1, 2^ceil(log2(n+1))))` -/
def P4448961460625594646.Spec : Prop :=
  ∀ n, P4448961460625594646.a n = A373095 n

end A373095

/-! ## A373095.P265184573945990704

`A000045((2*n)%A324400(2*n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A373095

/-- `A000045((2*n)%A324400(2*n+1))` -/
def P265184573945990704.Spec : Prop :=
  ∀ n, P265184573945990704.a n = A373095 n

theorem P265184573945990704.correct : P265184573945990704.Spec := by
  intro n
  simp only [A373095]

end A373095

/-! ## A373095.P8666150505624668254

`A000045(∑[char[A000079(n)]]-2%(n+1))`
-/

namespace A373095.P8666150505624668254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j - 2 % (n + 1))

end

end A373095.P8666150505624668254

namespace A373095

/-- `A000045(∑[char[A000079(n)]]-2%(n+1))` -/
def P8666150505624668254.Spec : Prop :=
  ∀ n, P8666150505624668254.a n = A373095 n

end A373095

/-! ## A373095.P16034426350839883651

`A373096(A005836(n+1))`
-/

namespace A373095.P16034426350839883651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373096 (A005836 (n + 1)).toNat

end

end A373095.P16034426350839883651

namespace A373095

/-- `A373096(A005836(n+1))` -/
def P16034426350839883651.Spec : Prop :=
  ∀ n, P16034426350839883651.a n = A373095 n

end A373095

/-! ## A373095.P1401624029622979037

`A373096(A188053(n+1))`
-/

namespace A373095.P1401624029622979037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373096 (A188053 (n + 1)).toNat

end

end A373095.P1401624029622979037

namespace A373095

/-- `A373096(A188053(n+1))` -/
def P1401624029622979037.Spec : Prop :=
  ∀ n, P1401624029622979037.a n = A373095 n

end A373095

/-! ## A373095.P9361644388577984556

`A331966(A070939(n))%A097942(n+1)`
-/

namespace A373095.P9361644388577984556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331966 (A070939 n).toNat) (A097942 (n + 1))

end

end A373095.P9361644388577984556

namespace A373095

/-- `A331966(A070939(n))%A097942(n+1)` -/
def P9361644388577984556.Spec : Prop :=
  ∀ n, P9361644388577984556.a n = A373095 n

end A373095

/-! ## A373095.P6805098172150048606

`A248639(A098971(n))`
-/

namespace A373095.P6805098172150048606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (A098971 n).toNat

end

end A373095.P6805098172150048606

namespace A373095

/-- `A248639(A098971(n))` -/
def P6805098172150048606.Spec : Prop :=
  ∀ n, P6805098172150048606.a n = A373095 n

end A373095

/-! ## A373095.P10390850769061155690

`A001678(floor(log2(A144933(n+1))))`
-/

namespace A373095.P10390850769061155690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 (Nat.log 2 (A144933 (n + 1)).toNat)

end

end A373095.P10390850769061155690

namespace A373095

/-- `A001678(floor(log2(A144933(n+1))))` -/
def P10390850769061155690.Spec : Prop :=
  ∀ n, P10390850769061155690.a n = A373095 n

end A373095

/-!
# A373096: a(n) = a([n/9]) + a([n/27]) + a([n/81]) + ..., where a(0) = 0, a(1) = 1, and [ ] = floor().

The programs for A373096, there is no canonical definition to state claims against.
-/

/-! ## A373096.P856943028102994763

`A189661(81-A171438(n))`
-/

namespace A373096.P856943028102994763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (81 - A171438 n).toNat

end

end A373096.P856943028102994763

/-! ## A373096.P14923599306021433570

`and(A140264(n), A263919(A028566(n)))`
-/

namespace A373096.P14923599306021433570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140264 n) (A263919 (A028566 n).toNat)

end

end A373096.P14923599306021433570

/-! ## A373096.P12208590008664751282

`and(A186729(n+1), A246208(n))`
-/

namespace A373096.P12208590008664751282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186729 (n + 1)) (A246208 n)

end

end A373096.P12208590008664751282

/-! ## A373096.P9237925324253689464

`A253050(A171446(n))`
-/

namespace A373096.P9237925324253689464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253050 (A171446 n).toNat

end

end A373096.P9237925324253689464

/-! ## A373096.P9979829380808595725

`A138711(lt[A088569(3*n+1), A001222(n+5)])`
-/

namespace A373096.P9979829380808595725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138711 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373096.P9979829380808595725

/-!
# A373098: Last digit of n*2^n.

The programs for A373098, the canonical program `A373098.P15756619585325101319` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373098 has offset 0).

The definition of A373098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373098.P15756619585325101319

`A373099(n)-1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A373098

/-- `A373099(n)-1` -/
def P15756619585325101319.Spec : Prop :=
  ∀ n, P15756619585325101319.a n = A373098 n

theorem P15756619585325101319.correct : P15756619585325101319.Spec := by
  intro n
  simp only [A373098]

end A373098

/-!
# A373099: Last digit of n*2^n + 1.

The programs for A373099, the canonical program `A373099.P11714773767026357196` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373099 has offset 0).

The definition of A373099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373099.P11714773767026357196

`(n*2^n+1)%10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373099

/-- `(n*2^n+1)%10` -/
def P11714773767026357196.Spec : Prop :=
  ∀ n, (P11714773767026357196.a n : ℤ) = A373099 n

theorem P11714773767026357196.correct : P11714773767026357196.Spec := by
  intro n
  simp only [A373099]

end A373099

