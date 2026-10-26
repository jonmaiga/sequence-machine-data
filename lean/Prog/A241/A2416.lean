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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
# A241600: Number of ways of arranging n lines in the (affine) plane.

The programs for A241600, there is no canonical definition to state claims against.
-/

/-! ## A241600.P226666275312486142

`A161104(n+1)+A063859(round(acot(n)+n))`
-/

namespace A241600.P226666275312486142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161104 (n + 1) + A063859 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A241600.P226666275312486142

/-! ## A241600.P15031657422015878187

`A175078(n+1)+A063859(round(acot(n)+n))`
-/

namespace A241600.P15031657422015878187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1) + A063859 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A241600.P15031657422015878187

/-! ## A241600.P724281151625107198

`A161104(n+1)+A063859(A233583(n+1))`
-/

namespace A241600.P724281151625107198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161104 (n + 1) + A063859 (A233583 (n + 1)).toNat

end

end A241600.P724281151625107198

/-! ## A241600.P18323290153046808592

`A175078(n+1)+A063859(A233583(n+1))`
-/

namespace A241600.P18323290153046808592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1) + A063859 (A233583 (n + 1)).toNat

end

end A241600.P18323290153046808592

/-!
# A241601: Largest divisor of A246006(n) whose prime factors are all >= n+2.

The programs for A241601, there is no canonical definition to state claims against.
-/

/-! ## A241601.P6961684424490571259

`A246006(n)/gcd(A246006(n), n!)`
-/

namespace A241601.P6961684424490571259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246006 n : ℚ) / (Int.gcd (A246006 n) (Nat.factorial n : ℤ) : ℚ)

end

end A241601.P6961684424490571259

/-! ## A241601.P15053381363027844667

`A340472(n^A026825(n+2))`
-/

namespace A241601.P15053381363027844667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340472 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A026825 (n + 2) : ℤ))).toNat

end

end A241601.P15053381363027844667

/-! ## A241601.P11328971272532631630

`A099612(C(A008949(n), A066628(n)))`
-/

namespace A241601.P11328971272532631630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099612 (Nat.choose (A008949 n).toNat (A066628 n).toNat)

end

end A241601.P11328971272532631630

/-! ## A241601.P835122734959880882

`A249909(A002998(n))`
-/

namespace A241601.P835122734959880882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249909 (A002998 n).toNat

end

end A241601.P835122734959880882

/-! ## A241601.P15683010929024516359

`A249909(A039723(n))`
-/

namespace A241601.P15683010929024516359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249909 (A039723 n).toNat

end

end A241601.P15683010929024516359

/-!
# A241603: a(n) = Sum_{d|n, d <= 5} d^2 + 5*Sum_{d|n, d>5} d.

The programs for A241603, the canonical program `A241603.P4160281635668687309` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241603 has offset 1).

The definition of A241603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241603.P4160281635668687309

`∑{d}[n+1, #*A210032(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A241603

/-- `∑{d}[n+1, #*A210032(#)]` -/
def P4160281635668687309.Spec : Prop :=
  ∀ n, P4160281635668687309.a n = A241603 (n + 1)

theorem P4160281635668687309.correct : P4160281635668687309.Spec := by
  intro n
  simp only [A241603, Nat.add_sub_cancel]

end A241603

/-! ## A241603.P12196233121037059053

`A242640(A077169(n)+n)`
-/

namespace A241603.P12196233121037059053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242640 (A077169 n + (n : ℤ)).toNat

end

end A241603.P12196233121037059053

namespace A241603

/-- `A242640(A077169(n)+n)` -/
def P12196233121037059053.Spec : Prop :=
  ∀ n, P12196233121037059053.a n = A241603 (n + 1)

end A241603

/-! ## A241603.P1961287867759771395

`A242640(∑[∑[A368916(3*n+1)]])`
-/

namespace A241603.P1961287867759771395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241603.P1961287867759771395

namespace A241603

/-- `A242640(∑[∑[A368916(3*n+1)]])` -/
def P1961287867759771395.Spec : Prop :=
  ∀ n, P1961287867759771395.a n = A241603 (n + 1)

end A241603

/-!
# A241604: Least Fibonacci number smaller than prime(n)/2 which is a quadratic nonresidue modulo prime(n), or 0 if such a Fibonacci number does not exist.

The programs for A241604, there is no canonical definition to state claims against.
-/

/-! ## A241604.P7745419146116663435

`A116068(A053760(n+1))%A116068(n+1)`
-/

namespace A241604.P7745419146116663435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116068 (A053760 (n + 1)).toNat) (A116068 (n + 1))

end

end A241604.P7745419146116663435

/-! ## A241604.P1771636584546892192

`A226790(A053760(n+1))%A007623(A000041(n))`
-/

namespace A241604.P1771636584546892192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226790 (A053760 (n + 1)).toNat) (A007623 (A000041 n).toNat)

end

end A241604.P1771636584546892192

/-! ## A241604.P8708435663511661212

`A331364(A053760(n+1)%A287142(n))`
-/

namespace A241604.P8708435663511661212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331364 (Int.tmod (A053760 (n + 1)) (A287142 n)).toNat

end

end A241604.P8708435663511661212

/-! ## A241604.P15281752920033120013

`A091382(n+1)%A022297(A335471(n))`
-/

namespace A241604.P15281752920033120013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091382 (n + 1)) (A022297 (A335471 n).toNat)

end

end A241604.P15281752920033120013

/-! ## A241604.P7261024380212467785

`A053760(A000027(n+1))%A241312(3*n+3)`
-/

namespace A241604.P7261024380212467785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053760 (A000027 (n + 1)).toNat) (A241312 (3 * n + 3))

end

end A241604.P7261024380212467785

/-!
# A241605: a(n) = |{0 < k < sqrt(prime(n))*log(prime(n)) : k is not only a quadratic nonresidue modulo prime(n) but also a Fibonacci number}|.

The programs for A241605, there is no canonical definition to state claims against.
-/

/-! ## A241605.P10771421010497303029

`A241568(n+1)+A064911(A056391(n+2))`
-/

namespace A241605.P10771421010497303029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241568 (n + 1) + A064911 (A056391 (n + 2)).toNat

end

end A241605.P10771421010497303029

/-! ## A241605.P2815879539433985138

`A289035(A030227(n+2))+A241568(n+1)`
-/

namespace A241605.P2815879539433985138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (A030227 (n + 2)).toNat + A241568 (n + 1)

end

end A241605.P2815879539433985138

/-! ## A241605.P4912089130367667373

`A036459(A261188(n+1)^A090996(n))`
-/

namespace A241605.P4912089130367667373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (SequenceMachineLib.roundAway ((A261188 (n + 1) : ℚ) ^ (A090996 n : ℤ))).toNat

end

end A241605.P4912089130367667373

/-! ## A241605.P18375421536081271871

`A193929(and(A124161(n), A137835(n+1)))`
-/

namespace A241605.P18375421536081271871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (Int.land (A124161 n) (A137835 (n + 1))).toNat

end

end A241605.P18375421536081271871

/-! ## A241605.P9958110849383560529

`A050600(A266007(n+1)+12)`
-/

namespace A241605.P9958110849383560529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 (A266007 (n + 1) + 12).toNat

end

end A241605.P9958110849383560529

/-!
# A241606: A linear divisibility sequence of the fourth order related to A003779.

The programs for A241606, the canonical program `A241606.P16454409026729938377` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241606 has offset 1).

The definition of A241606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241606.P16454409026729938377

`11*a(n-1)-25*a(n-2)+11*a(n-3)-a(n-4)` with `a(0)=1, a(1)=11, a(2)=95, a(3)=781`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241606

/-- `11*a(n-1)-25*a(n-2)+11*a(n-3)-a(n-4)` -/
def P16454409026729938377.Spec : Prop :=
  ∀ n, P16454409026729938377.a n = A241606 (n + 1)

theorem P16454409026729938377.correct : P16454409026729938377.Spec := by
  intro n
  simp only [A241606, Nat.add_sub_cancel]

end A241606

/-! ## A241606.P12677158328730923007

`A003779(n+1)/A143699(n+1)`
-/

namespace A241606.P12677158328730923007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003779 (n + 1) : ℚ) / (A143699 (n + 1) : ℚ)

end

end A241606.P12677158328730923007

namespace A241606

/-- `A003779(n+1)/A143699(n+1)` -/
def P12677158328730923007.Spec : Prop :=
  ∀ n, P12677158328730923007.a n = (A241606 (n + 1) : ℚ)

end A241606

/-! ## A241606.P3833778674222827071

`A005178(2*(n+1))`
-/

namespace A241606.P3833778674222827071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (2 * (n + 1))

end

end A241606.P3833778674222827071

namespace A241606

/-- `A005178(2*(n+1))` -/
def P3833778674222827071.Spec : Prop :=
  ∀ n, P3833778674222827071.a n = A241606 (n + 1)

end A241606

/-! ## A241606.P18426852031795549279

`Δ[A129113(2*(n+1))]`
-/

namespace A241606.P18426852031795549279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129113 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241606.P18426852031795549279

namespace A241606

/-- `Δ[A129113(2*(n+1))]` -/
def P18426852031795549279.Spec : Prop :=
  ∀ n, P18426852031795549279.a n = A241606 (n + 1)

end A241606

/-! ## A241606.P4558648373551287561

`∑[abs(Δ[A005178(2*n)])]`
-/

namespace A241606.P4558648373551287561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241606.P4558648373551287561

namespace A241606

/-- `∑[abs(Δ[A005178(2*n)])]` -/
def P4558648373551287561.Spec : Prop :=
  ∀ n, P4558648373551287561.a n = A241606 (n + 1)

end A241606

/-! ## A241606.P5667816814700739596

`record[A005178(abs(2*(1-n)))]`
-/

namespace A241606.P5667816814700739596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241606.P5667816814700739596

namespace A241606

/-- `record[A005178(abs(2*(1-n)))]` -/
def P5667816814700739596.Spec : Prop :=
  ∀ n, P5667816814700739596.a n = A241606 (n + 1)

end A241606

/-! ## A241606.P4187665662813099207

`or(char[1], A005178(n+2+n))`
-/

namespace A241606.P4187665662813099207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A005178 (n + 2 + n))

end

end A241606.P4187665662813099207

namespace A241606

/-- `or(char[1], A005178(n+2+n))` -/
def P4187665662813099207.Spec : Prop :=
  ∀ n, P4187665662813099207.a n = A241606 (n + 1)

end A241606

/-! ## A241606.P17113769528255453769

`record[gcd(A005178(n+1), A035363(n))]`
-/

namespace A241606.P17113769528255453769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005178 (n + 1)) (A035363 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241606.P17113769528255453769

namespace A241606

/-- `record[gcd(A005178(n+1), A035363(n))]` -/
def P17113769528255453769.Spec : Prop :=
  ∀ n, (P17113769528255453769.a n : ℤ) = A241606 (n + 1)

end A241606

/-! ## A241606.P13740342391581997432

`lcm((-1)^n, A005178(Δ[A002378(n)]))`
-/

namespace A241606.P13740342391581997432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A005178 (f1 (n + 1) - f1 n).toNat)

end

end A241606.P13740342391581997432

namespace A241606

/-- `lcm((-1)^n, A005178(Δ[A002378(n)]))` -/
def P13740342391581997432.Spec : Prop :=
  ∀ n, (P13740342391581997432.a n : ℤ) = A241606 (n + 1)

end A241606

/-! ## A241606.P1871777920805905501

`lcm(A005178(1-Δ[-n²]), A057077(n))`
-/

namespace A241606.P1871777920805905501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005178 (1 - (f1 (n + 1) - f1 n)).toNat) (A057077 n)

end

end A241606.P1871777920805905501

namespace A241606

/-- `lcm(A005178(1-Δ[-n²]), A057077(n))` -/
def P1871777920805905501.Spec : Prop :=
  ∀ n, (P1871777920805905501.a n : ℤ) = A241606 (n + 1)

end A241606

/-! ## A241606.P10698141191536792140

`gcd(A005178(A051755(n+2)), A154955(n+2))`
-/

namespace A241606.P10698141191536792140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005178 (A051755 (n + 2)).toNat) (A154955 (n + 2))

end

end A241606.P10698141191536792140

namespace A241606

/-- `gcd(A005178(A051755(n+2)), A154955(n+2))` -/
def P10698141191536792140.Spec : Prop :=
  ∀ n, (P10698141191536792140.a n : ℤ) = A241606 (n + 1)

end A241606

/-!
# A241608: Number of length n+2 0..2 arrays with no consecutive three elements summing to more than 2.

The programs for A241608, the canonical program `A241608.P11072658644408452605` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241608 has offset 1).

The definition of A241608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241608.P11072658644408452605

`a(n-1)+a(n-2)+2*a(n-3)-a(n-5)-a(n-6)` with `a(0)=10, a(1)=20, a(2)=40, a(3)=76, a(4)=147, a(5)=287`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241608

/-- `a(n-1)+a(n-2)+2*a(n-3)-a(n-5)-a(n-6)` -/
def P11072658644408452605.Spec : Prop :=
  ∀ n, P11072658644408452605.a n = A241608 (n + 1)

theorem P11072658644408452605.correct : P11072658644408452605.Spec := by
  intro n
  simp only [A241608, Nat.add_sub_cancel]

end A241608

/-! ## A241608.P2817641619669958939

`A241619(∑[n+2])`
-/

namespace A241608.P2817641619669958939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241608.P2817641619669958939

namespace A241608

/-- `A241619(∑[n+2])` -/
def P2817641619669958939.Spec : Prop :=
  ∀ n, P2817641619669958939.a n = A241608 (n + 1)

end A241608

/-! ## A241608.P7788412989428295820

`record[A241619(A000096(A020986(n)))]`
-/

namespace A241608.P7788412989428295820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241608.P7788412989428295820

namespace A241608

/-- `record[A241619(A000096(A020986(n)))]` -/
def P7788412989428295820.Spec : Prop :=
  ∀ n, P7788412989428295820.a n = A241608 (n + 1)

end A241608

/-! ## A241608.P13701949592207547724

`record[A241619(A000096(A065648(n)))]`
-/

namespace A241608.P13701949592207547724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241608.P13701949592207547724

namespace A241608

/-- `record[A241619(A000096(A065648(n)))]` -/
def P13701949592207547724.Spec : Prop :=
  ∀ n, P13701949592207547724.a n = A241608 (n + 1)

end A241608

/-! ## A241608.P8926111254745838990

`record[A241619(A000096(A291766(n)))]`
-/

namespace A241608.P8926111254745838990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (A291766 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241608.P8926111254745838990

namespace A241608

/-- `record[A241619(A000096(A291766(n)))]` -/
def P8926111254745838990.Spec : Prop :=
  ∀ n, P8926111254745838990.a n = A241608 (n + 1)

end A241608

/-! ## A241608.P16534635054454643203

`record[A241619(A000096(A003963(n+1)))]`
-/

namespace A241608.P16534635054454643203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241608.P16534635054454643203

namespace A241608

/-- `record[A241619(A000096(A003963(n+1)))]` -/
def P16534635054454643203.Spec : Prop :=
  ∀ n, P16534635054454643203.a n = A241608 (n + 1)

end A241608

/-! ## A241608.P10811666536746317379

`record[A241619(A000096(A081373(n+1)))]`
-/

namespace A241608.P10811666536746317379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (A081373 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241608.P10811666536746317379

namespace A241608

/-- `record[A241619(A000096(A081373(n+1)))]` -/
def P10811666536746317379.Spec : Prop :=
  ∀ n, P10811666536746317379.a n = A241608 (n + 1)

end A241608

/-! ## A241608.P10964934798026234732

`record[A241619(A000096(A121496(n+1)))]`
-/

namespace A241608.P10964934798026234732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (A121496 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241608.P10964934798026234732

namespace A241608

/-- `record[A241619(A000096(A121496(n+1)))]` -/
def P10964934798026234732.Spec : Prop :=
  ∀ n, P10964934798026234732.a n = A241608 (n + 1)

end A241608

/-! ## A241608.P12151972907703944711

`record[A241619(A000096(A156061(n+1)))]`
-/

namespace A241608.P12151972907703944711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (A156061 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241608.P12151972907703944711

namespace A241608

/-- `record[A241619(A000096(A156061(n+1)))]` -/
def P12151972907703944711.Spec : Prop :=
  ∀ n, P12151972907703944711.a n = A241608 (n + 1)

end A241608

/-! ## A241608.P815530424973006599

`record[A241619(A000096(A164306(n+1)))]`
-/

namespace A241608.P815530424973006599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (A164306 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241608.P815530424973006599

namespace A241608

/-- `record[A241619(A000096(A164306(n+1)))]` -/
def P815530424973006599.Spec : Prop :=
  ∀ n, P815530424973006599.a n = A241608 (n + 1)

end A241608

/-! ## A241608.P14634967348207149064

`record[A241619(A000096(A305801(n+1)))]`
-/

namespace A241608.P14634967348207149064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (A305801 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241608.P14634967348207149064

namespace A241608

/-- `record[A241619(A000096(A305801(n+1)))]` -/
def P14634967348207149064.Spec : Prop :=
  ∀ n, P14634967348207149064.a n = A241608 (n + 1)

end A241608

/-!
# A241609: Number of length n+2 0..3 arrays with no consecutive three elements summing to more than 3.

The programs for A241609, there is no canonical definition to state claims against.
-/

/-! ## A241609.P7734152499854506171

`A241619(∑[n+3]+1)`
-/

namespace A241609.P7734152499854506171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241609.P7734152499854506171

/-! ## A241609.P10396575778424576107

`A241619(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A241609.P10396575778424576107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A241609.P10396575778424576107

/-! ## A241609.P6642372283990249321

`A241619(Δ[A008778(n)])+A000035(2*n)`
-/

namespace A241609.P6642372283990249321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (f1 (n + 1) - f1 n).toNat + A000035 (2 * n)

end

end A241609.P6642372283990249321

/-! ## A241609.P7727916422056411660

`A241619(A034856(n+2))+A000035(2*n)`
-/

namespace A241609.P7727916422056411660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A034856 (n + 2)).toNat + A000035 (2 * n)

end

end A241609.P7727916422056411660

/-! ## A241609.P13712899755026526129

`A241619(A052905(n)+3)%A206047(n+1)`
-/

namespace A241609.P13712899755026526129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241619 (A052905 n + 3).toNat) (A206047 (n + 1))

end

end A241609.P13712899755026526129

/-! ## A241609.P2076345711450775864

`A241619(A052905(n)+3)+A193510(A000040(n+1))`
-/

namespace A241609.P2076345711450775864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 n + 3).toNat + A193510 (A000040 (n + 1)).toNat

end

end A241609.P2076345711450775864

/-! ## A241609.P4012097250312819552

`A001222(A084126(n+1))*A241619(A052905(n)+3)`
-/

namespace A241609.P4012097250312819552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084126 (n + 1)).toNat * A241619 (A052905 n + 3).toNat

end

end A241609.P4012097250312819552

/-! ## A241609.P17870646809516286316

`A193510(A084126(n+1)²)*A241619(A052905(n)+3)`
-/

namespace A241609.P17870646809516286316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193510 (A084126 (n + 1) ^ 2).toNat * A241619 (A052905 n + 3).toNat

end

end A241609.P17870646809516286316

/-! ## A241609.P16541328354928438849

`A241619(A052905(n)+3)+A183063(A000040(2*(n+1)))`
-/

namespace A241609.P16541328354928438849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 n + 3).toNat + A183063 (A000040 (2 * (n + 1))).toNat

end

end A241609.P16541328354928438849

/-!
# A241610: Number of length n+2 0..4 arrays with no consecutive three elements summing to more than 4.

The programs for A241610, there is no canonical definition to state claims against.
-/

/-! ## A241610.P6981733677254045035

`A241619(A027379(n+2))`
-/

namespace A241610.P6981733677254045035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A027379 (n + 2)).toNat

end

end A241610.P6981733677254045035

/-! ## A241610.P12464870719836570520

`A241619(A055998(n+2))`
-/

namespace A241610.P12464870719836570520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A055998 (n + 2)).toNat

end

end A241610.P12464870719836570520

/-! ## A241610.P12200808572132144071

`A241619(A155212(n)+5)`
-/

namespace A241610.P12200808572132144071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A155212 n + 5).toNat

end

end A241610.P12200808572132144071

/-! ## A241610.P1235059721795475252

`A241619(eq[3, A193592(n)])`
-/

namespace A241610.P1235059721795475252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241610.P1235059721795475252

/-! ## A241610.P14914204860724254395

`A241619(A052905(n+1)+2)`
-/

namespace A241610.P14914204860724254395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 (n + 1) + 2).toNat

end

end A241610.P14914204860724254395

/-! ## A241610.P4786629961152134841

`A241619(Δ[A008778(n+1)]-1)`
-/

namespace A241610.P4786629961152134841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (f1 (n + 1) - f1 n - 1).toNat

end

end A241610.P4786629961152134841

/-! ## A241610.P1108879529695777483

`A241619(A000217(n+3)+n+1)`
-/

namespace A241610.P1108879529695777483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A241610.P1108879529695777483

/-! ## A241610.P13993926437486731106

`A241619(A167499(n)+A016777(n))`
-/

namespace A241610.P13993926437486731106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A167499 n + A016777 n).toNat

end

end A241610.P13993926437486731106

/-! ## A241610.P5562902561179349684

`A241619(A167614(n+1)+A005408(n))`
-/

namespace A241610.P5562902561179349684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A167614 (n + 1) + A005408 n).toNat

end

end A241610.P5562902561179349684

/-! ## A241610.P4714178724536107100

`A241619(A167614(n+1)+A005843(n)+1)`
-/

namespace A241610.P4714178724536107100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A167614 (n + 1) + (A005843 n + 1)).toNat

end

end A241610.P4714178724536107100

/-! ## A241610.P12107653650636478343

`A241619(A166136(n+1)+A005843(n)-2)`
-/

namespace A241610.P12107653650636478343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A166136 (n + 1) + (A005843 n - 2)).toNat

end

end A241610.P12107653650636478343

/-! ## A241610.P15667762379988679560

`A241619(A167614(n+1)+A141310(A005843(n)))`
-/

namespace A241610.P15667762379988679560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A167614 (n + 1) + A141310 (A005843 n).toNat).toNat

end

end A241610.P15667762379988679560

/-!
# A241611: Number of length n+2 0..5 arrays with no consecutive three elements summing to more than 5.

The programs for A241611, there is no canonical definition to state claims against.
-/

/-! ## A241611.P15938890480709069032

`A241619(A046691(n+3))`
-/

namespace A241611.P15938890480709069032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A046691 (n + 3)).toNat

end

end A241611.P15938890480709069032

/-! ## A241611.P16681742208999808367

`A241619(eq[4, A193592(n)])`
-/

namespace A241611.P16681742208999808367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241611.P16681742208999808367

/-! ## A241611.P1251322676828271193

`A241619(Δ[A023545(n+1)])`
-/

namespace A241611.P1251322676828271193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (f1 (n + 1) - f1 n).toNat

end

end A241611.P1251322676828271193

/-! ## A241611.P14987387694896974918

`A241619(A052905(n+2)+1)`
-/

namespace A241611.P14987387694896974918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 (n + 2) + 1).toNat

end

end A241611.P14987387694896974918

/-! ## A241611.P15039368828683888917

`A241619(A155212(n+1)+4)`
-/

namespace A241611.P15039368828683888917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A155212 (n + 1) + 4).toNat

end

end A241611.P15039368828683888917

/-! ## A241611.P1813936140073077328

`A241619(A000217(n+4)+n+1)`
-/

namespace A241611.P1813936140073077328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A241611.P1813936140073077328

/-! ## A241611.P5021138255815800444

`A241619(A167614(n+2)+A005843(n+1))`
-/

namespace A241611.P5021138255815800444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A167614 (n + 2) + A005843 (n + 1)).toNat

end

end A241611.P5021138255815800444

/-! ## A241611.P9981762788367785180

`A241619(A139482(n+10)-A082562(n+10))`
-/

namespace A241611.P9981762788367785180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A139482 (n + 10) - A082562 (n + 10)).toNat

end

end A241611.P9981762788367785180

/-!
# A241612: Number of length n+2 0..6 arrays with no consecutive three elements summing to more than 6.

The programs for A241612, there is no canonical definition to state claims against.
-/

/-! ## A241612.P820094882446026751

`A241619(A052905(n+3))`
-/

namespace A241612.P820094882446026751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 (n + 3)).toNat

end

end A241612.P820094882446026751

/-! ## A241612.P10091702578003258279

`A241619(A155212(n+2)+3)`
-/

namespace A241612.P10091702578003258279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A155212 (n + 2) + 3).toNat

end

end A241612.P10091702578003258279

/-! ## A241612.P16817657542077969058

`A241619(A046691(n+4)-1)`
-/

namespace A241612.P16817657542077969058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A046691 (n + 4) - 1).toNat

end

end A241612.P16817657542077969058

/-! ## A241612.P6593338577971798344

`A241619(A000217(n+6)-5)`
-/

namespace A241612.P6593338577971798344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000217 (n + 6) - 5).toNat

end

end A241612.P6593338577971798344

/-! ## A241612.P13072457421097887218

`A241619(A000124(n+6)-6)`
-/

namespace A241612.P13072457421097887218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000124 (n + 6) - 6).toNat

end

end A241612.P13072457421097887218

/-! ## A241612.P3150293434014801332

`A241619(Δ[A023545(n+2)]-1)`
-/

namespace A241612.P3150293434014801332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (f1 (n + 1) - f1 n - 1).toNat

end

end A241612.P3150293434014801332

/-! ## A241612.P7880137992162636362

`A241619(A167614(n+1)+4*n+10)`
-/

namespace A241612.P7880137992162636362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A167614 (n + 1) + (4 * n + 10 : ℤ)).toNat

end

end A241612.P7880137992162636362

/-! ## A241612.P13246128886973980870

`A241619(A002378(n+6)-A167499(n+5))`
-/

namespace A241612.P13246128886973980870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A002378 (n + 6) - A167499 (n + 5)).toNat

end

end A241612.P13246128886973980870

/-!
# A241613: Number of length n+2 0..7 arrays with no consecutive three elements summing to more than 7.

The programs for A241613, there is no canonical definition to state claims against.
-/

/-! ## A241613.P2018575661152799587

`A241619(A055999(n+4))`
-/

namespace A241613.P2018575661152799587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A055999 (n + 4)).toNat

end

end A241613.P2018575661152799587

/-! ## A241613.P11969032378575079318

`A241619(A155212(n+3)+2)`
-/

namespace A241613.P11969032378575079318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A155212 (n + 3) + 2).toNat

end

end A241613.P11969032378575079318

/-! ## A241613.P14448674472681514434

`A241619(A052905(n+4)-1)`
-/

namespace A241613.P14448674472681514434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 (n + 4) - 1).toNat

end

end A241613.P14448674472681514434

/-! ## A241613.P10289962207482620314

`A241619(A046691(n+5)-2)`
-/

namespace A241613.P10289962207482620314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A046691 (n + 5) - 2).toNat

end

end A241613.P10289962207482620314

/-! ## A241613.P16892999411726034216

`A241619(A055998(n+5)-3)`
-/

namespace A241613.P16892999411726034216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A055998 (n + 5) - 3).toNat

end

end A241613.P16892999411726034216

/-! ## A241613.P9369710161919654442

`A241619(A000217(n+7)-6)`
-/

namespace A241613.P9369710161919654442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000217 (n + 7) - 6).toNat

end

end A241613.P9369710161919654442

/-! ## A241613.P10629656537884162076

`A241619(A000124(n+7)-7)`
-/

namespace A241613.P10629656537884162076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000124 (n + 7) - 7).toNat

end

end A241613.P10629656537884162076

/-! ## A241613.P5937292031058848431

`A241619(A002378(n+6)-A167499(n+4))`
-/

namespace A241613.P5937292031058848431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A002378 (n + 6) - A167499 (n + 4)).toNat

end

end A241613.P5937292031058848431

/-!
# A241614: Number of length n+2 0..8 arrays with no consecutive three elements summing to more than 8.

The programs for A241614, there is no canonical definition to state claims against.
-/

/-! ## A241614.P1706318306673966123

`A241619(A155212(n+4)+1)`
-/

namespace A241614.P1706318306673966123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A155212 (n + 4) + 1).toNat

end

end A241614.P1706318306673966123

/-! ## A241614.P9766076657473773553

`A241619(A052905(n+5)-2)`
-/

namespace A241614.P9766076657473773553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 (n + 5) - 2).toNat

end

end A241614.P9766076657473773553

/-! ## A241614.P18289457898840875159

`A241619(A055998(n+6)-4)`
-/

namespace A241614.P18289457898840875159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A055998 (n + 6) - 4).toNat

end

end A241614.P18289457898840875159

/-! ## A241614.P13377898556432248128

`A241619(A000217(n+8)-7)`
-/

namespace A241614.P13377898556432248128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000217 (n + 8) - 7).toNat

end

end A241614.P13377898556432248128

/-! ## A241614.P5006819770111737886

`A241619(A000124(n+8)-8)`
-/

namespace A241614.P5006819770111737886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000124 (n + 8) - 8).toNat

end

end A241614.P5006819770111737886

/-! ## A241614.P15615610793648270169

`A241619(A166136(n+5)+A005843(n+1))`
-/

namespace A241614.P15615610793648270169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A166136 (n + 5) + A005843 (n + 1)).toNat

end

end A241614.P15615610793648270169

/-!
# A241615: Number of length n+2 0..9 arrays with no consecutive three elements summing to more than 9.

The programs for A241615, there is no canonical definition to state claims against.
-/

/-! ## A241615.P18290527324013937772

`A241619(A155212(n+5))`
-/

namespace A241615.P18290527324013937772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A155212 (n + 5)).toNat

end

end A241615.P18290527324013937772

/-! ## A241615.P12480787145840224356

`A241619(A052905(n+6)-3)`
-/

namespace A241615.P12480787145840224356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 (n + 6) - 3).toNat

end

end A241615.P12480787145840224356

/-! ## A241615.P9884294070524050590

`A241619(A046691(n+7)-4)`
-/

namespace A241615.P9884294070524050590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A046691 (n + 7) - 4).toNat

end

end A241615.P9884294070524050590

/-! ## A241615.P5220399586114862488

`A241619(A000217(n+9)-8)`
-/

namespace A241615.P5220399586114862488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000217 (n + 9) - 8).toNat

end

end A241615.P5220399586114862488

/-! ## A241615.P14994347744820171864

`A241619(A000124(n+9)-9)`
-/

namespace A241615.P14994347744820171864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000124 (n + 9) - 9).toNat

end

end A241615.P14994347744820171864

/-!
# A241616: Number of length n+2 0..10 arrays with no consecutive three elements summing to more than 10.

The programs for A241616, there is no canonical definition to state claims against.
-/

/-! ## A241616.P2062349526815262071

`A241619(A155212(n+6)-1)`
-/

namespace A241616.P2062349526815262071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A155212 (n + 6) - 1).toNat

end

end A241616.P2062349526815262071

/-! ## A241616.P6248072608856944501

`A241619(A052905(n+7)-4)`
-/

namespace A241616.P6248072608856944501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 (n + 7) - 4).toNat

end

end A241616.P6248072608856944501

/-! ## A241616.P13561868298541426257

`A241619(A055998(n+8)-6)`
-/

namespace A241616.P13561868298541426257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A055998 (n + 8) - 6).toNat

end

end A241616.P13561868298541426257

/-! ## A241616.P14182631396805967029

`A241619(A000124(n+10)-10)`
-/

namespace A241616.P14182631396805967029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000124 (n + 10) - 10).toNat

end

end A241616.P14182631396805967029

/-! ## A241616.P15901229641948182529

`A241619(A166136(n+7)+A005843(n+2))`
-/

namespace A241616.P15901229641948182529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A166136 (n + 7) + A005843 (n + 2)).toNat

end

end A241616.P15901229641948182529

/-! ## A241616.P10995693837705261977

`A241619(A002378(n+8)-A167499(n+5))`
-/

namespace A241616.P10995693837705261977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A002378 (n + 8) - A167499 (n + 5)).toNat

end

end A241616.P10995693837705261977

/-!
# A241617: Number of length n+2 0..11 arrays with no consecutive three elements summing to more than 11.

The programs for A241617, there is no canonical definition to state claims against.
-/

/-! ## A241617.P18324343626155364986

`A241619(A056000(n+7))`
-/

namespace A241617.P18324343626155364986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A056000 (n + 7)).toNat

end

end A241617.P18324343626155364986

/-! ## A241617.P4148120212922340450

`A241619(eq[10, A193592(n)])`
-/

namespace A241617.P4148120212922340450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241617.P4148120212922340450

/-! ## A241617.P6824833047607693768

`A241619(A155212(n+7)-2)`
-/

namespace A241617.P6824833047607693768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A155212 (n + 7) - 2).toNat

end

end A241617.P6824833047607693768

/-! ## A241617.P4674547914184720588

`A241619(A000217(n+10)+n+1)`
-/

namespace A241617.P4674547914184720588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A241617.P4674547914184720588

/-! ## A241617.P5774548325265778176

`A241619(A167499(n+8)+A005843(n+3))`
-/

namespace A241617.P5774548325265778176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A167499 (n + 8) + A005843 (n + 3)).toNat

end

end A241617.P5774548325265778176

/-!
# A241618: Number of length n+2 0..12 arrays with no consecutive three elements summing to more than 12.

The programs for A241618, there is no canonical definition to state claims against.
-/

/-! ## A241618.P17095222318736136837

`A241619(A155212(n+8)-3)`
-/

namespace A241618.P17095222318736136837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A155212 (n + 8) - 3).toNat

end

end A241618.P17095222318736136837

/-! ## A241618.P13863024168319714523

`A241619(A052905(n+9)-6)`
-/

namespace A241618.P13863024168319714523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 (n + 9) - 6).toNat

end

end A241618.P13863024168319714523

/-! ## A241618.P7362317432572644678

`A241619(A000096(n+11)-10)`
-/

namespace A241618.P7362317432572644678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (n + 11) - 10).toNat

end

end A241618.P7362317432572644678

/-! ## A241618.P8864713787784702271

`A241619(A000124(n+12)-12)`
-/

namespace A241618.P8864713787784702271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000124 (n + 12) - 12).toNat

end

end A241618.P8864713787784702271

/-! ## A241618.P18121185064492063026

`A241619(A166136(n+9)+A005843(n+3))`
-/

namespace A241618.P18121185064492063026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A166136 (n + 9) + A005843 (n + 3)).toNat

end

end A241618.P18121185064492063026

/-!
# A241620: Number of length 5+2 0..n arrays with no consecutive three elements summing to more than n.

The programs for A241620, the canonical program `A241620.P14664840407874116712` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241620 has offset 1).

The definition of A241620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241620.P14664840407874116712

`A114239(n+1)+∑[A006542(n+4)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241620

/-- `A114239(n+1)+∑[A006542(n+4)]` -/
def P14664840407874116712.Spec : Prop :=
  ∀ n, P14664840407874116712.a n = A241620 (n + 1)

theorem P14664840407874116712.correct : P14664840407874116712.Spec := by
  intro n
  simp only [A241620, Nat.add_sub_cancel]

end A241620

/-! ## A241620.P15587674615837257828

`Δ[A107891(n)]+∑[A006542(n+4)]`
-/

namespace A241620.P15587674615837257828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A241620.P15587674615837257828

namespace A241620

/-- `Δ[A107891(n)]+∑[A006542(n+4)]` -/
def P15587674615837257828.Spec : Prop :=
  ∀ n, P15587674615837257828.a n = A241620 (n + 1)

end A241620

/-! ## A241620.P8533862336273129055

`A241619(A167499(n+3))`
-/

namespace A241620.P8533862336273129055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A167499 (n + 3)).toNat

end

end A241620.P8533862336273129055

namespace A241620

/-- `A241619(A167499(n+3))` -/
def P8533862336273129055.Spec : Prop :=
  ∀ n, P8533862336273129055.a n = A241620 (n + 1)

end A241620

/-! ## A241620.P12116138966465436529

`A241619(A155212(n)+13)`
-/

namespace A241620.P12116138966465436529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A155212 n + 13).toNat

end

end A241620.P12116138966465436529

namespace A241620

/-- `A241619(A155212(n)+13)` -/
def P12116138966465436529.Spec : Prop :=
  ∀ n, P12116138966465436529.a n = A241620 (n + 1)

end A241620

/-! ## A241620.P14046662668994900126

`A241619(A000217(n+4)+5)`
-/

namespace A241620.P14046662668994900126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000217 (n + 4) + 5).toNat

end

end A241620.P14046662668994900126

namespace A241620

/-- `A241619(A000217(n+4)+5)` -/
def P14046662668994900126.Spec : Prop :=
  ∀ n, P14046662668994900126.a n = A241620 (n + 1)

end A241620

/-! ## A241620.P277771211872478369

`A241619(A027379(n+2)+8)`
-/

namespace A241620.P277771211872478369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A027379 (n + 2) + 8).toNat

end

end A241620.P277771211872478369

namespace A241620

/-- `A241619(A027379(n+2)+8)` -/
def P277771211872478369.Spec : Prop :=
  ∀ n, P277771211872478369.a n = A241620 (n + 1)

end A241620

/-! ## A241620.P14676162093487763920

`A241619(A000124(n+5)-(n+1))`
-/

namespace A241620.P14676162093487763920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A241620.P14676162093487763920

namespace A241620

/-- `A241619(A000124(n+5)-(n+1))` -/
def P14676162093487763920.Spec : Prop :=
  ∀ n, P14676162093487763920.a n = A241620 (n + 1)

end A241620

/-! ## A241620.P6300418748243319779

`A241619(A175631(n+7)-(n-1))`
-/

namespace A241620.P6300418748243319779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A175631 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A241620.P6300418748243319779

namespace A241620

/-- `A241619(A175631(n+7)-(n-1))` -/
def P6300418748243319779.Spec : Prop :=
  ∀ n, P6300418748243319779.a n = A241620 (n + 1)

end A241620

/-! ## A241620.P3232143771069064755

`A241619(A052905(n+3)-(2*n+1))`
-/

namespace A241620.P3232143771069064755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A241620.P3232143771069064755

namespace A241620

/-- `A241619(A052905(n+3)-(2*n+1))` -/
def P3232143771069064755.Spec : Prop :=
  ∀ n, P3232143771069064755.a n = A241620 (n + 1)

end A241620

/-! ## A241620.P2103631437922522398

`A241619(A038722(Δ[A023545(n+1)]))`
-/

namespace A241620.P2103631437922522398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A241620.P2103631437922522398

namespace A241620

/-- `A241619(A038722(Δ[A023545(n+1)]))` -/
def P2103631437922522398.Spec : Prop :=
  ∀ n, P2103631437922522398.a n = A241620 (n + 1)

end A241620

/-!
# A241621: Number of length 6+2 0..n arrays with no consecutive three elements summing to more than n.

The programs for A241621, the canonical program `A241621.P17795635083322010053` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241621 has offset 1).

The definition of A241621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241621.P14099493326240289577

`A006857(n)+Δ[A107942(n)]`
-/

namespace A241621.P14099493326240289577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n + (f1 (n + 1) - f1 n)

end

end A241621.P14099493326240289577

namespace A241621

/-- `A006857(n)+Δ[A107942(n)]` -/
def P14099493326240289577.Spec : Prop :=
  ∀ n, P14099493326240289577.a n = A241621 (n + 1)

end A241621

/-! ## A241621.P11689867888876704658

`Δ[A107967(n)]-A107956(n)`
-/

namespace A241621.P11689867888876704658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107956 n

end

end A241621.P11689867888876704658

namespace A241621

/-- `Δ[A107967(n)]-A107956(n)` -/
def P11689867888876704658.Spec : Prop :=
  ∀ n, P11689867888876704658.a n = A241621 (n + 1)

end A241621

/-! ## A241621.P17795635083322010053

`A108670(n+1)+A107891(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A241621

/-- `A108670(n+1)+A107891(n)` -/
def P17795635083322010053.Spec : Prop :=
  ∀ n, P17795635083322010053.a n = A241621 (n + 1)

theorem P17795635083322010053.correct : P17795635083322010053.Spec := by
  intro n
  simp only [A241621, Nat.add_sub_cancel]

end A241621

/-! ## A241621.P18125032243393226602

`Δ[A107967(n)]-∑[A107969(n)]`
-/

namespace A241621.P18125032243393226602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A241621.P18125032243393226602

namespace A241621

/-- `Δ[A107967(n)]-∑[A107969(n)]` -/
def P18125032243393226602.Spec : Prop :=
  ∀ n, P18125032243393226602.a n = A241621 (n + 1)

end A241621

/-! ## A241621.P5805031423121342576

`A078876(n+3)+A006857(n)`
-/

namespace A241621.P5805031423121342576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078876 (n + 3) + A006857 n

end

end A241621.P5805031423121342576

namespace A241621

/-- `A078876(n+3)+A006857(n)` -/
def P5805031423121342576.Spec : Prop :=
  ∀ n, P5805031423121342576.a n = A241621 (n + 1)

end A241621

/-! ## A241621.P14163719159133071938

`A241619(A166136(n+4))`
-/

namespace A241621.P14163719159133071938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A166136 (n + 4)).toNat

end

end A241621.P14163719159133071938

namespace A241621

/-- `A241619(A166136(n+4))` -/
def P14163719159133071938.Spec : Prop :=
  ∀ n, P14163719159133071938.a n = A241621 (n + 1)

end A241621

/-! ## A241621.P9357289785350707201

`A241619(A056115(n)+21)`
-/

namespace A241621.P9357289785350707201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A056115 n + 21).toNat

end

end A241621.P9357289785350707201

namespace A241621

/-- `A241619(A056115(n)+21)` -/
def P9357289785350707201.Spec : Prop :=
  ∀ n, P9357289785350707201.a n = A241621 (n + 1)

end A241621

/-! ## A241621.P15476092817816025331

`A241619(A167499(n+4)+1)`
-/

namespace A241621.P15476092817816025331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A167499 (n + 4) + 1).toNat

end

end A241621.P15476092817816025331

namespace A241621

/-- `A241619(A167499(n+4)+1)` -/
def P15476092817816025331.Spec : Prop :=
  ∀ n, P15476092817816025331.a n = A241621 (n + 1)

end A241621

/-! ## A241621.P11909187553834711729

`A241619(A000217(n+5)+6)`
-/

namespace A241621.P11909187553834711729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000217 (n + 5) + 6).toNat

end

end A241621.P11909187553834711729

namespace A241621

/-- `A241619(A000217(n+5)+6)` -/
def P11909187553834711729.Spec : Prop :=
  ∀ n, P11909187553834711729.a n = A241621 (n + 1)

end A241621

/-! ## A241621.P2359836402318051151

`A241619(A055999(n+2)+12)`
-/

namespace A241621.P2359836402318051151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A055999 (n + 2) + 12).toNat

end

end A241621.P2359836402318051151

namespace A241621

/-- `A241619(A055999(n+2)+12)` -/
def P2359836402318051151.Spec : Prop :=
  ∀ n, P2359836402318051151.a n = A241621 (n + 1)

end A241621

/-! ## A241621.P1061818505185194403

`A241619(A038722(A052905(n+3)))`
-/

namespace A241621.P1061818505185194403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A038722 (A052905 (n + 3)).toNat).toNat

end

end A241621.P1061818505185194403

namespace A241621

/-- `A241619(A038722(A052905(n+3)))` -/
def P1061818505185194403.Spec : Prop :=
  ∀ n, P1061818505185194403.a n = A241621 (n + 1)

end A241621

/-! ## A241621.P141982140879482200

`A241619(A000124(n+9)-A016813(n+6))`
-/

namespace A241621.P141982140879482200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000124 (n + 9) - A016813 (n + 6)).toNat

end

end A241621.P141982140879482200

namespace A241621

/-- `A241619(A000124(n+9)-A016813(n+6))` -/
def P141982140879482200.Spec : Prop :=
  ∀ n, P141982140879482200.a n = A241621 (n + 1)

end A241621

/-!
# A241622: Number of length 7+2 0..n arrays with no consecutive three elements summing to more than n.

The programs for A241622, there is no canonical definition to state claims against.
-/

/-! ## A241622.P15031386994012824946

`A241619(A166136(n+5)+1)`
-/

namespace A241622.P15031386994012824946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A166136 (n + 5) + 1).toNat

end

end A241622.P15031386994012824946

/-! ## A241622.P3812709476439207671

`A241619(A167499(n+5)+2)`
-/

namespace A241622.P3812709476439207671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A167499 (n + 5) + 2).toNat

end

end A241622.P3812709476439207671

/-! ## A241622.P1963504878089239436

`A241619(A000096(n+5)+8)`
-/

namespace A241622.P1963504878089239436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000096 (n + 5) + 8).toNat

end

end A241622.P1963504878089239436

/-! ## A241622.P17332544950024104813

`A241619(A000217(n+6)+7)`
-/

namespace A241622.P17332544950024104813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A000217 (n + 6) + 7).toNat

end

end A241622.P17332544950024104813

/-! ## A241622.P7664036128291624629

`A241619(A052905(n+3)+12)`
-/

namespace A241622.P7664036128291624629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (A052905 (n + 3) + 12).toNat

end

end A241622.P7664036128291624629

/-!
# A241623: Indices of the primes in A073861 (n-digit primes followed by a maximal gap).

The programs for A241623, there is no canonical definition to state claims against.
-/

/-! ## A241623.P13008863355759553509

`A000720(A073861(n+1))`
-/

namespace A241623.P13008863355759553509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073861 (n + 1)).toNat

end

end A241623.P13008863355759553509

/-! ## A241623.P16271048362475180121

`A038664(A213949(n+1))`
-/

namespace A241623.P16271048362475180121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038664 (A213949 (n + 1)).toNat

end

end A241623.P16271048362475180121

/-! ## A241623.P13806953159284923568

`A038664(A038460(n+1)/2)`
-/

namespace A241623.P13806953159284923568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038664 (SequenceMachineLib.roundAway ((A038460 (n + 1) : ℚ) / 2)).toNat

end

end A241623.P13806953159284923568

/-! ## A241623.P15715792911285225650

`A038664(A053303(n+1)/(A000038(n)+2))`
-/

namespace A241623.P15715792911285225650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038664 (SequenceMachineLib.roundAway ((A053303 (n + 1) : ℚ) / (A000038 n + 2 : ℚ))).toNat

end

end A241623.P15715792911285225650

/-!
# A241626: Number of compositions of n with exactly one descent.

The programs for A241626, there is no canonical definition to state claims against.
-/

/-! ## A241626.P11879002127372577239

`A000712(n+3)-A093694(n+3)`
-/

namespace A241626.P11879002127372577239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 3) - A093694 (n + 3)

end

end A241626.P11879002127372577239

/-! ## A241626.P2652193557697291812

`record[A000712(A028310(n))-A093694(n)]`
-/

namespace A241626.P2652193557697291812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (A028310 n).toNat - A093694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241626.P2652193557697291812

/-! ## A241626.P17042285430854703726

`record[A000712(A065033(2*n))-A093694(n)]`
-/

namespace A241626.P17042285430854703726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (A065033 (2 * n)).toNat - A093694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241626.P17042285430854703726

/-! ## A241626.P6851729912899557795

`record[A238343(∑[n]+1)]`
-/

namespace A241626.P6851729912899557795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241626.P6851729912899557795

/-! ## A241626.P6783695326765458176

`A238343(∑[n+3]+4)`
-/

namespace A241626.P6783695326765458176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241626.P6783695326765458176

/-!
# A241627: Number of compositions of n with exactly two descents.

The programs for A241627, there is no canonical definition to state claims against.
-/

/-! ## A241627.P14624366423069882777

`A238343(A133263(n+6))`
-/

namespace A241627.P14624366423069882777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A133263 (n + 6)).toNat

end

end A241627.P14624366423069882777

/-! ## A241627.P7658182961218362683

`record[A238343(A000096(n)+3)]`
-/

namespace A241627.P7658182961218362683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000096 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241627.P7658182961218362683

/-! ## A241627.P5355518847463266278

`A238343(A166136(n+5)-4)`
-/

namespace A241627.P5355518847463266278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A166136 (n + 5) - 4).toNat

end

end A241627.P5355518847463266278

/-! ## A241627.P135550160308921007

`A238343(eq[6, A002262(n+4)])`
-/

namespace A241627.P135550160308921007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241627.P135550160308921007

/-! ## A241627.P4170106792180748352

`record[A238343(A000124(n+1)+1)]`
-/

namespace A241627.P4170106792180748352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000124 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241627.P4170106792180748352

/-! ## A241627.P16437455514654371086

`record[A238343(A000217(n+1)+2)]`
-/

namespace A241627.P16437455514654371086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241627.P16437455514654371086

/-! ## A241627.P15711309849420674533

`record[A238343(A133263(A008611(n)))]`
-/

namespace A241627.P15711309849420674533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241627.P15711309849420674533

/-!
# A241628: Number of compositions of n with exactly three descents.

The programs for A241628, there is no canonical definition to state claims against.
-/

/-! ## A241628.P5057387402645787393

`A238343(A167614(n+8))`
-/

namespace A241628.P5057387402645787393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A167614 (n + 8)).toNat

end

end A241628.P5057387402645787393

/-! ## A241628.P10489365461013649629

`record[A238343(A167614(A006949(n)))]`
-/

namespace A241628.P10489365461013649629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A167614 (A006949 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241628.P10489365461013649629

/-! ## A241628.P12298248893590880174

`record[A238343(A167614(A008619(n)))]`
-/

namespace A241628.P12298248893590880174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A167614 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241628.P12298248893590880174

/-! ## A241628.P114554804517388731

`record[A238343(A167614(A008621(n)))]`
-/

namespace A241628.P114554804517388731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A167614 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241628.P114554804517388731

/-! ## A241628.P14950652531070626469

`record[A238343(A167614(A028310(n)))]`
-/

namespace A241628.P14950652531070626469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A167614 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241628.P14950652531070626469

/-! ## A241628.P4673159681312516433

`record[A238343(A167614(A065033(n)))]`
-/

namespace A241628.P4673159681312516433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A167614 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241628.P4673159681312516433

/-! ## A241628.P6189047815139081649

`record[A238343(A167614(A080513(n)))]`
-/

namespace A241628.P6189047815139081649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A167614 (A080513 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241628.P6189047815139081649

/-!
# A241629: Number of compositions of n with exactly four descents.

The programs for A241629, there is no canonical definition to state claims against.
-/

/-! ## A241629.P9131451281712229862

`record[A238343(A052905(n)+9)]`
-/

namespace A241629.P9131451281712229862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A052905 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241629.P9131451281712229862

/-! ## A241629.P16034198898482421748

`A238343(A000124(n+12)+3)`
-/

namespace A241629.P16034198898482421748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000124 (n + 12) + 3).toNat

end

end A241629.P16034198898482421748

/-! ## A241629.P3786064092163954817

`A238343(A046691(n+10)+8)`
-/

namespace A241629.P3786064092163954817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A046691 (n + 10) + 8).toNat

end

end A241629.P3786064092163954817

/-! ## A241629.P3791671853800475454

`record[A238343(A167614(n+2)+1)]`
-/

namespace A241629.P3791671853800475454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241629.P3791671853800475454

/-! ## A241629.P3685547210318909016

`A238343(A024206(n+8)+A024206(n+15))`
-/

namespace A241629.P3685547210318909016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A024206 (n + 8) + A024206 (n + 15)).toNat

end

end A241629.P3685547210318909016

/-!
# A241630: Number of compositions of n with exactly five descents.

The programs for A241630, there is no canonical definition to state claims against.
-/

/-! ## A241630.P10701769830989935611

`A238343(A000124(n+15)+4)`
-/

namespace A241630.P10701769830989935611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000124 (n + 15) + 4).toNat

end

end A241630.P10701769830989935611

/-! ## A241630.P818013465796876057

`A238343(A000217(n+14)+n+20)`
-/

namespace A241630.P818013465796876057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 (n + 14) + (n : ℤ) + 20).toNat

end

end A241630.P818013465796876057

/-!
# A241631: Number of compositions of n with exactly six descents.

The programs for A241631, there is no canonical definition to state claims against.
-/

/-! ## A241631.P9012861894043276673

`A238343(A055999(n+15)+12)`
-/

namespace A241631.P9012861894043276673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A055999 (n + 15) + 12).toNat

end

end A241631.P9012861894043276673

/-!
# A241636: Number of partitions p of n such that (number of even numbers in p) < (number of odd numbers in p).

The programs for A241636, there is no canonical definition to state claims against.
-/

/-! ## A241636.P4340532874304846848

`A000041(n)-A241639(n)`
-/

namespace A241636.P4340532874304846848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241639 n

end

end A241636.P4340532874304846848

/-! ## A241636.P12006849237741717595

`A241637(n)-A241638(n)`
-/

namespace A241636.P12006849237741717595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241637 n - A241638 n

end

end A241636.P12006849237741717595

/-! ## A241636.P12034209924152160382

`∑[A002865(n)]-A241639(n)`
-/

namespace A241636.P12034209924152160382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241639 n

end

end A241636.P12034209924152160382

/-! ## A241636.P13665013568728014608

`A000065(n)+1-A241639(n)`
-/

namespace A241636.P13665013568728014608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A241639 n)

end

end A241636.P13665013568728014608

/-! ## A241636.P16300153140060048608

`A035363(2*n)-A241639(n)`
-/

namespace A241636.P16300153140060048608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A241639 n

end

end A241636.P16300153140060048608

/-! ## A241636.P1641261911851407954

`A035377(3*n)-A241639(n)`
-/

namespace A241636.P1641261911851407954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) - A241639 n

end

end A241636.P1641261911851407954

/-! ## A241636.P9950927257029623643

`A139582(n)/2-A241639(n)`
-/

namespace A241636.P9950927257029623643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A241639 n : ℚ)

end

end A241636.P9950927257029623643

/-! ## A241636.P12912929975369786450

`∑[A232697(n)]-(A241639(n)+n)`
-/

namespace A241636.P12912929975369786450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A241639 n + (n : ℤ))

end

end A241636.P12912929975369786450

/-! ## A241636.P11587795252290347143

`A000041(n)-(A241640(n)+A241638(n))`
-/

namespace A241636.P11587795252290347143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241640 n + A241638 n)

end

end A241636.P11587795252290347143

/-! ## A241636.P12865518346970775726

`A241637(n)+A241640(n)-A241639(n)`
-/

namespace A241636.P12865518346970775726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241637 n + (A241640 n - A241639 n)

end

end A241636.P12865518346970775726

/-!
# A241637: Number of partitions p of n such that (number of even numbers in p) <= (number of odd numbers in p).

The programs for A241637, there is no canonical definition to state claims against.
-/

/-! ## A241637.P16455436567591243889

`A241636(n)+A241638(n)`
-/

namespace A241637.P16455436567591243889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241636 n + A241638 n

end

end A241637.P16455436567591243889

/-! ## A241637.P14444013193386637511

`A000041(n)-A241640(n)`
-/

namespace A241637.P14444013193386637511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241640 n

end

end A241637.P14444013193386637511

/-! ## A241637.P9895820145301036041

`∑[A002865(n)]-A241640(n)`
-/

namespace A241637.P9895820145301036041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241640 n

end

end A241637.P9895820145301036041

/-! ## A241637.P743269577626543250

`A000065(n)+1-A241640(n)`
-/

namespace A241637.P743269577626543250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A241640 n)

end

end A241637.P743269577626543250

/-! ## A241637.P9713899378875724236

`A035363(2*n)-A241640(n)`
-/

namespace A241637.P9713899378875724236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A241640 n

end

end A241637.P9713899378875724236

/-! ## A241637.P1250042668133038996

`A035377(3*n)-A241640(n)`
-/

namespace A241637.P1250042668133038996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) - A241640 n

end

end A241637.P1250042668133038996

/-! ## A241637.P6745362781801161094

`A139582(n)/2-A241640(n)`
-/

namespace A241637.P6745362781801161094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A241640 n : ℚ)

end

end A241637.P6745362781801161094

/-! ## A241637.P8985157761942786912

`A000041(n)+A241638(n)-A241639(n)`
-/

namespace A241637.P8985157761942786912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A241638 n - A241639 n)

end

end A241637.P8985157761942786912

/-! ## A241637.P5469031629269946533

`A241636(n)+A241639(n)-A241640(n)`
-/

namespace A241637.P5469031629269946533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241636 n + (A241639 n - A241640 n)

end

end A241637.P5469031629269946533

/-! ## A241637.P13324326202516060623

`A292193(A000096(n))-A241640(n)`
-/

namespace A241637.P13324326202516060623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (A000096 n).toNat - A241640 n

end

end A241637.P13324326202516060623

/-!
# A241638: Number of partitions p of n such that (number of even numbers in p) = (number of odd numbers in p).

The programs for A241638, there is no canonical definition to state claims against.
-/

/-! ## A241638.P4711696007416036024

`A241637(n)-A241636(n)`
-/

namespace A241638.P4711696007416036024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241637 n - A241636 n

end

end A241638.P4711696007416036024

/-! ## A241638.P6872764037747427433

`A241639(n)-A241640(n)`
-/

namespace A241638.P6872764037747427433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241639 n - A241640 n

end

end A241638.P6872764037747427433

/-! ## A241638.P5450442136725245589

`A000041(n)-(A241640(n)+A241636(n))`
-/

namespace A241638.P5450442136725245589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241640 n + A241636 n)

end

end A241638.P5450442136725245589

/-! ## A241638.P2470883758283791375

`A241637(n)+A241639(n)-A000041(n)`
-/

namespace A241638.P2470883758283791375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241637 n + (A241639 n - A000041 n)

end

end A241638.P2470883758283791375

/-! ## A241638.P9463835051537405297

`A035363(A005843(n))-(A241640(n)+A241636(n))`
-/

namespace A241638.P9463835051537405297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A005843 n).toNat - (A241640 n + A241636 n)

end

end A241638.P9463835051537405297

/-!
# A241639: Number of partitions p of n such that (number of even numbers in p) >= (number of odd numbers in p).

The programs for A241639, there is no canonical definition to state claims against.
-/

/-! ## A241639.P13517567032828507053

`A241638(n)+A241640(n)`
-/

namespace A241639.P13517567032828507053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241638 n + A241640 n

end

end A241639.P13517567032828507053

/-! ## A241639.P16376312861401039866

`A000041(n)-A241636(n)`
-/

namespace A241639.P16376312861401039866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241636 n

end

end A241639.P16376312861401039866

/-! ## A241639.P15444833021925212737

`∑[A002865(n)]-A241636(n)`
-/

namespace A241639.P15444833021925212737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241636 n

end

end A241639.P15444833021925212737

/-! ## A241639.P3532012045528361

`A000065(n)+1-A241636(n)`
-/

namespace A241639.P3532012045528361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A241636 n)

end

end A241639.P3532012045528361

/-! ## A241639.P7959044117564623631

`A035363(2*n)-A241636(n)`
-/

namespace A241639.P7959044117564623631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A241636 n

end

end A241639.P7959044117564623631

/-! ## A241639.P12707941871820541804

`∑[A232697(n)]-(A241636(n)+n)`
-/

namespace A241639.P12707941871820541804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A241636 n + (n : ℤ))

end

end A241639.P12707941871820541804

/-! ## A241639.P12076577041841104710

`A000837(n)+A018783(n)-A241636(n)`
-/

namespace A241639.P12076577041841104710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A241636 n)

end

end A241639.P12076577041841104710

/-! ## A241639.P1402716233955885327

`A000009(n)+A047967(n)-A241636(n)`
-/

namespace A241639.P1402716233955885327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A241636 n)

end

end A241639.P1402716233955885327

/-! ## A241639.P372923898580037461

`A000041(n)+A241638(n)-A241637(n)`
-/

namespace A241639.P372923898580037461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A241638 n - A241637 n)

end

end A241639.P372923898580037461

/-! ## A241639.P13124449222180028623

`A241637(n)+A241640(n)-A241636(n)`
-/

namespace A241639.P13124449222180028623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241637 n + (A241640 n - A241636 n)

end

end A241639.P13124449222180028623

/-!
# A241640: Number of partitions p of n such that (number of even numbers in p) > (number of odd numbers in p).

The programs for A241640, there is no canonical definition to state claims against.
-/

/-! ## A241640.P5435087279685253051

`A241639(n)-A241638(n)`
-/

namespace A241640.P5435087279685253051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241639 n - A241638 n

end

end A241640.P5435087279685253051

/-! ## A241640.P4570279293942210852

`A000041(n)-A241637(n)`
-/

namespace A241640.P4570279293942210852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241637 n

end

end A241640.P4570279293942210852

/-! ## A241640.P10712968818019863681

`∑[A002865(n)]-A241637(n)`
-/

namespace A241640.P10712968818019863681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241637 n

end

end A241640.P10712968818019863681

/-! ## A241640.P16225352954312134154

`A000065(n)+1-A241637(n)`
-/

namespace A241640.P16225352954312134154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A241637 n)

end

end A241640.P16225352954312134154

/-! ## A241640.P2558397303199151370

`A035363(2*n)-A241637(n)`
-/

namespace A241640.P2558397303199151370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A241637 n

end

end A241640.P2558397303199151370

/-! ## A241640.P10950572436411832509

`A035377(3*n)-A241637(n)`
-/

namespace A241640.P10950572436411832509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) - A241637 n

end

end A241640.P10950572436411832509

/-! ## A241640.P14483786831666300956

`A139582(n)/2-A241637(n)`
-/

namespace A241640.P14483786831666300956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A241637 n : ℚ)

end

end A241640.P14483786831666300956

/-! ## A241640.P13693592131434531120

`A000041(n)-(A241638(n)+A241636(n))`
-/

namespace A241640.P13693592131434531120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241638 n + A241636 n)

end

end A241640.P13693592131434531120

/-! ## A241640.P7083309124989551083

`A241636(n)+A241639(n)-A241637(n)`
-/

namespace A241640.P7083309124989551083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241636 n + (A241639 n - A241637 n)

end

end A241640.P7083309124989551083

/-!
# A241641: Number of partitions p of n such that (number of even numbers in p) < 2*(number of odd numbers in p).

The programs for A241641, there is no canonical definition to state claims against.
-/

/-! ## A241641.P16898909433122389806

`A241642(n)-A241643(n)`
-/

namespace A241641.P16898909433122389806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241642 n - A241643 n

end

end A241641.P16898909433122389806

/-! ## A241641.P16835722215570402850

`A000041(n)-A241644(n)`
-/

namespace A241641.P16835722215570402850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241644 n

end

end A241641.P16835722215570402850

/-! ## A241641.P6581892274321227507

`A213598(n)-A241644(n)`
-/

namespace A241641.P6581892274321227507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241644 n

end

end A241641.P6581892274321227507

/-! ## A241641.P6895647326964197719

`sqrt(A001255(n))-A241644(n)`
-/

namespace A241641.P6895647326964197719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241644 n : ℝ)

end

end A241641.P6895647326964197719

/-! ## A241641.P1620391978598669356

`∑[A002865(n)]-A241644(n)`
-/

namespace A241641.P1620391978598669356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241644 n

end

end A241641.P1620391978598669356

/-!
# A241642: Number of partitions p of n such that (number of even numbers in p) <= 2*(number of odd numbers in p).

The programs for A241642, there is no canonical definition to state claims against.
-/

/-! ## A241642.P2200870603442798592

`A241641(n)+A241643(n)`
-/

namespace A241642.P2200870603442798592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241641 n + A241643 n

end

end A241642.P2200870603442798592

/-! ## A241642.P3996453070312074710

`A000041(n)-A241645(n)`
-/

namespace A241642.P3996453070312074710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241645 n

end

end A241642.P3996453070312074710

/-! ## A241642.P7042926266508983059

`A213598(n)-A241645(n)`
-/

namespace A241642.P7042926266508983059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241645 n

end

end A241642.P7042926266508983059

/-! ## A241642.P6629339724665653957

`sqrt(A001255(n))-A241645(n)`
-/

namespace A241642.P6629339724665653957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241645 n : ℝ)

end

end A241642.P6629339724665653957

/-! ## A241642.P14962058634401198615

`∑[A002865(n)]-A241645(n)`
-/

namespace A241642.P14962058634401198615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241645 n

end

end A241642.P14962058634401198615

/-!
# A241643: Number of partitions p of n such that (number of even numbers in p) = 2*(number of odd numbers in p).

The programs for A241643, there is no canonical definition to state claims against.
-/

/-! ## A241643.P8005270188206543825

`A241642(n)-A241641(n)`
-/

namespace A241643.P8005270188206543825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241642 n - A241641 n

end

end A241643.P8005270188206543825

/-! ## A241643.P3372061145050836998

`A241644(n)-A241645(n)`
-/

namespace A241643.P3372061145050836998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241644 n - A241645 n

end

end A241643.P3372061145050836998

/-! ## A241643.P11989434607643585183

`A000041(n)-(A241645(n)+A241641(n))`
-/

namespace A241643.P11989434607643585183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241645 n + A241641 n)

end

end A241643.P11989434607643585183

/-! ## A241643.P11529967122651760999

`A241642(n)+A241644(n)-A000041(n)`
-/

namespace A241643.P11529967122651760999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241642 n + (A241644 n - A000041 n)

end

end A241643.P11529967122651760999

/-! ## A241643.P14970031004562032912

`A213598(n)-(A241645(n)+A241641(n))`
-/

namespace A241643.P14970031004562032912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - (A241645 n + A241641 n)

end

end A241643.P14970031004562032912

/-!
# A241644: Number of partitions p of n such that (number of even numbers in p) >= 2*(number of odd numbers in p).

The programs for A241644, there is no canonical definition to state claims against.
-/

/-! ## A241644.P577787555746579851

`A241643(n)+A241645(n)`
-/

namespace A241644.P577787555746579851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241643 n + A241645 n

end

end A241644.P577787555746579851

/-! ## A241644.P17671076314400922005

`A000041(n)-A241641(n)`
-/

namespace A241644.P17671076314400922005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241641 n

end

end A241644.P17671076314400922005

/-! ## A241644.P4652076556600633701

`A213598(n)-A241641(n)`
-/

namespace A241644.P4652076556600633701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241641 n

end

end A241644.P4652076556600633701

/-! ## A241644.P17091558066305718586

`sqrt(A001255(n))-A241641(n)`
-/

namespace A241644.P17091558066305718586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241641 n : ℝ)

end

end A241644.P17091558066305718586

/-! ## A241644.P16303321152763563602

`∑[A002865(n)]-A241641(n)`
-/

namespace A241644.P16303321152763563602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241641 n

end

end A241644.P16303321152763563602

/-!
# A241645: Number of partitions p of n such that (number of even numbers in p) > 2*(number of odd numbers in p).

The programs for A241645, there is no canonical definition to state claims against.
-/

/-! ## A241645.P9867694736616096855

`A241644(n)-A241643(n)`
-/

namespace A241645.P9867694736616096855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241644 n - A241643 n

end

end A241645.P9867694736616096855

/-! ## A241645.P10022607177823475304

`A000041(n)-A241642(n)`
-/

namespace A241645.P10022607177823475304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241642 n

end

end A241645.P10022607177823475304

/-! ## A241645.P98168086755731211

`A213598(n)-A241642(n)`
-/

namespace A241645.P98168086755731211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241642 n

end

end A241645.P98168086755731211

/-! ## A241645.P14062837970120435865

`sqrt(A001255(n))-A241642(n)`
-/

namespace A241645.P14062837970120435865
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241642 n : ℝ)

end

end A241645.P14062837970120435865

/-! ## A241645.P12798931162084867983

`∑[A002865(n)]-A241642(n)`
-/

namespace A241645.P12798931162084867983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241642 n

end

end A241645.P12798931162084867983

/-!
# A241646: Numbers m such that the GCD of the x's that satisfy sigma(x) = m is 1.

The programs for A241646, there is no canonical definition to state claims against.
-/

/-! ## A241646.P14236828331303818342

`eq[1, A240667(n+1)]+1`
-/

namespace A241646.P14236828331303818342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241646.P14236828331303818342

/-! ## A241646.P10549691674188110049

`eq[1, A240667(A000038(n)+n)]`
-/

namespace A241646.P10549691674188110049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241646.P10549691674188110049

/-! ## A241646.P3497473410245843855

`eq[n, A028310(n)*A240667(A028310(n))]`
-/

namespace A241646.P3497473410245843855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A240667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241646.P3497473410245843855

/-! ## A241646.P7344953936610937874

`record[A000027(n+1)*A002819(A240667(n+1))]`
-/

namespace A241646.P7344953936610937874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A002819 (A240667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241646.P7344953936610937874

/-! ## A241646.P11791859701803355910

`record[A002819(A240667(n+1))*A008619(2*n)]`
-/

namespace A241646.P11791859701803355910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 (A240667 (n + 1)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241646.P11791859701803355910

/-! ## A241646.P11660085242557627098

`eq[1, A240667(A174571(A008574(n)))]`
-/

namespace A241646.P11660085242557627098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A174571 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241646.P11660085242557627098

/-!
# A241647: Numbers m such that the GCD of the x's that satisfy sigma(x) = m is 2.

The programs for A241647, there is no canonical definition to state claims against.
-/

/-! ## A241647.P10345519723447693071

`eq[2, A240667(A028310(n))]`
-/

namespace A241647.P10345519723447693071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241647.P10345519723447693071

/-! ## A241647.P14114671568313844080

`A020725(eq[2, A240667(n+1)])`
-/

namespace A241647.P14114671568313844080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241647.P14114671568313844080

/-! ## A241647.P13838402399263514958

`A114637(eq[2, A240667(n+1)])`
-/

namespace A241647.P13838402399263514958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241647.P13838402399263514958

/-!
# A241648: Numbers m such that the GCD of the x's that satisfy sigma(x) = m is 3.

The programs for A241648, there is no canonical definition to state claims against.
-/

/-! ## A241648.P15880307125048423429

`eq[3, A240667(A028310(n))]`
-/

namespace A241648.P15880307125048423429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241648.P15880307125048423429

/-! ## A241648.P474146191231402958

`A014681(eq[3, A240667(n+1)])`
-/

namespace A241648.P474146191231402958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241648.P474146191231402958

/-! ## A241648.P7422281830423097973

`A020725(eq[3, A240667(n+1)])`
-/

namespace A241648.P7422281830423097973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241648.P7422281830423097973

/-! ## A241648.P947408412157469027

`eq[3, A240667(A065190(n+1))]`
-/

namespace A241648.P947408412157469027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241648.P947408412157469027

/-! ## A241648.P4091897835180532387

`eq[3, A240667(A138153(n+1))]`
-/

namespace A241648.P4091897835180532387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241648.P4091897835180532387

/-!
# A241651: Number of partitions p of n such that 2*(number of even numbers in p) < (number of odd numbers in p).

The programs for A241651, there is no canonical definition to state claims against.
-/

/-! ## A241651.P9705890203521036470

`A241652(n)-A241653(n)`
-/

namespace A241651.P9705890203521036470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241652 n - A241653 n

end

end A241651.P9705890203521036470

/-! ## A241651.P3185637942064182777

`A000041(n)-A241654(n)`
-/

namespace A241651.P3185637942064182777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241654 n

end

end A241651.P3185637942064182777

/-! ## A241651.P4472347856531293905

`A000041(n)-(A241655(n)+A241653(n))`
-/

namespace A241651.P4472347856531293905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241655 n + A241653 n)

end

end A241651.P4472347856531293905

/-! ## A241651.P3408591039021494694

`A213598(n)-(A241655(n)+A241653(n))`
-/

namespace A241651.P3408591039021494694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - (A241655 n + A241653 n)

end

end A241651.P3408591039021494694

/-! ## A241651.P5612145375517399599

`A241652(n)+A241655(n)-A241654(n)`
-/

namespace A241651.P5612145375517399599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241652 n + (A241655 n - A241654 n)

end

end A241651.P5612145375517399599

/-!
# A241652: Number of partitions p of n such that 2*(number of even numbers in p) <= (number of odd numbers in p).

The programs for A241652, there is no canonical definition to state claims against.
-/

/-! ## A241652.P8028376185273053232

`A241651(n)+A241653(n)`
-/

namespace A241652.P8028376185273053232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241651 n + A241653 n

end

end A241652.P8028376185273053232

/-! ## A241652.P12473986148688208161

`A000041(n)+A241653(n)-A241654(n)`
-/

namespace A241652.P12473986148688208161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A241653 n - A241654 n)

end

end A241652.P12473986148688208161

/-! ## A241652.P18141052923732303264

`A000041(n)-A241655(n)`
-/

namespace A241652.P18141052923732303264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241655 n

end

end A241652.P18141052923732303264

/-! ## A241652.P5005940603741355011

`A213598(n)-A241655(n)`
-/

namespace A241652.P5005940603741355011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241655 n

end

end A241652.P5005940603741355011

/-! ## A241652.P16351034873959246557

`sqrt(A001255(n))-A241655(n)`
-/

namespace A241652.P16351034873959246557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241655 n : ℝ)

end

end A241652.P16351034873959246557

/-!
# A241653: Number of partitions p of n such that 2*(number of even numbers in p) = (number of odd numbers in p).

The programs for A241653, there is no canonical definition to state claims against.
-/

/-! ## A241653.P462385630974917973

`A241652(n)-A241651(n)`
-/

namespace A241653.P462385630974917973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241652 n - A241651 n

end

end A241653.P462385630974917973

/-! ## A241653.P9807829552780370160

`A241652(n)+A241654(n)-A000041(n)`
-/

namespace A241653.P9807829552780370160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241652 n + (A241654 n - A000041 n)

end

end A241653.P9807829552780370160

/-! ## A241653.P5260125421153833170

`A241654(n)-A241655(n)`
-/

namespace A241653.P5260125421153833170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241654 n - A241655 n

end

end A241653.P5260125421153833170

/-! ## A241653.P16476048388092741669

`A000041(n)-(A241655(n)+A241651(n))`
-/

namespace A241653.P16476048388092741669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241655 n + A241651 n)

end

end A241653.P16476048388092741669

/-! ## A241653.P7226171496047782587

`A213598(n)-(A241655(n)+A241651(n))`
-/

namespace A241653.P7226171496047782587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - (A241655 n + A241651 n)

end

end A241653.P7226171496047782587

/-!
# A241654: Number of partitions p of n such that 2*(number of even numbers in p) >= (number of odd numbers in p).

The programs for A241654, there is no canonical definition to state claims against.
-/

/-! ## A241654.P8999302208647776774

`A241653(n)+A241655(n)`
-/

namespace A241654.P8999302208647776774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241653 n + A241655 n

end

end A241654.P8999302208647776774

/-! ## A241654.P14587132553433081138

`A000041(n)+A241653(n)-A241652(n)`
-/

namespace A241654.P14587132553433081138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A241653 n - A241652 n)

end

end A241654.P14587132553433081138

/-! ## A241654.P9115940574585153061

`A000041(n)-A241651(n)`
-/

namespace A241654.P9115940574585153061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241651 n

end

end A241654.P9115940574585153061

/-! ## A241654.P12625766175298168027

`sqrt(A001255(n))-A241651(n)`
-/

namespace A241654.P12625766175298168027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241651 n : ℝ)

end

end A241654.P12625766175298168027

/-! ## A241654.P17382504582007164674

`∑[A002865(n)]-A241651(n)`
-/

namespace A241654.P17382504582007164674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241651 n

end

end A241654.P17382504582007164674

/-!
# A241655: Number of partitions p of n such that 2*(number of even numbers in p) > (number of odd numbers in p).

The programs for A241655, there is no canonical definition to state claims against.
-/

/-! ## A241655.P17625677673707976158

`A241654(n)-A241653(n)`
-/

namespace A241655.P17625677673707976158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241654 n - A241653 n

end

end A241655.P17625677673707976158

/-! ## A241655.P12563419732481373933

`A000041(n)-A241652(n)`
-/

namespace A241655.P12563419732481373933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241652 n

end

end A241655.P12563419732481373933

/-! ## A241655.P1062696489314740447

`A213598(n)-A241652(n)`
-/

namespace A241655.P1062696489314740447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241652 n

end

end A241655.P1062696489314740447

/-! ## A241655.P7654790808056404456

`sqrt(A001255(n))-A241652(n)`
-/

namespace A241655.P7654790808056404456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241652 n : ℝ)

end

end A241655.P7654790808056404456

/-! ## A241655.P16768832982750345329

`∑[A002865(n)]-A241652(n)`
-/

namespace A241655.P16768832982750345329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241652 n

end

end A241655.P16768832982750345329

/-!
# A241656: Smallest semiprime, sp, such that 2n - sp is a semiprime, or a(n)=0 if there is no such sp.

The programs for A241656, there is no canonical definition to state claims against.
-/

/-! ## A241656.P2655073495956466220

`A241658(2*(n+1))`
-/

namespace A241656.P2655073495956466220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241658 (2 * (n + 1))

end

end A241656.P2655073495956466220

/-! ## A241656.P16207180917833658056

`A241658(A103517(n))%27`
-/

namespace A241656.P16207180917833658056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241658 (A103517 n).toNat) 27

end

end A241656.P16207180917833658056

/-! ## A241656.P14731676035946608489

`A241658(Δ[A002378(n)])%59`
-/

namespace A241656.P14731676035946608489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241658 (f1 (n + 1) - f1 n).toNat) 59

end

end A241656.P14731676035946608489

/-! ## A241656.P14539524663410408139

`A241658(A004277(n+1))%28`
-/

namespace A241656.P14539524663410408139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241658 (A004277 (n + 1)).toNat) 28

end

end A241656.P14539524663410408139

/-! ## A241656.P18105179863706309341

`A007318(∑[n])*A241658(A103517(n))`
-/

namespace A241656.P18105179863706309341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A241658 (A103517 n).toNat

end

end A241656.P18105179863706309341

/-!
# A241657: The sum of a^2 + b^2 for all nonnegative integers a,b such that b^2 - a^2 = 2*n+1.

The programs for A241657, there is no canonical definition to state claims against.
-/

/-! ## A241657.P16932190081890004523

`A237626(Δ[n²])/4`
-/

namespace A241657.P16932190081890004523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237626 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 4

end

end A241657.P16932190081890004523

/-! ## A241657.P14875805917334336668

`floor(A237626(2*n+1)/4)`
-/

namespace A241657.P14875805917334336668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A237626 (2 * n + 1) : ℚ) / 4⌋

end

end A241657.P14875805917334336668

/-! ## A241657.P13749110127261789456

`A124072(A237626(Δ[n²]))`
-/

namespace A241657.P13749110127261789456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (A237626 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A241657.P13749110127261789456

/-! ## A241657.P1347400454978361793

`A008624(A237626(2*n+1)+1)`
-/

namespace A241657.P1347400454978361793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A237626 (2 * n + 1) + 1).toNat

end

end A241657.P1347400454978361793

/-! ## A241657.P246297863478809129

`A124072(A237626(2*n+1)+2)`
-/

namespace A241657.P246297863478809129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (A237626 (2 * n + 1) + 2).toNat

end

end A241657.P246297863478809129

/-!
# A241659: Primes p such that p^3 + 2 is semiprime.

The programs for A241659, there is no canonical definition to state claims against.
-/

/-! ## A241659.P8777907781011402238

`p?[∑[A186187(A285048(n))]]`
-/

namespace A241659.P8777907781011402238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186187 (A285048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241659.P8777907781011402238

/-! ## A241659.P5960542227845433071

`p?[eq[1, A049705(A034867(n))]]`
-/

namespace A241659.P5960542227845433071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A034867 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A241659.P5960542227845433071

/-! ## A241659.P5890695340944665006

`p?[∑[A282936(A282935(3*n+4))]]`
-/

namespace A241659.P5890695340944665006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282936 (A282935 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241659.P5890695340944665006

/-! ## A241659.P11702488184952179852

`p?[∑[A001221(A103926(n+3))]]`
-/

namespace A241659.P11702488184952179852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103926 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241659.P11702488184952179852

/-! ## A241659.P6925000609064462128

`p?[∑[A001221(A103926(n))]-2]`
-/

namespace A241659.P6925000609064462128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103926 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241659.P6925000609064462128

/-!
# A241662: Numbers of the form m * 10^k where gcd(10, m) = 1 and k >= 0 and m > 0.

The programs for A241662, the canonical program `A241662.P12047629039277090530` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241662 has offset 1).

The definition of A241662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241662.P12047629039277090530

`eq[val(n+1, 2), val(n+1, 5)]+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241662

/-- `eq[val(n+1, 2), val(n+1, 5)]+1` -/
def P12047629039277090530.Spec : Prop :=
  ∀ n, (P12047629039277090530.a n : ℤ) = A241662 (n + 1)

theorem P12047629039277090530.correct : P12047629039277090530.Spec := by
  intro n
  simp only [A241662, Nat.add_sub_cancel]

end A241662

/-! ## A241662.P5210415180646763709

`eq[1, dr(A068822(n+1))]+1`
-/

namespace A241662.P5210415180646763709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A068822 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A241662.P5210415180646763709

namespace A241662

/-- `eq[1, dr(A068822(n+1))]+1` -/
def P5210415180646763709.Spec : Prop :=
  ∀ n, (P5210415180646763709.a n : ℤ) = A241662 (n + 1)

end A241662

/-! ## A241662.P3069171659097089766

`eq[2, and(3, A096681(n+1))]+1`
-/

namespace A241662.P3069171659097089766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A096681 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241662.P3069171659097089766

namespace A241662

/-- `eq[2, and(3, A096681(n+1))]+1` -/
def P3069171659097089766.Spec : Prop :=
  ∀ n, (P3069171659097089766.a n : ℤ) = A241662 (n + 1)

end A241662

/-! ## A241662.P504503886283927782

`eq[1, gcd(10, A004151(n+1))]+1`
-/

namespace A241662.P504503886283927782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A004151 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A241662.P504503886283927782

namespace A241662

/-- `eq[1, gcd(10, A004151(n+1))]+1` -/
def P504503886283927782.Spec : Prop :=
  ∀ n, (P504503886283927782.a n : ℤ) = A241662 (n + 1)

end A241662

/-! ## A241662.P17949103819820522149

`eq[n+1, A181351(n+1)]+1`
-/

namespace A241662.P17949103819820522149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241662.P17949103819820522149

namespace A241662

/-- `eq[n+1, A181351(n+1)]+1` -/
def P17949103819820522149.Spec : Prop :=
  ∀ n, (P17949103819820522149.a n : ℤ) = A241662 (n + 1)

end A241662

/-! ## A241662.P11699551455735078542

`eq[1, A068822(abs(1-n)+1)%9]`
-/

namespace A241662.P11699551455735078542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068822 (|1 - (n : ℤ)| + 1).toNat) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241662.P11699551455735078542

namespace A241662

/-- `eq[1, A068822(abs(1-n)+1)%9]` -/
def P11699551455735078542.Spec : Prop :=
  ∀ n, (P11699551455735078542.a n : ℤ) = A241662 (n + 1)

end A241662

/-! ## A241662.P17709404465001234436

`eq[1, A051801(A078267(n+1))]+1`
-/

namespace A241662.P17709404465001234436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A078267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241662.P17709404465001234436

namespace A241662

/-- `eq[1, A051801(A078267(n+1))]+1` -/
def P17709404465001234436.Spec : Prop :=
  ∀ n, (P17709404465001234436.a n : ℤ) = A241662 (n + 1)

end A241662

/-! ## A241662.P14695688603446914427

`eq[2, A007953(A227071(n+1))]`
-/

namespace A241662.P14695688603446914427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A227071 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241662.P14695688603446914427

namespace A241662

/-- `eq[2, A007953(A227071(n+1))]` -/
def P14695688603446914427.Spec : Prop :=
  ∀ n, (P14695688603446914427.a n : ℤ) = A241662 (n + 1)

end A241662

/-! ## A241662.P1542183702922699578

`eq[2, val(A096687(2*(n+1)), 2)]+1`
-/

namespace A241662.P1542183702922699578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A096687 (2 * (n + 1))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A241662.P1542183702922699578

namespace A241662

/-- `eq[2, val(A096687(2*(n+1)), 2)]+1` -/
def P1542183702922699578.Spec : Prop :=
  ∀ n, (P1542183702922699578.a n : ℤ) = A241662 (n + 1)

end A241662

/-!
# A241663: Number of positive integers k less than or equal to n such that gcd(k,n) = gcd(k+1,n) = gcd(k+2,n) = gcd(k+3,n) = 1.

The programs for A241663, there is no canonical definition to state claims against.
-/

/-! ## A241663.P3074746388818218494

`A232991(n)*A319516(n+1)`
-/

namespace A241663.P3074746388818218494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232991 n * A319516 (n + 1)

end

end A241663.P3074746388818218494

/-! ## A241663.P9788472725814639967

`char[A047233(n+1)]*A319516(n+1)`
-/

namespace A241663.P9788472725814639967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A319516 (n + 1)

end

end A241663.P9788472725814639967

/-! ## A241663.P6896284411886050023

`and(n+1, A002061(n)%3)*A319516(n+1)`
-/

namespace A241663.P6896284411886050023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (Int.tmod (A002061 n) 3) * A319516 (n + 1)

end

end A241663.P6896284411886050023

/-! ## A241663.P16321031998842623464

`A057427(A123565(n+1))*A319516(n+1)`
-/

namespace A241663.P16321031998842623464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A123565 (n + 1)).toNat * A319516 (n + 1)

end

end A241663.P16321031998842623464

/-! ## A241663.P1611564406410303096

`A000007(A215573(n+1))*A319516(n+1)`
-/

namespace A241663.P1611564406410303096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A215573 (n + 1)).toNat * A319516 (n + 1)

end

end A241663.P1611564406410303096

/-! ## A241663.P3673008144037383567

`A057427(A347233(n+1))*A319516(n+1)`
-/

namespace A241663.P3673008144037383567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A347233 (n + 1)).toNat * A319516 (n + 1)

end

end A241663.P3673008144037383567

/-! ## A241663.P98588649637252057

`A319516(n+1)%A196168(A241668(n+1))`
-/

namespace A241663.P98588649637252057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319516 (n + 1)) (A196168 (A241668 (n + 1)).toNat)

end

end A241663.P98588649637252057

/-!
# A241664: Number of iterations of A058026 needed to reach either 0 or 1.

The programs for A241664, there is no canonical definition to state claims against.
-/

/-! ## A241664.P15914539280502652985

`A001221(or(A276075(n+1), A285068(n)))`
-/

namespace A241664.P15914539280502652985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A276075 (n + 1)) (A285068 n)).toNat

end

end A241664.P15914539280502652985

/-! ## A241664.P1809809464703824305

`A000120(A286253(n+1)%A091295(n+1))`
-/

namespace A241664.P1809809464703824305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A286253 (n + 1)) (A091295 (n + 1))).toNat

end

end A241664.P1809809464703824305

/-! ## A241664.P498786722200750061

`A000120(A286253(n+1))%A252492(2*(n+1))`
-/

namespace A241664.P498786722200750061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A286253 (n + 1)).toNat) (A252492 (2 * (n + 1)))

end

end A241664.P498786722200750061

/-! ## A241664.P12476031761744603283

`A062501(A081668(n))`
-/

namespace A241664.P12476031761744603283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062501 (A081668 n).toNat

end

end A241664.P12476031761744603283

/-! ## A241664.P6177282172438831331

`A077267(log2(gcd(2, n))*A129912(n+1))`
-/

namespace A241664.P6177282172438831331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ) * (A129912 (n + 1) : ℝ))).toNat

end

end A241664.P6177282172438831331

/-!
# A241665: Number of iterations of A241663 needed to reach either 0 or 1.

The programs for A241665, there is no canonical definition to state claims against.
-/

/-! ## A241665.P17846663983540262835

`gcd(A079080(A144963(n+1)), A175307(n+1))`
-/

namespace A241665.P17846663983540262835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079080 (A144963 (n + 1)).toNat) (A175307 (n + 1))

end

end A241665.P17846663983540262835

/-! ## A241665.P14230551698009735823

`A085392(A175307(n+1)^A008612(n))`
-/

namespace A241665.P14230551698009735823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (SequenceMachineLib.roundAway ((A175307 (n + 1) : ℚ) ^ (A008612 n : ℤ))).toNat

end

end A241665.P14230551698009735823

/-! ## A241665.P14515836061077391950

`A085392(A175307(n+1)^A103221(n))`
-/

namespace A241665.P14515836061077391950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (SequenceMachineLib.roundAway ((A175307 (n + 1) : ℚ) ^ (A103221 n : ℤ))).toNat

end

end A241665.P14515836061077391950

/-! ## A241665.P6935466517739716622

`A249740(A175307(n+1)^A008612(n))`
-/

namespace A241665.P6935466517739716622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (SequenceMachineLib.roundAway ((A175307 (n + 1) : ℚ) ^ (A008612 n : ℤ))).toNat

end

end A241665.P6935466517739716622

/-! ## A241665.P17149589055269919281

`A249740(A175307(n+1)^A103221(n))`
-/

namespace A241665.P17149589055269919281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (SequenceMachineLib.roundAway ((A175307 (n + 1) : ℚ) ^ (A103221 n : ℤ))).toNat

end

end A241665.P17149589055269919281

/-! ## A241665.P5600554231023868126

`gcd(6, A032742(A175307(n+1)^A008612(n)))`
-/

namespace A241665.P5600554231023868126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A032742 (SequenceMachineLib.roundAway ((A175307 (n + 1) : ℚ) ^ (A008612 n : ℤ))).toNat)

end

end A241665.P5600554231023868126

/-!
# A241666: Gives the value (either 0 or 1) that the trajectory of n under A241663 eventually reaches.

The programs for A241666, there is no canonical definition to state claims against.
-/

/-! ## A241666.P9531395059672823526

`a(A241663(n))` with `a(0)=0, a(1)=1`
-/

namespace A241666.P9531395059672823526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A241663 n).toNat

end

end A241666.P9531395059672823526

/-! ## A241666.P11137266744932084372

`char[∏{e}[n, A239715(#)]]`
-/

namespace A241666.P11137266744932084372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A239715 (Nat.factorization (f2 n) p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241666.P11137266744932084372

/-! ## A241666.P1724208652846370018

`C(2, ∏{p}[A046523(∑[n]+4)+n+1, #])`
-/

namespace A241666.P1724208652846370018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f2 j + 4) + (n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A241666.P1724208652846370018

/-! ## A241666.P11403524907329547734

`A209229(A046523(∑[n]+4)+n+1)`
-/

namespace A241666.P11403524907329547734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A046523 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + (n + 1 : ℤ)).toNat

end

end A241666.P11403524907329547734

/-! ## A241666.P16534029613352542617

`∑{d}[A117003(∑[n+2]+1), #]%2`
-/

namespace A241666.P16534029613352542617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d) % 2

end

end A241666.P16534029613352542617

/-! ## A241666.P399681926588585949

`val(A038712(A000217(n+3)), A008472(n+2))`
-/

namespace A241666.P399681926588585949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038712 (A000217 (n + 3)).toNat).toNat (A008472 (n + 2)).toNat

end

end A241666.P399681926588585949

/-! ## A241666.P5804203098757861906

`and(n, A097806(∑[A004515(n)]))`
-/

namespace A241666.P5804203098757861906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A097806 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A241666.P5804203098757861906

/-! ## A241666.P4752478826055099744

`A178225(A155212(A030104(n)))`
-/

namespace A241666.P4752478826055099744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A155212 (A030104 n).toNat).toNat

end

end A241666.P4752478826055099744

/-! ## A241666.P14140177668602013902

`and(A155898(n+1), A272954(n+1))`
-/

namespace A241666.P14140177668602013902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155898 (n + 1)) (A272954 (n + 1))

end

end A241666.P14140177668602013902

/-! ## A241666.P16964989323273964566

`and(A050380(n+1), A115517(n²))`
-/

namespace A241666.P16964989323273964566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050380 (n + 1)) (A115517 (n ^ 2))

end

end A241666.P16964989323273964566

/-! ## A241666.P98144998721883217

`∏{digits}[A280612(n+1), #]`
-/

namespace A241666.P98144998721883217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A241666.P98144998721883217

/-!
# A241667: Sum of the iterates of A058026 up to and including either 0 or 1.

The programs for A241667, there is no canonical definition to state claims against.
-/

/-! ## A241667.P2259131573148530532

`A025581(A241645(n)^4)`
-/

namespace A241667.P2259131573148530532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A241645 n ^ 4).toNat

end

end A241667.P2259131573148530532

/-! ## A241667.P13632775600089192342

`A187066(A141056(n))%18`
-/

namespace A241667.P13632775600089192342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187066 (A141056 n).toNat) 18

end

end A241667.P13632775600089192342

/-! ## A241667.P11321112921187487117

`A025581(A241645(n)²²)`
-/

namespace A241667.P11321112921187487117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((A241645 n ^ 2) ^ 2).toNat

end

end A241667.P11321112921187487117

/-! ## A241667.P14448532718302941197

`floor(A281648(A176289(n))/4)`
-/

namespace A241667.P14448532718302941197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A281648 (A176289 n).toNat : ℚ) / 4⌋

end

end A241667.P14448532718302941197

/-!
# A241668: Sum of iterates of A241663 up to and including either 0 or 1.

The programs for A241668, there is no canonical definition to state claims against.
-/

/-! ## A241668.P3318101686867317234

`and(n+1, A025581(A331595(n+1)²))`
-/

namespace A241668.P3318101686867317234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A025581 (A331595 (n + 1) ^ 2).toNat)

end

end A241668.P3318101686867317234

/-! ## A241668.P9280001308140285814

`A064515(A196168(A347233(n+1)²))`
-/

namespace A241668.P9280001308140285814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (A196168 (A347233 (n + 1) ^ 2).toNat).toNat

end

end A241668.P9280001308140285814

/-! ## A241668.P9657614121689871682

`A241663(n+1)+A024153(A005578(n))`
-/

namespace A241668.P9657614121689871682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241663 (n + 1) + A024153 (A005578 n).toNat

end

end A241668.P9657614121689871682

/-! ## A241668.P1383921073683780210

`and(A025581(A331595(n+1)²), A031285(n))`
-/

namespace A241668.P1383921073683780210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025581 (A331595 (n + 1) ^ 2).toNat) (A031285 n)

end

end A241668.P1383921073683780210

/-! ## A241668.P3038279138978402307

`A007953(A241663(n+1)^A241675(n+5))`
-/

namespace A241668.P3038279138978402307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A241663 (n + 1) : ℚ) ^ (A241675 (n + 5) : ℤ))).toNat

end

end A241668.P3038279138978402307

/-!
# A241670: Semiprimes of the form n^4 - n^3 - n - 1.

The programs for A241670, there is no canonical definition to state claims against.
-/

/-! ## A241670.P8267008329987638341

`record[A089120(n+4)*A108151(n+2)]`
-/

namespace A241670.P8267008329987638341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 4) * A108151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241670.P8267008329987638341

/-!
# A241671: Where zeros occur in A065806.

The programs for A241671, there is no canonical definition to state claims against.
-/

/-! ## A241671.P16998043812634881891

`A065806(eq[0, A065806(n+1)])`
-/

namespace A241671.P16998043812634881891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065806 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241671.P16998043812634881891

/-!
# A241672: Numbers k such that A035014(k) begins with a 4.

The programs for A241672, there is no canonical definition to state claims against.
-/

/-! ## A241672.P3719236732344703206

`1+eq[4, A023402(n+1)]`
-/

namespace A241672.P3719236732344703206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241672.P3719236732344703206

/-! ## A241672.P782824199636057700

`record[(n+1)^(6-A023408(n+1))]`
-/

namespace A241672.P782824199636057700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (6 - A023408 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241672.P782824199636057700

/-! ## A241672.P8052727277104522078

`eq[6-A023408(n+1), A057427(n)]+1`
-/

namespace A241672.P8052727277104522078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A023408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A241672.P8052727277104522078

/-! ## A241672.P8001026560541247606

`eq[1, (A028586(n)+A023408(n+1))%2]+1`
-/

namespace A241672.P8001026560541247606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028586 n + A023408 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241672.P8001026560541247606

/-! ## A241672.P2384668086446556257

`lt[3, A023402(a((A002515(n+1)+1)%2)+n)]` with `a(0)=0, a(1)=4, a(2)=12`
-/

namespace A241672.P2384668086446556257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 12] fun n f2 =>
  A023402 (f2 (Int.tmod (A002515 (n + 1) + 1) 2).toNat + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241672.P2384668086446556257

/-!
# A241673: Where powers of 2 occur in A229037.

The programs for A241673, there is no canonical definition to state claims against.
-/

/-! ## A241673.P5370709256517043452

`eq[1, A000120(A229037(n+1))]+1`
-/

namespace A241673.P5370709256517043452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A229037 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241673.P5370709256517043452

/-! ## A241673.P6495884458101744112

`lt[A164368(n+1)%A000120(A229037(n+1)), 1]+1`
-/

namespace A241673.P6495884458101744112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164368 (n + 1)) (A000120 (A229037 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A241673.P6495884458101744112

/-! ## A241673.P12281075220091970100

`lt[A000040(n+1)%A000120(A229037(n+1)), 1]+1`
-/

namespace A241673.P12281075220091970100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A000120 (A229037 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A241673.P12281075220091970100

/-! ## A241673.P13260532378525251691

`lt[A002476(n+1)%A000120(A229037(n+1)), 1]+1`
-/

namespace A241673.P13260532378525251691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002476 (n + 1)) (A000120 (A229037 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A241673.P13260532378525251691

/-! ## A241673.P12066278661462170919

`lt[A065091(n+1)%A000120(A229037(n+1)), 1]+1`
-/

namespace A241673.P12066278661462170919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 1)) (A000120 (A229037 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A241673.P12066278661462170919

/-! ## A241673.P5223143681581905883

`lt[A139827(n+1)%A000120(A229037(n+1)), 1]+1`
-/

namespace A241673.P5223143681581905883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139827 (n + 1)) (A000120 (A229037 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A241673.P5223143681581905883

/-! ## A241673.P13440794268289122677

`lt[A139831(n+1)%A000120(A229037(n+1)), 1]+1`
-/

namespace A241673.P13440794268289122677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139831 (n + 1)) (A000120 (A229037 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A241673.P13440794268289122677

/-! ## A241673.P14491545141863505844

`lt[A000120(A229037(n+1))^A008611(n), 2]+1`
-/

namespace A241673.P14491545141863505844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (A229037 (n + 1)).toNat : ℚ) ^ (A008611 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A241673.P14491545141863505844

/-! ## A241673.P2404855740338852475

`eq[1, A048896(A248625(n))]+1`
-/

namespace A241673.P2404855740338852475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A248625 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241673.P2404855740338852475

/-! ## A241673.P16831287531877049775

`eq[1, A000265(A248625(n)+1)]+1`
-/

namespace A241673.P16831287531877049775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A248625 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241673.P16831287531877049775

/-!
# A241674: Number of factors of length 2n of the Fibonacci word (A003849) that are abelian squares.

The programs for A241674, there is no canonical definition to state claims against.
-/

/-! ## A241674.P8696494239303332752

`A295540(2*comp[floor(ϕ*n)])`
-/

namespace A241674.P8696494239303332752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A241674.P8696494239303332752

/-! ## A241674.P10117177111106473050

`or(1, A295540(A283234(n+1)))`
-/

namespace A241674.P10117177111106473050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A295540 (A283234 (n + 1)).toNat)

end

end A241674.P10117177111106473050

/-! ## A241674.P16552436779919451898

`A295540(A283234(n+1))^A178334(n)`
-/

namespace A241674.P16552436779919451898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295540 (A283234 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A241674.P16552436779919451898

/-! ## A241674.P16326139921132968739

`A295540(A283234(n+1))%A202018(n)`
-/

namespace A241674.P16326139921132968739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295540 (A283234 (n + 1)).toNat) (A202018 n)

end

end A241674.P16326139921132968739

/-! ## A241674.P11642897672145775695

`gcd(A000038(n), A295540(A283234(n+1)))`
-/

namespace A241674.P11642897672145775695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A295540 (A283234 (n + 1)).toNat)

end

end A241674.P11642897672145775695

/-! ## A241674.P821354248096418557

`A295540(A283234(n+1))+A073423(3*n+2)`
-/

namespace A241674.P821354248096418557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (A283234 (n + 1)).toNat + A073423 (3 * n + 2)

end

end A241674.P821354248096418557

/-!
# A241675: a(n) = |{0 < k < n/2: k is a Fibonacci number with x^2 == k (mod n) for no integer x}|.

The programs for A241675, there is no canonical definition to state claims against.
-/

/-! ## A241675.P2231672831238074631

`A297034((n+1)*A006206(n+1))`
-/

namespace A241675.P2231672831238074631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 ((n + 1 : ℤ) * A006206 (n + 1)).toNat

end

end A241675.P2231672831238074631

/-!
# A241676: 2^p - 3 where p is prime.

The programs for A241676, the canonical program `A241676.P10756549720427986965` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241676 has offset 1).

The definition of A241676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241676.P10756549720427986965

`2^A000040(n+1)-3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241676

/-- `2^A000040(n+1)-3` -/
def P10756549720427986965.Spec : Prop :=
  ∀ n, P10756549720427986965.a n = (A241676 (n + 1) : ℚ)

end A241676

/-! ## A241676.P14462635243870102604

`record[∏{p}[n, 2^#-3]]`
-/

namespace A241676.P14462635243870102604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((2 ^ p : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241676.P14462635243870102604

namespace A241676

/-- `record[∏{p}[n, 2^#-3]]` -/
def P14462635243870102604.Spec : Prop :=
  ∀ n, P14462635243870102604.a n = A241676 (n + 1)

end A241676

/-! ## A241676.P5043666898325854082

`2^p?[comp[n²]]-3`
-/

namespace A241676.P5043666898325854082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3

end

end A241676.P5043666898325854082

namespace A241676

/-- `2^p?[comp[n²]]-3` -/
def P5043666898325854082.Spec : Prop :=
  ∀ n, P5043666898325854082.a n = A241676 (n + 1)

end A241676

/-! ## A241676.P890256868374480808

`record[2^∑{p}[n+2, #]-3]`
-/

namespace A241676.P890256868374480808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241676.P890256868374480808

namespace A241676

/-- `record[2^∑{p}[n+2, #]-3]` -/
def P890256868374480808.Spec : Prop :=
  ∀ n, P890256868374480808.a n = A241676 (n + 1)

end A241676

/-! ## A241676.P2767675071725567134

`record[∑{p}[n-2, 2^#-3]]`
-/

namespace A241676.P2767675071725567134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, ((2 ^ p : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241676.P2767675071725567134

namespace A241676

/-- `record[∑{p}[n-2, 2^#-3]]` -/
def P2767675071725567134.Spec : Prop :=
  ∀ n, P2767675071725567134.a n = A241676 (n + 1)

end A241676

/-! ## A241676.P16908772020429962623

`Δ[A076793(n)]-3`
-/

namespace A241676.P16908772020429962623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A241676.P16908772020429962623

namespace A241676

/-- `Δ[A076793(n)]-3` -/
def P16908772020429962623.Spec : Prop :=
  ∀ n, P16908772020429962623.a n = A241676 (n + 1)

end A241676

/-! ## A241676.P14498161600914861108

`A241678(n+1)+2`
-/

namespace A241676.P14498161600914861108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241678 (n + 1) + 2

end

end A241676.P14498161600914861108

namespace A241676

/-- `A241678(n+1)+2` -/
def P14498161600914861108.Spec : Prop :=
  ∀ n, P14498161600914861108.a n = A241676 (n + 1)

end A241676

/-! ## A241676.P9828834479902941910

`A001348(n+1)-2`
-/

namespace A241676.P9828834479902941910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) - 2

end

end A241676.P9828834479902941910

namespace A241676

/-- `A001348(n+1)-2` -/
def P9828834479902941910.Spec : Prop :=
  ∀ n, P9828834479902941910.a n = A241676 (n + 1)

end A241676

/-! ## A241676.P12739110008603073387

`A034785(n+1)-3`
-/

namespace A241676.P12739110008603073387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) - 3

end

end A241676.P12739110008603073387

namespace A241676

/-- `A034785(n+1)-3` -/
def P12739110008603073387.Spec : Prop :=
  ∀ n, P12739110008603073387.a n = A241676 (n + 1)

end A241676

/-! ## A241676.P96208433560716796

`A098815(n+1)+4`
-/

namespace A241676.P96208433560716796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098815 (n + 1) + 4

end

end A241676.P96208433560716796

namespace A241676

/-- `A098815(n+1)+4` -/
def P96208433560716796.Spec : Prop :=
  ∀ n, P96208433560716796.a n = A241676 (n + 1)

end A241676

/-!
# A241677: 2^p + 5 where p is prime.

The programs for A241677, the canonical program `A241677.P13275534690232004454` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241677 has offset 1).

The definition of A241677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241677.P13275534690232004454

`2^A000040(n+1)+5`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241677

/-- `2^A000040(n+1)+5` -/
def P13275534690232004454.Spec : Prop :=
  ∀ n, P13275534690232004454.a n = (A241677 (n + 1) : ℚ)

end A241677

/-! ## A241677.P15070873871778085858

`record[2^∑{p}[n+2, #]+5]`
-/

namespace A241677.P15070873871778085858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241677.P15070873871778085858

namespace A241677

/-- `record[2^∑{p}[n+2, #]+5]` -/
def P15070873871778085858.Spec : Prop :=
  ∀ n, (P15070873871778085858.a n : ℤ) = A241677 (n + 1)

end A241677

/-! ## A241677.P17025299113773753139

`record[∏{p}[n+2, 2^#]+5]`
-/

namespace A241677.P17025299113773753139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 ^ p + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241677.P17025299113773753139

namespace A241677

/-- `record[∏{p}[n+2, 2^#]+5]` -/
def P17025299113773753139.Spec : Prop :=
  ∀ n, (P17025299113773753139.a n : ℤ) = A241677 (n + 1)

end A241677

/-! ## A241677.P365047536510424230

`A241573(n+1)+2`
-/

namespace A241677.P365047536510424230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241573 (n + 1) + 2

end

end A241677.P365047536510424230

namespace A241677

/-- `A241573(n+1)+2` -/
def P365047536510424230.Spec : Prop :=
  ∀ n, P365047536510424230.a n = A241677 (n + 1)

end A241677

/-! ## A241677.P4388361458992798695

`A241679(n+1)-2`
-/

namespace A241677.P4388361458992798695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241679 (n + 1) - 2

end

end A241677.P4388361458992798695

namespace A241677

/-- `A241679(n+1)-2` -/
def P4388361458992798695.Spec : Prop :=
  ∀ n, P4388361458992798695.a n = A241677 (n + 1)

end A241677

/-! ## A241677.P5325257525195198318

`A098640(n+1)+4`
-/

namespace A241677.P5325257525195198318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098640 (n + 1) + 4

end

end A241677.P5325257525195198318

namespace A241677

/-- `A098640(n+1)+4` -/
def P5325257525195198318.Spec : Prop :=
  ∀ n, P5325257525195198318.a n = A241677 (n + 1)

end A241677

/-! ## A241677.P4924061621539175744

`5+A034785(n+1)`
-/

namespace A241677.P4924061621539175744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 + A034785 (n + 1)

end

end A241677.P4924061621539175744

namespace A241677

/-- `5+A034785(n+1)` -/
def P4924061621539175744.Spec : Prop :=
  ∀ n, P4924061621539175744.a n = A241677 (n + 1)

end A241677

/-! ## A241677.P2910925966210965667

`A001348(n+1)+6`
-/

namespace A241677.P2910925966210965667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) + 6

end

end A241677.P2910925966210965667

namespace A241677

/-- `A001348(n+1)+6` -/
def P2910925966210965667.Spec : Prop :=
  ∀ n, P2910925966210965667.a n = A241677 (n + 1)

end A241677

/-! ## A241677.P1916354104121011091

`A241680(n+1)-6`
-/

namespace A241677.P1916354104121011091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241680 (n + 1) - 6

end

end A241677.P1916354104121011091

namespace A241677

/-- `A241680(n+1)-6` -/
def P1916354104121011091.Spec : Prop :=
  ∀ n, P1916354104121011091.a n = A241677 (n + 1)

end A241677

/-! ## A241677.P16749581934244531883

`A241676(n+1)+8`
-/

namespace A241677.P16749581934244531883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241676 (n + 1) + 8

end

end A241677.P16749581934244531883

namespace A241677

/-- `A241676(n+1)+8` -/
def P16749581934244531883.Spec : Prop :=
  ∀ n, P16749581934244531883.a n = A241677 (n + 1)

end A241677

/-!
# A241678: 2^p - 5 where p is prime.

The programs for A241678, the canonical program `A241678.P9132514489730437918` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241678 has offset 1).

The definition of A241678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241678.P9132514489730437918

`2^A000040(n+1)-5`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241678

/-- `2^A000040(n+1)-5` -/
def P9132514489730437918.Spec : Prop :=
  ∀ n, P9132514489730437918.a n = (A241678 (n + 1) : ℚ)

end A241678

/-! ## A241678.P3174307320948169986

`record[2^∑{p}[n+2, #]-5]`
-/

namespace A241678.P3174307320948169986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241678.P3174307320948169986

namespace A241678

/-- `record[2^∑{p}[n+2, #]-5]` -/
def P3174307320948169986.Spec : Prop :=
  ∀ n, P3174307320948169986.a n = A241678 (n + 1)

end A241678

/-! ## A241678.P13590194866640046047

`record[∏{p}[n+2, 2^#-5]]`
-/

namespace A241678.P13590194866640046047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((2 ^ p : ℤ) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241678.P13590194866640046047

namespace A241678

/-- `record[∏{p}[n+2, 2^#-5]]` -/
def P13590194866640046047.Spec : Prop :=
  ∀ n, P13590194866640046047.a n = A241678 (n + 1)

end A241678

/-! ## A241678.P7150535983523016503

`record[∑{p}[n-2, 2^#]-5]`
-/

namespace A241678.P7150535983523016503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, 2 ^ p : ℕ) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241678.P7150535983523016503

namespace A241678

/-- `record[∑{p}[n-2, 2^#]-5]` -/
def P7150535983523016503.Spec : Prop :=
  ∀ n, P7150535983523016503.a n = A241678 (n + 1)

end A241678

/-! ## A241678.P11701392414491554429

`record[∏{p}[n-2, 2^#]-5]`
-/

namespace A241678.P11701392414491554429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, 2 ^ p : ℕ) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241678.P11701392414491554429

namespace A241678

/-- `record[∏{p}[n-2, 2^#]-5]` -/
def P11701392414491554429.Spec : Prop :=
  ∀ n, P11701392414491554429.a n = A241678 (n + 1)

end A241678

/-! ## A241678.P14476657799544768902

`A098815(n+1)+2`
-/

namespace A241678.P14476657799544768902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098815 (n + 1) + 2

end

end A241678.P14476657799544768902

namespace A241678

/-- `A098815(n+1)+2` -/
def P14476657799544768902.Spec : Prop :=
  ∀ n, P14476657799544768902.a n = A241678 (n + 1)

end A241678

/-! ## A241678.P15839279446659048560

`A241676(n+1)-2`
-/

namespace A241678.P15839279446659048560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241676 (n + 1) - 2

end

end A241678.P15839279446659048560

namespace A241678

/-- `A241676(n+1)-2` -/
def P15839279446659048560.Spec : Prop :=
  ∀ n, P15839279446659048560.a n = A241678 (n + 1)

end A241678

/-! ## A241678.P409260336356017954

`A001348(n+1)-4`
-/

namespace A241678.P409260336356017954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) - 4

end

end A241678.P409260336356017954

namespace A241678

/-- `A001348(n+1)-4` -/
def P409260336356017954.Spec : Prop :=
  ∀ n, P409260336356017954.a n = A241678 (n + 1)

end A241678

/-! ## A241678.P9348341015905896659

`A034785(n+1)-5`
-/

namespace A241678.P9348341015905896659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) - 5

end

end A241678.P9348341015905896659

namespace A241678

/-- `A034785(n+1)-5` -/
def P9348341015905896659.Spec : Prop :=
  ∀ n, P9348341015905896659.a n = A241678 (n + 1)

end A241678

/-! ## A241678.P4343987132097979964

`A098231(n+1)+6`
-/

namespace A241678.P4343987132097979964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098231 (n + 1) + 6

end

end A241678.P4343987132097979964

namespace A241678

/-- `A098231(n+1)+6` -/
def P4343987132097979964.Spec : Prop :=
  ∀ n, P4343987132097979964.a n = A241678 (n + 1)

end A241678

/-!
# A241679: 2^p + 7 where p is prime.

The programs for A241679, the canonical program `A241679.P5386099263711346901` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241679 has offset 1).

The definition of A241679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241679.P5386099263711346901

`2^A000040(n+1)+7`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241679

/-- `2^A000040(n+1)+7` -/
def P5386099263711346901.Spec : Prop :=
  ∀ n, P5386099263711346901.a n = (A241679 (n + 1) : ℚ)

end A241679

/-! ## A241679.P15671125686826762088

`A241677(n+1)+2`
-/

namespace A241679.P15671125686826762088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241677 (n + 1) + 2

end

end A241679.P15671125686826762088

namespace A241679

/-- `A241677(n+1)+2` -/
def P15671125686826762088.Spec : Prop :=
  ∀ n, P15671125686826762088.a n = A241679 (n + 1)

end A241679

/-! ## A241679.P5053774027417909201

`A241573(n+1)+4`
-/

namespace A241679.P5053774027417909201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241573 (n + 1) + 4

end

end A241679.P5053774027417909201

namespace A241679

/-- `A241573(n+1)+4` -/
def P5053774027417909201.Spec : Prop :=
  ∀ n, P5053774027417909201.a n = A241679 (n + 1)

end A241679

/-! ## A241679.P16790376816776078848

`A241680(n+1)-4`
-/

namespace A241679.P16790376816776078848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241680 (n + 1) - 4

end

end A241679.P16790376816776078848

namespace A241679

/-- `A241680(n+1)-4` -/
def P16790376816776078848.Spec : Prop :=
  ∀ n, P16790376816776078848.a n = A241679 (n + 1)

end A241679

/-! ## A241679.P3082029817858475310

`A098640(n+1)+6`
-/

namespace A241679.P3082029817858475310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098640 (n + 1) + 6

end

end A241679.P3082029817858475310

namespace A241679

/-- `A098640(n+1)+6` -/
def P3082029817858475310.Spec : Prop :=
  ∀ n, P3082029817858475310.a n = A241679 (n + 1)

end A241679

/-! ## A241679.P4361150748495719604

`A034785(n+1)+7`
-/

namespace A241679.P4361150748495719604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) + 7

end

end A241679.P4361150748495719604

namespace A241679

/-- `A034785(n+1)+7` -/
def P4361150748495719604.Spec : Prop :=
  ∀ n, P4361150748495719604.a n = A241679 (n + 1)

end A241679

/-! ## A241679.P13940818490351860343

`A001348(n+1)+8`
-/

namespace A241679.P13940818490351860343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) + 8

end

end A241679.P13940818490351860343

namespace A241679

/-- `A001348(n+1)+8` -/
def P13940818490351860343.Spec : Prop :=
  ∀ n, P13940818490351860343.a n = A241679 (n + 1)

end A241679

/-! ## A241679.P16162771308745902308

`2*A229065(n+1)+1`
-/

namespace A241679.P16162771308745902308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A229065 (n + 1) + 1

end

end A241679.P16162771308745902308

namespace A241679

/-- `2*A229065(n+1)+1` -/
def P16162771308745902308.Spec : Prop :=
  ∀ n, P16162771308745902308.a n = A241679 (n + 1)

end A241679

/-! ## A241679.P8214079252671668976

`2*A278741(n+1)+5`
-/

namespace A241679.P8214079252671668976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278741 (n + 1) + 5

end

end A241679.P8214079252671668976

namespace A241679

/-- `2*A278741(n+1)+5` -/
def P8214079252671668976.Spec : Prop :=
  ∀ n, P8214079252671668976.a n = A241679 (n + 1)

end A241679

/-! ## A241679.P16588591226774951897

`record[2^A006530(n+2)+7]`
-/

namespace A241679.P16588591226774951897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 2) : ℤ) + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241679.P16588591226774951897

namespace A241679

/-- `record[2^A006530(n+2)+7]` -/
def P16588591226774951897.Spec : Prop :=
  ∀ n, P16588591226774951897.a n = (A241679 (n + 1) : ℚ)

end A241679

/-!
# A241680: 2^p + 11 where p is prime.

The programs for A241680, the canonical program `A241680.P8541619665871107017` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241680 has offset 1).

The definition of A241680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241680.P8541619665871107017

`2^A000040(n+1)+11`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241680

/-- `2^A000040(n+1)+11` -/
def P8541619665871107017.Spec : Prop :=
  ∀ n, P8541619665871107017.a n = (A241680 (n + 1) : ℚ)

end A241680

/-! ## A241680.P17591658023717873729

`Δ[A076793(n)]+11`
-/

namespace A241680.P17591658023717873729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 11

end

end A241680.P17591658023717873729

namespace A241680

/-- `Δ[A076793(n)]+11` -/
def P17591658023717873729.Spec : Prop :=
  ∀ n, P17591658023717873729.a n = A241680 (n + 1)

end A241680

/-! ## A241680.P17413424190349033183

`A267615(p?[comp[n²]])`
-/

namespace A241680.P17413424190349033183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A241680.P17413424190349033183

namespace A241680

/-- `A267615(p?[comp[n²]])` -/
def P17413424190349033183.Spec : Prop :=
  ∀ n, P17413424190349033183.a n = A241680 (n + 1)

end A241680

/-! ## A241680.P6754618602013377384

`A241679(n+1)+4`
-/

namespace A241680.P6754618602013377384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241679 (n + 1) + 4

end

end A241680.P6754618602013377384

namespace A241680

/-- `A241679(n+1)+4` -/
def P6754618602013377384.Spec : Prop :=
  ∀ n, P6754618602013377384.a n = A241680 (n + 1)

end A241680

/-! ## A241680.P10826003179487837955

`A241677(n+1)+6`
-/

namespace A241680.P10826003179487837955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241677 (n + 1) + 6

end

end A241680.P10826003179487837955

namespace A241680

/-- `A241677(n+1)+6` -/
def P10826003179487837955.Spec : Prop :=
  ∀ n, P10826003179487837955.a n = A241680 (n + 1)

end A241680

/-! ## A241680.P10036870630226846898

`A241573(n+1)+8`
-/

namespace A241680.P10036870630226846898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241573 (n + 1) + 8

end

end A241680.P10036870630226846898

namespace A241680

/-- `A241573(n+1)+8` -/
def P10036870630226846898.Spec : Prop :=
  ∀ n, P10036870630226846898.a n = A241680 (n + 1)

end A241680

/-! ## A241680.P13631648749929372449

`2*A229065(n+1)+5`
-/

namespace A241680.P13631648749929372449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A229065 (n + 1) + 5

end

end A241680.P13631648749929372449

namespace A241680

/-- `2*A229065(n+1)+5` -/
def P13631648749929372449.Spec : Prop :=
  ∀ n, P13631648749929372449.a n = A241680 (n + 1)

end A241680

/-! ## A241680.P17893877007035060412

`record[2^A006530(n+2)]+11`
-/

namespace A241680.P17893877007035060412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 11

end

end A241680.P17893877007035060412

namespace A241680

/-- `record[2^A006530(n+2)]+11` -/
def P17893877007035060412.Spec : Prop :=
  ∀ n, P17893877007035060412.a n = (A241680 (n + 1) : ℚ)

end A241680

/-! ## A241680.P12396559618887253259

`record[2^A020639(n+2)+11]`
-/

namespace A241680.P12396559618887253259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A020639 (n + 2) : ℤ) + 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241680.P12396559618887253259

namespace A241680

/-- `record[2^A020639(n+2)+11]` -/
def P12396559618887253259.Spec : Prop :=
  ∀ n, P12396559618887253259.a n = (A241680 (n + 1) : ℚ)

end A241680

/-! ## A241680.P17391816324064485369

`2*record[2^A000010(n+1)+3]+5`
-/

namespace A241680.P17391816324064485369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 5

end

end A241680.P17391816324064485369

namespace A241680

/-- `2*record[2^A000010(n+1)+3]+5` -/
def P17391816324064485369.Spec : Prop :=
  ∀ n, P17391816324064485369.a n = (A241680 (n + 1) : ℚ)

end A241680

/-!
# A241681: Numbers n such that the decimal digits of n are also the prime divisors of n.

The programs for A241681, there is no canonical definition to state claims against.
-/

/-! ## A241681.P8525232466613835487

`A357132(Δ[floor(3/2*a(n-1))])` with `a(0)=4`
-/

namespace A241681.P8525232466613835487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357132 (f1 (n + 1) - f1 n).toNat

end

end A241681.P8525232466613835487

/-!
# A241682: Total number of unit squares appearing in the Thue-Morse sequence logical matrices after n stages.

The programs for A241682, the canonical program `A241682.P11323323633827690027` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241682 has offset 0).

The definition of A241682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241682.P10493869949445867166

`and(-6, A241891(n))`
-/

namespace A241682.P10493869949445867166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-6) (A241891 n)

end

end A241682.P10493869949445867166

namespace A241682

/-- `and(-6, A241891(n))` -/
def P10493869949445867166.Spec : Prop :=
  ∀ n, P10493869949445867166.a n = A241682 n

end A241682

/-! ## A241682.P928237784327667117

`A241891(n)-A176742(n)²`
-/

namespace A241682.P928237784327667117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241891 n - A176742 n ^ 2

end

end A241682.P928237784327667117

namespace A241682

/-- `A241891(n)-A176742(n)²` -/
def P928237784327667117.Spec : Prop :=
  ∀ n, P928237784327667117.a n = A241682 n

theorem P928237784327667117.correct : P928237784327667117.Spec := by
  intro n
  simp only [A241682, Nat.add_sub_cancel, A241682.P928237784327667117.a, A241682.P11323323633827690027.a, A084247, A084247.P3128533902584007237.a, A123344, A123344.P4808185925048640944.a, A167193, A167193.P13646511038953808611.a, A176742, A176742.P13679403702882205445.a, A241891, A241891.P9479106235604816941.a, A167030, A167030.P11582105971661307295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241682

/-! ## A241682.P11323323633827690027

`(A123344(n)-A167193(n))*A084247(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A241682

/-- `(A123344(n)-A167193(n))*A084247(n)` -/
def P11323323633827690027.Spec : Prop :=
  ∀ n, P11323323633827690027.a n = A241682 n

theorem P11323323633827690027.correct : P11323323633827690027.Spec := by
  intro n
  simp only [A241682]

end A241682

/-! ## A241682.P2660543064591682604

`A128209(n)²-A241891(n)`
-/

namespace A241682.P2660543064591682604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n ^ 2 - A241891 n

end

end A241682.P2660543064591682604

namespace A241682

/-- `A128209(n)²-A241891(n)` -/
def P2660543064591682604.Spec : Prop :=
  ∀ n, P2660543064591682604.a n = A241682 n

end A241682

/-! ## A241682.P419011351546289106

`Δ[A241891(n)]-A078008(n)²`
-/

namespace A241682.P419011351546289106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078008 n ^ 2

end

end A241682.P419011351546289106

namespace A241682

/-- `Δ[A241891(n)]-A078008(n)²` -/
def P419011351546289106.Spec : Prop :=
  ∀ n, P419011351546289106.a n = A241682 n

end A241682

/-! ## A241682.P4762406218059497936

`A241685(n)-(A241684(n)+A241683(n))`
-/

namespace A241682.P4762406218059497936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241685 n - (A241684 n + A241683 n)

end

end A241682.P4762406218059497936

namespace A241682

/-- `A241685(n)-(A241684(n)+A241683(n))` -/
def P4762406218059497936.Spec : Prop :=
  ∀ n, P4762406218059497936.a n = A241682 n

end A241682

/-!
# A241683: Total number of 2 X 2 squares appearing in the Thue-Morse sequence logical matrices after n stages.

The programs for A241683, the canonical program `A241683.P1819739658731117607` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241683 has offset 0).

The definition of A241683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241683.P6348019981614829246

`and(-2, A241892(n))`
-/

namespace A241683.P6348019981614829246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A241892 n)

end

end A241683.P6348019981614829246

namespace A241683

/-- `and(-2, A241892(n))` -/
def P6348019981614829246.Spec : Prop :=
  ∀ n, P6348019981614829246.a n = A241683 n

end A241683

/-! ## A241683.P5205312801127407675

`A241892(n)-Δ[A065033(n)]`
-/

namespace A241683.P5205312801127407675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241892 n - (f1 (n + 1) - f1 n)

end

end A241683.P5205312801127407675

namespace A241683

/-- `A241892(n)-Δ[A065033(n)]` -/
def P5205312801127407675.Spec : Prop :=
  ∀ n, P5205312801127407675.a n = A241683 n

end A241683

/-! ## A241683.P12497837548375312366

`A241892(n)-char[A028326(n)]`
-/

namespace A241683.P12497837548375312366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241892 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A241683.P12497837548375312366

namespace A241683

/-- `A241892(n)-char[A028326(n)]` -/
def P12497837548375312366.Spec : Prop :=
  ∀ n, P12497837548375312366.a n = A241683 n

end A241683

/-! ## A241683.P9006154892592793470

`A241892(n)-char[A053641(n+1)+1]`
-/

namespace A241683.P9006154892592793470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053641 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241892 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A241683.P9006154892592793470

namespace A241683

/-- `A241892(n)-char[A053641(n+1)+1]` -/
def P9006154892592793470.Spec : Prop :=
  ∀ n, P9006154892592793470.a n = A241683 n

end A241683

/-! ## A241683.P1819739658731117607

`A001045(floor(n²/(n+1)))*A167030(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241683

/-- `A001045(floor(n²/(n+1)))*A167030(n)` -/
def P1819739658731117607.Spec : Prop :=
  ∀ n, P1819739658731117607.a n = A241683 n

theorem P1819739658731117607.correct : P1819739658731117607.Spec := by
  intro n
  simp only [A241683]

end A241683

/-! ## A241683.P15163733738574298338

`floor(floor(2^n/3)²/2)`
-/

namespace A241683.P15163733738574298338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(2 ^ n : ℚ) / 3⌋ ^ 2 : ℚ) / 2⌋

end

end A241683.P15163733738574298338

namespace A241683

/-- `floor(floor(2^n/3)²/2)` -/
def P15163733738574298338.Spec : Prop :=
  ∀ n, P15163733738574298338.a n = A241683 n

end A241683

/-! ## A241683.P3948468175752441461

`A241685(n)-(A241684(n)+A241682(n))`
-/

namespace A241683.P3948468175752441461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241685 n - (A241684 n + A241682 n)

end

end A241683.P3948468175752441461

namespace A241683

/-- `A241685(n)-(A241684(n)+A241682(n))` -/
def P3948468175752441461.Spec : Prop :=
  ∀ n, P3948468175752441461.a n = A241683 n

end A241683

/-! ## A241683.P16359085466142793573

`and(A241892(n), A267851(n))`
-/

namespace A241683.P16359085466142793573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A241892 n) (A267851 n)

end

end A241683.P16359085466142793573

namespace A241683

/-- `and(A241892(n), A267851(n))` -/
def P16359085466142793573.Spec : Prop :=
  ∀ n, P16359085466142793573.a n = A241683 n

end A241683

/-!
# A241684: The total number of rectangles appearing in the Thue-Morse sequence logical matrices after n stages.

The programs for A241684, the canonical program `A241684.P6345737068075447725` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241684 has offset 0).

The definition of A241684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241684.P6345737068075447725

`4*round((A005578(n+1)/4)²)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241684

/-- `4*round((A005578(n+1)/4)²)` -/
def P6345737068075447725.Spec : Prop :=
  ∀ n, P6345737068075447725.a n = A241684 n

theorem P6345737068075447725.correct : P6345737068075447725.Spec := by
  intro n
  simp only [A241684]

end A241684

/-! ## A241684.P13844899213942997859

`A241891(n)+A241892(n)-A000034(n)`
-/

namespace A241684.P13844899213942997859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241891 n + (A241892 n - A000034 n)

end

end A241684.P13844899213942997859

namespace A241684

/-- `A241891(n)+A241892(n)-A000034(n)` -/
def P13844899213942997859.Spec : Prop :=
  ∀ n, P13844899213942997859.a n = A241684 n

end A241684

/-! ## A241684.P7162617936022087345

`A241685(n)-(A241683(n)+A241682(n))`
-/

namespace A241684.P7162617936022087345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241685 n - (A241683 n + A241682 n)

end

end A241684.P7162617936022087345

namespace A241684

/-- `A241685(n)-(A241683(n)+A241682(n))` -/
def P7162617936022087345.Spec : Prop :=
  ∀ n, P7162617936022087345.a n = A241684 n

end A241684

/-! ## A241684.P405005844334488553

`A280193(n)+A005578(n)*A167167(n)`
-/

namespace A241684.P405005844334488553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + A005578 n * A167167 n

end

end A241684.P405005844334488553

namespace A241684

/-- `A280193(n)+A005578(n)*A167167(n)` -/
def P405005844334488553.Spec : Prop :=
  ∀ n, P405005844334488553.a n = A241684 n

end A241684

/-! ## A241684.P1139495943443181518

`A241891(n)+A241892(n)-∑[A165326(n)]`
-/

namespace A241684.P1139495943443181518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241891 n + (A241892 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241684.P1139495943443181518

namespace A241684

/-- `A241891(n)+A241892(n)-∑[A165326(n)]` -/
def P1139495943443181518.Spec : Prop :=
  ∀ n, P1139495943443181518.a n = A241684 n

end A241684

/-!
# A241685: The total number of squares and rectangles appearing in the Thue-Morse sequence logical matrices after n stages.

The programs for A241685, the canonical program `A241685.P11272304412138447609` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241685 has offset 0).

The definition of A241685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241685.P11272304412138447609

`floor((2^(n+2)+3-(-1)^n)²/72)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241685

/-- `floor((2^(n+2)+3-(-1)^n)²/72)` -/
def P11272304412138447609.Spec : Prop :=
  ∀ n, P11272304412138447609.a n = A241685 n

theorem P11272304412138447609.correct : P11272304412138447609.Spec := by
  intro n
  simp only [A241685]

end A241685

/-! ## A241685.P1990602902484215484

`A007590(A005578(n+1))`
-/

namespace A241685.P1990602902484215484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A005578 (n + 1)).toNat

end

end A241685.P1990602902484215484

namespace A241685

/-- `A007590(A005578(n+1))` -/
def P1990602902484215484.Spec : Prop :=
  ∀ n, P1990602902484215484.a n = A241685 n

end A241685

/-! ## A241685.P16243390112019526323

`and(-2, A241894(n))`
-/

namespace A241685.P16243390112019526323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A241894 n)

end

end A241685.P16243390112019526323

namespace A241685

/-- `and(-2, A241894(n))` -/
def P16243390112019526323.Spec : Prop :=
  ∀ n, P16243390112019526323.a n = A241685 n

end A241685

/-! ## A241685.P1771072425052399426

`round(∑[A003683(n)]+2^n/3)`
-/

namespace A241685.P1771072425052399426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (2 ^ n : ℚ) / 3)

end

end A241685.P1771072425052399426

namespace A241685

/-- `round(∑[A003683(n)]+2^n/3)` -/
def P1771072425052399426.Spec : Prop :=
  ∀ n, P1771072425052399426.a n = A241685 n

end A241685

/-! ## A241685.P15593972090509867434

`(abs(∑[(-2)^n])+1)*A001045(n)`
-/

namespace A241685.P15593972090509867434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|∑ j ∈ Finset.range (n + 1), f1 j| + 1) * A001045 n

end

end A241685.P15593972090509867434

namespace A241685

/-- `(abs(∑[(-2)^n])+1)*A001045(n)` -/
def P15593972090509867434.Spec : Prop :=
  ∀ n, P15593972090509867434.a n = A241685 n

end A241685

/-! ## A241685.P8402666954400442223

`A084175(n)+A001045(n)`
-/

namespace A241685.P8402666954400442223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + A001045 n

end

end A241685.P8402666954400442223

namespace A241685

/-- `A084175(n)+A001045(n)` -/
def P8402666954400442223.Spec : Prop :=
  ∀ n, P8402666954400442223.a n = A241685 n

end A241685

/-! ## A241685.P13617570187090639570

`A241894(n)-A059841(n)`
-/

namespace A241685.P13617570187090639570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241894 n - A059841 n

end

end A241685.P13617570187090639570

namespace A241685

/-- `A241894(n)-A059841(n)` -/
def P13617570187090639570.Spec : Prop :=
  ∀ n, P13617570187090639570.a n = A241685 n

end A241685

/-! ## A241685.P15702712180817288330

`A005578(n)*A014113(n)`
-/

namespace A241685.P15702712180817288330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n * A014113 n

end

end A241685.P15702712180817288330

namespace A241685

/-- `A005578(n)*A014113(n)` -/
def P15702712180817288330.Spec : Prop :=
  ∀ n, P15702712180817288330.a n = A241685 n

end A241685

/-! ## A241685.P11516709504846992914

`A001045(n)*A052953(n)`
-/

namespace A241685.P11516709504846992914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A052953 n

end

end A241685.P11516709504846992914

namespace A241685

/-- `A001045(n)*A052953(n)` -/
def P11516709504846992914.Spec : Prop :=
  ∀ n, P11516709504846992914.a n = A241685 n

end A241685

/-! ## A241685.P285633139294898940

`A001045(n)*A135231(n)`
-/

namespace A241685.P285633139294898940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A135231 n

end

end A241685.P285633139294898940

namespace A241685

/-- `A001045(n)*A135231(n)` -/
def P285633139294898940.Spec : Prop :=
  ∀ n, P285633139294898940.a n = A241685 n

end A241685

/-! ## A241685.P11189387396775262382

`A001045(n)+∑[A003683(n)]`
-/

namespace A241685.P11189387396775262382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241685.P11189387396775262382

namespace A241685

/-- `A001045(n)+∑[A003683(n)]` -/
def P11189387396775262382.Spec : Prop :=
  ∀ n, P11189387396775262382.a n = A241685 n

end A241685

/-! ## A241685.P10153617811977412968

`A084152(n+1)+A001045(n)`
-/

namespace A241685.P10153617811977412968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 (n + 1) + A001045 n

end

end A241685.P10153617811977412968

namespace A241685

/-- `A084152(n+1)+A001045(n)` -/
def P10153617811977412968.Spec : Prop :=
  ∀ n, P10153617811977412968.a n = A241685 n

end A241685

/-! ## A241685.P1141130156958120676

`A241892(n+1)+A000975(n)`
-/

namespace A241685.P1141130156958120676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241892 (n + 1) + A000975 n

end

end A241685.P1141130156958120676

namespace A241685

/-- `A241892(n+1)+A000975(n)` -/
def P1141130156958120676.Spec : Prop :=
  ∀ n, P1141130156958120676.a n = A241685 n

end A241685

/-! ## A241685.P16083767687183822449

`A078008(n+1)*A005578(n)`
-/

namespace A241685.P16083767687183822449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) * A005578 n

end

end A241685.P16083767687183822449

namespace A241685

/-- `A078008(n+1)*A005578(n)` -/
def P16083767687183822449.Spec : Prop :=
  ∀ n, P16083767687183822449.a n = A241685 n

end A241685

/-! ## A241685.P9082964052565993957

`A001045(n)*A128209(n+1)`
-/

namespace A241685.P9082964052565993957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A128209 (n + 1)

end

end A241685.P9082964052565993957

namespace A241685

/-- `A001045(n)*A128209(n+1)` -/
def P9082964052565993957.Spec : Prop :=
  ∀ n, P9082964052565993957.a n = A241685 n

end A241685

/-! ## A241685.P18023093430212847113

`(A167030(n)+1)*A052953(n)`
-/

namespace A241685.P18023093430212847113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167030 n + 1) * A052953 n

end

end A241685.P18023093430212847113

namespace A241685

/-- `(A167030(n)+1)*A052953(n)` -/
def P18023093430212847113.Spec : Prop :=
  ∀ n, P18023093430212847113.a n = A241685 n

end A241685

/-! ## A241685.P657125819614129592

`A138477(2*n)+A001045(n)`
-/

namespace A241685.P657125819614129592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (2 * n) + A001045 n

end

end A241685.P657125819614129592

namespace A241685

/-- `A138477(2*n)+A001045(n)` -/
def P657125819614129592.Spec : Prop :=
  ∀ n, P657125819614129592.a n = A241685 n

end A241685

/-! ## A241685.P992302704694924917

`A138495(2*n)+A001045(n)`
-/

namespace A241685.P992302704694924917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (2 * n) + A001045 n

end

end A241685.P992302704694924917

namespace A241685

/-- `A138495(2*n)+A001045(n)` -/
def P992302704694924917.Spec : Prop :=
  ∀ n, P992302704694924917.a n = A241685 n

end A241685

/-! ## A241685.P17833568955249830852

`(A128209(n)-1)*A052953(n)`
-/

namespace A241685.P17833568955249830852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128209 n - 1) * A052953 n

end

end A241685.P17833568955249830852

namespace A241685

/-- `(A128209(n)-1)*A052953(n)` -/
def P17833568955249830852.Spec : Prop :=
  ∀ n, P17833568955249830852.a n = A241685 n

end A241685

/-! ## A241685.P3093236917455242603

`(A277955(n)-1)*A005578(n)`
-/

namespace A241685.P3093236917455242603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277955 n - 1) * A005578 n

end

end A241685.P3093236917455242603

namespace A241685

/-- `(A277955(n)-1)*A005578(n)` -/
def P3093236917455242603.Spec : Prop :=
  ∀ n, P3093236917455242603.a n = A241685 n

end A241685

/-!
# A241686: a(1)=1, a(2)=2, a(3)=3; for n>=4, a(n) = n - A082467(n).

The programs for A241686, there is no canonical definition to state claims against.
-/

/-! ## A241686.P18156489541702659504

`1-A138567(A171526(n+1))+n`
-/

namespace A241686.P18156489541702659504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138567 (A171526 (n + 1)).toNat + (n : ℤ)

end

end A241686.P18156489541702659504

/-! ## A241686.P7292044455443454846

`n+1-A138567(n+1)%A011782(n)`
-/

namespace A241686.P7292044455443454846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A138567 (n + 1)) (A011782 n)

end

end A241686.P7292044455443454846

/-! ## A241686.P12905139781835888940

`n-A023443(A138567(n+1)%A011782(n))`
-/

namespace A241686.P12905139781835888940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (Int.tmod (A138567 (n + 1)) (A011782 n)).toNat

end

end A241686.P12905139781835888940

/-! ## A241686.P1445555366448155142

`A057428(n)*A138567(A171526(n+1))+n+1`
-/

namespace A241686.P1445555366448155142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A138567 (A171526 (n + 1)).toNat + (n + 1 : ℤ)

end

end A241686.P1445555366448155142

/-!
# A241687: Numbers k such that A035014(k) begins with a 3.

The programs for A241687, there is no canonical definition to state claims against.
-/

/-! ## A241687.P12317544900805475958

`eq[3, A023402(n+1)]+1`
-/

namespace A241687.P12317544900805475958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241687.P12317544900805475958

/-! ## A241687.P4069628437675804186

`eq[3, A023402(A000007(n)+n)]`
-/

namespace A241687.P4069628437675804186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241687.P4069628437675804186

/-! ## A241687.P15260994159214389219

`record[A008486(n+3)/A023402(n+3)]`
-/

namespace A241687.P15260994159214389219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (n + 3) : ℚ) / (A023402 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241687.P15260994159214389219

/-! ## A241687.P16210306790966079627

`eq[3, A023402(A065033(2*n))]`
-/

namespace A241687.P16210306790966079627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241687.P16210306790966079627

/-! ## A241687.P13739346295604556562

`eq[3, A023402(A233583(n+1))]`
-/

namespace A241687.P13739346295604556562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241687.P13739346295604556562

/-! ## A241687.P7999584188408401909

`eq[A157532(n+1)!, A023408(A233583(n+1))]`
-/

namespace A241687.P7999584188408401909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A157532 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023408 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241687.P7999584188408401909

/-!
# A241688: Number of Sidon subsets of {1,...,n} of size 4.

The programs for A241688, the canonical program `A241688.P16119182718281067787` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241688 has offset 1).

The definition of A241688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241688.P8094497870382895158

`∑[∑[A325686(n)]]`
-/

namespace A241688.P8094497870382895158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325686 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241688.P8094497870382895158

namespace A241688

/-- `∑[∑[A325686(n)]]` -/
def P8094497870382895158.Spec : Prop :=
  ∀ n, P8094497870382895158.a n = A241688 (n + 1)

end A241688

/-! ## A241688.P16119182718281067787

`∑[2*A213494(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241688

/-- `∑[2*A213494(n)]` -/
def P16119182718281067787.Spec : Prop :=
  ∀ n, P16119182718281067787.a n = A241688 (n + 1)

theorem P16119182718281067787.correct : P16119182718281067787.Spec := by
  intro n
  simp only [A241688, Nat.add_sub_cancel]

end A241688

/-! ## A241688.P3218621498072338309

`∑[A213493(n)/6]`
-/

namespace A241688.P3218621498072338309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213493 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241688.P3218621498072338309

namespace A241688

/-- `∑[A213493(n)/6]` -/
def P3218621498072338309.Spec : Prop :=
  ∀ n, P3218621498072338309.a n = (A241688 (n + 1) : ℚ)

end A241688

/-! ## A241688.P1488513102008032082

`∑[A213494(A028310(n))+A213494(n)]`
-/

namespace A241688.P1488513102008032082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213494 (A028310 n).toNat + A213494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241688.P1488513102008032082

namespace A241688

/-- `∑[A213494(A028310(n))+A213494(n)]` -/
def P1488513102008032082.Spec : Prop :=
  ∀ n, P1488513102008032082.a n = A241688 (n + 1)

end A241688

/-! ## A241688.P1883078545175934291

`∑[A005843(A213494(n))]`
-/

namespace A241688.P1883078545175934291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213494 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241688.P1883078545175934291

namespace A241688

/-- `∑[A005843(A213494(n))]` -/
def P1883078545175934291.Spec : Prop :=
  ∀ n, P1883078545175934291.a n = A241688 (n + 1)

end A241688

/-!
# A241689: Number of Sidon subsets of {1,...,n} of size 5.

The programs for A241689, there is no canonical definition to state claims against.
-/

/-! ## A241689.P7627642953842430905

`A103296(n)%(floor(C(n, 9)/9)+1)`
-/

namespace A241689.P7627642953842430905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103296 n) (⌊(Nat.choose n 9 : ℚ) / 9⌋ + 1)

end

end A241689.P7627642953842430905

/-! ## A241689.P5594390490779362192

`A000196(5*A217155(2*(n+1)))`
-/

namespace A241689.P5594390490779362192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (5 * A217155 (2 * (n + 1))).toNat

end

end A241689.P5594390490779362192

/-! ## A241689.P431892015405258547

`A083856(n)*A141470(A348290(n))`
-/

namespace A241689.P431892015405258547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 n * A141470 (A348290 n).toNat

end

end A241689.P431892015405258547

/-! ## A241689.P8716413162182391965

`A017805(n)%A051889(A306860(n))`
-/

namespace A241689.P8716413162182391965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017805 n) (A051889 (A306860 n).toNat)

end

end A241689.P8716413162182391965

/-! ## A241689.P6731716594585656676

`A340479(A000079(n))%A212389(n)`
-/

namespace A241689.P6731716594585656676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340479 (A000079 n).toNat) (A212389 n)

end

end A241689.P6731716594585656676

/-!
# A241690: Number of Sidon subsets of {1,...,n} of size 6.

The programs for A241690, there is no canonical definition to state claims against.
-/

/-! ## A241690.P13908442552047085232

`8*A025427(A288324(n))`
-/

namespace A241690.P13908442552047085232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A025427 (A288324 n).toNat

end

end A241690.P13908442552047085232

/-! ## A241690.P14591209632487766221

`8*A284978(A322798(n))`
-/

namespace A241690.P14591209632487766221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A284978 (A322798 n).toNat

end

end A241690.P14591209632487766221

/-! ## A241690.P13566694460401846324

`and((n+12)*A178721(n+1), A086810(n))`
-/

namespace A241690.P13566694460401846324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 12 : ℤ) * A178721 (n + 1)) (A086810 n)

end

end A241690.P13566694460401846324

/-! ## A241690.P10194487918174655540

`and(A086810(n), A283985(A185036(n)))`
-/

namespace A241690.P10194487918174655540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086810 n) (A283985 (A185036 n).toNat)

end

end A241690.P10194487918174655540

/-! ## A241690.P13301051320475217235

`and(A033950(2*(n+1)), A275494(A005709(n)))`
-/

namespace A241690.P13301051320475217235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033950 (2 * (n + 1))) (A275494 (A005709 n).toNat)

end

end A241690.P13301051320475217235

/-!
# A241691: Number of Carlitz compositions of n with exactly one descent.

The programs for A241691, there is no canonical definition to state claims against.
-/

/-! ## A241691.P13856674742580989537

`A022567(n+3)-A036469(n+3)`
-/

namespace A241691.P13856674742580989537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 (n + 3) - A036469 (n + 3)

end

end A241691.P13856674742580989537

/-! ## A241691.P4625559218200655076

`record[A241701(A008620(A000217(n)))]`
-/

namespace A241691.P4625559218200655076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241701 (A008620 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241691.P4625559218200655076

/-! ## A241691.P15720939999041616492

`record[A241701(A008620(A161680(n)))]`
-/

namespace A241691.P15720939999041616492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241701 (A008620 (A161680 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241691.P15720939999041616492

/-! ## A241691.P13228783177252183144

`record[A241701(A002264(A167614(n+1)))]`
-/

namespace A241691.P13228783177252183144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241701 (A002264 (A167614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241691.P13228783177252183144

/-!
# A241692: Number of Carlitz compositions of n with exactly two descents.

The programs for A241692, there is no canonical definition to state claims against.
-/

/-! ## A241692.P3025116920542619838

`A001462(A246584(2*n+1))-A212999(n)`
-/

namespace A241692.P3025116920542619838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A246584 (2 * n + 1)).toNat - A212999 n

end

end A241692.P3025116920542619838

/-! ## A241692.P3624222920282223716

`A001462(A246584(2*n+1))-A213000(n)`
-/

namespace A241692.P3624222920282223716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A246584 (2 * n + 1)).toNat - A213000 n

end

end A241692.P3624222920282223716

/-! ## A241692.P6218563423587672364

`A000041(2*n+3)-A374740(A007091(3*n+2))`
-/

namespace A241692.P6218563423587672364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 3) - A374740 (A007091 (3 * n + 2)).toNat

end

end A241692.P6218563423587672364

/-!
# A241693: Number of Carlitz compositions of n with exactly three descents.

The programs for A241693, there is no canonical definition to state claims against.
-/

/-! ## A241693.P915175963842105277

`or(A056172(A200766(n+1)), A278818(n))`
-/

namespace A241693.P915175963842105277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056172 (A200766 (n + 1)).toNat) (A278818 n)

end

end A241693.P915175963842105277

/-! ## A241693.P8054991906941160423

`or(A056172(A200766(n+1)), A351808(n+1))`
-/

namespace A241693.P8054991906941160423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056172 (A200766 (n + 1)).toNat) (A351808 (n + 1))

end

end A241693.P8054991906941160423

/-!
# A241694: Number of Carlitz compositions of n with exactly four descents.

The programs for A241694, there is no canonical definition to state claims against.
-/

/-! ## A241694.P6903333537771711158

`(n+1)*A332246(A061675(n+2))`
-/

namespace A241694.P6903333537771711158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A332246 (A061675 (n + 2)).toNat

end

end A241694.P6903333537771711158

