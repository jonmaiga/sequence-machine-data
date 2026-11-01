import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
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
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
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

/-!
# A393000: Number of free polyquarcs with n cells, with cusp connections allowed.

The programs for A393000, there is no canonical definition to state claims against.
-/

/-! ## A393000.P6880585787240956643

`xor(A102584(A000110(n)), A323260(n))`
-/

namespace A393000.P6880585787240956643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102584 (A000110 n).toNat) (A323260 n)

end

end A393000.P6880585787240956643

/-! ## A393000.P878289659831717018

`A197960(n+1)-A001878(A198005(n+1))`
-/

namespace A393000.P878289659831717018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197960 (n + 1) - A001878 (A198005 (n + 1)).toNat

end

end A393000.P878289659831717018

/-!
# A393001: Number of one-sided polyquarcs with n cells, with cusp connections allowed.

The programs for A393001, there is no canonical definition to state claims against.
-/

/-! ## A393001.P16255868000905256120

`A376189(A149407(n+1))`
-/

namespace A393001.P16255868000905256120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376189 (A149407 (n + 1)).toNat

end

end A393001.P16255868000905256120

/-! ## A393001.P13212993658436516390

`or(A212086(n+1), A382877(A160805(n)))`
-/

namespace A393001.P13212993658436516390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A212086 (n + 1)) (A382877 (A160805 n).toNat)

end

end A393001.P13212993658436516390

/-!
# A393002: Number of fixed polyquarcs with n cells, with cusp connections allowed.

The programs for A393002, there is no canonical definition to state claims against.
-/

/-! ## A393002.P16628759677421071234

`2*A096267(1+n)`
-/

namespace A393002.P16628759677421071234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096267 (1 + n)

end

end A393002.P16628759677421071234

/-! ## A393002.P1172741495137260926

`2*A385581(∑[n+2])`
-/

namespace A393002.P1172741495137260926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A385581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393002.P1172741495137260926

/-! ## A393002.P18336650087828112251

`A096267(n+1)+A096267(1+n)`
-/

namespace A393002.P18336650087828112251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096267 (n + 1) + A096267 (1 + n)

end

end A393002.P18336650087828112251

/-!
# A393003: Expansion of e.g.f. (1/x) * Series_Reversion( x/(exp(x) + x^3) ).

The programs for A393003, the canonical program `A393003.P8008088558791318881` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393003 has offset 0).

The definition of A393003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393003.P8008088558791318881

`n!*∑{#}[floor(n/3), (n-#+1)^(n-3*#-1)*C(n, #)/(n-3*#)!]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393003

/-- `n!*∑{#}[floor(n/3), (n-#+1)^(n-3*#-1)*C(n, #)/(n-3*#)!]` -/
def P8008088558791318881.Spec : Prop :=
  ∀ n, P8008088558791318881.a n = (A393003 n : ℚ)

end A393003

/-!
# A393004: Number of one-sided polyjogs with n cells.

The programs for A393004, there is no canonical definition to state claims against.
-/

/-! ## A393004.P1546415609499885543

`A158008(A118041(n))`
-/

namespace A393004.P1546415609499885543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158008 (A118041 n).toNat

end

end A393004.P1546415609499885543

/-!
# A393005: Number of fixed polyjogs with n cells.

The programs for A393005, there is no canonical definition to state claims against.
-/

/-! ## A393005.P6001827531590941356

`A352226(A116406(2*n)²)+1`
-/

namespace A393005.P6001827531590941356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A116406 (2 * n) ^ 2).toNat + 1

end

end A393005.P6001827531590941356

/-!
# A393006: The number of positive integers below the (n+1)-st primorial number that are the product of exactly n distinct primes.

The programs for A393006, there is no canonical definition to state claims against.
-/

/-! ## A393006.P2479782818556066886

`A292922(A134189(n+1))`
-/

namespace A393006.P2479782818556066886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292922 (A134189 (n + 1)).toNat

end

end A393006.P2479782818556066886

/-! ## A393006.P3638204697813016840

`A292922(A212342(n+1))`
-/

namespace A393006.P3638204697813016840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292922 (A212342 (n + 1)).toNat

end

end A393006.P3638204697813016840

/-! ## A393006.P17820089850257880248

`A292922(A048093(n+2))`
-/

namespace A393006.P17820089850257880248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292922 (A048093 (n + 2)).toNat

end

end A393006.P17820089850257880248

/-!
# A393007: The number of positive integers below the smallest number with exactly 2^(n+1) divisors that are the product of exactly n distinct Fermi-Dirac primes.

The programs for A393007, there is no canonical definition to state claims against.
-/

/-! ## A393007.P6836534069476939045

`A191845(A304792(n+1))`
-/

namespace A393007.P6836534069476939045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191845 (A304792 (n + 1)).toNat

end

end A393007.P6836534069476939045

/-! ## A393007.P12207430785733067531

`∑[A169866(∑[A213411(n)])]`
-/

namespace A393007.P12207430785733067531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169866 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393007.P12207430785733067531

/-!
# A393011: a(n) = (7*n)!/((5*n)!*(2*n)!).

The programs for A393011, the canonical program `A393011.P16048391216167990832` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393011 has offset 0).

The definition of A393011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393011.P16048391216167990832

`C(7*n, 2*n)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393011

/-- `C(7*n, 2*n)` -/
def P16048391216167990832.Spec : Prop :=
  ∀ n, (P16048391216167990832.a n : ℤ) = A393011 n

theorem P16048391216167990832.correct : P16048391216167990832.Spec := by
  intro n
  simp only [A393011]

end A393011

/-! ## A393011.P18357634051731380231

`A004355(n)/A000984(n)*A004368(n)`
-/

namespace A393011.P18357634051731380231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004355 n : ℚ) / (A000984 n : ℚ) * (A004368 n : ℚ)

end

end A393011.P18357634051731380231

namespace A393011

/-- `A004355(n)/A000984(n)*A004368(n)` -/
def P18357634051731380231.Spec : Prop :=
  ∀ n, P18357634051731380231.a n = (A393011 n : ℚ)

end A393011

/-! ## A393011.P2052319681076000122

`record[C(A195159(n), n)]`
-/

namespace A393011.P2052319681076000122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A195159 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393011.P2052319681076000122

namespace A393011

/-- `record[C(A195159(n), n)]` -/
def P2052319681076000122.Spec : Prop :=
  ∀ n, (P2052319681076000122.a n : ℤ) = A393011 n

end A393011

/-! ## A393011.P5367642699938288537

`A159965(A062725(n))`
-/

namespace A393011.P5367642699938288537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A062725 n).toNat

end

end A393011.P5367642699938288537

namespace A393011

/-- `A159965(A062725(n))` -/
def P5367642699938288537.Spec : Prop :=
  ∀ n, P5367642699938288537.a n = A393011 n

end A393011

/-! ## A393011.P16732080334501746238

`A193635(A062728(n))`
-/

namespace A393011.P16732080334501746238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A062728 n).toNat

end

end A393011.P16732080334501746238

namespace A393011

/-- `A193635(A062728(n))` -/
def P16732080334501746238.Spec : Prop :=
  ∀ n, P16732080334501746238.a n = A393011 n

end A393011

/-!
# A393012: List giving least 5-rough number (A007310) of each prime signature.

The programs for A393012, there is no canonical definition to state claims against.
-/

/-! ## A393012.P1935066094573766842

`A003961(A131801(n)%A280546(n+1))`
-/

namespace A393012.P1935066094573766842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A131801 n) (A280546 (n + 1))).toNat

end

end A393012.P1935066094573766842

/-! ## A393012.P3299312569904032779

`A003961(A131801(n)%A277260(n+1))`
-/

namespace A393012.P3299312569904032779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A131801 n) (A277260 (n + 1))).toNat

end

end A393012.P3299312569904032779

/-!
# A393014: Primes that are palindromic in both base 2 and base 9.

The programs for A393014, there is no canonical definition to state claims against.
-/

/-! ## A393014.P2224825371662723118

`∩[A016041(n+1), A029977(n+1)]`
-/

namespace A393014.P2224825371662723118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393014.P2224825371662723118

/-! ## A393014.P4401225348300490251

`∩[A255161(n+1), A259385(n+1)]`
-/

namespace A393014.P4401225348300490251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393014.P4401225348300490251

/-!
# A393015: Palindromic canyon numbers.

The programs for A393015, there is no canonical definition to state claims against.
-/

/-! ## A393015.P10729688103006668201

`∩[A002113(n+1), A183086(n+1)]`
-/

namespace A393015.P10729688103006668201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P10729688103006668201

/-! ## A393015.P8541532348542583562

`∩[A050783(n+1), A183086(n+1)]`
-/

namespace A393015.P8541532348542583562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P8541532348542583562

/-! ## A393015.P3637999989353789929

`∩[A056525(n+1), A183086(n+1)]`
-/

namespace A393015.P3637999989353789929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P3637999989353789929

/-! ## A393015.P2432244022689710555

`∩[A061917(n+1), A183086(n+1)]`
-/

namespace A393015.P2432244022689710555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P2432244022689710555

/-! ## A393015.P14527462383593226134

`∩[A062697(n+1), A183086(n+1)]`
-/

namespace A393015.P14527462383593226134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P14527462383593226134

/-! ## A393015.P2651048375390638674

`∩[A083158(n+1), A183086(n+1)]`
-/

namespace A393015.P2651048375390638674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P2651048375390638674

/-! ## A393015.P7443945995804142783

`∩[A088882(n+1), A183086(n+1)]`
-/

namespace A393015.P7443945995804142783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P7443945995804142783

/-! ## A393015.P8990117591001103469

`∩[A110785(n+1), A183086(n+1)]`
-/

namespace A393015.P8990117591001103469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P8990117591001103469

/-! ## A393015.P13408524351163824098

`∩[A110785(n+1), A297147(n+1)]`
-/

namespace A393015.P13408524351163824098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393015.P13408524351163824098

/-!
# A393022: List points (x,y,z) having integer coordinates, sorted first by L = |x| + |y| + |z| and in case of ties, then by z and last by polar angle 0 <= phi < 2*Pi in a polar coordinate system. Sequence gives y-coordinates.

The programs for A393022, there is no canonical definition to state claims against.
-/

/-! ## A393022.P14979391523981207998

`A350950(A315822(n+1))`
-/

namespace A393022.P14979391523981207998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A315822 (n + 1)).toNat

end

end A393022.P14979391523981207998

/-! ## A393022.P15376772295672836032

`A361017(A165822(n+1)*A253249(n+2))`
-/

namespace A393022.P15376772295672836032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361017 (A165822 (n + 1) * A253249 (n + 2)).toNat

end

end A393022.P15376772295672836032

/-!
# A393025: Numbers that can be written as s_1^x_1 + s_2^x_2, with 0 < s_1 < s_2 and x_1 > x_2 > 1, with the restriction that if s_1 = 1 then x_1 is the least possible.

The programs for A393025, there is no canonical definition to state claims against.
-/

/-! ## A393025.P13611656249198550653

`lt[A335452(n+1), A044938(A125766(2*n+3))+1]+2`
-/

namespace A393025.P13611656249198550653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044938 (A125766 (2 * n + 3)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A393025.P13611656249198550653

/-!
# A393027: Minimum number of addends needed to represent numbers in A393024.

The programs for A393027, there is no canonical definition to state claims against.
-/

/-! ## A393027.P6538005226063529894

`gcd(A323453(A163356(n)), A397589(n))`
-/

namespace A393027.P6538005226063529894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323453 (A163356 n).toNat) (A397589 n)

end

end A393027.P6538005226063529894

/-! ## A393027.P10150312856796809185

`gcd(A296868(n+1), A333218(3*(n+1)))`
-/

namespace A393027.P10150312856796809185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296868 (n + 1)) (A333218 (3 * (n + 1)))

end

end A393027.P10150312856796809185

/-! ## A393027.P395883114641992891

`A001221(A376630(n)+A050226(n+1))`
-/

namespace A393027.P395883114641992891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A376630 n + A050226 (n + 1)).toNat

end

end A393027.P395883114641992891

/-! ## A393027.P11192707707391029172

`A020639(gcd(A103465(n+1), A305752(n)))`
-/

namespace A393027.P11192707707391029172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A103465 (n + 1)) (A305752 n))

end

end A393027.P11192707707391029172

/-! ## A393027.P8263185843613454442

`gcd(A020639(A305752(n)), A296868(n+1))`
-/

namespace A393027.P8263185843613454442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A305752 n).toNat) (A296868 (n + 1))

end

end A393027.P8263185843613454442

/-!
# A393029: Numbers that can be written in exactly two ways as s_1^x_1 + ... + s_t^x_t, with 0 < s_1 < ... < s_t and x_1 > ... > x_t > 1 for some t > 0, with the restriction that if s_1 = 1 then x_1 is the least possible.

The programs for A393029, there is no canonical definition to state claims against.
-/

/-! ## A393029.P13071510628156957688

`A393024(eq[2, A393034(n+1)]+1)`
-/

namespace A393029.P13071510628156957688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A393029.P13071510628156957688

/-!
# A393030: Numbers that can be written in exactly three ways as s_1^x_1 + ... + s_t^x_t, with 0 < s_1 < ... < s_t and x_1 > ... > x_t > 1 for some t > 0, with the restriction that if s_1 = 1 then x_1 is the least possible.

The programs for A393030, there is no canonical definition to state claims against.
-/

/-! ## A393030.P16693153246495802908

`A393024(eq[3, A393034(n+1)]+1)`
-/

namespace A393030.P16693153246495802908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A393030.P16693153246495802908

/-!
# A393031: Numbers that can be written in exactly four ways as s_1^x_1 + ... + s_t^x_t, with 0 < s_1 < ... < s_t and x_1 > ... > x_t > 1 for some t > 0, with the restriction that if s_1 = 1 then x_1 is the least possible.

The programs for A393031, there is no canonical definition to state claims against.
-/

/-! ## A393031.P11092835247860865230

`A393024(eq[4, A393034(n+1)]+1)`
-/

namespace A393031.P11092835247860865230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A393031.P11092835247860865230

/-!
# A393033: a(n) = min{k | k can be represented in n different ways as s_1^x_1 + ... + s_t^x_t, with 0 < s_1 < ... < s_t and x_1 > ... > x_t > 1 for some t > 0, with the restriction that if s_1 = 1 then x_1 is the least possible}.

The programs for A393033, there is no canonical definition to state claims against.
-/

/-! ## A393033.P12004776204477903120

`A123291(A031160(n+1))`
-/

namespace A393033.P12004776204477903120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123291 (A031160 (n + 1)).toNat

end

end A393033.P12004776204477903120

/-!
# A393034: a(n) is the number of possible ways in which the n-th number in A393024 can be represented as s_1^x_1 + ... + s_t^x_t, with 0 < s_1 < ... < s_t and x_1 > ... > x_t > 1 for some t > 0, with the restriction that if s_1 = 1 then x_1 is the least possible.

The programs for A393034, there is no canonical definition to state claims against.
-/

/-! ## A393034.P1227366613960405856

`A333381(A056230(n+1)-A000720(n+1))`
-/

namespace A393034.P1227366613960405856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A056230 (n + 1) - A000720 (n + 1)).toNat

end

end A393034.P1227366613960405856

/-! ## A393034.P10762405599339654787

`A285202(A065336(n))`
-/

namespace A393034.P10762405599339654787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285202 (A065336 n).toNat

end

end A393034.P10762405599339654787

/-! ## A393034.P17708186860690625626

`A230440(A341145(n)+A311948(n))`
-/

namespace A393034.P17708186860690625626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230440 (A341145 (n + 39) + A311948 n).toNat

end

end A393034.P17708186860690625626

/-! ## A393034.P8487745977950765780

`gcd(A079726(A004149(n)), A249948(3*n+5))`
-/

namespace A393034.P8487745977950765780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079726 (A004149 n).toNat) (A249948 (3 * n + 5))

end

end A393034.P8487745977950765780

/-! ## A393034.P4249780903698559464

`A001221(A239933(n+1)+A207997(3*(n+1)))`
-/

namespace A393034.P4249780903698559464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A239933 (n + 1) + A207997 (3 * (n + 1))).toNat

end

end A393034.P4249780903698559464

/-!
# A393037: Number of permutations on n letters with cycle type set [k] for some k, row sums of A393036 and A392215.

The programs for A393037, there is no canonical definition to state claims against.
-/

/-! ## A393037.P14194828079450379469

`A095757(A059177(n+1))`
-/

namespace A393037.P14194828079450379469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095757 (A059177 (n + 1)).toNat

end

end A393037.P14194828079450379469

/-! ## A393037.P17337583364205524810

`A212650(n)+A001511(A022521(n))`
-/

namespace A393037.P17337583364205524810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212650 n + A001511 (A022521 n).toNat

end

end A393037.P17337583364205524810

/-! ## A393037.P8590690728113393199

`A212650(n)-A033880(A000302(n))`
-/

namespace A393037.P8590690728113393199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212650 n - A033880 (A000302 n).toNat

end

end A393037.P8590690728113393199

/-!
# A393040: Numbers k such that A276086(k) <= A348507(k).

The programs for A393040, there is no canonical definition to state claims against.
-/

/-! ## A393040.P10424672590485251081

`∪[A351228(1+n), A392602(n+1)]`
-/

namespace A393040.P10424672590485251081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351228 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393040.P10424672590485251081

/-! ## A393040.P524221126358160558

`lt[A276086(n)+n, A064478(n)]`
-/

namespace A393040.P524221126358160558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393040.P524221126358160558

/-!
# A393041: Number of trailing zeros in the primorial base representation of the arithmetic derivative of n.

The programs for A393041, there is no canonical definition to state claims against.
-/

/-! ## A393041.P11346140411261592941

`A276084(A003415(n+2))`
-/

namespace A393041.P11346140411261592941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A003415 (n + 2)).toNat

end

end A393041.P11346140411261592941

/-! ## A393041.P16684587510021233698

`A055396(A327859(n+2))-1`
-/

namespace A393041.P16684587510021233698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A327859 (n + 2)).toNat - 1

end

end A393041.P16684587510021233698

/-! ## A393041.P11311576909750270222

`A055396(A055396(A327859(n+2)))`
-/

namespace A393041.P11311576909750270222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A055396 (A327859 (n + 2)).toNat).toNat

end

end A393041.P11311576909750270222

/-! ## A393041.P1246003826080810293

`A034186(n+1)%A005185(A399372(n+2))`
-/

namespace A393041.P1246003826080810293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034186 (n + 1)) (A005185 (A399372 (n + 2)).toNat)

end

end A393041.P1246003826080810293

/-! ## A393041.P13912259361205234002

`A386537(A002496(n+1)-A143067(n))`
-/

namespace A393041.P13912259361205234002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386537 (A002496 (n + 1) - A143067 n).toNat

end

end A393041.P13912259361205234002

/-!
# A393042: a(n) is the least integer whose arithmetic derivative has n trailing zeros in its primorial base representation (A049345).

The programs for A393042, there is no canonical definition to state claims against.
-/

/-! ## A393042.P7861876640461305944

`A098699(A097250(n))`
-/

namespace A393042.P7861876640461305944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 (A097250 n).toNat

end

end A393042.P7861876640461305944

/-!
# A393043: Numbers such that the least prime not dividing their arithmetic derivative is 3.

The programs for A393043, the canonical program `A393043.P12511231345253403073` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393043 has offset 1).

The definition of A393043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3079 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393043.P1534218821352975932

`eq[1, A393041(n+2)]+2`
-/

namespace A393043.P1534218821352975932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393041 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A393043.P1534218821352975932

namespace A393043

/-- `eq[1, A393041(n+2)]+2` -/
def P1534218821352975932.Spec : Prop :=
  ∀ n, (P1534218821352975932.a n : ℤ) = A393043 (n + 1)

end A393043

/-! ## A393043.P16172321573735580703

`eq[3, A399372(n)]`
-/

namespace A393043.P16172321573735580703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393043.P16172321573735580703

namespace A393043

/-- `eq[3, A399372(n)]` -/
def P16172321573735580703.Spec : Prop :=
  ∀ n, (P16172321573735580703.a n : ℤ) = A393043 (n + 1)

end A393043

/-! ## A393043.P4266535225344763860

`eq[0, A399376(n)%3]`
-/

namespace A393043.P4266535225344763860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399376 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393043.P4266535225344763860

namespace A393043

/-- `eq[0, A399376(n)%3]` -/
def P4266535225344763860.Spec : Prop :=
  ∀ n, (P4266535225344763860.a n : ℤ) = A393043 (n + 1)

end A393043

/-! ## A393043.P12511231345253403073

`eq[2, gcd(6, A003415(n))]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A393043

/-- `eq[2, gcd(6, A003415(n))]` -/
def P12511231345253403073.Spec : Prop :=
  ∀ n, (P12511231345253403073.a n : ℤ) = A393043 (n + 1)

theorem P12511231345253403073.correct : P12511231345253403073.Spec := by
  intro n
  simp only [A393043, Nat.add_sub_cancel]

end A393043

/-! ## A393043.P5066125840621007709

`eq[0, A093719(A003415(n))]`
-/

namespace A393043.P5066125840621007709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393043.P5066125840621007709

namespace A393043

/-- `eq[0, A093719(A003415(n))]` -/
def P5066125840621007709.Spec : Prop :=
  ∀ n, (P5066125840621007709.a n : ℤ) = A393043 (n + 1)

end A393043

/-! ## A393043.P5113274905434440744

`lt[4, A399372(A399372(n)²)]`
-/

namespace A393043.P5113274905434440744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399372 (A399372 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A393043.P5113274905434440744

namespace A393043

/-- `lt[4, A399372(A399372(n)²)]` -/
def P5113274905434440744.Spec : Prop :=
  ∀ n, (P5113274905434440744.a n : ℤ) = A393043 (n + 1)

end A393043

/-! ## A393043.P8355053384142696736

`lt[1, A249094(A399372(n)+1)]`
-/

namespace A393043.P8355053384142696736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (A399372 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A393043.P8355053384142696736

namespace A393043

/-- `lt[1, A249094(A399372(n)+1)]` -/
def P8355053384142696736.Spec : Prop :=
  ∀ n, (P8355053384142696736.a n : ℤ) = A393043 (n + 1)

end A393043

/-! ## A393043.P11133678217598998232

`lt[A182002(A399372(n)), A020639(2*(n+2))]`
-/

namespace A393043.P11133678217598998232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182002 (A399372 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393043.P11133678217598998232

namespace A393043

/-- `lt[A182002(A399372(n)), A020639(2*(n+2))]` -/
def P11133678217598998232.Spec : Prop :=
  ∀ n, (P11133678217598998232.a n : ℤ) = A393043 (n + 1)

end A393043

/-! ## A393043.P10630424806791724763

`lt[3, A272565(3+A129283(n)-n)]`
-/

namespace A393043.P10630424806791724763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (3 + (A129283 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A393043.P10630424806791724763

namespace A393043

/-- `lt[3, A272565(3+A129283(n)-n)]` -/
def P10630424806791724763.Spec : Prop :=
  ∀ n, (P10630424806791724763.a n : ℤ) = A393043 (n + 1)

end A393043

/-! ## A393043.P8272074534636365959

`eq[2, A260686(A368921(n)+A068346(n))]`
-/

namespace A393043.P8272074534636365959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260686 (A368921 n + A068346 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393043.P8272074534636365959

namespace A393043

/-- `eq[2, A260686(A368921(n)+A068346(n))]` -/
def P8272074534636365959.Spec : Prop :=
  ∀ n, (P8272074534636365959.a n : ℤ) = A393043 (n + 1)

end A393043

/-! ## A393043.P1472181835349641345

`eq[2, A260686(A358669(n)/A276086(n))]`
-/

namespace A393043.P1472181835349641345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260686 (SequenceMachineLib.roundAway ((A358669 n : ℚ) / (A276086 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393043.P1472181835349641345

namespace A393043

/-- `eq[2, A260686(A358669(n)/A276086(n))]` -/
def P1472181835349641345.Spec : Prop :=
  ∀ n, (P1472181835349641345.a n : ℤ) = A393043 (n + 1)

end A393043

/-! ## A393043.P9932336032766233316

`eq[A034077(3*n+2), A260686(A003415(n))]`
-/

namespace A393043.P9932336032766233316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034077 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260686 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393043.P9932336032766233316

namespace A393043

/-- `eq[A034077(3*n+2), A260686(A003415(n))]` -/
def P9932336032766233316.Spec : Prop :=
  ∀ n, (P9932336032766233316.a n : ℤ) = A393043 (n + 1)

end A393043

/-!
# A393044: Numbers whose smallest prime factor is not 3, while the least prime not dividing their arithmetic derivative is 3.

The programs for A393044, the canonical program `A393044.P14233745857420468305` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393044 has offset 1).

The definition of A393044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393044.P14233745857420468305

`filter[A393043(1+n), A374045(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A393044

/-- `filter[A393043(1+n), A374045(#)]` -/
def P14233745857420468305.Spec : Prop :=
  ∀ n, P14233745857420468305.a n = A393044 (n + 1)

theorem P14233745857420468305.correct : P14233745857420468305.Spec := by
  intro n
  simp only [A393044, Nat.add_sub_cancel]

end A393044

/-! ## A393044.P17924988744867131153

`∩[A374046(1+n), A393043(n+1)]`
-/

namespace A393044.P17924988744867131153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393044.P17924988744867131153

namespace A393044

/-- `∩[A374046(1+n), A393043(n+1)]` -/
def P17924988744867131153.Spec : Prop :=
  ∀ n, (P17924988744867131153.a n : ℤ) = A393044 (n + 1)

end A393044

/-! ## A393044.P12539355548391974767

`∩[eq[1, A374045(n)], A393043(n+1)]`
-/

namespace A393044.P12539355548391974767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A393044.P12539355548391974767

namespace A393044

/-- `∩[eq[1, A374045(n)], A393043(n+1)]` -/
def P12539355548391974767.Spec : Prop :=
  ∀ n, (P12539355548391974767.a n : ℤ) = A393044 (n + 1)

end A393044

/-! ## A393044.P10903281521107593064

`∩[A191276(n+1), A393043(n+1)]`
-/

namespace A393044.P10903281521107593064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393044.P10903281521107593064

namespace A393044

/-- `∩[A191276(n+1), A393043(n+1)]` -/
def P10903281521107593064.Spec : Prop :=
  ∀ n, (P10903281521107593064.a n : ℤ) = A393044 (n + 1)

end A393044

/-! ## A393044.P811613244405661427

`∩[A047263(n+1), A393043(n+1)]`
-/

namespace A393044.P811613244405661427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393044.P811613244405661427

namespace A393044

/-- `∩[A047263(n+1), A393043(n+1)]` -/
def P811613244405661427.Spec : Prop :=
  ∀ n, (P811613244405661427.a n : ℤ) = A393044 (n + 1)

end A393044

/-! ## A393044.P5959173491676898652

`eq[4, A399372(n)+A374045(n)]`
-/

namespace A393044.P5959173491676898652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399372 n + A374045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393044.P5959173491676898652

namespace A393044

/-- `eq[4, A399372(n)+A374045(n)]` -/
def P5959173491676898652.Spec : Prop :=
  ∀ n, (P5959173491676898652.a n : ℤ) = A393044 (n + 1)

end A393044

/-! ## A393044.P6096470068743678648

`eq[A078812(A399372(n)²), A374045(n)]`
-/

namespace A393044.P6096470068743678648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A399372 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393044.P6096470068743678648

namespace A393044

/-- `eq[A078812(A399372(n)²), A374045(n)]` -/
def P6096470068743678648.Spec : Prop :=
  ∀ n, (P6096470068743678648.a n : ℤ) = A393044 (n + 1)

end A393044

/-! ## A393044.P700273882375441680

`filter[A047263(n+1), A000900(A399372(#))]`
-/

namespace A393044.P700273882375441680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000900 (A399372 (f1 j).toNat).toNat = 1) n)

end

end A393044.P700273882375441680

namespace A393044

/-- `filter[A047263(n+1), A000900(A399372(#))]` -/
def P700273882375441680.Spec : Prop :=
  ∀ n, P700273882375441680.a n = A393044 (n + 1)

end A393044

/-! ## A393044.P16390479130949776793

`filter[A047263(n+3), A374045(A399372(#))]`
-/

namespace A393044.P16390479130949776793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (A399372 (f1 j).toNat).toNat = 1) n)

end

end A393044.P16390479130949776793

namespace A393044

/-- `filter[A047263(n+3), A374045(A399372(#))]` -/
def P16390479130949776793.Spec : Prop :=
  ∀ n, P16390479130949776793.a n = A393044 (n + 1)

end A393044

/-!
# A393045: Numbers such that the least prime not dividing their arithmetic derivative is 5.

The programs for A393045, there is no canonical definition to state claims against.
-/

/-! ## A393045.P1074575809197221546

`eq[2, A393041(n+2)]+2`
-/

namespace A393045.P1074575809197221546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393041 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A393045.P1074575809197221546

/-! ## A393045.P1937429978673939271

`eq[5, A399372(n)]`
-/

namespace A393045.P1937429978673939271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393045.P1937429978673939271

/-! ## A393045.P10432496964707400747

`filter[A305801(n+1), A374978(A399372(#))]`
-/

namespace A393045.P10432496964707400747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374978 (A399372 (f1 j).toNat).toNat = 1) n)

end

end A393045.P10432496964707400747

/-! ## A393045.P2048490173449443861

`eq[5, A020639(A400151(n))]`
-/

namespace A393045.P2048490173449443861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A400151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393045.P2048490173449443861

/-! ## A393045.P11909904853897093581

`eq[3, A055396(A400151(n))]`
-/

namespace A393045.P11909904853897093581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A400151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393045.P11909904853897093581

/-!
# A393046: Numbers whose smallest prime factor is not 5, while the least prime not dividing their arithmetic derivative is 5.

The programs for A393046, there is no canonical definition to state claims against.
-/

/-! ## A393046.P5860738566582589933

`∩[A307646(n+1)+2, A393045(n+1)]`
-/

namespace A393046.P5860738566582589933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307646 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393046.P5860738566582589933

/-!
# A393047: Numbers such that the least prime not dividing their arithmetic derivative is 7.

The programs for A393047, there is no canonical definition to state claims against.
-/

/-! ## A393047.P8134072066219467642

`eq[7, A399372(n)]`
-/

namespace A393047.P8134072066219467642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393047.P8134072066219467642

/-! ## A393047.P10680938976883129171

`eq[7, A020639(A400151(n))]`
-/

namespace A393047.P10680938976883129171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A400151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393047.P10680938976883129171

/-! ## A393047.P13253399665787922460

`eq[7, A006530(A399376(n))]`
-/

namespace A393047.P13253399665787922460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A399376 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393047.P13253399665787922460

/-!
# A393050: Composite numbers k such that A003415(k) is in A048103 and k is a multiple of A276085(A003415(k)), where A003415 is the arithmetic derivative and A276085 is fully additive with a(p) = p#/p.

The programs for A393050, there is no canonical definition to state claims against.
-/

/-! ## A393050.P4055775049748158963

`filter[A393049(n+1), A368915(#)]`
-/

namespace A393050.P4055775049748158963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A393050.P4055775049748158963

/-!
# A393051: Number of divisors d of n such that d and A276086(d) are coprime, where A276086 is the primorial base exp-function.

The programs for A393051, there is no canonical definition to state claims against.
-/

/-! ## A393051.P5144449806358480311

`∑{d}[n+1, A356162(#)]`
-/

namespace A393051.P5144449806358480311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A356162 d

end

end A393051.P5144449806358480311

/-! ## A393051.P13758010704051771284

`A000005(n+1)-A393052(n+1)`
-/

namespace A393051.P13758010704051771284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A393052 (n + 1)

end

end A393051.P13758010704051771284

/-! ## A393051.P11611731055382837855

`A393053(n+1)+A393054(n+1)-A393052(n+1)`
-/

namespace A393051.P11611731055382837855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393053 (n + 1) + (A393054 (n + 1) - A393052 (n + 1))

end

end A393051.P11611731055382837855

/-! ## A393051.P5290530363384947828

`∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]-A393052(n+1)`
-/

namespace A393051.P5290530363384947828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋) - A393052 (n + 1)

end

end A393051.P5290530363384947828

/-! ## A393051.P10263109690610269730

`A038548(3*(n+1))-A369001(A006754(n+4))`
-/

namespace A393051.P10263109690610269730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (3 * (n + 1)) - A369001 (A006754 (n + 4)).toNat

end

end A393051.P10263109690610269730

/-!
# A393052: Number of divisors d of n such that d and A276086(d) are not coprime, where A276086 is the primorial base exp-function.

The programs for A393052, there is no canonical definition to state claims against.
-/

/-! ## A393052.P943790864289494441

`∑{d}[n+1, 1-A356162(#)]`
-/

namespace A393052.P943790864289494441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A356162 d)

end

end A393052.P943790864289494441

/-! ## A393052.P5949760866379889649

`A000005(n+1)-A393051(n+1)`
-/

namespace A393052.P5949760866379889649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A393051 (n + 1)

end

end A393052.P5949760866379889649

/-! ## A393052.P2517483173330391661

`A393053(n+1)+A393054(n+1)-A393051(n+1)`
-/

namespace A393052.P2517483173330391661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393053 (n + 1) + (A393054 (n + 1) - A393051 (n + 1))

end

end A393052.P2517483173330391661

/-! ## A393052.P15956195710870013977

`A361561(A313891(n+1))`
-/

namespace A393052.P15956195710870013977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361561 (A313891 (n + 1)).toNat

end

end A393052.P15956195710870013977

/-! ## A393052.P11384318126197509822

`∑{p}[A007947(A087679(n+1)²), val(n+1, #)]`
-/

namespace A393052.P11384318126197509822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A087679 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (n + 1) p

end

end A393052.P11384318126197509822

/-!
# A393053: Number of divisors d of n such that d and A276086(n) are coprime, where A276086 is the primorial base exp-function.

The programs for A393053, there is no canonical definition to state claims against.
-/

/-! ## A393053.P266713833161990543

`A000005(n+1)-A393054(n+1)`
-/

namespace A393053.P266713833161990543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A393054 (n + 1)

end

end A393053.P266713833161990543

/-! ## A393053.P6900888618301881961

`∏{e}[n+1, #+1]-A393054(n+1)`
-/

namespace A393053.P6900888618301881961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A393054 (n + 1)

end

end A393053.P6900888618301881961

/-! ## A393053.P8810795844804957418

`Δ[A054519(n)]-A393054(n+1)`
-/

namespace A393053.P8810795844804957418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A393054 (n + 1)

end

end A393053.P8810795844804957418

/-! ## A393053.P8299993527483285263

`A062011(n+1)/2-A393054(n+1)`
-/

namespace A393053.P8299993527483285263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2 - (A393054 (n + 1) : ℚ)

end

end A393053.P8299993527483285263

/-! ## A393053.P11971716616951385622

`A393051(n+1)+A393052(n+1)-A393054(n+1)`
-/

namespace A393053.P11971716616951385622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393051 (n + 1) + (A393052 (n + 1) - A393054 (n + 1))

end

end A393053.P11971716616951385622

/-! ## A393053.P2625880140963220309

`A034296(n+1)-A237665(n+1)-A393054(n+1)`
-/

namespace A393053.P2625880140963220309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 1) - A237665 (n + 1) - A393054 (n + 1)

end

end A393053.P2625880140963220309

/-!
# A393054: Number of divisors d of n such that d and A276086(n) are not coprime, where A276086 is the primorial base exp-function.

The programs for A393054, there is no canonical definition to state claims against.
-/

/-! ## A393054.P6527738520185984565

`A000005(n+1)-A393053(n+1)`
-/

namespace A393054.P6527738520185984565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A393053 (n + 1)

end

end A393054.P6527738520185984565

/-! ## A393054.P17312739581033200608

`∏{e}[n+1, #+1]-A393053(n+1)`
-/

namespace A393054.P17312739581033200608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A393053 (n + 1)

end

end A393054.P17312739581033200608

/-! ## A393054.P9845570360222906118

`A062011(n+1)/2-A393053(n+1)`
-/

namespace A393054.P9845570360222906118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2 - (A393053 (n + 1) : ℚ)

end

end A393054.P9845570360222906118

/-! ## A393054.P15819106704025079760

`A393053(A046523(n+1))-A393053(n+1)`
-/

namespace A393054.P15819106704025079760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393053 (A046523 (n + 1)).toNat - A393053 (n + 1)

end

end A393054.P15819106704025079760

/-! ## A393054.P13777677928731077242

`A393051(n+1)+A393052(n+1)-A393053(n+1)`
-/

namespace A393054.P13777677928731077242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393051 (n + 1) + (A393052 (n + 1) - A393053 (n + 1))

end

end A393054.P13777677928731077242

/-! ## A393054.P1490267540313774205

`A034296(n+1)-A237665(n+1)-A393053(n+1)`
-/

namespace A393054.P1490267540313774205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 1) - A237665 (n + 1) - A393053 (n + 1)

end

end A393054.P1490267540313774205

/-!
# A393056: Number of terms of A392867 <= n that are not odd numbers with an odd number of prime factors (A067019).

The programs for A393056, there is no canonical definition to state claims against.
-/

/-! ## A393056.P16602812559602995251

`a(n-1)+(1-A353558(n+1))*A393067(n+1)` with `a(0)=1`
-/

namespace A393056.P16602812559602995251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A353558 (n + 1)) * A393067 (n + 1)

end

end A393056.P16602812559602995251

/-! ## A393056.P3807633625730451536

`A393055(A182049(n+2))`
-/

namespace A393056.P3807633625730451536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393055 (A182049 (n + 2)).toNat

end

end A393056.P3807633625730451536

/-!
# A393057: Number of terms of A392867 <= n.

The programs for A393057, there is no canonical definition to state claims against.
-/

/-! ## A393057.P765751024542709318

`a(n-1)+A393067(n+1)` with `a(0)=1`
-/

namespace A393057.P765751024542709318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A393067 (n + 1)

end

end A393057.P765751024542709318

/-! ## A393057.P14757923217414255184

`∑[A393067(1+n)]`
-/

namespace A393057.P14757923217414255184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393067 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393057.P14757923217414255184

/-! ## A393057.P17091712449142867287

`fp[A392867(n+1)-1]`
-/

namespace A393057.P17091712449142867287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A393057.P17091712449142867287

/-! ## A393057.P12655346526534533167

`∑[char[A392867(1+n)-1]]`
-/

namespace A393057.P12655346526534533167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393057.P12655346526534533167

/-! ## A393057.P16499548814987022151

`A393067(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A393057.P16499548814987022151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A393067 (n + 1) + a (n - 1)

end

end A393057.P16499548814987022151

/-! ## A393057.P7145082949837923437

`char[A392867(3+n)-1]+a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A393057.P7145082949837923437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (3 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A393057.P7145082949837923437

/-! ## A393057.P9325107026486434892

`comp[A392867(n+1)+A023443(n)]-n`
-/

namespace A393057.P9325107026486434892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1) + A023443 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A393057.P9325107026486434892

/-!
# A393058: Number of terms of A392868 <= n.

The programs for A393058, there is no canonical definition to state claims against.
-/

/-! ## A393058.P11674933582350311491

`a(n-1)+A393068(n+1)` with `a(0)=1`
-/

namespace A393058.P11674933582350311491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A393068 (n + 1)

end

end A393058.P11674933582350311491

/-! ## A393058.P8137485885127656919

`∑[A393068(1+n)]`
-/

namespace A393058.P8137485885127656919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393068 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393058.P8137485885127656919

/-! ## A393058.P13129152366753454897

`fp[A392868(n+1)-1]`
-/

namespace A393058.P13129152366753454897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392868 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A393058.P13129152366753454897

/-! ## A393058.P10869557485235035914

`∑[char[A392868(1+n)-1]]`
-/

namespace A393058.P10869557485235035914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392868 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393058.P10869557485235035914

/-! ## A393058.P12669761885965603572

`∑[A391844(1+n)*A393067(n+1)]`
-/

namespace A393058.P12669761885965603572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391844 (1 + n) * A393067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393058.P12669761885965603572

/-! ## A393058.P11984403350236625273

`∑[char[A391845(n+1)-1]*A393067(n+1)]`
-/

namespace A393058.P11984403350236625273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A393067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393058.P11984403350236625273

/-!
# A393059: a(n) = LCM_{d|n, d<n} A276086(d), where A276086 is the primorial base exp-function.

The programs for A393059, there is no canonical definition to state claims against.
-/

/-! ## A393059.P14968008062858846965

`A276086(A393063(n+1))`
-/

namespace A393059.P14968008062858846965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A393063 (n + 1)).toNat

end

end A393059.P14968008062858846965

/-!
# A393060: Lexicographically earliest infinite sequence such that a(i) = a(j) => A393059(i) = A393059(j), for all i, j >= 1.

The programs for A393060, there is no canonical definition to state claims against.
-/

/-! ## A393060.P16700731063704732143

`A125747(A161951(n+1))`
-/

namespace A393060.P16700731063704732143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125747 (A161951 (n + 1)).toNat

end

end A393060.P16700731063704732143

/-! ## A393060.P15381544509166466116

`A293223(n+1)+A010054(A323327(3*n+5))`
-/

namespace A393060.P15381544509166466116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293223 (n + 1) + A010054 (A323327 (3 * n + 5)).toNat

end

end A393060.P15381544509166466116

/-!
# A393061: a(n) = LCM_{d|n} A276086(d), where LCM is the least common multiple, and A276086 is the primorial base exp-function.

The programs for A393061, there is no canonical definition to state claims against.
-/

/-! ## A393061.P6907679222004590813

`A276086(A393062(n+1))`
-/

namespace A393061.P6907679222004590813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A393062 (n + 1)).toNat

end

end A393061.P6907679222004590813

/-! ## A393061.P18311083311377673430

`lcm(A276086(n+1), A393059(n+1))`
-/

namespace A393061.P18311083311377673430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A276086 (n + 1)) (A393059 (n + 1))

end

end A393061.P18311083311377673430

/-!
# A393062: a(n) = A276085(LCM_{d|n} A276086(d)), where LCM is the least common multiple, A276086 is the primorial base exp-function, and A276085 is its left inverse.

The programs for A393062, there is no canonical definition to state claims against.
-/

/-! ## A393062.P7842743917748838304

`A372576(A393061(n+1))`
-/

namespace A393062.P7842743917748838304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A393061 (n + 1)).toNat

end

end A393062.P7842743917748838304

/-! ## A393062.P17790240648078449646

`A109129(A147988(3*n+5)+1)+n+1`
-/

namespace A393062.P17790240648078449646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A147988 (3 * n + 5) + 1).toNat + (n + 1 : ℤ)

end

end A393062.P17790240648078449646

/-!
# A393063: a(n) = A276085(LCM_{d|n, d<n} A276086(d)), where LCM is the least common multiple, A276086 is the primorial base exp-function, and A276085 is its left inverse.

The programs for A393063, there is no canonical definition to state claims against.
-/

/-! ## A393063.P14038933198082830863

`A372576(A393059(n+1))`
-/

namespace A393063.P14038933198082830863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A393059 (n + 1)).toNat

end

end A393063.P14038933198082830863

/-! ## A393063.P15687589289372133721

`A085745(2*n+1)%A046523(n+1)`
-/

namespace A393063.P15687589289372133721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085745 (2 * n + 1)) (A046523 (n + 1))

end

end A393063.P15687589289372133721

/-! ## A393063.P10071293864728926734

`A385227(A143773(n+1))%A121964(n)`
-/

namespace A393063.P10071293864728926734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385227 (A143773 (n + 1)).toNat) (A121964 (n + 30))

end

end A393063.P10071293864728926734

/-! ## A393063.P1975437130932633386

`A006034(A318746(n+1))%A046523(n+1)`
-/

namespace A393063.P1975437130932633386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006034 (A318746 (n + 1)).toNat) (A046523 (n + 1))

end

end A393063.P1975437130932633386

/-! ## A393063.P16862643554621151681

`A046523(n+1)-A230405(A056508(2*(n+1)))`
-/

namespace A393063.P16862643554621151681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - A230405 (A056508 (2 * (n + 1))).toNat

end

end A393063.P16862643554621151681

/-!
# A393064: a(n) = 1 if A020639(n') = A053669(n) and A053669(n') = A020639(n), otherwise 0, where n' stands for arithmetic derivative, A020639 returns the least prime factor of its argument, and A053669 is the least prime not dividing its argument.

The programs for A393064, there is no canonical definition to state claims against.
-/

/-! ## A393064.P16116274071899384899

`char[A393065(n+1)]`
-/

namespace A393064.P16116274071899384899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393064.P16116274071899384899

/-! ## A393064.P12209497894800646467

`char[filter[A370125(n+1), A391844(#)]]`
-/

namespace A393064.P12209497894800646467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => A391844 (f2 j).toNat = 1) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393064.P12209497894800646467

/-! ## A393064.P10288449280709813946

`and(A331846(n), A370124(n))`
-/

namespace A393064.P10288449280709813946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A331846 n) (A370124 n)

end

end A393064.P10288449280709813946

/-! ## A393064.P3567337798873606842

`and(A325373(n+1), A370124(n))`
-/

namespace A393064.P3567337798873606842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325373 (n + 1)) (A370124 n)

end

end A393064.P3567337798873606842

/-! ## A393064.P11528804142630827952

`and(char[A370125(n+1)], A331846(n))`
-/

namespace A393064.P11528804142630827952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A331846 n)

end

end A393064.P11528804142630827952

/-!
# A393065: Numbers k such that A020639(k') = A053669(k) and A053669(k') = A020639(k), where k' stands for the arithmetic derivative of k, A020639 returns the least prime factor of its argument, and A053669 is the least prime not dividing its argument.

The programs for A393065, there is no canonical definition to state claims against.
-/

/-! ## A393065.P6147790485539487415

`filter[root(n^3, 3), A393064(#)]`
-/

namespace A393065.P6147790485539487415
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393064 (SequenceMachineLib.roundAway (f1 j)).toNat = 1) n)

end

end A393065.P6147790485539487415

/-! ## A393065.P1621503222532085575

`eq[1, A393064(n)]`
-/

namespace A393065.P1621503222532085575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393065.P1621503222532085575

/-! ## A393065.P14009294193134651905

`filter[A370125(n+1), A391844(#)]`
-/

namespace A393065.P14009294193134651905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A393065.P14009294193134651905

/-! ## A393065.P13988272647795599134

`filter[A391845(n+1), A370124(#)]`
-/

namespace A393065.P13988272647795599134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A393065.P13988272647795599134

/-! ## A393065.P7380543971759564483

`∩[A370125(n+1), A391845(n+1)]`
-/

namespace A393065.P7380543971759564483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393065.P7380543971759564483

/-!
# A393066: Numbers k in A393065 such that k+1 is also in A393065.

The programs for A393066, there is no canonical definition to state claims against.
-/

/-! ## A393066.P12186658787304848906

`∩[A393065(n+1)-1, A393065(n+1)]`
-/

namespace A393066.P12186658787304848906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393065 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393066.P12186658787304848906

/-! ## A393066.P131873273124079849

`A374442(A002144(n+1))`
-/

namespace A393066.P131873273124079849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374442 (A002144 (n + 1)).toNat

end

end A393066.P131873273124079849

/-! ## A393066.P14075035241280316678

`A374442(A077426(n+1))`
-/

namespace A393066.P14075035241280316678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374442 (A077426 (n + 1)).toNat

end

end A393066.P14075035241280316678

/-!
# A393067: a(n) = 1 if A276086(A003415(n)) <= n, otherwise 0, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A393067, there is no canonical definition to state claims against.
-/

/-! ## A393067.P6721820514546081178

`Δ[fp[A392867(n+1)]]`
-/

namespace A393067.P6721820514546081178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A393067.P6721820514546081178

/-! ## A393067.P4945967907371571760

`char[fp[A393057(n+1)]]`
-/

namespace A393067.P4945967907371571760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393057 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A393067.P4945967907371571760

/-! ## A393067.P3604969976132142957

`char[A392867(1+n)-1]`
-/

namespace A393067.P3604969976132142957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393067.P3604969976132142957

/-! ## A393067.P2703239075443570268

`char[lt[A327859(n), n+1]-1]`
-/

namespace A393067.P2703239075443570268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393067.P2703239075443570268

/-! ## A393067.P8119117335747419163

`char[A025581(C(A392867(n+1), 2))]`
-/

namespace A393067.P8119117335747419163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A392867 (n + 1)).toNat 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393067.P8119117335747419163

/-!
# A393068: a(n) = A391844(n) * A393067(n).

The programs for A393068, there is no canonical definition to state claims against.
-/

/-! ## A393068.P12028907334772120372

`A391844(n+1)*A393067(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393068.P12028907334772120372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391844 (n + 1) * A393067 (n + 1)

end

end A393068.P12028907334772120372

/-! ## A393068.P13600664942644419916

`Δ[fp[A392868(n+1)]]`
-/

namespace A393068.P13600664942644419916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392868 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A393068.P13600664942644419916

/-! ## A393068.P4779209351693729511

`char[fp[A393058(n+1)]]`
-/

namespace A393068.P4779209351693729511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393058 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A393068.P4779209351693729511

/-! ## A393068.P3695081095087211083

`char[A392868(1+n)-1]`
-/

namespace A393068.P3695081095087211083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392868 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393068.P3695081095087211083

/-! ## A393068.P260790625097070076

`char[A391845(n+1)-1]*A393067(n+1)`
-/

namespace A393068.P260790625097070076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A393067 (n + 1)

end

end A393068.P260790625097070076

/-! ## A393068.P6332202065519653436

`and(A391844(A253046(n+1)), -A393067(n+1))`
-/

namespace A393068.P6332202065519653436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A391844 (A253046 (n + 1)).toNat) (-A393067 (n + 1))

end

end A393068.P6332202065519653436

/-! ## A393068.P3882228793668909239

`A010054(A083030(n+1)*A124287(n+3))`
-/

namespace A393068.P3882228793668909239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A083030 (n + 1) * A124287 (n + 3)).toNat

end

end A393068.P3882228793668909239

/-! ## A393068.P15066185396342873610

`A010054(A328107(3*n+2)-A334947(2*n+1))`
-/

namespace A393068.P15066185396342873610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A328107 (3 * n + 2) - A334947 (2 * n + 1)).toNat

end

end A393068.P15066185396342873610

/-! ## A393068.P2230016904509920324

`A010054(5*A053415(n))`
-/

namespace A393068.P2230016904509920324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (5 * A053415 n).toNat

end

end A393068.P2230016904509920324

/-!
# A393069: Numbers whose prime divisors all start with the same digit.

The programs for A393069, there is no canonical definition to state claims against.
-/

/-! ## A393069.P7856889734719065016

`lt[A123142(A364360(n)), A061870(n+1)]`
-/

namespace A393069.P7856889734719065016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123142 ((A364360 n).toNat + 64)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393069.P7856889734719065016

/-! ## A393069.P8159462296112898904

`∪[A326645(n+1), A380236(A380249(n))]`
-/

namespace A393069.P8159462296112898904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380236 (A380249 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393069.P8159462296112898904

/-! ## A393069.P6668966706471275562

`∪[A326645(n+1), A380236(A001006(2*n+1))]`
-/

namespace A393069.P6668966706471275562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380236 (A001006 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393069.P6668966706471275562

/-! ## A393069.P17765602297447231387

`A331510(A064879(n))+A181062(n+1)`
-/

namespace A393069.P17765602297447231387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (A064879 n).toNat + A181062 (n + 1)

end

end A393069.P17765602297447231387

/-! ## A393069.P11810086857044543972

`A000961(n+1)-A335877(A257609(n))`
-/

namespace A393069.P11810086857044543972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A335877 (A257609 n).toNat

end

end A393069.P11810086857044543972

/-!
# A393070: Numbers k such that A276086(k) <= A003959(k).

The programs for A393070, there is no canonical definition to state claims against.
-/

/-! ## A393070.P6400155296792450391

`lt[A276086(n), A213911(n)+A064478(n)]`
-/

namespace A393070.P6400155296792450391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A064478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393070.P6400155296792450391

/-! ## A393070.P6589711314459864796

`lt[A373849(n), A194970(n+1)]`
-/

namespace A393070.P6589711314459864796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393070.P6589711314459864796

/-! ## A393070.P12654782707143101087

`lt[A327860(n), A172269(A338741(n+1))]`
-/

namespace A393070.P12654782707143101087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172269 (A338741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393070.P12654782707143101087

/-! ## A393070.P16596477651370854207

`lt[A373849(n), sqrt(A378253(n+1))]`
-/

namespace A393070.P16596477651370854207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373849 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A378253 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A393070.P16596477651370854207

/-! ## A393070.P15707639398864882242

`lt[A005117(A276086(n)), A003415(3*n)]`
-/

namespace A393070.P15707639398864882242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A276086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393070.P15707639398864882242

/-!
# A393071: Numbers k such that A276086(k) is a multiple of A003415(k) and A276087(k) is a multiple of A327859(k).

The programs for A393071, there is no canonical definition to state claims against.
-/

/-! ## A393071.P15362460820835867665

`filter[A383303(n+1), A358220(#)]`
-/

namespace A393071.P15362460820835867665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A393071.P15362460820835867665

/-! ## A393071.P17142653979494433247

`∩[A358221(n+1), A383303(n+1)]`
-/

namespace A393071.P17142653979494433247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393071.P17142653979494433247

/-! ## A393071.P3946808002201038636

`filter[A358221(n+1), A383302(#)]`
-/

namespace A393071.P3946808002201038636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383302 (f1 j).toNat = 1) n)

end

end A393071.P3946808002201038636

/-! ## A393071.P8767709245177707459

`eq[A351230(n), A383302(n)]`
-/

namespace A393071.P8767709245177707459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393071.P8767709245177707459

/-!
# A393073: Convolution of the two tribonacci sequences A000073 and A001590.

The programs for A393073, the canonical program `A393073.P2538012477291526266` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393073 has offset 0).

The definition of A393073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393073.P8461109139703513875

`∑{#}[n, A000073(#)*A001590(n-#)]`
-/

namespace A393073.P8461109139703513875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000073 k * A001590 (n - k)

end

end A393073.P8461109139703513875

namespace A393073

/-- `∑{#}[n, A000073(#)*A001590(n-#)]` -/
def P8461109139703513875.Spec : Prop :=
  ∀ n, P8461109139703513875.a n = A393073 n

end A393073

/-! ## A393073.P7435518421616270088

`ogf((x^3-x^4)/(1-2x-x^2+3x^4+2x^5+x^6))`
-/

namespace A393073.P7435518421616270088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, -1] [1, -2, -1, 0, 3, 2, 1] n

end

end A393073.P7435518421616270088

namespace A393073

/-- `ogf((x^3-x^4)/(1-2x-x^2+3x^4+2x^5+x^6))` -/
def P7435518421616270088.Spec : Prop :=
  ∀ n, P7435518421616270088.a n = A393073 n

end A393073

/-! ## A393073.P2538012477291526266

`2*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393073

/-- `2*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` -/
def P2538012477291526266.Spec : Prop :=
  ∀ n, P2538012477291526266.a n = A393073 n

theorem P2538012477291526266.correct : P2538012477291526266.Spec := by
  intro n
  simp only [A393073]

end A393073

/-! ## A393073.P6023438952441580462

`A073778(n+1)-A073778(n)`
-/

namespace A393073.P6023438952441580462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 (n + 1) - A073778 n

end

end A393073.P6023438952441580462

namespace A393073

/-- `A073778(n+1)-A073778(n)` -/
def P6023438952441580462.Spec : Prop :=
  ∀ n, P6023438952441580462.a n = A393073 n

end A393073

/-! ## A393073.P14248509068836803792

`Δ[A073778(n)]`
-/

namespace A393073.P14248509068836803792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393073.P14248509068836803792

namespace A393073

/-- `Δ[A073778(n)]` -/
def P14248509068836803792.Spec : Prop :=
  ∀ n, P14248509068836803792.a n = A393073 n

end A393073

/-!
# A393074: Number of inequivalent strict closure operators on a set of n elements such that all pairs of nonempty disjoint closed sets can be separated by clopen sets.

The programs for A393074, there is no canonical definition to state claims against.
-/

/-! ## A393074.P13492963292896864319

`A003108(A122931(n+2)-2)`
-/

namespace A393074.P13492963292896864319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (A122931 (n + 2) - 2).toNat

end

end A393074.P13492963292896864319

/-!
# A393076: a(n) is the last bit in the bit string s_n, where s_0 is 10 and s_n is the concatenation of s_{n-1} with itself with the last bit removed and then reversed.

The programs for A393076, there is no canonical definition to state claims against.
-/

/-! ## A393076.P8186935342164379554

`∑[A245499(A194070(3*n+2))]%2`
-/

namespace A393076.P8186935342164379554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245499 (A194070 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A393076.P8186935342164379554

/-! ## A393076.P3750288496189077490

`∑[A305734(n+1)*n]%2`
-/

namespace A393076.P3750288496189077490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305734 (n + 1) * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A393076.P3750288496189077490

/-! ## A393076.P7179886957418045854

`A284683(A286088(n+1))`
-/

namespace A393076.P7179886957418045854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (A286088 (n + 1)).toNat

end

end A393076.P7179886957418045854

/-! ## A393076.P11308404243114830267

`A000035(∑[A245973(3*n+4)²])`
-/

namespace A393076.P11308404243114830267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245973 (3 * n + 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A393076.P11308404243114830267

/-! ## A393076.P9322975799557509949

`A010059(A353744(n+1)+A275870(2*(n+1)))`
-/

namespace A393076.P9322975799557509949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A353744 (n + 1) + A275870 (2 * (n + 1))).toNat

end

end A393076.P9322975799557509949

/-!
# A393077: Number of non-isomorphic arithmetic expressions with n variables that can be constructed using +,-,*,/ together with parentheses.

The programs for A393077, there is no canonical definition to state claims against.
-/

/-! ## A393077.P14913695321596930472

`A364915(A147875(n))+n`
-/

namespace A393077.P14913695321596930472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364915 (A147875 n).toNat + (n : ℤ)

end

end A393077.P14913695321596930472

/-!
# A393081: Third column of A392806.

The programs for A393081, there is no canonical definition to state claims against.
-/

/-! ## A393081.P7681723783776046945

`A330633(2*n)%∑[A383805(n)]`
-/

namespace A393081.P7681723783776046945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330633 (2 * n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393081.P7681723783776046945

/-! ## A393081.P13172110555835885055

`A257850(2*n)%A046002(n+1)`
-/

namespace A393081.P13172110555835885055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257850 (2 * n)) (A046002 (n + 1))

end

end A393081.P13172110555835885055

/-! ## A393081.P3004734959929563901

`(A390919(3*(n+1))+2)*A257845(n)`
-/

namespace A393081.P3004734959929563901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A390919 (3 * (n + 1)) + 2) * A257845 n

end

end A393081.P3004734959929563901

/-! ## A393081.P16614234933101380372

`A257297(2*n)%A233780(2*(n+2))`
-/

namespace A393081.P16614234933101380372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257297 (2 * n)) (A233780 (2 * (n + 2)))

end

end A393081.P16614234933101380372

/-! ## A393081.P5986160934483519556

`A014025(A016802(n))*A171765(2*n)`
-/

namespace A393081.P5986160934483519556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (A016802 n).toNat * A171765 (2 * n)

end

end A393081.P5986160934483519556

/-!
# A393082: Fourth column of A392806.

The programs for A393082, there is no canonical definition to state claims against.
-/

/-! ## A393082.P8338790298072346926

`2%A213899(n+1)*A257847(n)`
-/

namespace A393082.P8338790298072346926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A213899 (n + 1)) * A257847 n

end

end A393082.P8338790298072346926

/-! ## A393082.P7596908140711208738

`A001316(A029930(n))*A257847(n)`
-/

namespace A393082.P7596908140711208738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A029930 n).toNat * A257847 n

end

end A393082.P7596908140711208738

/-! ## A393082.P1149854474356935770

`A040000(A001504(n))*A257847(n)`
-/

namespace A393082.P1149854474356935770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A001504 n).toNat * A257847 n

end

end A393082.P1149854474356935770

/-! ## A393082.P7903302589849177585

`A055642(comp[A291166(2*n+3)])*A257847(n)`
-/

namespace A393082.P7903302589849177585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291166 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A257847 n

end

end A393082.P7903302589849177585

/-! ## A393082.P13342469867396174002

`A040000(A127218(n))*A257847(n)`
-/

namespace A393082.P13342469867396174002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A127218 n).toNat * A257847 n

end

end A393082.P13342469867396174002

/-!
# A393083: Anarboricity of the n-triangular honeycomb rook graph.

The programs for A393083, the canonical program `A393083.P7366525751737875840` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393083 has offset 1).

The definition of A393083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393083.P7366525751737875840

`ogf((x^2-x^3+2x^4-x^5+x^6-2x^7+x^8)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393083

/-- `ogf((x^2-x^3+2x^4-x^5+x^6-2x^7+x^8)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P7366525751737875840.Spec : Prop :=
  ∀ n, P7366525751737875840.a n = A393083 (n + 1)

theorem P7366525751737875840.correct : P7366525751737875840.Spec := by
  intro n
  simp only [A393083, Nat.add_sub_cancel]

end A393083

/-! ## A393083.P2181719498114301780

`∑[floor(∑[n+(-(4/(n+1)))^n]/3)]`
-/

namespace A393083.P2181719498114301780
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + (-(4 / (n + 1 : ℚ))) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f2 j) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393083.P2181719498114301780

namespace A393083

/-- `∑[floor(∑[n+(-(4/(n+1)))^n]/3)]` -/
def P2181719498114301780.Spec : Prop :=
  ∀ n, P2181719498114301780.a n = A393083 (n + 1)

end A393083

/-! ## A393083.P18207758157276896807

`A001400(A004274(n))-1`
-/

namespace A393083.P18207758157276896807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (A004274 n).toNat - 1

end

end A393083.P18207758157276896807

namespace A393083

/-- `A001400(A004274(n))-1` -/
def P18207758157276896807.Spec : Prop :=
  ∀ n, P18207758157276896807.a n = A393083 (n + 1)

end A393083

/-! ## A393083.P404332301171391824

`A217713(A058585(n))`
-/

namespace A393083.P404332301171391824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217713 (A058585 n).toNat

end

end A393083.P404332301171391824

namespace A393083

/-- `A217713(A058585(n))` -/
def P404332301171391824.Spec : Prop :=
  ∀ n, P404332301171391824.a n = A393083 (n + 1)

end A393083

/-! ## A393083.P6987320920543484502

`A347697(A148641(n))`
-/

namespace A393083.P6987320920543484502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A148641 n).toNat

end

end A393083.P6987320920543484502

namespace A393083

/-- `A347697(A148641(n))` -/
def P6987320920543484502.Spec : Prop :=
  ∀ n, P6987320920543484502.a n = A393083 (n + 1)

end A393083

/-!
# A393085: Irregular table T(n,k) where row n lists exponents m such that A001597(n) = r^m for some integer r.

The programs for A393085, there is no canonical definition to state claims against.
-/

/-! ## A393085.P13639148815566594268

`A007305(A056450(n)+A027746(n+1))`
-/

namespace A393085.P13639148815566594268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A056450 n + A027746 (n + 1)).toNat

end

end A393085.P13639148815566594268

/-! ## A393085.P8179171773552077805

`A001222(A055588(n)+A050599(n+1))`
-/

namespace A393085.P8179171773552077805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055588 n + A050599 (n + 1)).toNat

end

end A393085.P8179171773552077805

/-! ## A393085.P858512361316438843

`A159081(A265110(n+1)^A161511(n))`
-/

namespace A393085.P858512361316438843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (SequenceMachineLib.roundAway ((A265110 (n + 1) : ℚ) ^ (A161511 n : ℤ))).toNat

end

end A393085.P858512361316438843

/-! ## A393085.P16280399616643018351

`A027746(n+1)-A325334(A056654(n+1))`
-/

namespace A393085.P16280399616643018351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1) - A325334 (A056654 (n + 1)).toNat

end

end A393085.P16280399616643018351

/-! ## A393085.P1813778410158853243

`A159081(A265110(n+1)^A159081(n+1))`
-/

namespace A393085.P1813778410158853243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (SequenceMachineLib.roundAway ((A265110 (n + 1) : ℚ) ^ (A159081 (n + 1) : ℤ))).toNat

end

end A393085.P1813778410158853243

/-!
# A393092: Irregular triangle read by rows: T(n,k) is the number of ways to partition n labeled elements into pie slices whose part sizes are given by the k-th partition of n, allowing the pie to be turned over, partitions given in Abramowitz-Stegun order.

The programs for A393092, there is no canonical definition to state claims against.
-/

/-! ## A393092.P13065537394762539647

`A036040((n+1)%A346630(n))`
-/

namespace A393092.P13065537394762539647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (Int.tmod (n + 1 : ℤ) (A346630 n)).toNat

end

end A393092.P13065537394762539647

/-! ## A393092.P14291099842166380512

`or(A007814(A129852(n+2)), A036040(n+1))`
-/

namespace A393092.P14291099842166380512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A129852 (n + 2)).toNat) (A036040 (n + 1))

end

end A393092.P14291099842166380512

/-! ## A393092.P798804041032386150

`A335446(A076571(n))+A080575(n+1)`
-/

namespace A393092.P798804041032386150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A076571 n).toNat + A080575 (n + 1)

end

end A393092.P798804041032386150

/-! ## A393092.P14054549854283382886

`A373954(A326523(n))+A036040(n+1)`
-/

namespace A393092.P14054549854283382886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A326523 n).toNat + A036040 (n + 1)

end

end A393092.P14054549854283382886

/-! ## A393092.P10738242113092562429

`A335446(A336163(n+3))+A036040(n+1)`
-/

namespace A393092.P10738242113092562429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A336163 (n + 3)).toNat + A036040 (n + 1)

end

end A393092.P10738242113092562429

/-!
# A393093: Group the partitions of n into 3 parts into sets whose smallest parts are equal. a(n) is the sum of the maximum values of all the middle parts in each set.

The programs for A393093, the canonical program `A393093.P5340454546163931360` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393093 has offset 0).

The definition of A393093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393093.P3839676568215160531

`ogf((x^3+x^4+x^5+x^6+x^7)/(1-x^2-2x^3+2x^5+x^6-x^8))`
-/

namespace A393093.P3839676568215160531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 1, 1, 1, 1] [1, 0, -1, -2, 0, 2, 1, 0, -1] n

end

end A393093.P3839676568215160531

namespace A393093

/-- `ogf((x^3+x^4+x^5+x^6+x^7)/(1-x^2-2x^3+2x^5+x^6-x^8))` -/
def P3839676568215160531.Spec : Prop :=
  ∀ n, P3839676568215160531.a n = A393093 n

end A393093

/-! ## A393093.P5340454546163931360

`a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2, a(6)=4, a(7)=5`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393093

/-- `a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` -/
def P5340454546163931360.Spec : Prop :=
  ∀ n, P5340454546163931360.a n = A393093 n

theorem P5340454546163931360.correct : P5340454546163931360.Spec := by
  intro n
  simp only [A393093]

end A393093

/-! ## A393093.P12977989905487363266

`A069905(n)+A211534(n)`
-/

namespace A393093.P12977989905487363266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A211534 n

end

end A393093.P12977989905487363266

namespace A393093

/-- `A069905(n)+A211534(n)` -/
def P12977989905487363266.Spec : Prop :=
  ∀ n, P12977989905487363266.a n = A393093 n

end A393093

/-! ## A393093.P2902106686088084356

`A211546(n)-A393095(n)`
-/

namespace A393093.P2902106686088084356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211546 n - A393095 n

end

end A393093.P2902106686088084356

namespace A393093

/-- `A211546(n)-A393095(n)` -/
def P2902106686088084356.Spec : Prop :=
  ∀ n, P2902106686088084356.a n = A393093 n

end A393093

/-! ## A393093.P121210038173166825

`∑{#}[floor(n/3)-1, floor((n-(#+1))/2)]`
-/

namespace A393093.P121210038173166825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊((n : ℤ) - (k + 1 : ℤ) : ℚ) / 2⌋

end

end A393093.P121210038173166825

namespace A393093

/-- `∑{#}[floor(n/3)-1, floor((n-(#+1))/2)]` -/
def P121210038173166825.Spec : Prop :=
  ∀ n, P121210038173166825.a n = A393093 n

end A393093

/-! ## A393093.P5108818735553874554

`A033638(n+1)-A006446(n+1)`
-/

namespace A393093.P5108818735553874554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (n + 1) - A006446 (n + 1)

end

end A393093.P5108818735553874554

namespace A393093

/-- `A033638(n+1)-A006446(n+1)` -/
def P5108818735553874554.Spec : Prop :=
  ∀ n, P5108818735553874554.a n = A393093 n

end A393093

/-! ## A393093.P3857865369725437347

`A211540(n)+A000217(A002264(n))`
-/

namespace A393093.P3857865369725437347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n + A000217 (A002264 n).toNat

end

end A393093.P3857865369725437347

namespace A393093

/-- `A211540(n)+A000217(A002264(n))` -/
def P3857865369725437347.Spec : Prop :=
  ∀ n, P3857865369725437347.a n = A393093 n

end A393093

/-!
# A393095: Group the partitions of n into 3 parts into sets whose smallest parts are equal. a(n) is the sum of the minimum values of all the largest parts in each set.

The programs for A393095, the canonical program `A393095.P8856493313611828990` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393095 has offset 0).

The definition of A393095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393095.P11062022892057451100

`ogf((x^3+2x^4+x^5+x^6)/(1-x^2-2x^3+2x^5+x^6-x^8))`
-/

namespace A393095.P11062022892057451100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 2, 1, 1] [1, 0, -1, -2, 0, 2, 1, 0, -1] n

end

end A393095.P11062022892057451100

namespace A393095

/-- `ogf((x^3+2x^4+x^5+x^6)/(1-x^2-2x^3+2x^5+x^6-x^8))` -/
def P11062022892057451100.Spec : Prop :=
  ∀ n, P11062022892057451100.a n = A393095 n

end A393095

/-! ## A393095.P8856493313611828990

`a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=2, a(6)=5, a(7)=6`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393095

/-- `a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` -/
def P8856493313611828990.Spec : Prop :=
  ∀ n, P8856493313611828990.a n = A393095 n

theorem P8856493313611828990.correct : P8856493313611828990.Spec := by
  intro n
  simp only [A393095]

end A393095

/-! ## A393095.P12858645722068076717

`A211546(n)-A393093(n)`
-/

namespace A393095.P12858645722068076717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211546 n - A393093 n

end

end A393095.P12858645722068076717

namespace A393095

/-- `A211546(n)-A393093(n)` -/
def P12858645722068076717.Spec : Prop :=
  ∀ n, P12858645722068076717.a n = A393095 n

end A393095

/-! ## A393095.P3778255123312246324

`∑{#}[floor(n/3)-1, ceil((n-(#+1))/2)]`
-/

namespace A393095.P3778255123312246324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ⌈((n : ℤ) - (k + 1 : ℤ) : ℚ) / 2⌉

end

end A393095.P3778255123312246324

namespace A393095

/-- `∑{#}[floor(n/3)-1, ceil((n-(#+1))/2)]` -/
def P3778255123312246324.Spec : Prop :=
  ∀ n, P3778255123312246324.a n = A393095 n

end A393095

/-! ## A393095.P7668695259190059734

`∑[floor(n/2)-A087509(n)]`
-/

namespace A393095.P7668695259190059734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393095.P7668695259190059734

namespace A393095

/-- `∑[floor(n/2)-A087509(n)]` -/
def P7668695259190059734.Spec : Prop :=
  ∀ n, P7668695259190059734.a n = A393095 n

end A393095

/-! ## A393095.P14215966882422654665

`A009947(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A393095.P14215966882422654665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A009947 (n - 1) + a (n - 2)

end

end A393095.P14215966882422654665

namespace A393095

/-- `A009947(n-1)+a(n-2)` -/
def P14215966882422654665.Spec : Prop :=
  ∀ n, P14215966882422654665.a n = A393095 n

end A393095

/-! ## A393095.P1187600567928645403

`A002620(n)-A008133(n+1)`
-/

namespace A393095.P1187600567928645403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A008133 (n + 1)

end

end A393095.P1187600567928645403

namespace A393095

/-- `A002620(n)-A008133(n+1)` -/
def P1187600567928645403.Spec : Prop :=
  ∀ n, P1187600567928645403.a n = A393095 n

end A393095

/-! ## A393095.P18289105635541772489

`A211546(n)-(A211534(n)+A069905(n))`
-/

namespace A393095.P18289105635541772489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211546 n - (A211534 n + A069905 n)

end

end A393095.P18289105635541772489

namespace A393095

/-- `A211546(n)-(A211534(n)+A069905(n))` -/
def P18289105635541772489.Spec : Prop :=
  ∀ n, P18289105635541772489.a n = A393095 n

end A393095

/-! ## A393095.P1375312493767891784

`A008217(2*n+1)-A008133(n+1)`
-/

namespace A393095.P1375312493767891784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (2 * n + 1) - A008133 (n + 1)

end

end A393095.P1375312493767891784

namespace A393095

/-- `A008217(2*n+1)-A008133(n+1)` -/
def P1375312493767891784.Spec : Prop :=
  ∀ n, P1375312493767891784.a n = A393095 n

end A393095

/-! ## A393095.P11649277269765302783

`A005868(A317633(n+2))`
-/

namespace A393095.P11649277269765302783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005868 (A317633 (n + 2)).toNat

end

end A393095.P11649277269765302783

namespace A393095

/-- `A005868(A317633(n+2))` -/
def P11649277269765302783.Spec : Prop :=
  ∀ n, P11649277269765302783.a n = A393095 n

end A393095

/-!
# A393096: Numbers k such that sopf(k) and k-sopf(k) are prime, where sopf() is the sum of distinct prime factors.

The programs for A393096, there is no canonical definition to state claims against.
-/

/-! ## A393096.P5758559712093208522

`A394062(n+1)+A394061(n+1)`
-/

namespace A393096.P5758559712093208522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394062 (n + 1) + A394061 (n + 1)

end

end A393096.P5758559712093208522

/-! ## A393096.P17531313535076189918

`∩[A071179(n+1), A114522(n+1)]`
-/

namespace A393096.P17531313535076189918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393096.P17531313535076189918

/-! ## A393096.P5297806946227054915

`A394061(n+1)+A154363(A124027(n+1)+A005117(n+1))`
-/

namespace A393096.P5297806946227054915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394061 (n + 1) + A154363 (A124027 (n + 1) + A005117 (n + 1)).toNat

end

end A393096.P5297806946227054915

/-!
# A393097: Number of partitions p of n such that max(p) > 3*min(p).

The programs for A393097, there is no canonical definition to state claims against.
-/

/-! ## A393097.P940229486189458584

`Δ[A000070(n)]-A393973(n+1)`
-/

namespace A393097.P940229486189458584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A393973 (n + 1)

end

end A393097.P940229486189458584

/-! ## A393097.P10095100041556381497

`record[A035363(n)]-A393973(n+1)`
-/

namespace A393097.P10095100041556381497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A393973 (n + 1)

end

end A393097.P10095100041556381497

/-! ## A393097.P1820671105735928198

`record[A035377(n)]-A393973(n+1)`
-/

namespace A393097.P1820671105735928198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A393973 (n + 1)

end

end A393097.P1820671105735928198

/-! ## A393097.P15197973468798023005

`A000041(n+1)-A393973(n+1)`
-/

namespace A393097.P15197973468798023005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A393973 (n + 1)

end

end A393097.P15197973468798023005

/-! ## A393097.P2380275332723717257

`A363211(n+1)-A237825(n+1)`
-/

namespace A393097.P2380275332723717257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363211 (n + 1) - A237825 (n + 1)

end

end A393097.P2380275332723717257

/-! ## A393097.P5801125260754573600

`Δ[A025065(2*n)]-A393973(n+1)`
-/

namespace A393097.P5801125260754573600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A393973 (n + 1)

end

end A393097.P5801125260754573600

/-! ## A393097.P732411879779435083

`A237821(n+1)+A053263(n)-A393973(n+1)`
-/

namespace A393097.P732411879779435083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237821 (n + 1) + A053263 n - A393973 (n + 1)

end

end A393097.P732411879779435083

/-! ## A393097.P5203663676910432975

`A363211(n+1)+A393972(n+1)-A393973(n+1)`
-/

namespace A393097.P5203663676910432975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363211 (n + 1) + (A393972 (n + 1) - A393973 (n + 1))

end

end A393097.P5203663676910432975

/-! ## A393097.P2931368854174515444

`A035377(3*n+2)+A000041(n+1)-A393972(n+1)-A237825(n+1)`
-/

namespace A393097.P2931368854174515444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n + 2) + (A000041 (n + 1) - A393972 (n + 1)) - A237825 (n + 1)

end

end A393097.P2931368854174515444

/-!
# A393098: Number of partitions of [n] whose set of block sizes equals [k] for some k.

The programs for A393098, there is no canonical definition to state claims against.
-/

/-! ## A393098.P8707965234145037047

`A107819(A275309(n))`
-/

namespace A393098.P8707965234145037047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107819 (A275309 n).toNat

end

end A393098.P8707965234145037047

/-! ## A393098.P8929703849665838882

`A375502(A369268(n))`
-/

namespace A393098.P8929703849665838882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375502 (A369268 n).toNat

end

end A393098.P8929703849665838882

/-! ## A393098.P4771968105756956476

`A375502(A171711(n+1))`
-/

namespace A393098.P4771968105756956476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375502 (A171711 (n + 1)).toNat

end

end A393098.P4771968105756956476

/-!
# A393099: Number of 4-stack polyominoes having semiperimeter equal to n.

The programs for A393099, there is no canonical definition to state claims against.
-/

/-! ## A393099.P10274756338980160406

`A350349(A150257(n))`
-/

namespace A393099.P10274756338980160406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350349 (A150257 n).toNat

end

end A393099.P10274756338980160406

/-! ## A393099.P16313775122471358391

`A381991(A150436(n))`
-/

namespace A393099.P16313775122471358391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381991 (A150436 n).toNat

end

end A393099.P16313775122471358391

