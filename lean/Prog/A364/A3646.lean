import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A364600: a(n) is the least number with exactly n divisors of the form 5*k+4.

The programs for A364600, there is no canonical definition to state claims against.
-/

/-! ## A364600.P5515045541885994951

`A175732(A226566(n+1))`
-/

namespace A364600.P5515045541885994951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175732 (A226566 (n + 1)).toNat

end

end A364600.P5515045541885994951

/-! ## A364600.P15830469592298977630

`∏[A060997(Δ[A058307(n)])]`
-/

namespace A364600.P15830469592298977630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058307 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060997 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A364600.P15830469592298977630

/-!
# A364601: Numbers m such that, if k is the number of digits of m, then for some r > 1, the sum of the k-th powers of the digits of m^r is equal to m.

The programs for A364601, there is no canonical definition to state claims against.
-/

/-! ## A364601.P14009441773713312777

`∏{p}[A018782(2*n+1), n+1+#]`
-/

namespace A364601.P14009441773713312777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018782 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n + 1 + p)

end

end A364601.P14009441773713312777

/-!
# A364603: Lexicographically earliest sequence where after the m-th appearance of term z, it is banned from re-appearing in the next m*z terms.

The programs for A364603, there is no canonical definition to state claims against.
-/

/-! ## A364603.P3998082070046496903

`A300655(or(A027757(n+1), A153142(n)))`
-/

namespace A364603.P3998082070046496903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300655 (Int.lor (A027757 (n + 1)) (A153142 n)).toNat

end

end A364603.P3998082070046496903

/-! ## A364603.P14980609648027472806

`A195079(A317604(n+1)-A129172(3*n+1))`
-/

namespace A364603.P14980609648027472806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (A317604 (n + 1) - A129172 (3 * n + 1)).toNat

end

end A364603.P14980609648027472806

/-!
# A364605: Number of 6-cycles in the n-Lucas cube graph.

The programs for A364605, the canonical program `A364605.P16506345846360599253` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364605 has offset 1).

The definition of A364605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364605.P16506345846360599253

`ogf((5x^4+24x^5-19x^6+4x^7+x^8)/(1-4x+2x^2+8x^3-5x^4-8x^5+2x^6+4x^7+x^8))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364605

/-- `ogf((5x^4+24x^5-19x^6+4x^7+x^8)/(1-4x+2x^2+8x^3-5x^4-8x^5+2x^6+4x^7+x^8))` -/
def P16506345846360599253.Spec : Prop :=
  ∀ n, P16506345846360599253.a n = A364605 (n + 1)

theorem P16506345846360599253.correct : P16506345846360599253.Spec := by
  intro n
  simp only [A364605, Nat.add_sub_cancel]

end A364605

/-! ## A364605.P3241243528490431181

`A085860(A323847(n)²)`
-/

namespace A364605.P3241243528490431181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A323847 n ^ 2).toNat

end

end A364605.P3241243528490431181

namespace A364605

/-- `A085860(A323847(n)²)` -/
def P3241243528490431181.Spec : Prop :=
  ∀ n, P3241243528490431181.a n = A364605 (n + 1)

end A364605

/-! ## A364605.P11331712617952319790

`∑{p}[A063401(n)-n, #]%A185950(n+1)`
-/

namespace A364605.P11331712617952319790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063401 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A185950 (n + 1))

end

end A364605.P11331712617952319790

namespace A364605

/-- `∑{p}[A063401(n)-n, #]%A185950(n+1)` -/
def P11331712617952319790.Spec : Prop :=
  ∀ n, P11331712617952319790.a n = A364605 (n + 1)

end A364605

/-!
# A364606: Numbers k such that the average digit of 2^k is an integer.

The programs for A364606, there is no canonical definition to state claims against.
-/

/-! ## A364606.P11669033621923637022

`eq[A219842(n+1), A280153(n+1)]`
-/

namespace A364606.P11669033621923637022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364606.P11669033621923637022

/-! ## A364606.P14750360088664837742

`eq[A186233(n+1), A363926(n+1)]`
-/

namespace A364606.P14750360088664837742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364606.P14750360088664837742

/-!
# A364609: a(n) = greatest integer k such that 1/n + 1/(n + 1) + ... + 1/k < sqrt(2).

The programs for A364609, there is no canonical definition to state claims against.
-/

/-! ## A364609.P6351110187522237741

`A347792(7*n+1)-7*n`
-/

namespace A364609.P6351110187522237741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 (7 * n + 1) - (7 * n : ℤ)

end

end A364609.P6351110187522237741

/-! ## A364609.P8758924888242138889

`A016777(n)+comp[A017317(n)]`
-/

namespace A364609.P8758924888242138889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A364609.P8758924888242138889

/-! ## A364609.P18057571248997036649

`A085268(2*n+1)+A016777(n)`
-/

namespace A364609.P18057571248997036649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085268 (2 * n + 1 + 32) + A016777 n

end

end A364609.P18057571248997036649

/-! ## A364609.P4591371194277529533

`A002264(A313538(2*n+1))+n`
-/

namespace A364609.P4591371194277529533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A313538 (2 * n + 1)).toNat + (n : ℤ)

end

end A364609.P4591371194277529533

/-! ## A364609.P2853898853616930698

`A008585(n)+∑[A336041(2*n+1)]`
-/

namespace A364609.P2853898853616930698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364609.P2853898853616930698

/-! ## A364609.P2880761052770877421

`A085268(2*n+1)+Δ[A000326(n)]`
-/

namespace A364609.P2880761052770877421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085268 (2 * n + 1 + 32) + (f1 (n + 1) - f1 n)

end

end A364609.P2880761052770877421

/-! ## A364609.P6432529912804936464

`A000027(3*n+1)+comp[A017317(n)]`
-/

namespace A364609.P6432529912804936464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A364609.P6432529912804936464

/-! ## A364609.P9687611463289082398

`A008585(3*n+2)-A313721(n+1)`
-/

namespace A364609.P9687611463289082398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (3 * n + 2) - A313721 (n + 1)

end

end A364609.P9687611463289082398

/-! ## A364609.P107931521926836928

`A008618(2*n+1)+A004273(2*n+1)`
-/

namespace A364609.P107931521926836928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (2 * n + 1) + A004273 (2 * n + 1)

end

end A364609.P107931521926836928

/-! ## A364609.P7759710823024105718

`A002264(A063247(2*n+1))+2*n+1`
-/

namespace A364609.P7759710823024105718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A063247 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A364609.P7759710823024105718

/-!
# A364610: Centered pentagonal numbers which are products of three distinct primes.

The programs for A364610, there is no canonical definition to state claims against.
-/

/-! ## A364610.P2262332537987577050

`filter[A005891(n), A354926(#)]`
-/

namespace A364610.P2262332537987577050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A364610.P2262332537987577050

/-! ## A364610.P8956200779587505649

`filter[A087099(2*n+1), A354926(#)]`
-/

namespace A364610.P8956200779587505649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087099 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A364610.P8956200779587505649

/-! ## A364610.P18088628040690884606

`filter[A111712(2*n+1), A354926(#)]`
-/

namespace A364610.P18088628040690884606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111712 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A364610.P18088628040690884606

/-! ## A364610.P4272385564719983144

`filter[A330133(2*n+1), A354926(#)]`
-/

namespace A364610.P4272385564719983144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A364610.P4272385564719983144

/-!
# A364612: a(n) = number of partitions of n whose difference multiset has at least one duplicate; see Comments.

The programs for A364612, there is no canonical definition to state claims against.
-/

/-! ## A364612.P15172240446056391575

`A000041(n)-A363994(n)`
-/

namespace A364612.P15172240446056391575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A363994 n

end

end A364612.P15172240446056391575

/-! ## A364612.P9274809577613673856

`A213598(n)-A363994(n)`
-/

namespace A364612.P9274809577613673856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A363994 n

end

end A364612.P9274809577613673856

/-! ## A364612.P4505278035960290732

`∑[A002865(n)]-A363994(n)`
-/

namespace A364612.P4505278035960290732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A363994 n

end

end A364612.P4505278035960290732

/-! ## A364612.P5621627512085337834

`∑{d}[n+1, A133732(#)]-A363994(n)`
-/

namespace A364612.P5621627512085337834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d - A363994 n

end

end A364612.P5621627512085337834

/-! ## A364612.P1808163618209412286

`A018783(n)+A000837(n)-A363994(n)`
-/

namespace A364612.P1808163618209412286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n - A363994 n

end

end A364612.P1808163618209412286

/-!
# A364613: a(n) = number of partitions of n whose sum multiset is free of duplicates; see Comments.

The programs for A364613, there is no canonical definition to state claims against.
-/

/-! ## A364613.P15009295017662549165

`A325877(n)+char[2*(n+1)]`
-/

namespace A364613.P15009295017662549165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325877 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A364613.P15009295017662549165

/-! ## A364613.P13443802996429539552

`A333755((n%2)^n)+A325877(n)`
-/

namespace A364613.P13443802996429539552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 ((n % 2) ^ n) + A325877 n

end

end A364613.P13443802996429539552

/-! ## A364613.P17106291430921069210

`A363994(n)+A325877(n)-A325876(n)`
-/

namespace A364613.P17106291430921069210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363994 n + A325877 n - A325876 n

end

end A364613.P17106291430921069210

/-! ## A364613.P1980533288471288858

`A358769(A011782(n))+A325877(n)`
-/

namespace A364613.P1980533288471288858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358769 (A011782 n).toNat + A325877 n

end

end A364613.P1980533288471288858

/-! ## A364613.P18394006921096931174

`A127321(A178381(n+2)-A244122(n))`
-/

namespace A364613.P18394006921096931174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A178381 (n + 2) - A244122 n).toNat

end

end A364613.P18394006921096931174

/-!
# A364614: Numbers not divisible by any prime of the form 3*k - 1.

The programs for A364614, the canonical program `A364614.P12634051005538976662` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364614 has offset 1).

The definition of A364614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364614.P10117676027421178237

`eq[n, A354091(or(1, n))]`
-/

namespace A364614.P10117676027421178237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354091 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364614.P10117676027421178237

namespace A364614

/-- `eq[n, A354091(or(1, n))]` -/
def P10117676027421178237.Spec : Prop :=
  ∀ n, (P10117676027421178237.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P2489870578931007749

`eq[n, A354092(or(1, n))]`
-/

namespace A364614.P2489870578931007749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364614.P2489870578931007749

namespace A364614

/-- `eq[n, A354092(or(1, n))]` -/
def P2489870578931007749.Spec : Prop :=
  ∀ n, (P2489870578931007749.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P11962457103527168595

`record[C(A354092(1+n), n)]`
-/

namespace A364614.P11962457103527168595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354092 (1 + n)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364614.P11962457103527168595

namespace A364614

/-- `record[C(A354092(1+n), n)]` -/
def P11962457103527168595.Spec : Prop :=
  ∀ n, (P11962457103527168595.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P3492337650841486299

`eq[0, A001822(n+1)]+1`
-/

namespace A364614.P3492337650841486299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364614.P3492337650841486299

namespace A364614

/-- `eq[0, A001822(n+1)]+1` -/
def P3492337650841486299.Spec : Prop :=
  ∀ n, (P3492337650841486299.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P12634051005538976662

`eq[0, A005074(n+1)]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364614

/-- `eq[0, A005074(n+1)]+1` -/
def P12634051005538976662.Spec : Prop :=
  ∀ n, (P12634051005538976662.a n : ℤ) = A364614 (n + 1)

theorem P12634051005538976662.correct : P12634051005538976662.Spec := by
  intro n
  simp only [A364614, Nat.add_sub_cancel]

end A364614

/-! ## A364614.P8727021568272582778

`eq[0, A005075(n+1)]+1`
-/

namespace A364614.P8727021568272582778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364614.P8727021568272582778

namespace A364614

/-- `eq[0, A005075(n+1)]+1` -/
def P8727021568272582778.Spec : Prop :=
  ∀ n, (P8727021568272582778.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P7710690733479186596

`eq[0, A005077(n+1)]+1`
-/

namespace A364614.P7710690733479186596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364614.P7710690733479186596

namespace A364614

/-- `eq[0, A005077(n+1)]+1` -/
def P7710690733479186596.Spec : Prop :=
  ∀ n, (P7710690733479186596.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P14678681930835525767

`eq[0, A005090(n+1)]+1`
-/

namespace A364614.P14678681930835525767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364614.P14678681930835525767

namespace A364614

/-- `eq[0, A005090(n+1)]+1` -/
def P14678681930835525767.Spec : Prop :=
  ∀ n, (P14678681930835525767.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P4909921107915199913

`eq[0, A078182(n+1)]+1`
-/

namespace A364614.P4909921107915199913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364614.P4909921107915199913

namespace A364614

/-- `eq[0, A078182(n+1)]+1` -/
def P4909921107915199913.Spec : Prop :=
  ∀ n, (P4909921107915199913.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P10033098036032321755

`eq[0, A364016(n+1)]+1`
-/

namespace A364614.P10033098036032321755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364614.P10033098036032321755

namespace A364614

/-- `eq[0, A364016(n+1)]+1` -/
def P10033098036032321755.Spec : Prop :=
  ∀ n, (P10033098036032321755.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P10226302801958196553

`filter[2*n+1, A140214(#)]`
-/

namespace A364614.P10226302801958196553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A140214 (f1 j) = 1) n)

end

end A364614.P10226302801958196553

namespace A364614

/-- `filter[2*n+1, A140214(#)]` -/
def P10226302801958196553.Spec : Prop :=
  ∀ n, (P10226302801958196553.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P17186660024893186614

`filter[2*n+1, A170825(#)]`
-/

namespace A364614.P17186660024893186614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A170825 (f1 j) = 1) n)

end

end A364614.P17186660024893186614

namespace A364614

/-- `filter[2*n+1, A170825(#)]` -/
def P17186660024893186614.Spec : Prop :=
  ∀ n, (P17186660024893186614.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P3553738400455667715

`filter[2*n+1, A343430(#)]`
-/

namespace A364614.P3553738400455667715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343430 (f1 j) = 1) n)

end

end A364614.P3553738400455667715

namespace A364614

/-- `filter[2*n+1, A343430(#)]` -/
def P3553738400455667715.Spec : Prop :=
  ∀ n, (P3553738400455667715.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P8476024254260809300

`filter[2*n+1, A343431(#)]`
-/

namespace A364614.P8476024254260809300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343431 (f1 j) = 1) n)

end

end A364614.P8476024254260809300

namespace A364614

/-- `filter[2*n+1, A343431(#)]` -/
def P8476024254260809300.Spec : Prop :=
  ∀ n, (P8476024254260809300.a n : ℤ) = A364614 (n + 1)

end A364614

/-! ## A364614.P18067497520604395456

`filter[A291270(n+2), A000035(#)]`
-/

namespace A364614.P18067497520604395456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A364614.P18067497520604395456

namespace A364614

/-- `filter[A291270(n+2), A000035(#)]` -/
def P18067497520604395456.Spec : Prop :=
  ∀ n, P18067497520604395456.a n = A364614 (n + 1)

end A364614

/-! ## A364614.P3783056581980151834

`filter[A211316(2*n+3), A000035(#)]`
-/

namespace A364614.P3783056581980151834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211316 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A364614.P3783056581980151834

namespace A364614

/-- `filter[A211316(2*n+3), A000035(#)]` -/
def P3783056581980151834.Spec : Prop :=
  ∀ n, P3783056581980151834.a n = A364614 (n + 1)

end A364614

/-! ## A364614.P15761442499867877467

`filter[A291267(2*n+3), A000035(#)]`
-/

namespace A364614.P15761442499867877467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291267 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A364614.P15761442499867877467

namespace A364614

/-- `filter[A291267(2*n+3), A000035(#)]` -/
def P15761442499867877467.Spec : Prop :=
  ∀ n, P15761442499867877467.a n = A364614 (n + 1)

end A364614

/-! ## A364614.P17901683154143121193

`filter[A211316(2*n+3), A374134(#)]`
-/

namespace A364614.P17901683154143121193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211316 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A364614.P17901683154143121193

namespace A364614

/-- `filter[A211316(2*n+3), A374134(#)]` -/
def P17901683154143121193.Spec : Prop :=
  ∀ n, P17901683154143121193.a n = A364614 (n + 1)

end A364614

/-! ## A364614.P6693309211826938491

`filter[A291267(2*n+3), A374134(#)]`
-/

namespace A364614.P6693309211826938491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291267 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A364614.P6693309211826938491

namespace A364614

/-- `filter[A291267(2*n+3), A374134(#)]` -/
def P6693309211826938491.Spec : Prop :=
  ∀ n, P6693309211826938491.a n = A364614 (n + 1)

end A364614

/-! ## A364614.P2860225471303374775

`filter[A291270(2*n+3), A374134(#)]`
-/

namespace A364614.P2860225471303374775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291270 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A364614.P2860225471303374775

namespace A364614

/-- `filter[A291270(2*n+3), A374134(#)]` -/
def P2860225471303374775.Spec : Prop :=
  ∀ n, P2860225471303374775.a n = A364614 (n + 1)

end A364614

/-!
# A364616: Number of tilings of a 6 X n rectangle using dominoes and trominoes (of any shape).

The programs for A364616, there is no canonical definition to state claims against.
-/

/-! ## A364616.P9921323957912563273

`record[A364457(A167499(n)+1)]`
-/

namespace A364616.P9921323957912563273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A167499 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364616.P9921323957912563273

/-! ## A364616.P5216734527396956235

`A364457(A055999(n+4)-1)`
-/

namespace A364616.P5216734527396956235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A055999 (n + 4) - 1).toNat

end

end A364616.P5216734527396956235

/-! ## A364616.P15693920767651751385

`A364457(A000096(n+5)+7)`
-/

namespace A364616.P15693920767651751385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A000096 (n + 5) + 7).toNat

end

end A364616.P15693920767651751385

/-! ## A364616.P13596142844668506758

`A364457(A000217(n+7)-7)`
-/

namespace A364616.P13596142844668506758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A000217 (n + 7) - 7).toNat

end

end A364616.P13596142844668506758

/-! ## A364616.P747468656528211728

`A364457(eq[7, A002260(n+1)])`
-/

namespace A364616.P747468656528211728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364616.P747468656528211728

/-!
# A364617: Number of tilings of a 7 X n rectangle using dominoes and trominoes (of any shape).

The programs for A364617, there is no canonical definition to state claims against.
-/

/-! ## A364617.P15615087001861200542

`A364457(eq[7, A025581(n)])`
-/

namespace A364617.P15615087001861200542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364617.P15615087001861200542

/-! ## A364617.P6028962510342503185

`A364457(A056000(n+4)+2)`
-/

namespace A364617.P6028962510342503185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A056000 (n + 4) + 2).toNat

end

end A364617.P6028962510342503185

/-! ## A364617.P15712712160727768537

`A364457(A167499(n+6)+2)`
-/

namespace A364617.P15712712160727768537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A167499 (n + 6) + 2).toNat

end

end A364617.P15712712160727768537

/-! ## A364617.P15019339378982279526

`A364457(eq[5, A243070(n+1)])`
-/

namespace A364617.P15019339378982279526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364617.P15019339378982279526

/-! ## A364617.P7428431993845432289

`A364457(eq[9, A002260(n+1)+1])`
-/

namespace A364617.P7428431993845432289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364617.P7428431993845432289

/-!
# A364619: Number of 4-cycles in the n-Pell graph.

The programs for A364619, the canonical program `A364619.P10825222375476651827` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364619 has offset 0).

The definition of A364619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364619.P3315128382650383486

`ogf((x^2+2x^3+x^4)/(1-6x+9x^2+4x^3-9x^4-6x^5-x^6))`
-/

namespace A364619.P3315128382650383486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2, 1] [1, -6, 9, 4, -9, -6, -1] n

end

end A364619.P3315128382650383486

namespace A364619

/-- `ogf((x^2+2x^3+x^4)/(1-6x+9x^2+4x^3-9x^4-6x^5-x^6))` -/
def P3315128382650383486.Spec : Prop :=
  ∀ n, P3315128382650383486.a n = A364619 n

end A364619

/-! ## A364619.P10825222375476651827

`(n*(2*n-3)*A001333(n)+(2*n²-2*n+1)*A000129(n))/16`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A364619

/-- `(n*(2*n-3)*A001333(n)+(2*n²-2*n+1)*A000129(n))/16` -/
def P10825222375476651827.Spec : Prop :=
  ∀ n, P10825222375476651827.a n = (A364619 n : ℚ)

end A364619

/-!
# A364620: G.f. satisfies A(x) = 1/(1-x)^2 + x*A(x)^3.

The programs for A364620, the canonical program `A364620.P2393978728854930774` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364620 has offset 0).

The definition of A364620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364620.P2393978728854930774

`∑{#}[n, C(n+3*#+1, 4*#+1)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364620

/-- `∑{#}[n, C(n+3*#+1, 4*#+1)*C(3*#, #)/(2*#+1)]` -/
def P2393978728854930774.Spec : Prop :=
  ∀ n, P2393978728854930774.a n = (A364620 n : ℚ)

end A364620

/-! ## A364620.P3748532951261886625

`∑[A366177(n)]`
-/

namespace A364620.P3748532951261886625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364620.P3748532951261886625

namespace A364620

/-- `∑[A366177(n)]` -/
def P3748532951261886625.Spec : Prop :=
  ∀ n, P3748532951261886625.a n = A364620 n

end A364620

/-! ## A364620.P1383279245968050883

`∑{#}[n, C(n, #)*A364336(#)]`
-/

namespace A364620.P1383279245968050883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A364336 k

end

end A364620.P1383279245968050883

namespace A364620

/-- `∑{#}[n, C(n, #)*A364336(#)]` -/
def P1383279245968050883.Spec : Prop :=
  ∀ n, P1383279245968050883.a n = A364620 n

end A364620

/-!
# A364621: G.f. satisfies A(x) = 1/(1-x)^2 + x*A(x)^4.

The programs for A364621, the canonical program `A364621.P9721787176786955691` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364621 has offset 0).

The definition of A364621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364621.P9721787176786955691

`∑{#}[n, C(n+5*#+1, 6*#+1)*C(4*#, #)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364621

/-- `∑{#}[n, C(n+5*#+1, 6*#+1)*C(4*#, #)/(3*#+1)]` -/
def P9721787176786955691.Spec : Prop :=
  ∀ n, P9721787176786955691.a n = (A364621 n : ℚ)

end A364621

/-!
# A364622: G.f. satisfies A(x) = 1/(1-x)^2 + x^2*A(x)^4.

The programs for A364622, the canonical program `A364622.P16840449199681155604` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364622 has offset 0).

The definition of A364622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364622.P16840449199681155604

`∑{#}[floor(n/2), C(n+4*#+1, 6*#+1)*C(4*#, #)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364622

/-- `∑{#}[floor(n/2), C(n+4*#+1, 6*#+1)*C(4*#, #)/(3*#+1)]` -/
def P16840449199681155604.Spec : Prop :=
  ∀ n, P16840449199681155604.a n = (A364622 n : ℚ)

end A364622

/-! ## A364622.P17417109085163167331

`A245573(A150546(n+1))`
-/

namespace A364622.P17417109085163167331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (A150546 (n + 1)).toNat

end

end A364622.P17417109085163167331

namespace A364622

/-- `A245573(A150546(n+1))` -/
def P17417109085163167331.Spec : Prop :=
  ∀ n, P17417109085163167331.a n = A364622 n

end A364622

/-! ## A364622.P3964434033007158475

`A002265(A326244(n+1)+A002473(3*n+4))`
-/

namespace A364622.P3964434033007158475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A326244 (n + 1) + A002473 (3 * n + 4)).toNat

end

end A364622.P3964434033007158475

namespace A364622

/-- `A002265(A326244(n+1)+A002473(3*n+4))` -/
def P3964434033007158475.Spec : Prop :=
  ∀ n, P3964434033007158475.a n = A364622 n

end A364622

/-!
# A364623: G.f. satisfies A(x) = 1/(1-x)^3 + x*A(x)^3.

The programs for A364623, the canonical program `A364623.P4243319481942370514` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364623 has offset 0).

The definition of A364623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364623.P4243319481942370514

`∑{#}[n, C(n+5*#+2, 6*#+2)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364623

/-- `∑{#}[n, C(n+5*#+2, 6*#+2)*C(3*#, #)/(2*#+1)]` -/
def P4243319481942370514.Spec : Prop :=
  ∀ n, P4243319481942370514.a n = (A364623 n : ℚ)

end A364623

/-! ## A364623.P2935169926945343031

`∑[A364629(n)]`
-/

namespace A364623.P2935169926945343031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364623.P2935169926945343031

namespace A364623

/-- `∑[A364629(n)]` -/
def P2935169926945343031.Spec : Prop :=
  ∀ n, P2935169926945343031.a n = A364623 n

end A364623

/-!
# A364624: G.f. satisfies A(x) = 1/(1-x)^3 + x*A(x)^4.

The programs for A364624, the canonical program `A364624.P7255158619955871787` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364624 has offset 0).

The definition of A364624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364624.P7255158619955871787

`∑{#}[n, C(n+8*#+2, 9*#+2)*C(4*#, #)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364624

/-- `∑{#}[n, C(n+8*#+2, 9*#+2)*C(4*#, #)/(3*#+1)]` -/
def P7255158619955871787.Spec : Prop :=
  ∀ n, P7255158619955871787.a n = (A364624 n : ℚ)

end A364624

/-!
# A364625: G.f. satisfies A(x) = 1/(1-x)^3 + x^2*A(x)^2.

The programs for A364625, the canonical program `A364625.P8909488270591801922` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364625 has offset 0).

The definition of A364625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364625.P8909488270591801922

`∑{#}[floor(n/2), C(n+#+2, 3*#+2)*C(2*#, #)/(#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364625

/-- `∑{#}[floor(n/2), C(n+#+2, 3*#+2)*C(2*#, #)/(#+1)]` -/
def P8909488270591801922.Spec : Prop :=
  ∀ n, P8909488270591801922.a n = (A364625 n : ℚ)

end A364625

/-! ## A364625.P12135646832483355319

`∑[A105633(n)]`
-/

namespace A364625.P12135646832483355319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364625.P12135646832483355319

namespace A364625

/-- `∑[A105633(n)]` -/
def P12135646832483355319.Spec : Prop :=
  ∀ n, P12135646832483355319.a n = A364625 n

end A364625

/-! ## A364625.P14828846360353774003

`∑[∑[A086581(n)]]`
-/

namespace A364625.P14828846360353774003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364625.P14828846360353774003

namespace A364625

/-- `∑[∑[A086581(n)]]` -/
def P14828846360353774003.Spec : Prop :=
  ∀ n, P14828846360353774003.a n = A364625 n

end A364625

/-! ## A364625.P15452927886718301161

`∑[∑[A082582(n+1)]]`
-/

namespace A364625.P15452927886718301161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364625.P15452927886718301161

namespace A364625

/-- `∑[∑[A082582(n+1)]]` -/
def P15452927886718301161.Spec : Prop :=
  ∀ n, P15452927886718301161.a n = A364625 n

end A364625

/-! ## A364625.P2009434963452031093

`∑[∑[A025242(n+2)]]`
-/

namespace A364625.P2009434963452031093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364625.P2009434963452031093

namespace A364625

/-- `∑[∑[A025242(n+2)]]` -/
def P2009434963452031093.Spec : Prop :=
  ∀ n, P2009434963452031093.a n = A364625 n

end A364625

/-! ## A364625.P9266346067597236330

`∑[∑[A098978(A087811(n+1))]]`
-/

namespace A364625.P9266346067597236330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A087811 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364625.P9266346067597236330

namespace A364625

/-- `∑[∑[A098978(A087811(n+1))]]` -/
def P9266346067597236330.Spec : Prop :=
  ∀ n, P9266346067597236330.a n = A364625 n

end A364625

/-! ## A364625.P17412579108408451063

`∑[∑[A098978(A076921(n+2))]]`
-/

namespace A364625.P17412579108408451063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A076921 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364625.P17412579108408451063

namespace A364625

/-- `∑[∑[A098978(A076921(n+2))]]` -/
def P17412579108408451063.Spec : Prop :=
  ∀ n, P17412579108408451063.a n = A364625 n

end A364625

/-!
# A364626: G.f. satisfies A(x) = 1/(1-x)^3 + x^2*A(x)^3.

The programs for A364626, the canonical program `A364626.P17635326974181474676` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364626 has offset 0).

The definition of A364626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364626.P17635326974181474676

`∑{#}[floor(n/2), C(n+4*#+2, 6*#+2)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364626

/-- `∑{#}[floor(n/2), C(n+4*#+2, 6*#+2)*C(3*#, #)/(2*#+1)]` -/
def P17635326974181474676.Spec : Prop :=
  ∀ n, P17635326974181474676.a n = (A364626 n : ℚ)

end A364626

/-! ## A364626.P16800784006087052779

`or(A097930(n+1), A248180(A296223(n)))`
-/

namespace A364626.P16800784006087052779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097930 (n + 1)) (A248180 (A296223 n).toNat)

end

end A364626.P16800784006087052779

namespace A364626

/-- `or(A097930(n+1), A248180(A296223(n)))` -/
def P16800784006087052779.Spec : Prop :=
  ∀ n, P16800784006087052779.a n = A364626 n

end A364626

/-! ## A364626.P17353425602670354117

`or(A187276(n+1), A330827(A277359(n)))`
-/

namespace A364626.P17353425602670354117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A187276 (n + 1)) (A330827 (A277359 n).toNat)

end

end A364626.P17353425602670354117

namespace A364626

/-- `or(A187276(n+1), A330827(A277359(n)))` -/
def P17353425602670354117.Spec : Prop :=
  ∀ n, P17353425602670354117.a n = A364626 n

end A364626

/-!
# A364627: G.f. satisfies A(x) = 1/(1-x)^3 + x^2*A(x)^4.

The programs for A364627, the canonical program `A364627.P4736439114171328312` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364627 has offset 0).

The definition of A364627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364627.P4736439114171328312

`∑{#}[floor(n/2), C(n+7*#+2, 9*#+2)*C(4*#, #)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364627

/-- `∑{#}[floor(n/2), C(n+7*#+2, 9*#+2)*C(4*#, #)/(3*#+1)]` -/
def P4736439114171328312.Spec : Prop :=
  ∀ n, P4736439114171328312.a n = (A364627 n : ℚ)

end A364627

/-! ## A364627.P9716867350737494250

`A337485(A250120(n))+A142153(n+1)`
-/

namespace A364627.P9716867350737494250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337485 (A250120 n).toNat + A142153 (n + 1)

end

end A364627.P9716867350737494250

namespace A364627

/-- `A337485(A250120(n))+A142153(n+1)` -/
def P9716867350737494250.Spec : Prop :=
  ∀ n, P9716867350737494250.a n = A364627 n

end A364627

/-!
# A364629: G.f. satisfies A(x) = (1+x*A(x)^3)/(1-x)^2.

The programs for A364629, the canonical program `A364629.P1289168194915504117` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364629 has offset 0).

The definition of A364629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364629.P1289168194915504117

`∑{#}[n, C(n+5*#+1, 6*#+1)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364629

/-- `∑{#}[n, C(n+5*#+1, 6*#+1)*C(3*#, #)/(2*#+1)]` -/
def P1289168194915504117.Spec : Prop :=
  ∀ n, P1289168194915504117.a n = (A364629 n : ℚ)

end A364629

/-!
# A364630: G.f. satisfies A(x) = (1+x*A(x)^4)/(1-x)^2.

The programs for A364630, the canonical program `A364630.P1040465513075556290` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364630 has offset 0).

The definition of A364630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364630.P1040465513075556290

`∑{#}[n, C(n+7*#+1, 8*#+1)*C(4*#, #)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364630

/-- `∑{#}[n, C(n+7*#+1, 8*#+1)*C(4*#, #)/(3*#+1)]` -/
def P1040465513075556290.Spec : Prop :=
  ∀ n, P1040465513075556290.a n = (A364630 n : ℚ)

end A364630

/-!
# A364631: a(n) is the number of iterations of phi(psi(x)) starting at x = n and terminating when psi(phi(x)) = x (n is counted), -1 otherwise.

The programs for A364631, there is no canonical definition to state claims against.
-/

/-! ## A364631.P17688721780401673756

`A364642(∑{d}[∏{p}[n+1, #], (n+1)/#])`
-/

namespace A364631.P17688721780401673756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364642 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364631.P17688721780401673756

/-! ## A364631.P14566403489992820999

`A364642((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1])`
-/

namespace A364631.P14566403489992820999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364642 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℚ))).toNat

end

end A364631.P14566403489992820999

/-! ## A364631.P9397238763532822495

`A364642(A001615(n+1))`
-/

namespace A364631.P9397238763532822495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364642 (A001615 (n + 1)).toNat

end

end A364631.P9397238763532822495

/-! ## A364631.P10487849080873925427

`A364642(abs(A158523(n+1)))`
-/

namespace A364631.P10487849080873925427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364642 |A158523 (n + 1)|.toNat

end

end A364631.P10487849080873925427

/-! ## A364631.P8467613245996325015

`A364642(A160890(n+1)/7)`
-/

namespace A364631.P8467613245996325015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364642 (SequenceMachineLib.roundAway ((A160890 (n + 1) : ℚ) / 7)).toNat

end

end A364631.P8467613245996325015

/-! ## A364631.P3429713459341712933

`A364642(A292786(n+1)+A000010(n+1))`
-/

namespace A364631.P3429713459341712933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364642 (A292786 (n + 1) + A000010 (n + 1)).toNat

end

end A364631.P3429713459341712933

/-!
# A364632: Number of tilings of an 8 X n rectangle using dominoes and trominoes (of any shape).

The programs for A364632, there is no canonical definition to state claims against.
-/

/-! ## A364632.P3259254276492350930

`A364457(eq[8, A002262(n)])`
-/

namespace A364632.P3259254276492350930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364632.P3259254276492350930

/-! ## A364632.P17048296558589564939

`A364457(eq[8, A025581(n)])`
-/

namespace A364632.P17048296558589564939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364632.P17048296558589564939

/-! ## A364632.P14099419395871734432

`A364457(A000217(n+9)-9)`
-/

namespace A364632.P14099419395871734432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A000217 (n + 9) - 9).toNat

end

end A364632.P14099419395871734432

/-! ## A364632.P16389046636055179225

`A364457(eq[6, A219347(n)]-1)`
-/

namespace A364632.P16389046636055179225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A364632.P16389046636055179225

/-!
# A364633: a(n) is the smallest nonnegative number k such that prime(n) + k is divisible by n + 1.

The programs for A364633, the canonical program `A364633.P78472182308857883` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364633 has offset 1).

The definition of A364633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364633.P78472182308857883

`(n+2)*ceil(A000040(n+1)/(n+2))-A000040(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A364633

/-- `(n+2)*ceil(A000040(n+1)/(n+2))-A000040(n+1)` -/
def P78472182308857883.Spec : Prop :=
  ∀ n, P78472182308857883.a n = A364633 (n + 1)

theorem P78472182308857883.correct : P78472182308857883.Spec := by
  intro n
  simp only [A364633, Nat.add_sub_cancel]

end A364633

/-! ## A364633.P1151451567877676210

`A033286(n+1)%(n+2)`
-/

namespace A364633.P1151451567877676210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033286 (n + 1)) (n + 2 : ℤ)

end

end A364633.P1151451567877676210

namespace A364633

/-- `A033286(n+1)%(n+2)` -/
def P1151451567877676210.Spec : Prop :=
  ∀ n, P1151451567877676210.a n = A364633 (n + 1)

end A364633

/-! ## A364633.P17927389116573928048

`A152117(n+1)%(n+2)`
-/

namespace A364633.P17927389116573928048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152117 (n + 1)) (n + 2 : ℤ)

end

end A364633.P17927389116573928048

namespace A364633

/-- `A152117(n+1)%(n+2)` -/
def P17927389116573928048.Spec : Prop :=
  ∀ n, P17927389116573928048.a n = A364633 (n + 1)

end A364633

/-! ## A364633.P16099500934389121277

`(A083723(n+1)-n)%(n+2)`
-/

namespace A364633.P16099500934389121277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083723 (n + 1) - (n : ℤ)) (n + 2 : ℤ)

end

end A364633.P16099500934389121277

namespace A364633

/-- `(A083723(n+1)-n)%(n+2)` -/
def P16099500934389121277.Spec : Prop :=
  ∀ n, P16099500934389121277.a n = A364633 (n + 1)

end A364633

/-! ## A364633.P4584798644666694146

`n+1-A006093(n+1)%(n+2)`
-/

namespace A364633.P4584798644666694146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A006093 (n + 1)) (n + 2 : ℤ)

end

end A364633.P4584798644666694146

namespace A364633

/-- `n+1-A006093(n+1)%(n+2)` -/
def P4584798644666694146.Spec : Prop :=
  ∀ n, P4584798644666694146.a n = A364633 (n + 1)

end A364633

/-! ## A364633.P17526974216928200621

`n+1-A039915(n+1)%(n+2)`
-/

namespace A364633.P17526974216928200621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A039915 (n + 1)) (n + 2 : ℤ)

end

end A364633.P17526974216928200621

namespace A364633

/-- `n+1-A039915(n+1)%(n+2)` -/
def P17526974216928200621.Spec : Prop :=
  ∀ n, P17526974216928200621.a n = A364633 (n + 1)

end A364633

/-! ## A364633.P4888856647303915656

`((n+1)*A000040(n+1))%(n+2)`
-/

namespace A364633.P4888856647303915656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A000040 (n + 1)) (n + 2 : ℤ)

end

end A364633.P4888856647303915656

namespace A364633

/-- `((n+1)*A000040(n+1))%(n+2)` -/
def P4888856647303915656.Spec : Prop :=
  ∀ n, P4888856647303915656.a n = A364633 (n + 1)

end A364633

/-! ## A364633.P17670413720588046503

`((n+1)*A008864(n+1)+1)%(n+2)`
-/

namespace A364633.P17670413720588046503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A008864 (n + 1) + 1) (n + 2 : ℤ)

end

end A364633.P17670413720588046503

namespace A364633

/-- `((n+1)*A008864(n+1)+1)%(n+2)` -/
def P17670413720588046503.Spec : Prop :=
  ∀ n, P17670413720588046503.a n = A364633 (n + 1)

end A364633

/-!
# A364634: a(n) = n * LegendreP(n, 3).

The programs for A364634, the canonical program `A364634.P17604235920160458618` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364634 has offset 0).

The definition of A364634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364634.P17604235920160458618

`n*A001850(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A364634

/-- `n*A001850(n)` -/
def P17604235920160458618.Spec : Prop :=
  ∀ n, P17604235920160458618.a n = A364634 n

theorem P17604235920160458618.correct : P17604235920160458618.Spec := by
  intro n
  simp only [A364634]

end A364634

/-! ## A364634.P229439416920580309

`A364361(C(2*n+1, 2)+n)`
-/

namespace A364634.P229439416920580309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364361 (Nat.choose (2 * n + 1) 2 + n)

end

end A364634.P229439416920580309

namespace A364634

/-- `A364361(C(2*n+1, 2)+n)` -/
def P229439416920580309.Spec : Prop :=
  ∀ n, P229439416920580309.a n = A364634 n

end A364634

/-! ## A364634.P17845191911907768472

`n*∑{#}[n, 2^#*C(n, #)²]`
-/

namespace A364634.P17845191911907768472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose n k ^ 2)

end

end A364634.P17845191911907768472

namespace A364634

/-- `n*∑{#}[n, 2^#*C(n, #)²]` -/
def P17845191911907768472.Spec : Prop :=
  ∀ n, (P17845191911907768472.a n : ℤ) = A364634 n

end A364634

/-! ## A364634.P5775697332300049991

`n*∑{#}[n, C(n, #)*C(n+#, #)]`
-/

namespace A364634.P5775697332300049991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.choose (n + k) k)

end

end A364634.P5775697332300049991

namespace A364634

/-- `n*∑{#}[n, C(n, #)*C(n+#, #)]` -/
def P5775697332300049991.Spec : Prop :=
  ∀ n, (P5775697332300049991.a n : ℤ) = A364634 n

theorem P5775697332300049991.correct : P5775697332300049991.Spec := by
  intro n
  simp only [A364634, Nat.add_sub_cancel, A364634.P5775697332300049991.f1, A364634.P5775697332300049991.a, A364634.P17604235920160458618.a, A001850, A001850.P16464216364385880455.f1, A001850.P16464216364385880455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364634

/-! ## A364634.P7819629343099730351

`n*∑{#}[n, 2^#*C(n, #)*C(n, #)]`
-/

namespace A364634.P7819629343099730351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose n k * Nat.choose n k)

end

end A364634.P7819629343099730351

namespace A364634

/-- `n*∑{#}[n, 2^#*C(n, #)*C(n, #)]` -/
def P7819629343099730351.Spec : Prop :=
  ∀ n, (P7819629343099730351.a n : ℤ) = A364634 n

end A364634

/-! ## A364634.P18124068359175897798

`n*∑[A110170(n)]`
-/

namespace A364634.P18124068359175897798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364634.P18124068359175897798

namespace A364634

/-- `n*∑[A110170(n)]` -/
def P18124068359175897798.Spec : Prop :=
  ∀ n, P18124068359175897798.a n = A364634 n

end A364634

/-! ## A364634.P2941046202002361640

`n*A118384(∑[n])`
-/

namespace A364634.P2941046202002361640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A118384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364634.P2941046202002361640

namespace A364634

/-- `n*A118384(∑[n])` -/
def P2941046202002361640.Spec : Prop :=
  ∀ n, P2941046202002361640.a n = A364634 n

end A364634

/-! ## A364634.P2600953956836411094

`n*A026003(2*n)`
-/

namespace A364634.P2600953956836411094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026003 (2 * n)

end

end A364634.P2600953956836411094

namespace A364634

/-- `n*A026003(2*n)` -/
def P2600953956836411094.Spec : Prop :=
  ∀ n, P2600953956836411094.a n = A364634 n

end A364634

/-! ## A364634.P17316959823618331877

`n*A376467(∑[n])`
-/

namespace A364634.P17316959823618331877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A376467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364634.P17316959823618331877

namespace A364634

/-- `n*A376467(∑[n])` -/
def P17316959823618331877.Spec : Prop :=
  ∀ n, P17316959823618331877.a n = A364634 n

end A364634

/-! ## A364634.P12579750418521267088

`n*A297191(n²+n)`
-/

namespace A364634.P12579750418521267088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A297191 (n ^ 2 + n)

end

end A364634.P12579750418521267088

namespace A364634

/-- `n*A297191(n²+n)` -/
def P12579750418521267088.Spec : Prop :=
  ∀ n, P12579750418521267088.a n = A364634 n

end A364634

/-!
# A364635: a(n) is the largest prime p such that p/PrimePi(p) < n.

The programs for A364635, there is no canonical definition to state claims against.
-/

/-! ## A364635.P13400008880732068462

`A000040(A102281(n+2))`
-/

namespace A364635.P13400008880732068462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A102281 (n + 2)).toNat

end

end A364635.P13400008880732068462

/-! ## A364635.P3040635588528405944

`A151799(A087235(n+2))`
-/

namespace A364635.P3040635588528405944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A087235 (n + 2)).toNat

end

end A364635.P3040635588528405944

/-! ## A364635.P6423088761818762976

`A008578(A102281(n+2)+1)`
-/

namespace A364635.P6423088761818762976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A102281 (n + 2) + 1).toNat

end

end A364635.P6423088761818762976

/-! ## A364635.P8874063074588801818

`A175787(A102281(n+2)+1)`
-/

namespace A364635.P8874063074588801818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A102281 (n + 2) + 1).toNat

end

end A364635.P8874063074588801818

/-! ## A364635.P18223057487326534437

`A182986(A102281(n+2)+1)`
-/

namespace A364635.P18223057487326534437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A102281 (n + 2) + 1).toNat

end

end A364635.P18223057487326534437

/-!
# A364636: a(n) = ((1 - sqrt(2))^n + (1 + sqrt(2))^n)*n/2.

The programs for A364636, the canonical program `A364636.P14583533737754547880` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364636 has offset 0).

The definition of A364636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364636.P14583533737754547880

`2*A364553(n)-A093967(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364636

/-- `2*A364553(n)-A093967(n)` -/
def P14583533737754547880.Spec : Prop :=
  ∀ n, P14583533737754547880.a n = A364636 n

theorem P14583533737754547880.correct : P14583533737754547880.Spec := by
  intro n
  simp only [A364636]

end A364636

/-! ## A364636.P1810608969163765640

`ogf((x+2x^2-x^3)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A364636.P1810608969163765640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -1] [1, -4, 2, 4, 1] n

end

end A364636.P1810608969163765640

namespace A364636

/-- `ogf((x+2x^2-x^3)/(1-4x+2x^2+4x^3+x^4))` -/
def P1810608969163765640.Spec : Prop :=
  ∀ n, P1810608969163765640.a n = A364636 n

end A364636

/-! ## A364636.P11655124491338814116

`n*∑{#}[floor(n/2), 2^#*C(n, 2*#)]`
-/

namespace A364636.P11655124491338814116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ k ∈ Finset.range (f1 n + 1).toNat, 2 ^ k * Nat.choose n (2 * k))

end

end A364636.P11655124491338814116

namespace A364636

/-- `n*∑{#}[floor(n/2), 2^#*C(n, 2*#)]` -/
def P11655124491338814116.Spec : Prop :=
  ∀ n, (P11655124491338814116.a n : ℤ) = A364636 n

end A364636

/-! ## A364636.P6862901417656928081

`n*Δ[∑{#}[n, C(n, 2*#+1)*2^#]]`
-/

namespace A364636.P6862901417656928081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1), Nat.choose n (2 * k + 1) * 2 ^ k

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A364636.P6862901417656928081

namespace A364636

/-- `n*Δ[∑{#}[n, C(n, 2*#+1)*2^#]]` -/
def P6862901417656928081.Spec : Prop :=
  ∀ n, P6862901417656928081.a n = A364636 n

end A364636

/-! ## A364636.P15699520102400514115

`n/2*Δ[a(n-2)+2*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A364636.P15699520102400514115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A364636.P15699520102400514115

namespace A364636

/-- `n/2*Δ[a(n-2)+2*a(n-1)]` -/
def P15699520102400514115.Spec : Prop :=
  ∀ n, P15699520102400514115.a n = (A364636 n : ℚ)

end A364636

/-! ## A364636.P13911617955857698489

`n*A001333(n)`
-/

namespace A364636.P13911617955857698489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001333 n

end

end A364636.P13911617955857698489

namespace A364636

/-- `n*A001333(n)` -/
def P13911617955857698489.Spec : Prop :=
  ∀ n, P13911617955857698489.a n = A364636 n

end A364636

/-! ## A364636.P5563013967115678455

`abs(n*A123335(n))`
-/

namespace A364636.P5563013967115678455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A123335 n|

end

end A364636.P5563013967115678455

namespace A364636

/-- `abs(n*A123335(n))` -/
def P5563013967115678455.Spec : Prop :=
  ∀ n, P5563013967115678455.a n = A364636 n

end A364636

/-! ## A364636.P14100562333862305387

`n*Δ[A000129(n)]`
-/

namespace A364636.P14100562333862305387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A364636.P14100562333862305387

namespace A364636

/-- `n*Δ[A000129(n)]` -/
def P14100562333862305387.Spec : Prop :=
  ∀ n, P14100562333862305387.a n = A364636 n

end A364636

/-! ## A364636.P653086365991365837

`n*Δ[A174191(n)]`
-/

namespace A364636.P653086365991365837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A364636.P653086365991365837

namespace A364636

/-- `n*Δ[A174191(n)]` -/
def P653086365991365837.Spec : Prop :=
  ∀ n, P653086365991365837.a n = A364636 n

end A364636

/-! ## A364636.P14062067261433308313

`n*Δ[A215928(n)]`
-/

namespace A364636.P14062067261433308313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A364636.P14062067261433308313

namespace A364636

/-- `n*Δ[A215928(n)]` -/
def P14062067261433308313.Spec : Prop :=
  ∀ n, P14062067261433308313.a n = A364636 n

end A364636

/-! ## A364636.P16483184690085397701

`n*(A293004(n)+1)`
-/

namespace A364636.P16483184690085397701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A293004 n + 1)

end

end A364636.P16483184690085397701

namespace A364636

/-- `n*(A293004(n)+1)` -/
def P16483184690085397701.Spec : Prop :=
  ∀ n, P16483184690085397701.a n = A364636 n

end A364636

/-! ## A364636.P12670110147123184862

`n*A119016(2*n)`
-/

namespace A364636.P12670110147123184862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119016 (2 * n)

end

end A364636.P12670110147123184862

namespace A364636

/-- `n*A119016(2*n)` -/
def P12670110147123184862.Spec : Prop :=
  ∀ n, P12670110147123184862.a n = A364636 n

end A364636

/-! ## A364636.P7855219658582834192

`n/2*A002203(n)`
-/

namespace A364636.P7855219658582834192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A002203 n : ℚ)

end

end A364636.P7855219658582834192

namespace A364636

/-- `n/2*A002203(n)` -/
def P7855219658582834192.Spec : Prop :=
  ∀ n, P7855219658582834192.a n = (A364636 n : ℚ)

end A364636

/-! ## A364636.P8135681317421102531

`n/2*A099425(n)`
-/

namespace A364636.P8135681317421102531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A099425 n : ℚ)

end

end A364636.P8135681317421102531

namespace A364636

/-- `n/2*A099425(n)` -/
def P8135681317421102531.Spec : Prop :=
  ∀ n, P8135681317421102531.a n = (A364636 n : ℚ)

end A364636

/-! ## A364636.P12466840980611218026

`n*or(1, A265278(n))`
-/

namespace A364636.P12466840980611218026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 (A265278 n)

end

end A364636.P12466840980611218026

namespace A364636

/-- `n*or(1, A265278(n))` -/
def P12466840980611218026.Spec : Prop :=
  ∀ n, P12466840980611218026.a n = A364636 n

end A364636

/-! ## A364636.P7535334214282422183

`n*A002965(Δ[n²])`
-/

namespace A364636.P7535334214282422183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364636.P7535334214282422183

namespace A364636

/-- `n*A002965(Δ[n²])` -/
def P7535334214282422183.Spec : Prop :=
  ∀ n, P7535334214282422183.a n = A364636 n

end A364636

/-! ## A364636.P7294549242139405304

`n*Δ[Δ[A171842(n)]]`
-/

namespace A364636.P7294549242139405304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A364636.P7294549242139405304

namespace A364636

/-- `n*Δ[Δ[A171842(n)]]` -/
def P7294549242139405304.Spec : Prop :=
  ∀ n, P7294549242139405304.a n = A364636 n

end A364636

/-! ## A364636.P7723809299816264102

`n*Δ[A002965(2*n)]`
-/

namespace A364636.P7723809299816264102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A364636.P7723809299816264102

namespace A364636

/-- `n*Δ[A002965(2*n)]` -/
def P7723809299816264102.Spec : Prop :=
  ∀ n, P7723809299816264102.a n = A364636 n

end A364636

/-! ## A364636.P18420444434186516618

`n*Δ[A116558(2*n)]`
-/

namespace A364636.P18420444434186516618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A364636.P18420444434186516618

namespace A364636

/-- `n*Δ[A116558(2*n)]` -/
def P18420444434186516618.Spec : Prop :=
  ∀ n, P18420444434186516618.a n = A364636 n

end A364636

/-! ## A364636.P979740826123754681

`n*Δ[A135153(2*n)]`
-/

namespace A364636.P979740826123754681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A364636.P979740826123754681

namespace A364636

/-- `n*Δ[A135153(2*n)]` -/
def P979740826123754681.Spec : Prop :=
  ∀ n, P979740826123754681.a n = A364636 n

end A364636

/-!
# A364638: Number of tilings of a 9 X n rectangle using dominoes and trominoes (of any shape).

The programs for A364638, there is no canonical definition to state claims against.
-/

/-! ## A364638.P2860372810422876326

`A364457(eq[9, A002262(n)])`
-/

namespace A364638.P2860372810422876326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364638.P2860372810422876326

/-! ## A364638.P14919967583009706304

`A364457(eq[9, A025581(n)])`
-/

namespace A364638.P14919967583009706304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364638.P14919967583009706304

/-! ## A364638.P3347247597068431265

`A364457(A052905(n+7)-5)`
-/

namespace A364638.P3347247597068431265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A052905 (n + 7) - 5).toNat

end

end A364638.P3347247597068431265

/-! ## A364638.P6771060783624724145

`A364457(A167614(n+8)+6)`
-/

namespace A364638.P6771060783624724145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A167614 (n + 8) + 6).toNat

end

end A364638.P6771060783624724145

/-! ## A364638.P1059192064989486794

`A364457(eq[10, A002260(n+1)])`
-/

namespace A364638.P1059192064989486794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364638.P1059192064989486794

/-!
# A364639: Irregular triangle read by rows: T(n,k) = A237591(n,k) - A237591(n-1,k).

The programs for A364639, there is no canonical definition to state claims against.
-/

/-! ## A364639.P850028226895354886

`A030302(A261959(2*n+1))-A124761(n)`
-/

namespace A364639.P850028226895354886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A261959 (2 * n + 1)).toNat - A124761 n

end

end A364639.P850028226895354886

/-! ## A364639.P11622221305054443429

`A237048(n+1)-A328308(A337987(3*n+5))`
-/

namespace A364639.P11622221305054443429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1) - A328308 (A337987 (3 * n + 5)).toNat

end

end A364639.P11622221305054443429

/-! ## A364639.P477924429741876995

`A117441(A116406(n))^A074784(n)`
-/

namespace A364639.P477924429741876995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117441 (A116406 n).toNat : ℚ) ^ (A074784 n : ℤ)

end

end A364639.P477924429741876995

/-! ## A364639.P11710097525524874092

`A117441(A116406(n))^A283402(n)`
-/

namespace A364639.P11710097525524874092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117441 (A116406 n).toNat : ℚ) ^ (A283402 n : ℤ)

end

end A364639.P11710097525524874092

/-! ## A364639.P11806519353122238696

`A049347(A116406(n))^A243538(n+1)`
-/

namespace A364639.P11806519353122238696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 (A116406 n).toNat : ℚ) ^ (A243538 (n + 1) : ℤ)

end

end A364639.P11806519353122238696

/-!
# A364640: Number of tilings of a 10 X n rectangle using dominoes and trominoes (of any shape).

The programs for A364640, there is no canonical definition to state claims against.
-/

/-! ## A364640.P4150107618691440913

`A364457(C(n+12, 2)-(n+1))`
-/

namespace A364640.P4150107618691440913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (Nat.choose (n + 12) 2 - (n + 1))

end

end A364640.P4150107618691440913

/-! ## A364640.P2575623955975746920

`A364457(eq[10, A002262(n)])`
-/

namespace A364640.P2575623955975746920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364640.P2575623955975746920

/-! ## A364640.P10162360468857665788

`A364457(A000217(n+11)-11)`
-/

namespace A364640.P10162360468857665788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A000217 (n + 11) - 11).toNat

end

end A364640.P10162360468857665788

/-! ## A364640.P18108063939850036159

`A364457(eq[11, A002260(n+1)])`
-/

namespace A364640.P18108063939850036159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364640.P18108063939850036159

/-!
# A364641: G.f. satisfies A(x) = 1/(1 - 2*x) - x*A(x)^3.

The programs for A364641, the canonical program `A364641.P11004152431054408645` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364641 has offset 0).

The definition of A364641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364641.P11004152431054408645

`∑{#}[n, (-1)^#*2^(n-#)*C(n+#, 2*#)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364641

/-- `∑{#}[n, (-1)^#*2^(n-#)*C(n+#, 2*#)*C(3*#, #)/(2*#+1)]` -/
def P11004152431054408645.Spec : Prop :=
  ∀ n, P11004152431054408645.a n = (A364641 n : ℚ)

end A364641

/-! ## A364641.P16173518221403625404

`A356939(A227375(n))`
-/

namespace A364641.P16173518221403625404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (A227375 n).toNat

end

end A364641.P16173518221403625404

namespace A364641

/-- `A356939(A227375(n))` -/
def P16173518221403625404.Spec : Prop :=
  ∀ n, P16173518221403625404.a n = A364641 n

end A364641

/-! ## A364641.P5625573810973143425

`A371452(A399982(n+1))+A113405(n)`
-/

namespace A364641.P5625573810973143425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371452 (A399982 (n + 1)).toNat + A113405 n

end

end A364641.P5625573810973143425

namespace A364641

/-- `A371452(A399982(n+1))+A113405(n)` -/
def P5625573810973143425.Spec : Prop :=
  ∀ n, P5625573810973143425.a n = A364641 n

end A364641

/-! ## A364641.P12622149642897464613

`A057828(A099888(n))`
-/

namespace A364641.P12622149642897464613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A099888 n).toNat

end

end A364641.P12622149642897464613

namespace A364641

/-- `A057828(A099888(n))` -/
def P12622149642897464613.Spec : Prop :=
  ∀ n, P12622149642897464613.a n = A364641 n

end A364641

/-! ## A364641.P9780283670488214387

`A123731(A068012(n))`
-/

namespace A364641.P9780283670488214387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A068012 n).toNat

end

end A364641.P9780283670488214387

namespace A364641

/-- `A123731(A068012(n))` -/
def P9780283670488214387.Spec : Prop :=
  ∀ n, P9780283670488214387.a n = A364641 n

end A364641

/-!
# A364642: a(n) is the number of iterations of psi(phi(x)) starting at x = n and terminating when psi(phi(x)) = x (n is counted), -1 otherwise.

The programs for A364642, there is no canonical definition to state claims against.
-/

/-! ## A364642.P12718858219621102330

`A240465(A125757(3*n+4))+A125749(n+1)`
-/

namespace A364642.P12718858219621102330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (A125757 (3 * n + 4)).toNat + A125749 (n + 1)

end

end A364642.P12718858219621102330

/-! ## A364642.P17606371347568999070

`A125749(n+1)-A240465(A125752(n+1))`
-/

namespace A364642.P17606371347568999070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125749 (n + 1) - A240465 (A125752 (n + 1)).toNat

end

end A364642.P17606371347568999070

/-! ## A364642.P17908240486051527102

`A124767(A058696(n)*A070939(n+4))`
-/

namespace A364642.P17908240486051527102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A058696 n * A070939 (n + 4)).toNat

end

end A364642.P17908240486051527102

/-! ## A364642.P3015577717185809397

`A125749(n+1)-A316341(A242197(n+1))`
-/

namespace A364642.P3015577717185809397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125749 (n + 1) - A316341 (A242197 (n + 1)).toNat

end

end A364642.P3015577717185809397

/-! ## A364642.P14107091583760231065

`A000120(record[A361856(n+1)%A014612(n+1)])`
-/

namespace A364642.P14107091583760231065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361856 (n + 1)) (A014612 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A364642.P14107091583760231065

/-!
# A364643: Number of separable elements of the Weyl group of type D_n.

The programs for A364643, there is no canonical definition to state claims against.
-/

/-! ## A364643.P11157161222723361263

`A275344(9^n-1)`
-/

namespace A364643.P11157161222723361263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275344 (9 ^ n - 1)

end

end A364643.P11157161222723361263

/-!
# A364645: G.f. satisfies A(x) = 1/(1 - 3*x) - x*A(x)^3.

The programs for A364645, the canonical program `A364645.P11484349611865414199` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364645 has offset 0).

The definition of A364645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364645.P11484349611865414199

`∑{#}[n, (-1)^#*3^(n-#)*C(n+#, 2*#)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364645

/-- `∑{#}[n, (-1)^#*3^(n-#)*C(n+#, 2*#)*C(3*#, #)/(2*#+1)]` -/
def P11484349611865414199.Spec : Prop :=
  ∀ n, P11484349611865414199.a n = (A364645 n : ℚ)

end A364645

/-! ## A364645.P1606967496347783709

`A205725(A124807(n))`
-/

namespace A364645.P1606967496347783709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205725 (A124807 n).toNat

end

end A364645.P1606967496347783709

namespace A364645

/-- `A205725(A124807(n))` -/
def P1606967496347783709.Spec : Prop :=
  ∀ n, P1606967496347783709.a n = A364645 n

end A364645

/-! ## A364645.P387435676266749291

`A347831(A079662(n+1))`
-/

namespace A364645.P387435676266749291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (A079662 (n + 1)).toNat

end

end A364645.P387435676266749291

namespace A364645

/-- `A347831(A079662(n+1))` -/
def P387435676266749291.Spec : Prop :=
  ∀ n, P387435676266749291.a n = A364645 n

end A364645

/-!
# A364646: G.f. satisfies A(x) = 1/(1 - 4*x) - x*A(x)^3.

The programs for A364646, the canonical program `A364646.P16102080262435916541` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364646 has offset 0).

The definition of A364646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364646.P16102080262435916541

`∑{#}[n, (-1)^#*4^(n-#)*C(n+#, 2*#)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364646

/-- `∑{#}[n, (-1)^#*4^(n-#)*C(n+#, 2*#)*C(3*#, #)/(2*#+1)]` -/
def P16102080262435916541.Spec : Prop :=
  ∀ n, P16102080262435916541.a n = (A364646 n : ℚ)

end A364646

/-! ## A364646.P15260310848018086711

`A230418(A001339(n)+n*char[2*n])`
-/

namespace A364646.P15260310848018086711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A001339 n + ((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)).toNat

end

end A364646.P15260310848018086711

namespace A364646

/-- `A230418(A001339(n)+n*char[2*n])` -/
def P15260310848018086711.Spec : Prop :=
  ∀ n, P15260310848018086711.a n = A364646 n

end A364646

/-!
# A364647: G.f. satisfies A(x) = 1/(1 - 5*x) - x*A(x)^3.

The programs for A364647, the canonical program `A364647.P13933969052358816309` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364647 has offset 0).

The definition of A364647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364647.P13933969052358816309

`∑{#}[n, (-1)^#*5^(n-#)*C(n+#, 2*#)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364647

/-- `∑{#}[n, (-1)^#*5^(n-#)*C(n+#, 2*#)*C(3*#, #)/(2*#+1)]` -/
def P13933969052358816309.Spec : Prop :=
  ∀ n, P13933969052358816309.a n = (A364647 n : ℚ)

end A364647

/-!
# A364649: Maximal number of pairwise non-orthogonal 1-dimensional subspaces over F_3^n.

The programs for A364649, there is no canonical definition to state claims against.
-/

/-! ## A364649.P605716172388057126

`A212445(A110538(n+1))`
-/

namespace A364649.P605716172388057126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (A110538 (n + 1)).toNat

end

end A364649.P605716172388057126

/-! ## A364649.P11144158183153213586

`A133041(n)+A103143(n)`
-/

namespace A364649.P11144158183153213586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n + A103143 n

end

end A364649.P11144158183153213586

/-! ## A364649.P12639923168122134727

`A238374(n)+A103143(n)`
-/

namespace A364649.P12639923168122134727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238374 n + A103143 n

end

end A364649.P12639923168122134727

/-! ## A364649.P5044170601340291643

`A110538(n+1)+A004526(n)`
-/

namespace A364649.P5044170601340291643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110538 (n + 1) + A004526 n

end

end A364649.P5044170601340291643

/-! ## A364649.P15590526181733199415

`A110538(n+1)+A014589(n)`
-/

namespace A364649.P15590526181733199415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110538 (n + 1) + A014589 n

end

end A364649.P15590526181733199415

/-!
# A364650: Number of powers of 3 whose binary representation contains exactly n 1's.

The programs for A364650, there is no canonical definition to state claims against.
-/

/-! ## A364650.P1729542602802532119

`C(A214640(A032153(2*(n+1))), A035232(3*n+4))`
-/

namespace A364650.P1729542602802532119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214640 (A032153 (2 * (n + 1))).toNat).toNat (A035232 (3 * n + 4)).toNat

end

end A364650.P1729542602802532119

/-!
# A364651: Number of 6-cycles in the n-Pell graph.

The programs for A364651, the canonical program `A364651.P1815174270318361690` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364651 has offset 0).

The definition of A364651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364651.P1815174270318361690

`ogf((20x^3+46x^4+34x^5+6x^6-2x^7)/(1-8x+20x^2-8x^3-26x^4+8x^5+20x^6+8x^7+x^8))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364651

/-- `ogf((20x^3+46x^4+34x^5+6x^6-2x^7)/(1-8x+20x^2-8x^3-26x^4+8x^5+20x^6+8x^7+x^8))` -/
def P1815174270318361690.Spec : Prop :=
  ∀ n, P1815174270318361690.a n = A364651 n

theorem P1815174270318361690.correct : P1815174270318361690.Spec := by
  intro n
  simp only [A364651]

end A364651

/-!
# A364652: Lower independence number of the n-Lucas cube graph.

The programs for A364652, there is no canonical definition to state claims against.
-/

/-! ## A364652.P335827875864113482

`Δ[row(row(A120758(n+1)))]`
-/

namespace A364652.P335827875864113482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (A120758 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A364652.P335827875864113482

/-! ## A364652.P2830825491007346525

`gcd(n-3-A000041(n), C(2, n))`
-/

namespace A364652.P2830825491007346525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 3 - A000041 n) (Nat.choose 2 n : ℤ)

end

end A364652.P2830825491007346525

/-! ## A364652.P7608394203844688476

`floor(A017921(n)/ceil(6^(n/4)))`
-/

namespace A364652.P7608394203844688476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017921 n : ℚ) / (⌈(6 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉ : ℚ)⌋

end

end A364652.P7608394203844688476

/-! ## A364652.P12515639105517518294

`A026460(A014213(n))`
-/

namespace A364652.P12515639105517518294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026460 (A014213 n).toNat

end

end A364652.P12515639105517518294

/-! ## A364652.P9217105602006097169

`A083036(A003410(n))`
-/

namespace A364652.P9217105602006097169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083036 (A003410 n).toNat

end

end A364652.P9217105602006097169

/-!
# A364653: Domination number of the n-Lucas cube graph.

The programs for A364653, there is no canonical definition to state claims against.
-/

/-! ## A364653.P11339448510588831545

`A003159(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A364653.P11339448510588831545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A003159 (a (n - 1)).toNat

end

end A364653.P11339448510588831545

/-! ## A364653.P13234982008666177685

`A187691(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A364653.P13234982008666177685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A187691 (a (n - 1)).toNat

end

end A364653.P13234982008666177685

/-! ## A364653.P11206878233557391715

`A361924(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A364653.P11206878233557391715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A361924 (a (n - 1)).toNat

end

end A364653.P11206878233557391715

/-! ## A364653.P9799188270483152046

`A087838(A000072(n))`
-/

namespace A364653.P9799188270483152046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087838 (A000072 n).toNat

end

end A364653.P9799188270483152046

/-! ## A364653.P5015507356767103387

`A087838(A130709(n))`
-/

namespace A364653.P5015507356767103387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087838 (A130709 n).toNat

end

end A364653.P5015507356767103387

/-!
# A364654: Numbers which are the sum or difference of two seventh powers.

The programs for A364654, there is no canonical definition to state claims against.
-/

/-! ## A364654.P14139469400655044533

`∪[A004864(n+1), A181126(n+1)]`
-/

namespace A364654.P14139469400655044533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364654.P14139469400655044533

/-! ## A364654.P10395490877882346227

`A004825(A083785(n+1))`
-/

namespace A364654.P10395490877882346227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004825 (A083785 (n + 1)).toNat

end

end A364654.P10395490877882346227

/-!
# A364655: Circuit rank and corank of the n-Pell graph.

The programs for A364655, the canonical program `A364655.P17496501276630882628` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364655 has offset 0).

The definition of A364655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364655.P17358784021740245836

`ogf((x^2+2x^3+x^4)/(1-5x+6x^2+2x^3-3x^4-x^5))`
-/

namespace A364655.P17358784021740245836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2, 1] [1, -5, 6, 2, -3, -1] n

end

end A364655.P17358784021740245836

namespace A364655

/-- `ogf((x^2+2x^3+x^4)/(1-5x+6x^2+2x^3-3x^4-x^5))` -/
def P17358784021740245836.Spec : Prop :=
  ∀ n, P17358784021740245836.a n = A364655 n

end A364655

/-! ## A364655.P17496501276630882628

`5*a(n-1)-6*a(n-2)-2*a(n-3)+3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=30`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364655

/-- `5*a(n-1)-6*a(n-2)-2*a(n-3)+3*a(n-4)+a(n-5)` -/
def P17496501276630882628.Spec : Prop :=
  ∀ n, P17496501276630882628.a n = A364655 n

theorem P17496501276630882628.correct : P17496501276630882628.Spec := by
  intro n
  simp only [A364655]

end A364655

/-! ## A364655.P1089272648733859484

`A026937(n)-A133654(n+1)`
-/

namespace A364655.P1089272648733859484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n - A133654 (n + 1)

end

end A364655.P1089272648733859484

namespace A364655

/-- `A026937(n)-A133654(n+1)` -/
def P1089272648733859484.Spec : Prop :=
  ∀ n, P1089272648733859484.a n = A364655 n

end A364655

/-! ## A364655.P11605992714970250997

`∑[A331321(n)-∑[A052542(n)]]`
-/

namespace A364655.P11605992714970250997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331321 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364655.P11605992714970250997

namespace A364655

/-- `∑[A331321(n)-∑[A052542(n)]]` -/
def P11605992714970250997.Spec : Prop :=
  ∀ n, P11605992714970250997.a n = A364655 n

end A364655

/-! ## A364655.P3814495776036811359

`(n+2)/2*A215928(n+1)-A133654(n+1)`
-/

namespace A364655.P3814495776036811359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A215928 (n + 1) : ℚ) - (A133654 (n + 1) : ℚ)

end

end A364655.P3814495776036811359

namespace A364655

/-- `(n+2)/2*A215928(n+1)-A133654(n+1)` -/
def P3814495776036811359.Spec : Prop :=
  ∀ n, P3814495776036811359.a n = (A364655 n : ℚ)

end A364655

/-! ## A364655.P15907155426098989702

`∑[A074084(n)+A291142(n+1)-A052542(n+1)/2]`
-/

namespace A364655.P15907155426098989702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074084 n : ℚ) + ((A291142 (n + 1) : ℚ) - (A052542 (n + 1) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364655.P15907155426098989702

namespace A364655

/-- `∑[A074084(n)+A291142(n+1)-A052542(n+1)/2]` -/
def P15907155426098989702.Spec : Prop :=
  ∀ n, P15907155426098989702.a n = (A364655 n : ℚ)

end A364655

/-! ## A364655.P14746319133684246033

`A292327(n+1)-(A292327(n)+A002203(n+1))-A133654(n+1)`
-/

namespace A364655.P14746319133684246033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292327 (n + 1) - (A292327 n + A002203 (n + 1)) - A133654 (n + 1)

end

end A364655.P14746319133684246033

namespace A364655

/-- `A292327(n+1)-(A292327(n)+A002203(n+1))-A133654(n+1)` -/
def P14746319133684246033.Spec : Prop :=
  ∀ n, P14746319133684246033.a n = A364655 n

end A364655

/-!
# A364656: Number of strict interval closure operators on a set of n elements.

The programs for A364656, there is no canonical definition to state claims against.
-/

/-! ## A364656.P2249518716318539843

`A396809(lcm(n, 2-char[2^n-1]))`
-/

namespace A364656.P2249518716318539843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396809 (Int.lcm (n : ℤ) (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)))

end

end A364656.P2249518716318539843

/-!
# A364657: Numbers k such that sigma(k) > sigma(k+1) > sigma(k+2).

The programs for A364657, the canonical program `A364657.P15328827667515436307` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364657 has offset 1).

The definition of A364657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364657.P2553083215656600627

`A053226(A053242(n+1))`
-/

namespace A364657.P2553083215656600627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (A053242 (n + 1)).toNat

end

end A364657.P2553083215656600627

namespace A364657

/-- `A053226(A053242(n+1))` -/
def P2553083215656600627.Spec : Prop :=
  ∀ n, P2553083215656600627.a n = A364657 (n + 1)

end A364657

/-! ## A364657.P15328827667515436307

`A053226(eq[1, A053238(n+1)]+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364657

/-- `A053226(eq[1, A053238(n+1)]+1)` -/
def P15328827667515436307.Spec : Prop :=
  ∀ n, P15328827667515436307.a n = A364657 (n + 1)

theorem P15328827667515436307.correct : P15328827667515436307.Spec := by
  intro n
  simp only [A364657, Nat.add_sub_cancel]

end A364657

/-! ## A364657.P14052209138176634121

`∩[A053226(n+1)-1, A053226(n+1)]`
-/

namespace A364657.P14052209138176634121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364657.P14052209138176634121

namespace A364657

/-- `∩[A053226(n+1)-1, A053226(n+1)]` -/
def P14052209138176634121.Spec : Prop :=
  ∀ n, (P14052209138176634121.a n : ℤ) = A364657 (n + 1)

end A364657

/-!
# A364659: Numbers k such that sigma(k) < sigma(k+1) < sigma(k+2).

The programs for A364659, the canonical program `A364659.P17667284478992452943` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364659 has offset 1).

The definition of A364659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364659.P6203815150188757375

`A053224(A053234(n+1))`
-/

namespace A364659.P6203815150188757375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053234 (n + 1)).toNat

end

end A364659.P6203815150188757375

namespace A364659

/-- `A053224(A053234(n+1))` -/
def P6203815150188757375.Spec : Prop :=
  ∀ n, P6203815150188757375.a n = A364659 (n + 1)

end A364659

/-! ## A364659.P17667284478992452943

`∩[A053224(n+1)-1, A053224(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364659

/-- `∩[A053224(n+1)-1, A053224(n+1)]` -/
def P17667284478992452943.Spec : Prop :=
  ∀ n, (P17667284478992452943.a n : ℤ) = A364659 (n + 1)

theorem P17667284478992452943.correct : P17667284478992452943.Spec := by
  intro n
  simp only [A364659, Nat.add_sub_cancel]

end A364659

/-! ## A364659.P6804819510990178531

`∩[A053224(n+1), A023443(A053224(n+1))]`
-/

namespace A364659.P6804819510990178531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053224 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364659.P6804819510990178531

namespace A364659

/-- `∩[A053224(n+1), A023443(A053224(n+1))]` -/
def P6804819510990178531.Spec : Prop :=
  ∀ n, (P6804819510990178531.a n : ℤ) = A364659 (n + 1)

end A364659

/-! ## A364659.P838875929105089728

`eq[3, A117817(A110654(n)+2)]`
-/

namespace A364659.P838875929105089728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117817 (A110654 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364659.P838875929105089728

namespace A364659

/-- `eq[3, A117817(A110654(n)+2)]` -/
def P838875929105089728.Spec : Prop :=
  ∀ n, (P838875929105089728.a n : ℤ) = A364659 (n + 1)

end A364659

/-!
# A364660: Numerators of coefficients in expansion of (1 + x)^(1/4).

The programs for A364660, there is no canonical definition to state claims against.
-/

/-! ## A364660.P778477668556090743

`(-1)^n*A257100(2^n)`
-/

namespace A364660.P778477668556090743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257100 (2 ^ n)

end

end A364660.P778477668556090743

/-! ## A364660.P18379719773557647520

`A257100(A081631(n))`
-/

namespace A364660.P18379719773557647520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257100 (A081631 n).toNat

end

end A364660.P18379719773557647520

/-! ## A364660.P73778324428245749

`A257100(A000034(n)*A000244(n))`
-/

namespace A364660.P73778324428245749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257100 (A000034 n * A000244 n).toNat

end

end A364660.P73778324428245749

/-! ## A364660.P13931992811692359034

`A257100(A133494(n+1))/A101918(n)`
-/

namespace A364660.P13931992811692359034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257100 (A133494 (n + 1)).toNat : ℚ) / (A101918 n : ℚ)

end

end A364660.P13931992811692359034

/-!
# A364662: Numbers k such that sigma(k) < sigma(k+1) < sigma(k+2) < sigma(k+3).

The programs for A364662, there is no canonical definition to state claims against.
-/

/-! ## A364662.P128829474889485438

`∩[A359666(n+1), A364659(n+1)]`
-/

namespace A364662.P128829474889485438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364662.P128829474889485438

/-! ## A364662.P4926523320349599487

`A053224(A053237(n+1))`
-/

namespace A364662.P4926523320349599487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A053237 (n + 1)).toNat

end

end A364662.P4926523320349599487

/-! ## A364662.P2671196648472993730

`A323726(n+1)-A000005(A091633(n+1))`
-/

namespace A364662.P2671196648472993730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323726 (n + 1) - A000005 (A091633 (n + 1)).toNat

end

end A364662.P2671196648472993730

/-! ## A364662.P17596753425903033647

`∩[A047252(n+1), A364659(n+1)+1]-2`
-/

namespace A364662.P17596753425903033647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364659 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A364662.P17596753425903033647

/-! ## A364662.P12676592710948166100

`A103889(A323726(n+1)-1)`
-/

namespace A364662.P12676592710948166100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A323726 (n + 1) - 1).toNat

end

end A364662.P12676592710948166100

/-!
# A364668: Domination and lower independence number of the n-Goldberg graph.

The programs for A364668, the canonical program `A364668.P5343295116932414967` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364668 has offset 0).

The definition of A364668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364668.P5343295116932414967

`floor((11*n+4)/5)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364668

/-- `floor((11*n+4)/5)` -/
def P5343295116932414967.Spec : Prop :=
  ∀ n, P5343295116932414967.a n = A364668 n

theorem P5343295116932414967.correct : P5343295116932414967.Spec := by
  intro n
  simp only [A364668]

end A364668

/-! ## A364668.P5336156585128996033

`ogf((3x+2x^2+2x^3+2x^4+2x^5)/(1-x-x^5+x^6))`
-/

namespace A364668.P5336156585128996033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 2, 2, 2] [1, -1, 0, 0, 0, -1, 1] n

end

end A364668.P5336156585128996033

namespace A364668

/-- `ogf((3x+2x^2+2x^3+2x^4+2x^5)/(1-x-x^5+x^6))` -/
def P5336156585128996033.Spec : Prop :=
  ∀ n, P5336156585128996033.a n = A364668 n

end A364668

/-! ## A364668.P17963440763430851824

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11`
-/

namespace A364668.P17963440763430851824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 7, 9, 11] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A364668.P17963440763430851824

namespace A364668

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P17963440763430851824.Spec : Prop :=
  ∀ n, P17963440763430851824.a n = A364668 n

end A364668

/-! ## A364668.P18186523205306764364

`comp[lcm(6, n)+1]+n`
-/

namespace A364668.P18186523205306764364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A364668.P18186523205306764364

namespace A364668

/-- `comp[lcm(6, n)+1]+n` -/
def P18186523205306764364.Spec : Prop :=
  ∀ n, (P18186523205306764364.a n : ℤ) = A364668 n

end A364668

/-! ## A364668.P12349397139838655973

`comp[or(1, 6*n)]+n`
-/

namespace A364668.P12349397139838655973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A364668.P12349397139838655973

namespace A364668

/-- `comp[or(1, 6*n)]+n` -/
def P12349397139838655973.Spec : Prop :=
  ∀ n, (P12349397139838655973.a n : ℤ) = A364668 n

end A364668

/-! ## A364668.P15307843582416081764

`ceil(n/5)+lcm(2, 2*n)`
-/

namespace A364668.P15307843582416081764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 5⌉ + (Nat.lcm 2 (2 * n) : ℤ)

end

end A364668.P15307843582416081764

namespace A364668

/-- `ceil(n/5)+lcm(2, 2*n)` -/
def P15307843582416081764.Spec : Prop :=
  ∀ n, P15307843582416081764.a n = A364668 n

end A364668

/-! ## A364668.P18278738000762282330

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=2, a(4)=2, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A364668.P18278738000762282330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 2, 2, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364668.P18278738000762282330

namespace A364668

/-- `∑[floor(a(n-5))]` -/
def P18278738000762282330.Spec : Prop :=
  ∀ n, (P18278738000762282330.a n : ℤ) = A364668 n

end A364668

/-! ## A364668.P15946798125533854107

`ceil(n/5)+xor(1, 2*n+1)`
-/

namespace A364668.P15946798125533854107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 5⌉ + (Nat.xor 1 (2 * n + 1) : ℤ)

end

end A364668.P15946798125533854107

namespace A364668

/-- `ceil(n/5)+xor(1, 2*n+1)` -/
def P15946798125533854107.Spec : Prop :=
  ∀ n, P15946798125533854107.a n = A364668 n

end A364668

/-! ## A364668.P13635780979626457767

`ceil(gcd(n, 2*n)/5)+2*n`
-/

namespace A364668.P13635780979626457767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.gcd n (2 * n) : ℚ) / 5⌉ + (2 * n : ℤ)

end

end A364668.P13635780979626457767

namespace A364668

/-- `ceil(gcd(n, 2*n)/5)+2*n` -/
def P13635780979626457767.Spec : Prop :=
  ∀ n, P13635780979626457767.a n = A364668 n

end A364668

/-! ## A364668.P213760396438921262

`round(xor(1, 2*n+1)+(n+2)/5)`
-/

namespace A364668.P213760396438921262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n + 1) : ℚ) + (n + 2 : ℚ) / 5)

end

end A364668.P213760396438921262

namespace A364668

/-- `round(xor(1, 2*n+1)+(n+2)/5)` -/
def P213760396438921262.Spec : Prop :=
  ∀ n, P213760396438921262.a n = A364668 n

end A364668

/-! ## A364668.P9395785877943311404

`round(C(n+2, n+1)/5+2*n)`
-/

namespace A364668.P9395785877943311404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) (n + 1) : ℚ) / 5 + (2 * n : ℚ))

end

end A364668.P9395785877943311404

namespace A364668

/-- `round(C(n+2, n+1)/5+2*n)` -/
def P9395785877943311404.Spec : Prop :=
  ∀ n, P9395785877943311404.a n = A364668 n

end A364668

/-! ## A364668.P5773698429633349487

`ceil(n/5)+and(2*n+1, 2*n)`
-/

namespace A364668.P5773698429633349487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 5⌉ + (Nat.land (2 * n + 1) (2 * n) : ℤ)

end

end A364668.P5773698429633349487

namespace A364668

/-- `ceil(n/5)+and(2*n+1, 2*n)` -/
def P5773698429633349487.Spec : Prop :=
  ∀ n, P5773698429633349487.a n = A364668 n

end A364668

/-! ## A364668.P10111497113890330316

`round(and(2*n+1, 2*n)+(n+2)/5)`
-/

namespace A364668.P10111497113890330316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land (2 * n + 1) (2 * n) : ℚ) + (n + 2 : ℚ) / 5)

end

end A364668.P10111497113890330316

namespace A364668

/-- `round(and(2*n+1, 2*n)+(n+2)/5)` -/
def P10111497113890330316.Spec : Prop :=
  ∀ n, P10111497113890330316.a n = A364668 n

end A364668

/-! ## A364668.P17603538671674310812

`comp[A016921(n)]+n`
-/

namespace A364668.P17603538671674310812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A364668.P17603538671674310812

namespace A364668

/-- `comp[A016921(n)]+n` -/
def P17603538671674310812.Spec : Prop :=
  ∀ n, (P17603538671674310812.a n : ℤ) = A364668 n

end A364668

/-! ## A364668.P15842839360238395157

`comp[A256255(n)]+n`
-/

namespace A364668.P15842839360238395157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256255 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A364668.P15842839360238395157

namespace A364668

/-- `comp[A256255(n)]+n` -/
def P15842839360238395157.Spec : Prop :=
  ∀ n, (P15842839360238395157.a n : ℤ) = A364668 n

end A364668

/-! ## A364668.P2198066957951645681

`A047248(n+1)+n`
-/

namespace A364668.P2198066957951645681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 1) + (n : ℤ)

end

end A364668.P2198066957951645681

namespace A364668

/-- `A047248(n+1)+n` -/
def P2198066957951645681.Spec : Prop :=
  ∀ n, P2198066957951645681.a n = A364668 n

end A364668

/-! ## A364668.P2084126305116796639

`3*n-A090223(n)`
-/

namespace A364668.P2084126305116796639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A090223 n

end

end A364668.P2084126305116796639

namespace A364668

/-- `3*n-A090223(n)` -/
def P2084126305116796639.Spec : Prop :=
  ∀ n, P2084126305116796639.a n = A364668 n

end A364668

/-! ## A364668.P15948714258919243860

`4*n-A187318(n)`
-/

namespace A364668.P15948714258919243860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A187318 n

end

end A364668.P15948714258919243860

namespace A364668

/-- `4*n-A187318(n)` -/
def P15948714258919243860.Spec : Prop :=
  ∀ n, P15948714258919243860.a n = A364668 n

end A364668

/-! ## A364668.P7964376695490098198

`comp[Δ[A000567(n)]]+n`
-/

namespace A364668.P7964376695490098198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A364668.P7964376695490098198

namespace A364668

/-- `comp[Δ[A000567(n)]]+n` -/
def P7964376695490098198.Spec : Prop :=
  ∀ n, (P7964376695490098198.a n : ℤ) = A364668 n

end A364668

/-! ## A364668.P4031086517123247208

`comp[A016777(2*n)]+n`
-/

namespace A364668.P4031086517123247208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A364668.P4031086517123247208

namespace A364668

/-- `comp[A016777(2*n)]+n` -/
def P4031086517123247208.Spec : Prop :=
  ∀ n, (P4031086517123247208.a n : ℤ) = A364668 n

end A364668

/-!
# A364669: Lower independence number of the hypercube graph Q_n.

The programs for A364669, there is no canonical definition to state claims against.
-/

/-! ## A364669.P5600040047951599735

`Δ[or(floor(n/2), ceil(11^(n/5)))]`
-/

namespace A364669.P5600040047951599735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 2⌋ ⌈(11 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364669.P5600040047951599735

/-! ## A364669.P12640127654685905325

`ogf((-1+x+2x^3+4x^6+8x^7)/(-1+2x))`
-/

namespace A364669.P12640127654685905325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -2, 0, 0, -4, -8] [1, -2] n

end

end A364669.P12640127654685905325

/-! ## A364669.P18093464085358434860

`∑[a(n-3)²]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2, a(5)=4, a(6)=4`
-/

namespace A364669.P18093464085358434860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 2, 4, 4] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364669.P18093464085358434860

/-! ## A364669.P3930297665321679484

`a(n-1)+a(floor(n/2))²` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A364669.P3930297665321679484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 4] fun n a =>
  a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat ^ 2

end

end A364669.P3930297665321679484

/-! ## A364669.P12345647047960306238

`ceil(A359193(n)/2)`
-/

namespace A364669.P12345647047960306238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A359193 n : ℚ) / 2⌉

end

end A364669.P12345647047960306238

/-!
# A364670: Number of strict integer partitions of n with a part equal to the sum of two distinct others. A variation of sum-full strict partitions.

The programs for A364670, there is no canonical definition to state claims against.
-/

/-! ## A364670.P7548045122068007096

`A000009(n)-A364533(n)`
-/

namespace A364670.P7548045122068007096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A364533 n

end

end A364670.P7548045122068007096

/-! ## A364670.P14487784369572570506

`A111133(n)+1-A364533(n)`
-/

namespace A364670.P14487784369572570506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A364533 n)

end

end A364670.P14487784369572570506

/-! ## A364670.P6772932293620789755

`A364916(A000217(n))-A364533(n)`
-/

namespace A364670.P6772932293620789755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A000217 n).toNat - A364533 n

end

end A364670.P6772932293620789755

/-! ## A364670.P2338966530249424482

`A365661(n*(n+3)/2)-A364533(n)`
-/

namespace A364670.P2338966530249424482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat - A364533 n

end

end A364670.P2338966530249424482

/-! ## A364670.P9354472856812340645

`A068063(A364272(n)²)`
-/

namespace A364670.P9354472856812340645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A364272 n ^ 2).toNat

end

end A364670.P9354472856812340645

/-!
# A364671: Number of subsets of {1..n} containing all of their own first differences.

The programs for A364671, there is no canonical definition to state claims against.
-/

/-! ## A364671.P6522041725378936812

`∑[A364752(n)]`
-/

namespace A364671.P6522041725378936812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364671.P6522041725378936812

/-! ## A364671.P4846307795250244090

`2^n-A364672(n)`
-/

namespace A364671.P4846307795250244090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A364672 n

end

end A364671.P4846307795250244090

/-! ## A364671.P3467399095970496214

`abs(A000079(n)-A364672(n))`
-/

namespace A364671.P3467399095970496214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A364672 n|

end

end A364671.P3467399095970496214

/-! ## A364671.P806956642963352866

`A000079(n)-∑[A364753(n)]`
-/

namespace A364671.P806956642963352866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364671.P806956642963352866

/-! ## A364671.P4063859023599545385

`∑[A011782(n)-A364753(n)]`
-/

namespace A364671.P4063859023599545385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A364753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364671.P4063859023599545385

/-!
# A364672: Number of subsets of {1..n} not containing all of their own first differences.

The programs for A364672, there is no canonical definition to state claims against.
-/

/-! ## A364672.P915913497296880772

`2^n-A364671(n)`
-/

namespace A364672.P915913497296880772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A364671 n

end

end A364672.P915913497296880772

/-! ## A364672.P16347389165944353080

`∑[A364753(n)]`
-/

namespace A364672.P16347389165944353080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364672.P16347389165944353080

/-! ## A364672.P545293974919324952

`2^n-∑[A364752(n)]`
-/

namespace A364672.P545293974919324952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364672.P545293974919324952

/-! ## A364672.P139078418350967584

`abs(A000079(n)-A364671(n))`
-/

namespace A364672.P139078418350967584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A364671 n|

end

end A364672.P139078418350967584

/-! ## A364672.P6720303061212810312

`and(-A364671(n), A000225(n))`
-/

namespace A364672.P6720303061212810312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A364671 n) (A000225 n)

end

end A364672.P6720303061212810312

/-!
# A364673: Number of (necessarily strict) integer partitions of n containing all of their own first differences.

The programs for A364673, there is no canonical definition to state claims against.
-/

/-! ## A364673.P743319610897697485

`A100951(n+1)+A001222(A005246(n+4))`
-/

namespace A364673.P743319610897697485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100951 (n + 1) + A001222 (A005246 (n + 4)).toNat

end

end A364673.P743319610897697485

/-!
# A364676: Lower independence number of the n-cube connected cycle graph.

The programs for A364676, there is no canonical definition to state claims against.
-/

/-! ## A364676.P14762624032548054220

`A127753(3*(n+1))+Δ[A003261(n+1)]`
-/

namespace A364676.P14762624032548054220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127753 (3 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A364676.P14762624032548054220

/-! ## A364676.P6567454685026427314

`A154724(A179457(3*(n+1)))+A057711(n+3)`
-/

namespace A364676.P6567454685026427314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154724 (A179457 (3 * (n + 1))).toNat + A057711 (n + 3)

end

end A364676.P6567454685026427314

/-! ## A364676.P13733853404529892700

`A154724(A224889(3*n+5))+A057711(n+3)`
-/

namespace A364676.P13733853404529892700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154724 (A224889 (3 * n + 5)).toNat + A057711 (n + 3)

end

end A364676.P13733853404529892700

/-! ## A364676.P12801127261743310681

`A057711(n+3)-A010815((12-n)²)*A133079(n)`
-/

namespace A364676.P12801127261743310681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 3) - A010815 ((12 - (n : ℤ)) ^ 2).toNat * A133079 n

end

end A364676.P12801127261743310681

/-!
# A364677: Domination and lower independence number of the n-middle layer graph.

The programs for A364677, there is no canonical definition to state claims against.
-/

/-! ## A364677.P16519217829355440901

`ogf((2+4x)/(1-x-4x^2-6x^3+5x^4))`
-/

namespace A364677.P16519217829355440901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4] [1, -1, -4, -6, 5] n

end

end A364677.P16519217829355440901

/-!
# A364682: Number of iterations of the "x -> sum of squares of digits of x" map (A003132) for n to converge to either 0, 1 or the 8-cycle (37,58,89,145,42,20,4,16).

The programs for A364682, there is no canonical definition to state claims against.
-/

/-! ## A364682.P12451154077424358039

`A099645(A028310(n))+1`
-/

namespace A364682.P12451154077424358039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (A028310 n).toNat + 1

end

end A364682.P12451154077424358039

/-! ## A364682.P7237463725473377456

`A099645(A065033(2*n))+1`
-/

namespace A364682.P7237463725473377456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (A065033 (2 * n)).toNat + 1

end

end A364682.P7237463725473377456

/-! ## A364682.P7782359445649567485

`A099645(A000007(n)+n)+1`
-/

namespace A364682.P7782359445649567485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (A000007 n + (n : ℤ)).toNat + 1

end

end A364682.P7782359445649567485

/-! ## A364682.P5095086101403572315

`A099645(n)+a(A062892(3*n+2))` with `a(0)=1`
-/

namespace A364682.P5095086101403572315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099645 n + a (A062892 (3 * n + 2)).toNat

end

end A364682.P5095086101403572315

/-! ## A364682.P1530266773892503921

`A099645(C(A000010(n+1), n+1)+n)+1`
-/

namespace A364682.P1530266773892503921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (Nat.choose (A000010 (n + 1)).toNat (n + 1) + n) + 1

end

end A364682.P1530266773892503921

/-! ## A364682.P16990561968071218452

`A099645(C(A261348(n+3), n+1)+n)+1`
-/

namespace A364682.P16990561968071218452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (Nat.choose (A261348 (n + 3)).toNat (n + 1) + n) + 1

end

end A364682.P16990561968071218452

/-!
# A364685: The number of binary sequences of length n for which all patterns {0,1},{0,0},{1,0},{1,1} appear for the first time. In particular, three of the patterns will have appeared at least once before the (n-1)st digit in the sequence and the remaining pattern appears for the first and only time at positions {n-1,n} in the sequence.

The programs for A364685, the canonical program `A364685.P11501453899645912933` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364685 has offset 5).

The definition of A364685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364685.P13999909978408065294

`ogf((4-2x-4x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A364685.P13999909978408065294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, -4] [1, -3, 2, 1, -1] n

end

end A364685.P13999909978408065294

namespace A364685

/-- `ogf((4-2x-4x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P13999909978408065294.Spec : Prop :=
  ∀ n, P13999909978408065294.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P11501453899645912933

`2*(n-1+A000045(n+4))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A364685

/-- `2*(n-1+A000045(n+4))` -/
def P11501453899645912933.Spec : Prop :=
  ∀ n, P11501453899645912933.a n = A364685 (n + 5)

theorem P11501453899645912933.correct : P11501453899645912933.Spec := by
  intro n
  simp only [A364685, Nat.add_sub_cancel]

end A364685

/-! ## A364685.P2335004949872572429

`∑[∑[ogf((-4+2x+4x^2)/(-1+x+x^2))]]`
-/

namespace A364685.P2335004949872572429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, -4] [1, -1, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364685.P2335004949872572429

namespace A364685

/-- `∑[∑[ogf((-4+2x+4x^2)/(-1+x+x^2))]]` -/
def P2335004949872572429.Spec : Prop :=
  ∀ n, P2335004949872572429.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P5181620369331350481

`2*∑[floor(ϕ*a(n-1))]` with `a(0)=2`
-/

namespace A364685.P5181620369331350481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364685.P5181620369331350481

namespace A364685

/-- `2*∑[floor(ϕ*a(n-1))]` -/
def P5181620369331350481.Spec : Prop :=
  ∀ n, P5181620369331350481.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P13727986082411882303

`∑[a(n-1)+a(n-2)-2]` with `a(0)=4, a(1)=6`
-/

namespace A364685.P13727986082411882303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364685.P13727986082411882303

namespace A364685

/-- `∑[a(n-1)+a(n-2)-2]` -/
def P13727986082411882303.Spec : Prop :=
  ∀ n, P13727986082411882303.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P13716149699419304304

`∑[a(n-1)-(2-a(n-2))]` with `a(0)=4, a(1)=6`
-/

namespace A364685.P13716149699419304304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364685.P13716149699419304304

namespace A364685

/-- `∑[a(n-1)-(2-a(n-2))]` -/
def P13716149699419304304.Spec : Prop :=
  ∀ n, P13716149699419304304.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P909326244566897710

`∑[A288603(n+1)]`
-/

namespace A364685.P909326244566897710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364685.P909326244566897710

namespace A364685

/-- `∑[A288603(n+1)]` -/
def P909326244566897710.Spec : Prop :=
  ∀ n, P909326244566897710.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P3537025288888729770

`∑[A097280(n)-1]`
-/

namespace A364685.P3537025288888729770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097280 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364685.P3537025288888729770

namespace A364685

/-- `∑[A097280(n)-1]` -/
def P3537025288888729770.Spec : Prop :=
  ∀ n, P3537025288888729770.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P8056087065589167478

`A088981(n+1)-7`
-/

namespace A364685.P8056087065589167478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088981 (n + 1) - 7

end

end A364685.P8056087065589167478

namespace A364685

/-- `A088981(n+1)-7` -/
def P8056087065589167478.Spec : Prop :=
  ∀ n, P8056087065589167478.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P12129283690765256803

`∑[A001595(n+1)+3]`
-/

namespace A364685.P12129283690765256803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364685.P12129283690765256803

namespace A364685

/-- `∑[A001595(n+1)+3]` -/
def P12129283690765256803.Spec : Prop :=
  ∀ n, P12129283690765256803.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P13703922252933770652

`∑[A128588(n+2)+2]`
-/

namespace A364685.P13703922252933770652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364685.P13703922252933770652

namespace A364685

/-- `∑[A128588(n+2)+2]` -/
def P13703922252933770652.Spec : Prop :=
  ∀ n, P13703922252933770652.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P17932402631982078360

`A154691(n+1)+Δ[n²]`
-/

namespace A364685.P17932402631982078360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A364685.P17932402631982078360

namespace A364685

/-- `A154691(n+1)+Δ[n²]` -/
def P17932402631982078360.Spec : Prop :=
  ∀ n, P17932402631982078360.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P9779678981992001061

`∑[2*A226649(2*n+1)]`
-/

namespace A364685.P9779678981992001061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226649 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364685.P9779678981992001061

namespace A364685

/-- `∑[2*A226649(2*n+1)]` -/
def P9779678981992001061.Spec : Prop :=
  ∀ n, P9779678981992001061.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P8542056242112767795

`2*(A001911(n+1)+n+1)`
-/

namespace A364685.P8542056242112767795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001911 (n + 1) + (n + 1 : ℤ))

end

end A364685.P8542056242112767795

namespace A364685

/-- `2*(A001911(n+1)+n+1)` -/
def P8542056242112767795.Spec : Prop :=
  ∀ n, P8542056242112767795.a n = A364685 (n + 5)

theorem P8542056242112767795.correct : P8542056242112767795.Spec := by
  intro n
  simp only [A364685, Nat.add_sub_cancel, A364685.P8542056242112767795.a, A364685.P11501453899645912933.a, A000045, A000045.P11838749114346432762.a, A001911, A001911.P2299546665043418976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364685

/-! ## A364685.P3421026689581470112

`A168193(n+1)+2*(n+1)`
-/

namespace A364685.P3421026689581470112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 (n + 1) + (2 * (n + 1) : ℤ)

end

end A364685.P3421026689581470112

namespace A364685

/-- `A168193(n+1)+2*(n+1)` -/
def P3421026689581470112.Spec : Prop :=
  ∀ n, P3421026689581470112.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P12422772612413769847

`A192760(n+1)+3*(n+1)`
-/

namespace A364685.P12422772612413769847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 (n + 1) + (3 * (n + 1) : ℤ)

end

end A364685.P12422772612413769847

namespace A364685

/-- `A192760(n+1)+3*(n+1)` -/
def P12422772612413769847.Spec : Prop :=
  ∀ n, P12422772612413769847.a n = A364685 (n + 5)

theorem P12422772612413769847.correct : P12422772612413769847.Spec := by
  intro n
  simp only [A364685, Nat.add_sub_cancel, A364685.P12422772612413769847.a, A364685.P11501453899645912933.a, A000045, A000045.P11838749114346432762.a, A192760, A192760.P1234874715477310428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364685

/-! ## A364685.P9636545116151505816

`A166863(n+1)+2*n+3`
-/

namespace A364685.P9636545116151505816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166863 (n + 1) + (2 * n + 3 : ℤ)

end

end A364685.P9636545116151505816

namespace A364685

/-- `A166863(n+1)+2*n+3` -/
def P9636545116151505816.Spec : Prop :=
  ∀ n, P9636545116151505816.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P9922777989370877206

`A192960(n)+A004767(n)`
-/

namespace A364685.P9922777989370877206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n + A004767 n

end

end A364685.P9922777989370877206

namespace A364685

/-- `A192960(n)+A004767(n)` -/
def P9922777989370877206.Spec : Prop :=
  ∀ n, P9922777989370877206.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P13407254630945022359

`A116730(n+1)+A016885(n)`
-/

namespace A364685.P13407254630945022359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116730 (n + 1) + A016885 n

end

end A364685.P13407254630945022359

namespace A364685

/-- `A116730(n+1)+A016885(n)` -/
def P13407254630945022359.Spec : Prop :=
  ∀ n, P13407254630945022359.a n = A364685 (n + 5)

end A364685

/-! ## A364685.P11591655798282924030

`A192748(n+1)+A016897(n)`
-/

namespace A364685.P11591655798282924030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192748 (n + 1) + A016897 n

end

end A364685.P11591655798282924030

namespace A364685

/-- `A192748(n+1)+A016897(n)` -/
def P11591655798282924030.Spec : Prop :=
  ∀ n, P11591655798282924030.a n = A364685 (n + 5)

end A364685

/-!
# A364687: Number of chordless cycles (of length >= 4) in the n-folded cube graph.

The programs for A364687, there is no canonical definition to state claims against.
-/

/-! ## A364687.P3310164690198245822

`A151762(∏[A321719(n)])`
-/

namespace A364687.P3310164690198245822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151762 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A364687.P3310164690198245822

/-!
# A364688: Number of 8-cycles in the hypercube graph Q_n.

The programs for A364688, the canonical program `A364688.P12274357262679840534` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364688 has offset 0).

The definition of A364688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364688.P12274357262679840534

`2^(n-4)*n*(n-1)*(n-2)*(27*n-79)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364688

/-- `2^(n-4)*n*(n-1)*(n-2)*(27*n-79)` -/
def P12274357262679840534.Spec : Prop :=
  ∀ n, P12274357262679840534.a n = (A364688 n : ℚ)

end A364688

/-! ## A364688.P11315409072968765574

`ogf((6x^3+636x^4)/(1-10x+40x^2-80x^3+80x^4-32x^5))`
-/

namespace A364688.P11315409072968765574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 6, 636] [1, -10, 40, -80, 80, -32] n

end

end A364688.P11315409072968765574

namespace A364688

/-- `ogf((6x^3+636x^4)/(1-10x+40x^2-80x^3+80x^4-32x^5))` -/
def P11315409072968765574.Spec : Prop :=
  ∀ n, P11315409072968765574.a n = A364688 n

end A364688

/-!
# A364689: Prime numbers that are the exact average of ten consecutive odd semiprimes.

The programs for A364689, there is no canonical definition to state claims against.
-/

/-! ## A364689.P4733360173305177212

`A336298(A075422(n+1))`
-/

namespace A364689.P4733360173305177212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336298 (A075422 (n + 1)).toNat

end

end A364689.P4733360173305177212

/-!
# A364693: Characteristic function of polygonal numbers of order greater than 2 (A090466): a(n) = 1 if n is in A090466, 0 otherwise.

The programs for A364693, there is no canonical definition to state claims against.
-/

/-! ## A364693.P17634999171725700547

`char[A090466(n+1)]`
-/

namespace A364693.P17634999171725700547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A364693.P17634999171725700547

/-! ## A364693.P11641437936416059005

`char[lt[2, A129654(n+2)]+2]`
-/

namespace A364693.P11641437936416059005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A364693.P11641437936416059005

/-! ## A364693.P1239804457834400979

`char[A171463(lt[2, A129654(n+2)])]`
-/

namespace A364693.P1239804457834400979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A364693.P1239804457834400979

/-! ## A364693.P4655673872865000806

`A057427(n)-char[A090467(n+1)]`
-/

namespace A364693.P4655673872865000806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A364693.P4655673872865000806

/-! ## A364693.P10528135251946070843

`A274923(A239550(∑[n]+n))`
-/

namespace A364693.P10528135251946070843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A239550 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A364693.P10528135251946070843

/-! ## A364693.P10152377960590272979

`A095861(2*A239550(∑[n]+n))`
-/

namespace A364693.P10152377960590272979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (2 * A239550 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A364693.P10152377960590272979

/-!
# A364694: Polygonal numbers of order greater than 2 (A090466) which are the sum of the first k primes, for some k > 0.

The programs for A364694, there is no canonical definition to state claims against.
-/

/-! ## A364694.P2716631969291535519

`A007504(A364695(1+n))`
-/

namespace A364694.P2716631969291535519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A364695 (1 + n)).toNat

end

end A364694.P2716631969291535519

/-! ## A364694.P6032191754720448106

`∩[A090466(n+1), A007504(n)]`
-/

namespace A364694.P6032191754720448106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364694.P6032191754720448106

/-! ## A364694.P6314271483787084917

`∩[A053790(n+1), A090466(n+1)]`
-/

namespace A364694.P6314271483787084917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364694.P6314271483787084917

/-! ## A364694.P4857417212384295380

`filter[A007504(n), A364693(#)]`
-/

namespace A364694.P4857417212384295380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A364694.P4857417212384295380

/-! ## A364694.P1887300042485788019

`filter[A053790(n+1), A364693(#)]`
-/

namespace A364694.P1887300042485788019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A364694.P1887300042485788019

/-!
# A364695: Positive integers k such that the sum of the first k primes is a polygonal number of order greater than 2 (A090466).

The programs for A364695, there is no canonical definition to state claims against.
-/

/-! ## A364695.P8937437667560487182

`A053050(A364694(n+1))`
-/

namespace A364695.P8937437667560487182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (A364694 (n + 1)).toNat

end

end A364695.P8937437667560487182

/-! ## A364695.P8765902757890942890

`lt[0, A364693(A007504(n))]`
-/

namespace A364695.P8765902757890942890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A364695.P8765902757890942890

/-! ## A364695.P17726735405554673063

`eq[1, A364693(∑[A008578(n+1)]-1)]`
-/

namespace A364695.P17726735405554673063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 (∑ j ∈ Finset.range (n + 1), f3 j - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364695.P17726735405554673063

/-! ## A364695.P7382727804099285084

`A024936(A364694(n+1))`
-/

namespace A364695.P7382727804099285084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (A364694 (n + 1)).toNat

end

end A364695.P7382727804099285084

/-!
# A364699: Numbers k such that 1 + 2^k + 3^k is divisible by 2*k-1.

The programs for A364699, the canonical program `A364699.P5284075010875007829` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364699 has offset 1).

The definition of A364699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364699.P5284075010875007829

`∩[A111333(n+1), A360927(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364699

/-- `∩[A111333(n+1), A360927(n)]` -/
def P5284075010875007829.Spec : Prop :=
  ∀ n, (P5284075010875007829.a n : ℤ) = A364699 (n + 1)

theorem P5284075010875007829.correct : P5284075010875007829.Spec := by
  intro n
  simp only [A364699, Nat.add_sub_cancel]

end A364699

