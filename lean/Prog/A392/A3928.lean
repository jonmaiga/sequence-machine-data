import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C002
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
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A392804: Number of partitions of n into parts of n+1 kinds.

The programs for A392804, there is no canonical definition to state claims against.
-/

/-! ## A392804.P18386057697730031896

`(n+1)*A109085(n)`
-/

namespace A392804.P18386057697730031896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109085 n

end

end A392804.P18386057697730031896

/-! ## A392804.P14810763682655171858

`A060850((n+1)²+n²)`
-/

namespace A392804.P14810763682655171858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 ((n + 1) ^ 2 + n ^ 2)

end

end A392804.P14810763682655171858

/-! ## A392804.P3983200620304301234

`A144064(A056220(n+1))`
-/

namespace A392804.P3983200620304301234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A056220 (n + 1)).toNat

end

end A392804.P3983200620304301234

/-! ## A392804.P4015195200327138113

`A144064(A162917((n+1)²))`
-/

namespace A392804.P4015195200327138113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A162917 ((n + 1) ^ 2)).toNat

end

end A392804.P4015195200327138113

/-! ## A392804.P7781865723222397802

`A144064(A000096(2*n)+n+1)`
-/

namespace A392804.P7781865723222397802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000096 (2 * n) + (n + 1 : ℤ)).toNat

end

end A392804.P7781865723222397802

/-! ## A392804.P8191636350500595688

`A144064(A338043(2*n+1)-(2*n+1))`
-/

namespace A392804.P8191636350500595688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A338043 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A392804.P8191636350500595688

/-!
# A392805: a(n) = (-1)^n*A387347(n,n).

The programs for A392805, there is no canonical definition to state claims against.
-/

/-! ## A392805.P6610917912825450499

`A025494(A002443(n))`
-/

namespace A392805.P6610917912825450499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025494 (A002443 n).toNat

end

end A392805.P6610917912825450499

/-! ## A392805.P15804007766032579678

`A358821(A011820(n))`
-/

namespace A392805.P15804007766032579678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358821 (A011820 n).toNat

end

end A392805.P15804007766032579678

/-!
# A392807: Number of plane partitions of n with 3 parts.

The programs for A392807, the canonical program `A392807.P3043267967174591191` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392807 has offset 3).

The definition of A392807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392807.P3043267967174591191

`∑[a(n-2)+4]-(a(n-1)+a(n-2))` with `a(0)=3, a(1)=3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392807

/-- `∑[a(n-2)+4]-(a(n-1)+a(n-2))` -/
def P3043267967174591191.Spec : Prop :=
  ∀ n, P3043267967174591191.a n = A392807 (n + 3)

theorem P3043267967174591191.correct : P3043267967174591191.Spec := by
  intro n
  simp only [A392807, Nat.add_sub_cancel]

end A392807

/-! ## A392807.P8845223384678447010

`A128012(n)+A069905(n+1)`
-/

namespace A392807.P8845223384678447010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128012 n + A069905 (n + 1)

end

end A392807.P8845223384678447010

namespace A392807

/-- `A128012(n)+A069905(n+1)` -/
def P8845223384678447010.Spec : Prop :=
  ∀ n, P8845223384678447010.a n = A392807 (n + 3)

end A392807

/-! ## A392807.P12843236670775749513

`A387996(n+3)+A001399(n)`
-/

namespace A392807.P12843236670775749513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387996 (n + 3) + A001399 n

end

end A392807.P12843236670775749513

namespace A392807

/-- `A387996(n+3)+A001399(n)` -/
def P12843236670775749513.Spec : Prop :=
  ∀ n, P12843236670775749513.a n = A392807 (n + 3)

end A392807

/-! ## A392807.P9468151526307492416

`A001399(n)+A128012(n)-A008620(n)`
-/

namespace A392807.P9468151526307492416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A128012 n - A008620 n)

end

end A392807.P9468151526307492416

namespace A392807

/-- `A001399(n)+A128012(n)-A008620(n)` -/
def P9468151526307492416.Spec : Prop :=
  ∀ n, P9468151526307492416.a n = A392807 (n + 3)

end A392807

/-! ## A392807.P11383518857787980883

`A008747(n+1)+A156040(n)+A051274(n)`
-/

namespace A392807.P11383518857787980883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 (n + 1) + (A156040 n + A051274 n)

end

end A392807.P11383518857787980883

namespace A392807

/-- `A008747(n+1)+A156040(n)+A051274(n)` -/
def P11383518857787980883.Spec : Prop :=
  ∀ n, P11383518857787980883.a n = A392807 (n + 3)

end A392807

/-!
# A392811: Number of transfer systems on the horizontal join lattice [n]*[n].

The programs for A392811, there is no canonical definition to state claims against.
-/

/-! ## A392811.P12442198521286400352

`A366853(A212247(n+1))`
-/

namespace A392811.P12442198521286400352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366853 (A212247 (n + 1)).toNat

end

end A392811.P12442198521286400352

/-!
# A392814: Additive with a(p^e) = p mod e.

The programs for A392814, the canonical program `A392814.P8950680628207234601` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392814 has offset 1).

The definition of A392814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392814.P8950680628207234601

`∑{p}[n+1, #%val(n+1, #)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392814

/-- `∑{p}[n+1, #%val(n+1, #)]` -/
def P8950680628207234601.Spec : Prop :=
  ∀ n, (P8950680628207234601.a n : ℤ) = A392814 (n + 1)

theorem P8950680628207234601.correct : P8950680628207234601.Spec := by
  intro n
  simp only [A392814, Nat.add_sub_cancel]

end A392814

/-! ## A392814.P17779697849761626181

`A111076(A057660(3*n+1))%∏{e}[n+1, #]`
-/

namespace A392814.P17779697849761626181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111076 (A057660 (3 * n + 1)).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A392814.P17779697849761626181

namespace A392814

/-- `A111076(A057660(3*n+1))%∏{e}[n+1, #]` -/
def P17779697849761626181.Spec : Prop :=
  ∀ n, P17779697849761626181.a n = A392814 (n + 1)

end A392814

/-! ## A392814.P6451205570715895611

`val(A351287((n+1)/∏{p}[n+1, #]), 4)`
-/

namespace A392814.P6451205570715895611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351287 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat 4

end

end A392814.P6451205570715895611

namespace A392814

/-- `val(A351287((n+1)/∏{p}[n+1, #]), 4)` -/
def P6451205570715895611.Spec : Prop :=
  ∀ n, (P6451205570715895611.a n : ℤ) = A392814 (n + 1)

end A392814

/-! ## A392814.P7785472816266705147

`and(A046660(n+1), A331921(n+1))`
-/

namespace A392814.P7785472816266705147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046660 (n + 1)) (A331921 (n + 1))

end

end A392814.P7785472816266705147

namespace A392814

/-- `and(A046660(n+1), A331921(n+1))` -/
def P7785472816266705147.Spec : Prop :=
  ∀ n, P7785472816266705147.a n = A392814 (n + 1)

end A392814

/-! ## A392814.P15583990783237990600

`and(A066301(n+1), A331921(n+1))`
-/

namespace A392814.P15583990783237990600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066301 (n + 1)) (A331921 (n + 1))

end

end A392814.P15583990783237990600

namespace A392814

/-- `and(A066301(n+1), A331921(n+1))` -/
def P15583990783237990600.Spec : Prop :=
  ∀ n, P15583990783237990600.a n = A392814 (n + 1)

end A392814

/-!
# A392815: Numbers k for which A392814(k) > 0.

The programs for A392815, there is no canonical definition to state claims against.
-/

/-! ## A392815.P735608466162695301

`A046790(record[A257126(C(4, n)!%2+2*n)])`
-/

namespace A392815.P735608466162695301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257126 (Nat.factorial (Nat.choose 4 n) % 2 + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A392815.P735608466162695301

/-! ## A392815.P3058440023818185984

`lt[A328319(A074754(n+1)), A379830(n)]`
-/

namespace A392815.P3058440023818185984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328319 (A074754 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392815.P3058440023818185984

/-! ## A392815.P57512886636245528

`∩[A046790(n+1), A260113(n+1)]`
-/

namespace A392815.P57512886636245528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392815.P57512886636245528

/-! ## A392815.P15644289780715422571

`∩[A057111(n+1), A260113(n+1)]`
-/

namespace A392815.P15644289780715422571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392815.P15644289780715422571

/-!
# A392816: Number of occurrences of n in A392781.

The programs for A392816, there is no canonical definition to state claims against.
-/

/-! ## A392816.P5116258995277432914

`A227568(A014969(n))`
-/

namespace A392816.P5116258995277432914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A014969 n).toNat

end

end A392816.P5116258995277432914

/-! ## A392816.P4854150577956820531

`∑[∑[A374992(A275312(n))]]`
-/

namespace A392816.P4854150577956820531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374992 (A275312 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392816.P4854150577956820531

/-! ## A392816.P4036422673205268962

`∑[∑[A374994(A000992(n+1))]]`
-/

namespace A392816.P4036422673205268962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374994 (A000992 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392816.P4036422673205268962

/-! ## A392816.P3724035389054353718

`∑[A181796(∏[A181796(3*n+1)])]`
-/

namespace A392816.P3724035389054353718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392816.P3724035389054353718

/-! ## A392816.P3298293912122842615

`∑[A330937(n)^A249095(A007021(n+3))]`
-/

namespace A392816.P3298293912122842615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330937 n : ℚ) ^ (A249095 (A007021 (n + 3)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392816.P3298293912122842615

/-!
# A392817: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where column k is the expansion of e.g.f. 1/(1 - x*(exp(x) - 1)^k).

The programs for A392817, there is no canonical definition to state claims against.
-/

/-! ## A392817.P17261656237563751316

`A106442(A355609(n))`
-/

namespace A392817.P17261656237563751316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106442 (A355609 n).toNat

end

end A392817.P17261656237563751316

/-! ## A392817.P17832311982988219406

`A300856(A392822(n))`
-/

namespace A392817.P17832311982988219406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300856 (A392822 n).toNat

end

end A392817.P17832311982988219406

/-!
# A392820: Expansion of e.g.f. 1/(1 - x*(exp(x) - 1)^2).

The programs for A392820, there is no canonical definition to state claims against.
-/

/-! ## A392820.P14988556136514599969

`A392817(∑[n+3])`
-/

namespace A392820.P14988556136514599969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392817 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A392820.P14988556136514599969

/-!
# A392821: Expansion of e.g.f. 1/(1 - x*(exp(x) - 1)^3).

The programs for A392821, there is no canonical definition to state claims against.
-/

/-! ## A392821.P3665911263893524864

`A026741(2*A392851(n))`
-/

namespace A392821.P3665911263893524864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A392851 n).toNat

end

end A392821.P3665911263893524864

/-! ## A392821.P10293553861861691440

`filter[A392851(n), A014577(#)]`
-/

namespace A392821.P10293553861861691440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A392821.P10293553861861691440

/-! ## A392821.P11704565673781701577

`filter[A392851(n), A039963(#)]`
-/

namespace A392821.P11704565673781701577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A392821.P11704565673781701577

/-! ## A392821.P14299514236102019104

`filter[A392851(n), A071035(#)]`
-/

namespace A392821.P14299514236102019104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071035 (f1 j).toNat = 1) n)

end

end A392821.P14299514236102019104

/-!
# A392822: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where column k is the expansion of e.g.f. 1/(1 - x*(-log(1-x))^k).

The programs for A392822, there is no canonical definition to state claims against.
-/

/-! ## A392822.P5005431579239050373

`A130685(A355609(n))`
-/

namespace A392822.P5005431579239050373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130685 (A355609 n).toNat

end

end A392822.P5005431579239050373

/-! ## A392822.P11008433708947275943

`A265552(A392817(n))`
-/

namespace A392822.P11008433708947275943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265552 (A392817 n).toNat

end

end A392822.P11008433708947275943

/-!
# A392823: Expansion of e.g.f. 1/(1 - x*log(1-x)^2).

The programs for A392823, there is no canonical definition to state claims against.
-/

/-! ## A392823.P11202274953702047030

`A392915(n)+A010051(A269747(3*(n+1)))`
-/

namespace A392823.P11202274953702047030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392915 n + A010051 (A269747 (3 * (n + 1))).toNat

end

end A392823.P11202274953702047030

/-! ## A392823.P16726765307487608154

`A392915(n)+A010051(A000079(2*n+1))`
-/

namespace A392823.P16726765307487608154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392915 n + A010051 (A000079 (2 * n + 1)).toNat

end

end A392823.P16726765307487608154

/-! ## A392823.P17413723244089634021

`A392915(n)+A174897(A001412(n))`
-/

namespace A392823.P17413723244089634021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392915 n + A174897 (A001412 n).toNat

end

end A392823.P17413723244089634021

/-!
# A392824: Expansion of e.g.f. 1/(1 + x*log(1-x)^3).

The programs for A392824, there is no canonical definition to state claims against.
-/

/-! ## A392824.P15231529950988563585

`A392918(n)+A121373(A000045(2*(n+1)))`
-/

namespace A392824.P15231529950988563585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392918 n + A121373 (A000045 (2 * (n + 1))).toNat

end

end A392824.P15231529950988563585

/-! ## A392824.P9211493283818841825

`A008585(A392917(n))/3`
-/

namespace A392824.P9211493283818841825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (A392917 n).toNat : ℚ) / 3

end

end A392824.P9211493283818841825

/-! ## A392824.P14694447202666334572

`A392917(n^A000700(n))`
-/

namespace A392824.P14694447202666334572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392917 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A392824.P14694447202666334572

/-! ## A392824.P541624704319123318

`filter[A392854(n), A071374(#)]`
-/

namespace A392824.P541624704319123318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A392824.P541624704319123318

/-!
# A392827: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x^2*(exp(x) - 1)^2) ).

The programs for A392827, there is no canonical definition to state claims against.
-/

/-! ## A392827.P3490656838498258085

`filter[A392767(n), A014577(#)]`
-/

namespace A392827.P3490656838498258085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A392827.P3490656838498258085

/-! ## A392827.P9049778740229653885

`filter[A392767(n), A039963(#)]`
-/

namespace A392827.P9049778740229653885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A392827.P9049778740229653885

/-! ## A392827.P8678113746639141758

`filter[A392767(n), A071026(#)]`
-/

namespace A392827.P8678113746639141758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071026 (f1 j).toNat = 1) n)

end

end A392827.P8678113746639141758

/-! ## A392827.P11822033972981993423

`filter[A392767(n), A071036(#)]`
-/

namespace A392827.P11822033972981993423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071036 (f1 j).toNat = 1) n)

end

end A392827.P11822033972981993423

/-!
# A392828: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x^2*(exp(x) - 1)^3) ).

The programs for A392828, there is no canonical definition to state claims against.
-/

/-! ## A392828.P15288729295948520563

`A339629(A027365(n))`
-/

namespace A392828.P15288729295948520563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 (A027365 n).toNat

end

end A392828.P15288729295948520563

/-! ## A392828.P16146664140366042794

`A353828(A392832(n))`
-/

namespace A392828.P16146664140366042794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353828 (A392832 n).toNat

end

end A392828.P16146664140366042794

/-! ## A392828.P13809607861031606064

`A339629(A157676(n+1))`
-/

namespace A392828.P13809607861031606064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 (A157676 (n + 1)).toNat

end

end A392828.P13809607861031606064

/-!
# A392829: E.g.f. A(x) satisfies A(x) = 1/(1 - x*log(1-x*A(x))^2).

The programs for A392829, there is no canonical definition to state claims against.
-/

/-! ## A392829.P10634156958900662045

`A392823(A214815(n)+n)`
-/

namespace A392829.P10634156958900662045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392823 (A214815 n + (n : ℤ)).toNat

end

end A392829.P10634156958900662045

/-! ## A392829.P9422180388130240428

`A392823(xor(n, A214815(n)))`
-/

namespace A392829.P9422180388130240428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392823 (Int.xor (n : ℤ) (A214815 n)).toNat

end

end A392829.P9422180388130240428

/-!
# A392831: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x^2*log(1-x)^2) ).

The programs for A392831, there is no canonical definition to state claims against.
-/

/-! ## A392831.P16096374589825584983

`filter[A392761(n), A014577(#)]`
-/

namespace A392831.P16096374589825584983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A392831.P16096374589825584983

/-! ## A392831.P10370266144193266417

`filter[A392761(n), A039963(#)]`
-/

namespace A392831.P10370266144193266417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A392831.P10370266144193266417

/-! ## A392831.P3741171558673933661

`filter[A392761(n), A071026(#)]`
-/

namespace A392831.P3741171558673933661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071026 (f1 j).toNat = 1) n)

end

end A392831.P3741171558673933661

/-! ## A392831.P3127455745980627469

`filter[A392761(n), A071027(#)]`
-/

namespace A392831.P3127455745980627469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071027 (f1 j).toNat = 1) n)

end

end A392831.P3127455745980627469

/-!
# A392832: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 - x^2*log(1-x)^3) ).

The programs for A392832, there is no canonical definition to state claims against.
-/

/-! ## A392832.P6613048971714700963

`A154271(A081411(n+1))+A052765(n)`
-/

namespace A392832.P6613048971714700963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A081411 (n + 1)).toNat + A052765 n

end

end A392832.P6613048971714700963

/-! ## A392832.P9693955782260177531

`A052765(n)+A010054(A000041(3*(n+1)))`
-/

namespace A392832.P9693955782260177531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052765 n + A010054 (A000041 (3 * (n + 1))).toNat

end

end A392832.P9693955782260177531

/-! ## A392832.P14322739344014039034

`A052765(n)+A000007(A052331(3*n+1))`
-/

namespace A392832.P14322739344014039034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052765 n + A000007 (A052331 (3 * n + 1)).toNat

end

end A392832.P14322739344014039034

/-! ## A392832.P3009847784325981907

`A154271(A073157(n))+A052765(n)`
-/

namespace A392832.P3009847784325981907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A073157 n).toNat + A052765 n

end

end A392832.P3009847784325981907

/-! ## A392832.P12911579469434220491

`A052765(n)^A091950(A174470(n))`
-/

namespace A392832.P12911579469434220491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052765 n : ℚ) ^ (A091950 (A174470 n).toNat : ℤ)

end

end A392832.P12911579469434220491

/-!
# A392833: Cube of 3, then 33, then 333, increasing the number of threes by one each time.

The programs for A392833, the canonical program `A392833.P9325085470590352023` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392833 has offset 1).

The definition of A392833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392833.P9325085470590352023

`((10^(n+1)-1)/3)^3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392833

/-- `((10^(n+1)-1)/3)^3` -/
def P9325085470590352023.Spec : Prop :=
  ∀ n, P9325085470590352023.a n = (A392833 (n + 1) : ℚ)

end A392833

/-! ## A392833.P16042263981263256168

`A002277(n+1)*A075412(n+1)`
-/

namespace A392833.P16042263981263256168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 (n + 1) * A075412 (n + 1)

end

end A392833.P16042263981263256168

namespace A392833

/-- `A002277(n+1)*A075412(n+1)` -/
def P16042263981263256168.Spec : Prop :=
  ∀ n, P16042263981263256168.a n = A392833 (n + 1)

end A392833

/-!
# A392836: Primes that cannot be written as p + r where p is a prime and r is an anagram of p.

The programs for A392836, there is no canonical definition to state claims against.
-/

/-! ## A392836.P16307371607360764991

`A000040(lt[A325110(n), A047408(n+1)])`
-/

namespace A392836.P16307371607360764991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392836.P16307371607360764991

/-! ## A392836.P4589702139058032953

`A000040(lt[A141392(n+2), A350156(n+1)])`
-/

namespace A392836.P4589702139058032953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141392 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392836.P4589702139058032953

/-! ## A392836.P7282809884122404401

`A000040(lt[A359906(n+1), A122247(3*n)])`
-/

namespace A392836.P7282809884122404401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122247 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392836.P7282809884122404401

/-! ## A392836.P8562964949712930070

`∩[A098767(n+1), A100546(n)]`
-/

namespace A392836.P8562964949712930070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392836.P8562964949712930070

/-!
# A392837: a(n) = 2^(n-1)*(L(4*n + 1) + 9 - 5*n)/5, where L(n) = A000032(n).

The programs for A392837, the canonical program `A392837.P5172730101375875008` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392837 has offset 0).

The definition of A392837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392837.P5172730101375875008

`18*a(n-1)-64*a(n-2)+72*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=3, a(2)=30, a(3)=412`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392837

/-- `18*a(n-1)-64*a(n-2)+72*a(n-3)-16*a(n-4)` -/
def P5172730101375875008.Spec : Prop :=
  ∀ n, P5172730101375875008.a n = A392837 n

theorem P5172730101375875008.correct : P5172730101375875008.Spec := by
  intro n
  simp only [A392837]

end A392837

/-!
# A392838: a(n) = (F(4*n + 3) - F(4*n - 1) + 5*n - 1)/5, where F(n) = A000045(n).

The programs for A392838, the canonical program `A392838.P15727283444503708815` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392838 has offset 0).

The definition of A392838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392838.P15727283444503708815

`9*a(n-1)-16*a(n-2)+9*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=17, a(3)=107`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392838

/-- `9*a(n-1)-16*a(n-2)+9*a(n-3)-a(n-4)` -/
def P15727283444503708815.Spec : Prop :=
  ∀ n, P15727283444503708815.a n = A392838 n

theorem P15727283444503708815.correct : P15727283444503708815.Spec := by
  intro n
  simp only [A392838]

end A392838

/-! ## A392838.P10686883351401942033

`A081018(n)+n`
-/

namespace A392838.P10686883351401942033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 n + (n : ℤ)

end

end A392838.P10686883351401942033

namespace A392838

/-- `A081018(n)+n` -/
def P10686883351401942033.Spec : Prop :=
  ∀ n, P10686883351401942033.a n = A392838 n

end A392838

/-! ## A392838.P17530857025278037381

`A001654(2*n)+n`
-/

namespace A392838.P17530857025278037381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (2 * n) + (n : ℤ)

end

end A392838.P17530857025278037381

namespace A392838

/-- `A001654(2*n)+n` -/
def P17530857025278037381.Spec : Prop :=
  ∀ n, P17530857025278037381.a n = A392838 n

end A392838

/-! ## A392838.P1220524200170887982

`A059840(Δ[n²])+n`
-/

namespace A392838.P1220524200170887982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A392838.P1220524200170887982

namespace A392838

/-- `A059840(Δ[n²])+n` -/
def P1220524200170887982.Spec : Prop :=
  ∀ n, P1220524200170887982.a n = A392838 n

end A392838

/-! ## A392838.P17263199336984630389

`A206351(n+1)-1+n`
-/

namespace A392838.P17263199336984630389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206351 (n + 1) - 1 + (n : ℤ)

end

end A392838.P17263199336984630389

namespace A392838

/-- `A206351(n+1)-1+n` -/
def P17263199336984630389.Spec : Prop :=
  ∀ n, P17263199336984630389.a n = A392838 n

end A392838

/-! ## A392838.P2572813645981777530

`A260259(2*n)+n+1`
-/

namespace A392838.P2572813645981777530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (2 * n) + (n + 1 : ℤ)

end

end A392838.P2572813645981777530

namespace A392838

/-- `A260259(2*n)+n+1` -/
def P2572813645981777530.Spec : Prop :=
  ∀ n, P2572813645981777530.a n = A392838 n

end A392838

/-! ## A392838.P935311819989188119

`A226205(2*n+1)+n-1`
-/

namespace A392838.P935311819989188119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (2 * n + 1) + ((n : ℤ) - 1)

end

end A392838.P935311819989188119

namespace A392838

/-- `A226205(2*n+1)+n-1` -/
def P935311819989188119.Spec : Prop :=
  ∀ n, P935311819989188119.a n = A392838 n

end A392838

/-! ## A392838.P671805273429369316

`n-1-A121646(2*n+1)`
-/

namespace A392838.P671805273429369316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - A121646 (2 * n + 1)

end

end A392838.P671805273429369316

namespace A392838

/-- `n-1-A121646(2*n+1)` -/
def P671805273429369316.Spec : Prop :=
  ∀ n, P671805273429369316.a n = A392838 n

end A392838

/-! ## A392838.P1638887653027458807

`A081017(n)/5+n`
-/

namespace A392838.P1638887653027458807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081017 n : ℚ) / 5 + (n : ℚ)

end

end A392838.P1638887653027458807

namespace A392838

/-- `A081017(n)/5+n` -/
def P1638887653027458807.Spec : Prop :=
  ∀ n, P1638887653027458807.a n = (A392838 n : ℚ)

end A392838

/-!
# A392839: a(n) = (F(4*n + 3) - F(4*n - 1) - 5*n + 9)/5, where F(n) = A000045(n).

The programs for A392839, the canonical program `A392839.P14156472917058135261` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392839 has offset 0).

The definition of A392839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392839.P14156472917058135261

`9*a(n-1)-16*a(n-2)+9*a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=15, a(3)=103`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392839

/-- `9*a(n-1)-16*a(n-2)+9*a(n-3)-a(n-4)` -/
def P14156472917058135261.Spec : Prop :=
  ∀ n, P14156472917058135261.a n = A392839 n

theorem P14156472917058135261.correct : P14156472917058135261.Spec := by
  intro n
  simp only [A392839]

end A392839

/-! ## A392839.P2224658087256031889

`A081018(n)+2-n`
-/

namespace A392839.P2224658087256031889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 n + (2 - (n : ℤ))

end

end A392839.P2224658087256031889

namespace A392839

/-- `A081018(n)+2-n` -/
def P2224658087256031889.Spec : Prop :=
  ∀ n, P2224658087256031889.a n = A392839 n

end A392839

/-! ## A392839.P12114443462585105838

`A206351(n+1)+1-n`
-/

namespace A392839.P12114443462585105838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206351 (n + 1) + (1 - (n : ℤ))

end

end A392839.P12114443462585105838

namespace A392839

/-- `A206351(n+1)+1-n` -/
def P12114443462585105838.Spec : Prop :=
  ∀ n, P12114443462585105838.a n = A392839 n

end A392839

/-! ## A392839.P13526055960691958047

`A001654(2*n)+2-n`
-/

namespace A392839.P13526055960691958047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (2 * n) + (2 - (n : ℤ))

end

end A392839.P13526055960691958047

namespace A392839

/-- `A001654(2*n)+2-n` -/
def P13526055960691958047.Spec : Prop :=
  ∀ n, P13526055960691958047.a n = A392839 n

end A392839

/-! ## A392839.P6527656634823226025

`∑[A001519(2*n)]+1-n`
-/

namespace A392839.P6527656634823226025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ)

end

end A392839.P6527656634823226025

namespace A392839

/-- `∑[A001519(2*n)]+1-n` -/
def P6527656634823226025.Spec : Prop :=
  ∀ n, P6527656634823226025.a n = A392839 n

end A392839

/-! ## A392839.P812608499574852973

`A226205(2*n+1)-(n-1)`
-/

namespace A392839.P812608499574852973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (2 * n + 1) - ((n : ℤ) - 1)

end

end A392839.P812608499574852973

namespace A392839

/-- `A226205(2*n+1)-(n-1)` -/
def P812608499574852973.Spec : Prop :=
  ∀ n, P812608499574852973.a n = A392839 n

end A392839

/-!
# A392841: Number of trailing zeros in a type of Zeckendorf expansion based on the Fibonacci numbers of odd index.

The programs for A392841, the canonical program `A392841.P10420342193856586966` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392841 has offset 1).

The definition of A392841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392841.P10420342193856586966

`val(A165404(n+1), 2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A392841

/-- `val(A165404(n+1), 2)` -/
def P10420342193856586966.Spec : Prop :=
  ∀ n, (P10420342193856586966.a n : ℤ) = A392841 (n + 1)

theorem P10420342193856586966.correct : P10420342193856586966.Spec := by
  intro n
  simp only [A392841, Nat.add_sub_cancel]

end A392841

/-! ## A392841.P16627147757276382642

`val(A165406(n+1), 2)`
-/

namespace A392841.P16627147757276382642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165406 (n + 1)).toNat 2

end

end A392841.P16627147757276382642

namespace A392841

/-- `val(A165406(n+1), 2)` -/
def P16627147757276382642.Spec : Prop :=
  ∀ n, (P16627147757276382642.a n : ℤ) = A392841 (n + 1)

end A392841

/-! ## A392841.P15808547003889363456

`A007814(A165404(n+1))`
-/

namespace A392841.P15808547003889363456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A165404 (n + 1)).toNat

end

end A392841.P15808547003889363456

namespace A392841

/-- `A007814(A165404(n+1))` -/
def P15808547003889363456.Spec : Prop :=
  ∀ n, P15808547003889363456.a n = A392841 (n + 1)

end A392841

/-! ## A392841.P16679822598024183556

`val(A163901(n+1), 4)`
-/

namespace A392841.P16679822598024183556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163901 (n + 1)).toNat 4

end

end A392841.P16679822598024183556

namespace A392841

/-- `val(A163901(n+1), 4)` -/
def P16679822598024183556.Spec : Prop :=
  ∀ n, (P16679822598024183556.a n : ℤ) = A392841 (n + 1)

end A392841

/-! ## A392841.P7728787734165867707

`A235127(A163901(n+1))`
-/

namespace A392841.P7728787734165867707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A163901 (n + 1)).toNat

end

end A392841.P7728787734165867707

namespace A392841

/-- `A235127(A163901(n+1))` -/
def P7728787734165867707.Spec : Prop :=
  ∀ n, P7728787734165867707.a n = A392841 (n + 1)

end A392841

/-!
# A392842: Number of trailing zeros in a type of Zeckendorf expansion based on Fibonacci numbers of even index.

The programs for A392842, the canonical program `A392842.P10202073856946613228` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392842 has offset 1).

The definition of A392842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392842.P10202073856946613228

`A007814(record[A109168(3*n+2)])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A392842

/-- `A007814(record[A109168(3*n+2)])` -/
def P10202073856946613228.Spec : Prop :=
  ∀ n, P10202073856946613228.a n = A392842 (n + 1)

theorem P10202073856946613228.correct : P10202073856946613228.Spec := by
  intro n
  simp only [A392842, Nat.add_sub_cancel]

end A392842

/-! ## A392842.P16038143345181412103

`val(A391394(n+2), 2)`
-/

namespace A392842.P16038143345181412103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A391394 (n + 2)).toNat 2

end

end A392842.P16038143345181412103

namespace A392842

/-- `val(A391394(n+2), 2)` -/
def P16038143345181412103.Spec : Prop :=
  ∀ n, (P16038143345181412103.a n : ℤ) = A392842 (n + 1)

end A392842

/-! ## A392842.P11043417133594976365

`A007814(A391394(n+2))`
-/

namespace A392842.P11043417133594976365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A391394 (n + 2)).toNat

end

end A392842.P11043417133594976365

namespace A392842

/-- `A007814(A391394(n+2))` -/
def P11043417133594976365.Spec : Prop :=
  ∀ n, P11043417133594976365.a n = A392842 (n + 1)

end A392842

/-!
# A392843: a(n) is the least divisor d of n such that n is the product of distinct elements of 1..d.

The programs for A392843, there is no canonical definition to state claims against.
-/

/-! ## A392843.P16721446481926325032

`A140271(A353897(n+1)%A114612(2*n+1))`
-/

namespace A392843.P16721446481926325032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (Int.tmod (A353897 (n + 1)) (A114612 (2 * n + 1))).toNat

end

end A392843.P16721446481926325032

/-! ## A392843.P15185540615939838592

`A140271(A353897(n+1))%A329395(2*n+3)`
-/

namespace A392843.P15185540615939838592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140271 (A353897 (n + 1)).toNat) (A329395 (2 * n + 3))

end

end A392843.P15185540615939838592

/-!
# A392844: Stellated octahemioctahedral numbers.

The programs for A392844, the canonical program `A392844.P4021648935066291138` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392844 has offset 1).

The definition of A392844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392844.P4021648935066291138

`8*(n+1)^3-12*(n+1)+5`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392844

/-- `8*(n+1)^3-12*(n+1)+5` -/
def P4021648935066291138.Spec : Prop :=
  ∀ n, P4021648935066291138.a n = A392844 (n + 1)

theorem P4021648935066291138.correct : P4021648935066291138.Spec := by
  intro n
  simp only [A392844, Nat.add_sub_cancel]

end A392844

/-! ## A392844.P13131169953522534522

`Δ[n²]*A082112(n)`
-/

namespace A392844.P13131169953522534522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A082112 n

end

end A392844.P13131169953522534522

namespace A392844

/-- `Δ[n²]*A082112(n)` -/
def P13131169953522534522.Spec : Prop :=
  ∀ n, P13131169953522534522.a n = A392844 (n + 1)

theorem P13131169953522534522.correct : P13131169953522534522.Spec := by
  intro n
  simp only [A392844, Nat.add_sub_cancel, A392844.P13131169953522534522.f1, A392844.P13131169953522534522.a, A392844.P4021648935066291138.a, A082112, A082112.P18049472820534468049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392844

/-! ## A392844.P3826412930772552499

`A090197(2*n)`
-/

namespace A392844.P3826412930772552499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 (2 * n)

end

end A392844.P3826412930772552499

namespace A392844

/-- `A090197(2*n)` -/
def P3826412930772552499.Spec : Prop :=
  ∀ n, P3826412930772552499.a n = A392844 (n + 1)

theorem P3826412930772552499.correct : P3826412930772552499.Spec := by
  intro n
  simp only [A392844, Nat.add_sub_cancel, A392844.P3826412930772552499.a, A392844.P4021648935066291138.a, A090197, A090197.P16054348597824220922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392844

/-! ## A392844.P14792909283016955305

`A192845(2*n+1)/4`
-/

namespace A392844.P14792909283016955305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192845 (2 * n + 1) : ℚ) / 4

end

end A392844.P14792909283016955305

namespace A392844

/-- `A192845(2*n+1)/4` -/
def P14792909283016955305.Spec : Prop :=
  ∀ n, P14792909283016955305.a n = (A392844 (n + 1) : ℚ)

theorem P14792909283016955305.correct : P14792909283016955305.Spec := by
  intro n
  simp only [A392844, Nat.add_sub_cancel, A392844.P14792909283016955305.a, A392844.P4021648935066291138.a, A192845, A192845.P10036743651103174878.a, A090197, A090197.P16054348597824220922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392844

/-! ## A392844.P16367700563752102166

`(2*n+1)*A082111(2*n)`
-/

namespace A392844.P16367700563752102166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A082111 (2 * n)

end

end A392844.P16367700563752102166

namespace A392844

/-- `(2*n+1)*A082111(2*n)` -/
def P16367700563752102166.Spec : Prop :=
  ∀ n, P16367700563752102166.a n = A392844 (n + 1)

theorem P16367700563752102166.correct : P16367700563752102166.Spec := by
  intro n
  simp only [A392844, Nat.add_sub_cancel, A392844.P16367700563752102166.a, A392844.P4021648935066291138.a, A082111, A082111.P6693655869700550753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392844

/-! ## A392844.P4439484145151705522

`A014107(A014107(n+2))/(n+2)`
-/

namespace A392844.P4439484145151705522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014107 (A014107 (n + 2)).toNat : ℚ) / (n + 2 : ℚ)

end

end A392844.P4439484145151705522

namespace A392844

/-- `A014107(A014107(n+2))/(n+2)` -/
def P4439484145151705522.Spec : Prop :=
  ∀ n, P4439484145151705522.a n = (A392844 (n + 1) : ℚ)

end A392844

/-!
# A392845: Numbers k for which the period length of the binary expansion of 1/k is a prime number.

The programs for A392845, there is no canonical definition to state claims against.
-/

/-! ## A392845.P12334384806738075565

`lt[A006519(A000041(n)), A089309(n)]`
-/

namespace A392845.P12334384806738075565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392845.P12334384806738075565

/-!
# A392848: Number of 4-regular planar graphs with n vertices whose diagonal graphs are exactly 2-vertex connected and 3-edge connected.

The programs for A392848, there is no canonical definition to state claims against.
-/

/-! ## A392848.P8122413137200320748

`A007022(n+10)-A002880(n+10)`
-/

namespace A392848.P8122413137200320748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007022 (n + 10) - A002880 (n + 10)

end

end A392848.P8122413137200320748

/-! ## A392848.P10648847735991969893

`A255350(A370274(n+1))`
-/

namespace A392848.P10648847735991969893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 (A370274 (n + 1)).toNat

end

end A392848.P10648847735991969893

/-!
# A392852: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + log(1-x)^2) ).

The programs for A392852, there is no canonical definition to state claims against.
-/

/-! ## A392852.P1305650201632925011

`A330345(n)+A327126(A133236(n+2))`
-/

namespace A392852.P1305650201632925011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330345 n + A327126 (A133236 (n + 2)).toNat

end

end A392852.P1305650201632925011

/-!
# A392858: a(n) = A028234(A276086(n)), where the A276086 is the primorial base exp-function, and A028234 completely removes the smallest prime factor of its argument.

The programs for A392858, there is no canonical definition to state claims against.
-/

/-! ## A392858.P10695519907855377116

`A028234(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392858.P10695519907855377116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A276086 n).toNat

end

end A392858.P10695519907855377116

/-! ## A392858.P8416176756843124378

`A276086(A276093(n))`
-/

namespace A392858.P8416176756843124378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A276093 n).toNat

end

end A392858.P8416176756843124378

/-! ## A392858.P1149824127264838016

`A358764(A276093(n)+1)`
-/

namespace A392858.P1149824127264838016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358764 (A276093 n + 1).toNat

end

end A392858.P1149824127264838016

/-! ## A392858.P10175363448224095407

`A358764(xor(1, A276093(n)))`
-/

namespace A392858.P10175363448224095407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358764 (Int.xor 1 (A276093 n)).toNat

end

end A392858.P10175363448224095407

/-! ## A392858.P9541331361011268798

`A276086(n-A276094(n))`
-/

namespace A392858.P9541331361011268798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) - A276094 n).toNat

end

end A392858.P9541331361011268798

/-! ## A392858.P15082625637020221920

`A276086(n)/A276086(A276094(n))`
-/

namespace A392858.P15082625637020221920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A276086 (A276094 n).toNat : ℚ)

end

end A392858.P15082625637020221920

/-! ## A392858.P16451246747396794482

`A328475(lcm(2, A276093(n)))`
-/

namespace A392858.P16451246747396794482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 (Int.lcm 2 (A276093 n))

end

end A392858.P16451246747396794482

/-!
# A392860: a(n) = 1 + Sum_{i=1..n} (p_i - 2)*(p_i#/p_i), where p_i stands for the i-th prime, and p_i# = A002110(i), the i-th primorial number.

The programs for A392860, there is no canonical definition to state claims against.
-/

/-! ## A392860.P16647052831693127668

`A006862(n)-A084737(n+1)`
-/

namespace A392860.P16647052831693127668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n - A084737 (n + 1)

end

end A392860.P16647052831693127668

/-! ## A392860.P7782495933081165419

`A002110(n)+A002110(n)-A143293(n)`
-/

namespace A392860.P7782495933081165419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + (A002110 n - A143293 n)

end

end A392860.P7782495933081165419

/-! ## A392860.P5589223022282351668

`A002110(n)-A276156(A000225(n))`
-/

namespace A392860.P5589223022282351668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A276156 (A000225 n).toNat

end

end A392860.P5589223022282351668

/-! ## A392860.P6509490692484103221

`A096334(∑[n])-A276156(A000225(n))`
-/

namespace A392860.P6509490692484103221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (∑ j ∈ Finset.range (n + 1), f1 j) - A276156 (A000225 n).toNat

end

end A392860.P6509490692484103221

/-! ## A392860.P14882397954309450793

`A121281(∑[n])-A276156(A000225(n))`
-/

namespace A392860.P14882397954309450793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f1 j) - A276156 (A000225 n).toNat

end

end A392860.P14882397954309450793

/-!
# A392861: a(n) = A392860(1+n) - A006093(1+n)*A392860(n), where A006093(n) is prime(n)-1.

The programs for A392861, there is no canonical definition to state claims against.
-/

/-! ## A392861.P7557635180266664594

`A392860(1+n)-A006093(1+n)*A392860(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392861.P7557635180266664594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392860 (1 + n) - A006093 (1 + n) * A392860 n

end

end A392861.P7557635180266664594

/-! ## A392861.P11394902908666182584

`A040976(n+1)*A276156(A000225(n))`
-/

namespace A392861.P11394902908666182584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) * A276156 (A000225 n).toNat

end

end A392861.P11394902908666182584

/-!
# A392863: a(n) = Sum_{i=1..n} (A143293(n) mod prime(i))*A002110(i-1), where A002110 are the primorial numbers, and A143293 give their partial sums.

The programs for A392863, there is no canonical definition to state claims against.
-/

/-! ## A392863.P15791217618901458674

`A082494(A002110(n))-1`
-/

namespace A392863.P15791217618901458674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082494 (A002110 n).toNat - 1

end

end A392863.P15791217618901458674

/-!
# A392864: a(n) = Sum_{i=1..n} (A392614(1+n) mod prime(i))*A002110(i-1).

The programs for A392864, there is no canonical definition to state claims against.
-/

/-! ## A392864.P8014407513492263990

`∑[A026521(2*a(n-1)-a(n-2))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A392864.P8014407513492263990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6] fun n f1 =>
  A026521 (2 * f1 (n - 1) - f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392864.P8014407513492263990

/-!
# A392865: a(n) = n mod A117366(n), where A117366 gives the smallest prime greater than the largest prime dividing n.

The programs for A392865, the canonical program `A392865.P10564030822675595943` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392865 has offset 1).

The definition of A392865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392865.P3837088784219684153

`(n+1)%A117366(n+1)`
-/

namespace A392865.P3837088784219684153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A117366 (n + 1))

end

end A392865.P3837088784219684153

namespace A392865

/-- `(n+1)%A117366(n+1)` -/
def P3837088784219684153.Spec : Prop :=
  ∀ n, P3837088784219684153.a n = A392865 (n + 1)

theorem P3837088784219684153.correct : P3837088784219684153.Spec := by
  intro n
  simp only [A392865, Nat.add_sub_cancel, A392865.P3837088784219684153.a, A392865.P10564030822675595943.a, A000027, A000027.P10331202704469894836.a, A006530, A006530.P13372528560459906635.a, A117366, A117366.P12979558578758758009.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A070229, A070229.P5792893597916963980.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392865

/-! ## A392865.P10564030822675595943

`A000027(n+1)%A151800(A006530(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A392865

/-- `A000027(n+1)%A151800(A006530(n+1))` -/
def P10564030822675595943.Spec : Prop :=
  ∀ n, P10564030822675595943.a n = A392865 (n + 1)

theorem P10564030822675595943.correct : P10564030822675595943.Spec := by
  intro n
  simp only [A392865, Nat.add_sub_cancel]

end A392865

/-! ## A392865.P1873875661001344503

`A392870((n+1)*A392870((n+1)²))`
-/

namespace A392865.P1873875661001344503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392870 ((n + 1 : ℤ) * A392870 ((n + 1) ^ 2)).toNat

end

end A392865.P1873875661001344503

namespace A392865

/-- `A392870((n+1)*A392870((n+1)²))` -/
def P1873875661001344503.Spec : Prop :=
  ∀ n, P1873875661001344503.a n = A392865 (n + 1)

end A392865

/-! ## A392865.P2909632788881201582

`A392874(A156552(n+1))`
-/

namespace A392865.P2909632788881201582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392874 (A156552 (n + 1)).toNat

end

end A392865.P2909632788881201582

namespace A392865

/-- `A392874(A156552(n+1))` -/
def P2909632788881201582.Spec : Prop :=
  ∀ n, P2909632788881201582.a n = A392865 (n + 1)

end A392865

/-! ## A392865.P17839976876167964744

`A392872(A122111(n+1))`
-/

namespace A392865.P17839976876167964744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392872 (A122111 (n + 1)).toNat

end

end A392865.P17839976876167964744

namespace A392865

/-- `A392872(A122111(n+1))` -/
def P17839976876167964744.Spec : Prop :=
  ∀ n, P17839976876167964744.a n = A392865 (n + 1)

end A392865

/-!
# A392866: a(n) = A276086(n) mod A117366(A276086(n)), where A117366 gives the smallest prime greater than the largest prime dividing n, and A276086 is the primorial base exp-function.

The programs for A392866, there is no canonical definition to state claims against.
-/

/-! ## A392866.P16030756533278167803

`A392865(A276086(n))`
-/

namespace A392866.P16030756533278167803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (A276086 n).toNat

end

end A392866.P16030756533278167803

/-! ## A392866.P12661431253885242362

`A392874(A277022(n))`
-/

namespace A392866.P12661431253885242362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392874 (A277022 n).toNat

end

end A392866.P12661431253885242362

/-! ## A392866.P6710674315935325882

`A392876(n)%A103499(n+3)`
-/

namespace A392866.P6710674315935325882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392876 n) (A103499 (n + 3))

end

end A392866.P6710674315935325882

/-! ## A392866.P3436342777660902098

`A392876(C(2, A365201(2*(n+2))²)+n)`
-/

namespace A392866.P3436342777660902098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392876 (Nat.choose 2 (A365201 (2 * (n + 2)) ^ 2).toNat + n)

end

end A392866.P3436342777660902098

/-! ## A392866.P17105871344146611414

`A392876(C(A390568(n+1), ∏{p}[n+1, #+1]²)+n)`
-/

namespace A392866.P17105871344146611414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392876 (Nat.choose (A390568 (n + 1)).toNat ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1)) ^ 2) + n)

end

end A392866.P17105871344146611414

/-!
# A392867: Numbers k such that A276086(A003415(k)) <= k, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A392867, there is no canonical definition to state claims against.
-/

/-! ## A392867.P3908386309549726015

`eq[1, A393067(n+1)]+1`
-/

namespace A392867.P3908386309549726015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392867.P3908386309549726015

/-! ## A392867.P4531788737196066690

`filter[A171521(n+1), A393067(#)]`
-/

namespace A392867.P4531788737196066690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393067 (f1 j).toNat = 1) n)

end

end A392867.P4531788737196066690

/-! ## A392867.P11382501767818427397

`filter[A068937(n+1), A393067(#)]`
-/

namespace A392867.P11382501767818427397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393067 (f1 j).toNat = 1) n)

end

end A392867.P11382501767818427397

/-! ## A392867.P15018774697330166916

`filter[n+1, A393067(#)]`
-/

namespace A392867.P15018774697330166916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393067 (f1 j) = 1) n)

end

end A392867.P15018774697330166916

/-! ## A392867.P12348911880401385283

`lt[A327859(n), n+1]`
-/

namespace A392867.P12348911880401385283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392867.P12348911880401385283

/-! ## A392867.P10136152550451329169

`lt[A276086(A003415(n)), n+1]`
-/

namespace A392867.P10136152550451329169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A003415 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392867.P10136152550451329169

/-!
# A392868: Numbers k such that A276086(A003415(k)) <= k and the least prime not dividing A003415(k) is equal to the least prime dividing k, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A392868, there is no canonical definition to state claims against.
-/

/-! ## A392868.P6650603460942980834

`filter[A392867(n+1), A393068(#)]`
-/

namespace A392868.P6650603460942980834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393068 (f1 j).toNat = 1) n)

end

end A392868.P6650603460942980834

/-! ## A392868.P13664365960734380553

`filter[A392867(n+1), A391844(#)]`
-/

namespace A392868.P13664365960734380553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A392868.P13664365960734380553

/-! ## A392868.P11026485502227358887

`filter[A391845(n+1), A393067(#)]`
-/

namespace A392868.P11026485502227358887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393067 (f1 j).toNat = 1) n)

end

end A392868.P11026485502227358887

/-! ## A392868.P8454203643732780360

`filter[A391845(n+1), A393068(#)]`
-/

namespace A392868.P8454203643732780360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393068 (f1 j).toNat = 1) n)

end

end A392868.P8454203643732780360

/-! ## A392868.P14476606568036415111

`∩[A391845(n+1), A392867(n+1)]`
-/

namespace A392868.P14476606568036415111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392868.P14476606568036415111

/-! ## A392868.P4218395746751213936

`filter[A359821(n+1), A393068(#)]`
-/

namespace A392868.P4218395746751213936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393068 (f1 j).toNat = 1) n)

end

end A392868.P4218395746751213936

/-! ## A392868.P17829850956763191247

`filter[A359825(n+1), A393068(#)]`
-/

namespace A392868.P17829850956763191247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393068 (f1 j).toNat = 1) n)

end

end A392868.P17829850956763191247

/-!
# A392871: Numbers k such that k == 1 mod A117366(k), where A117366(n) gives the smallest prime greater than the largest prime dividing n.

The programs for A392871, the canonical program `A392871.P11237529172868183968` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392871 has offset 1).

The definition of A392871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392871.P11237529172868183968

`eq[1, A392865(n+1)]+1`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A392871

/-- `eq[1, A392865(n+1)]+1` -/
def P11237529172868183968.Spec : Prop :=
  ∀ n, (P11237529172868183968.a n : ℤ) = A392871 (n + 1)

theorem P11237529172868183968.correct : P11237529172868183968.Spec := by
  intro n
  simp only [A392871, Nat.add_sub_cancel]

end A392871

/-! ## A392871.P5628017308740298431

`lt[A392870(n+1), 2]+1`
-/

namespace A392871.P5628017308740298431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392870 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A392871.P5628017308740298431

namespace A392871

/-- `lt[A392870(n+1), 2]+1` -/
def P5628017308740298431.Spec : Prop :=
  ∀ n, (P5628017308740298431.a n : ℤ) = A392871 (n + 1)

end A392871

/-!
# A392872: a(n) = A122111(n) mod prime(1+bigomega(n)).

The programs for A392872, the canonical program `A392872.P17011526918379499434` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392872 has offset 1).

The definition of A392872 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A392865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392872.P17011526918379499434

`A392865(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A392872

/-- `A392865(A122111(n+1))` -/
def P17011526918379499434.Spec : Prop :=
  ∀ n, P17011526918379499434.a n = A392872 (n + 1)

theorem P17011526918379499434.correct : P17011526918379499434.Spec := by
  intro n
  simp only [A392872, Nat.add_sub_cancel]

end A392872

/-! ## A392872.P12120961287113863482

`A122111(n+1)%A000040(A073093(n+1))`
-/

namespace A392872.P12120961287113863482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122111 (n + 1)) (A000040 (A073093 (n + 1)).toNat)

end

end A392872.P12120961287113863482

namespace A392872

/-- `A122111(n+1)%A000040(A073093(n+1))` -/
def P12120961287113863482.Spec : Prop :=
  ∀ n, P12120961287113863482.a n = A392872 (n + 1)

end A392872

/-! ## A392872.P15162497601931880277

`A392874(A253564(n+1))`
-/

namespace A392872.P15162497601931880277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392874 (A253564 (n + 1)).toNat

end

end A392872.P15162497601931880277

namespace A392872

/-- `A392874(A253564(n+1))` -/
def P15162497601931880277.Spec : Prop :=
  ∀ n, P15162497601931880277.a n = A392872 (n + 1)

end A392872

/-! ## A392872.P4882577585960996172

`A000040(A268592(n+1))%A387384(n+1)`
-/

namespace A392872.P4882577585960996172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A268592 (n + 1)).toNat) (A387384 (n + 1))

end

end A392872.P4882577585960996172

namespace A392872

/-- `A000040(A268592(n+1))%A387384(n+1)` -/
def P4882577585960996172.Spec : Prop :=
  ∀ n, P4882577585960996172.a n = A392872 (n + 1)

end A392872

/-! ## A392872.P1469747167196849167

`A104246(xor(A023936(3*n+1), A194505(n+1)))`
-/

namespace A392872.P1469747167196849167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (Int.xor (A023936 (3 * n + 1)) (A194505 (n + 1))).toNat

end

end A392872.P1469747167196849167

namespace A392872

/-- `A104246(xor(A023936(3*n+1), A194505(n+1)))` -/
def P1469747167196849167.Spec : Prop :=
  ∀ n, P1469747167196849167.a n = A392872 (n + 1)

end A392872

/-!
# A392873: Nonsquarefree numbers k such that A276086(A003415(k)) <= k, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A392873, there is no canonical definition to state claims against.
-/

/-! ## A392873.P17324125929529599337

`∩[A013929(n+1), A392867(n+1)]`
-/

namespace A392873.P17324125929529599337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392873.P17324125929529599337

/-! ## A392873.P13131537799796155500

`∩[A080756(n+1), A392867(n+1)]`
-/

namespace A392873.P13131537799796155500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392873.P13131537799796155500

/-!
# A392874: a(n) = A005940(1+n) mod A117366(A005940(1+n)), where A117366 gives the smallest prime greater than the largest prime dividing n, and A005940 is Doudna-sequence.

The programs for A392874, the canonical program `A392874.P4881717719182176863` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392874 has offset 0).

The definition of A392874 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A392865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392874.P4881717719182176863

`A392865(A005940(1+n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A392874

/-- `A392865(A005940(1+n))` -/
def P4881717719182176863.Spec : Prop :=
  ∀ n, P4881717719182176863.a n = A392874 n

theorem P4881717719182176863.correct : P4881717719182176863.Spec := by
  intro n
  simp only [A392874]

end A392874

/-! ## A392874.P1146449090787350914

`A392872(A253563(n))`
-/

namespace A392874.P1146449090787350914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392872 (A253563 n).toNat

end

end A392874.P1146449090787350914

namespace A392874

/-- `A392872(A253563(n))` -/
def P1146449090787350914.Spec : Prop :=
  ∀ n, P1146449090787350914.a n = A392874 n

end A392874

/-!
# A392875: a(n) = A019565(n) mod A117366(A276086(n)), where A117366 gives the smallest prime greater than the largest prime dividing n, and A019565 is the base-2 exp-function.

The programs for A392875, there is no canonical definition to state claims against.
-/

/-! ## A392875.P879615441377861748

`A392865(A019565(n))`
-/

namespace A392875.P879615441377861748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (A019565 n).toNat

end

end A392875.P879615441377861748

/-! ## A392875.P9331581729530685541

`A019565(n)%A019565(2^ceil(log2(n+1)))`
-/

namespace A392875.P9331581729530685541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019565 n) (A019565 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat)

end

end A392875.P9331581729530685541

/-! ## A392875.P4336606522945880433

`A392874(A048678(n))`
-/

namespace A392875.P4336606522945880433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392874 (A048678 n).toNat

end

end A392875.P4336606522945880433

/-! ## A392875.P11478733058476101783

`A392876(A059590(n))`
-/

namespace A392875.P11478733058476101783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392876 (A059590 n).toNat

end

end A392875.P11478733058476101783

/-! ## A392875.P8496030047343800167

`A392866(A276156(n))`
-/

namespace A392875.P8496030047343800167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392866 (A276156 n).toNat

end

end A392875.P8496030047343800167

/-! ## A392875.P4201838395883596583

`A392872(A057335(n))`
-/

namespace A392875.P4201838395883596583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392872 (A057335 n).toNat

end

end A392875.P4201838395883596583

/-!
# A392876: a(n) = A276076(n) mod A117366(A276076(n)), where A117366 gives the smallest prime greater than the largest prime dividing n, and A276076 is the factorial base exp-function.

The programs for A392876, there is no canonical definition to state claims against.
-/

/-! ## A392876.P15783348340147718776

`A392865(A276076(n))`
-/

namespace A392876.P15783348340147718776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (A276076 n).toNat

end

end A392876.P15783348340147718776

/-! ## A392876.P7717838716099168084

`A392866(A351576(n))`
-/

namespace A392876.P7717838716099168084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392866 (A351576 n).toNat

end

end A392876.P7717838716099168084

/-! ## A392876.P13441371937645812106

`A392874(A277012(n))`
-/

namespace A392876.P13441371937645812106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392874 (A277012 n).toNat

end

end A392876.P13441371937645812106

/-!
# A392877: a(n) = A276076(A276075(n)), where A276075 and A276076 are factorial base log and exp-functions.

The programs for A392877, there is no canonical definition to state claims against.
-/

/-! ## A392877.P12970006459314752215

`1-A376417(n+1)+n`
-/

namespace A392877.P12970006459314752215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A376417 (n + 1) + (n : ℤ)

end

end A392877.P12970006459314752215

/-!
# A392878: 

The programs for A392878, there is no canonical definition to state claims against.
-/

/-! ## A392878.P6469847645729259817

`A048103(A372575(n+1))`
-/

namespace A392878.P6469847645729259817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (A372575 (n + 1)).toNat

end

end A392878.P6469847645729259817

/-! ## A392878.P8213445443985578619

`A392879(A392879(n+1))`
-/

namespace A392878.P8213445443985578619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392879 (A392879 (n + 1)).toNat

end

end A392878.P8213445443985578619

/-! ## A392878.P11091897342821017978

`and(A375155(n+1), A392877(n+1))`
-/

namespace A392878.P11091897342821017978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A375155 (n + 1)) (A392877 (n + 1))

end

end A392878.P11091897342821017978

/-! ## A392878.P3398138830816591055

`A392877(n+1)%A004733(n)`
-/

namespace A392878.P3398138830816591055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392877 (n + 1)) (A004733 n)

end

end A392878.P3398138830816591055

/-! ## A392878.P13278743838419096866

`and(A003261(n+1), A392877(n+1))`
-/

namespace A392878.P13278743838419096866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A392877 (n + 1))

end

end A392878.P13278743838419096866

/-! ## A392878.P2974193556867065167

`and(A163383(n+1), A392877(n+1))`
-/

namespace A392878.P2974193556867065167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163383 (n + 1)) (A392877 (n + 1))

end

end A392878.P2974193556867065167

/-! ## A392878.P8873703995069851098

`and(A063396(n), A392877(n+1))`
-/

namespace A392878.P8873703995069851098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063396 n) (A392877 (n + 1))

end

end A392878.P8873703995069851098

/-! ## A392878.P2550079278471127319

`and(A055580(n), A392877(n+1))`
-/

namespace A392878.P2550079278471127319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A392877 (n + 1))

end

end A392878.P2550079278471127319

/-! ## A392878.P536576189076275882

`and(A107392(n), A392877(n+1))`
-/

namespace A392878.P536576189076275882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 n) (A392877 (n + 1))

end

end A392878.P536576189076275882

/-! ## A392878.P15463800989675249664

`and(A107464(n), A392877(n+1))`
-/

namespace A392878.P15463800989675249664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A392877 (n + 1))

end

end A392878.P15463800989675249664

/-! ## A392878.P5136501203623390502

`and(A107953(n), A392877(n+1))`
-/

namespace A392878.P5136501203623390502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A392877 (n + 1))

end

end A392878.P5136501203623390502

/-! ## A392878.P12085056934048088637

`and(A211386(n), A392877(n+1))`
-/

namespace A392878.P12085056934048088637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211386 n) (A392877 (n + 1))

end

end A392878.P12085056934048088637

/-! ## A392878.P6149748170488295679

`and(A107954(n), A392877(n+1))`
-/

namespace A392878.P6149748170488295679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A392877 (n + 1))

end

end A392878.P6149748170488295679

/-! ## A392878.P12338750107850275380

`and(A107955(n), A392877(n+1))`
-/

namespace A392878.P12338750107850275380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A392877 (n + 1))

end

end A392878.P12338750107850275380

/-! ## A392878.P16673740171191443052

`gcd(A345022(n+2), A392877(n+1))`
-/

namespace A392878.P16673740171191443052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345022 (n + 2)) (A392877 (n + 1))

end

end A392878.P16673740171191443052

/-! ## A392878.P4969544116876263528

`gcd(A392539(n), A392877(n+1))`
-/

namespace A392878.P4969544116876263528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A392539 n) (A392877 (n + 1))

end

end A392878.P4969544116876263528

/-! ## A392878.P12281677292153069476

`and(A018886(n+1), A392877(n+1))`
-/

namespace A392878.P12281677292153069476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A392877 (n + 1))

end

end A392878.P12281677292153069476

/-! ## A392878.P15194543076487392970

`and(A164291(n+2), A392877(n+1))`
-/

namespace A392878.P15194543076487392970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164291 (n + 2)) (A392877 (n + 1))

end

end A392878.P15194543076487392970

/-! ## A392878.P2222051917379391781

`and(A060160(n+1), A392877(n+1))`
-/

namespace A392878.P2222051917379391781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A392877 (n + 1))

end

end A392878.P2222051917379391781

/-!
# A392880: a(n) is the number of iterations of map k -> A392879(k) needed to reach the fixed point A392878(n), when starting iterating from k=n.

The programs for A392880, there is no canonical definition to state claims against.
-/

/-! ## A392880.P15959964433204680659

`A352822(A372918(n+1))`
-/

namespace A392880.P15959964433204680659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (A372918 (n + 1)).toNat

end

end A392880.P15959964433204680659

/-! ## A392880.P14106508496821328772

`A000043(n+3)%A385128(A085731(n+1))`
-/

namespace A392880.P14106508496821328772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (n + 3)) (A385128 (A085731 (n + 1)).toNat)

end

end A392880.P14106508496821328772

/-! ## A392880.P11224067560470986107

`A352822(A396901(n+1))`
-/

namespace A392880.P11224067560470986107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (A396901 (n + 1)).toNat

end

end A392880.P11224067560470986107

/-! ## A392880.P6688353576691584606

`A063962(A085731(n+1)%A358507(n+4))`
-/

namespace A392880.P6688353576691584606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (Int.tmod (A085731 (n + 1)) (A358507 (n + 4))).toNat

end

end A392880.P6688353576691584606

/-! ## A392880.P7977667675453694737

`and(A056170(n+1), A111775(A373186(3*n+2)))`
-/

namespace A392880.P7977667675453694737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056170 (n + 1)) (A111775 (A373186 (3 * n + 2)).toNat)

end

end A392880.P7977667675453694737

/-!
# A392884: a(n) is the minimum total surface area of four-element sets of distinct integer-sided cuboids that fill an n X n X n cube.

The programs for A392884, the canonical program `A392884.P5211202424227521369` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392884 has offset 3).

The definition of A392884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392884.P5211202424227521369

`8*(n+3)²+2*(n+3)+2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392884

/-- `8*(n+3)²+2*(n+3)+2` -/
def P5211202424227521369.Spec : Prop :=
  ∀ n, (P5211202424227521369.a n : ℤ) = A392884 (n + 3)

theorem P5211202424227521369.correct : P5211202424227521369.Spec := by
  intro n
  simp only [A392884, Nat.add_sub_cancel]

end A392884

/-! ## A392884.P18409872048363820276

`A325958(n+3)/2`
-/

namespace A392884.P18409872048363820276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325958 (n + 3) : ℚ) / 2

end

end A392884.P18409872048363820276

namespace A392884

/-- `A325958(n+3)/2` -/
def P18409872048363820276.Spec : Prop :=
  ∀ n, P18409872048363820276.a n = (A392884 (n + 3) : ℚ)

theorem P18409872048363820276.correct : P18409872048363820276.Spec := by
  intro n
  simp only [A392884, Nat.add_sub_cancel, A392884.P18409872048363820276.a, A392884.P5211202424227521369.a, A325958, A325958.P3897492207661601591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392884

/-! ## A392884.P17278722797589467807

`2*A054567(n+4)`
-/

namespace A392884.P17278722797589467807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054567 (n + 4)

end

end A392884.P17278722797589467807

namespace A392884

/-- `2*A054567(n+4)` -/
def P17278722797589467807.Spec : Prop :=
  ∀ n, P17278722797589467807.a n = A392884 (n + 3)

theorem P17278722797589467807.correct : P17278722797589467807.Spec := by
  intro n
  simp only [A392884, Nat.add_sub_cancel, A392884.P17278722797589467807.a, A392884.P5211202424227521369.a, A054567, A054567.P492713919854177401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392884

/-! ## A392884.P5526477933323220095

`A096376(2*(n+3))`
-/

namespace A392884.P5526477933323220095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096376 (2 * (n + 3))

end

end A392884.P5526477933323220095

namespace A392884

/-- `A096376(2*(n+3))` -/
def P5526477933323220095.Spec : Prop :=
  ∀ n, P5526477933323220095.a n = A392884 (n + 3)

theorem P5526477933323220095.correct : P5526477933323220095.Spec := by
  intro n
  simp only [A392884, Nat.add_sub_cancel, A392884.P5526477933323220095.a, A392884.P5211202424227521369.a, A096376, A096376.P11198902843790965061.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392884

/-! ## A392884.P132900658811745306

`A116735(2*(n+4))`
-/

namespace A392884.P132900658811745306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116735 (2 * (n + 4))

end

end A392884.P132900658811745306

namespace A392884

/-- `A116735(2*(n+4))` -/
def P132900658811745306.Spec : Prop :=
  ∀ n, P132900658811745306.a n = A392884 (n + 3)

end A392884

/-! ## A392884.P18310727538949651591

`A316671(4*(n+3))`
-/

namespace A392884.P18310727538949651591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316671 (4 * (n + 3))

end

end A392884.P18310727538949651591

namespace A392884

/-- `A316671(4*(n+3))` -/
def P18310727538949651591.Spec : Prop :=
  ∀ n, P18310727538949651591.a n = A392884 (n + 3)

end A392884

/-! ## A392884.P3697017559130502352

`A373662(4*(n+3))`
-/

namespace A392884.P3697017559130502352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (4 * (n + 3))

end

end A392884.P3697017559130502352

namespace A392884

/-- `A373662(4*(n+3))` -/
def P3697017559130502352.Spec : Prop :=
  ∀ n, P3697017559130502352.a n = A392884 (n + 3)

end A392884

/-! ## A392884.P15881570526311496443

`A133263(4*(n+3))`
-/

namespace A392884.P15881570526311496443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (4 * (n + 3))

end

end A392884.P15881570526311496443

namespace A392884

/-- `A133263(4*(n+3))` -/
def P15881570526311496443.Spec : Prop :=
  ∀ n, P15881570526311496443.a n = A392884 (n + 3)

end A392884

/-! ## A392884.P16647506314028549014

`A266663(4*(n+3))`
-/

namespace A392884.P16647506314028549014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266663 (4 * (n + 3))

end

end A392884.P16647506314028549014

namespace A392884

/-- `A266663(4*(n+3))` -/
def P16647506314028549014.Spec : Prop :=
  ∀ n, P16647506314028549014.a n = A392884 (n + 3)

end A392884

/-! ## A392884.P1086286375499438515

`A022856(A124354(n+4))`
-/

namespace A392884.P1086286375499438515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (A124354 (n + 4)).toNat

end

end A392884.P1086286375499438515

namespace A392884

/-- `A022856(A124354(n+4))` -/
def P1086286375499438515.Spec : Prop :=
  ∀ n, P1086286375499438515.a n = A392884 (n + 3)

end A392884

/-!
# A392886: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 - log(1-x^3)/x^2) ).

The programs for A392886, there is no canonical definition to state claims against.
-/

/-! ## A392886.P17172693378927848623

`A186421(A392890(n))`
-/

namespace A392886.P17172693378927848623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A392890 n).toNat

end

end A392886.P17172693378927848623

/-! ## A392886.P8653662064812017402

`A291305(A392890(n)+1)`
-/

namespace A392886.P8653662064812017402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291305 (A392890 n + 1).toNat

end

end A392886.P8653662064812017402

/-! ## A392886.P18241745593312842209

`filter[A392890(n), A022930(#)]`
-/

namespace A392886.P18241745593312842209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A392886.P18241745593312842209

/-!
# A392887: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + log(1-x^2)^2/x) ).

The programs for A392887, there is no canonical definition to state claims against.
-/

/-! ## A392887.P14839665611301534652

`A392891(n)^A154231(n)`
-/

namespace A392887.P14839665611301534652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392891 n : ℚ) ^ (A154231 n : ℤ)

end

end A392887.P14839665611301534652

/-! ## A392887.P15432432104056391221

`filter[A392891(n), A071036(#)]`
-/

namespace A392887.P15432432104056391221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071036 (f1 j).toNat = 1) n)

end

end A392887.P15432432104056391221

/-! ## A392887.P7792704575663790270

`filter[A392891(n), A076213(#)]`
-/

namespace A392887.P7792704575663790270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076213 (f1 j).toNat = 1) n)

end

end A392887.P7792704575663790270

/-!
# A392888: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + log(1-x^3)^2/x^2) ).

The programs for A392888, there is no canonical definition to state claims against.
-/

/-! ## A392888.P3179195989178914671

`A088569(A041533(n))*A392938(n)`
-/

namespace A392888.P3179195989178914671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (A041533 n).toNat * A392938 n

end

end A392888.P3179195989178914671

/-! ## A392888.P15120395725147107769

`A307614(A390163(n))*A392892(n)`
-/

namespace A392888.P15120395725147107769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307614 (A390163 n).toNat * A392892 n

end

end A392888.P15120395725147107769

/-! ## A392888.P18379422188174596244

`A325989(A111288(n+1))*A392892(n)`
-/

namespace A392888.P18379422188174596244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325989 (A111288 (n + 1)).toNat * A392892 n

end

end A392888.P18379422188174596244

/-! ## A392888.P8193184528837392952

`A392892(n)+A326033(A048810(n+6))`
-/

namespace A392888.P8193184528837392952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392892 n + A326033 (A048810 (n + 6)).toNat

end

end A392888.P8193184528837392952

/-! ## A392888.P534399975409678945

`lcm(A000005(A001160(n+1)), A392892(n))`
-/

namespace A392888.P534399975409678945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A001160 (n + 1)).toNat) (A392892 n)

end

end A392888.P534399975409678945

/-!
# A392889: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + (exp(x^2) - 1)/x) ).

The programs for A392889, there is no canonical definition to state claims against.
-/

/-! ## A392889.P7759538489361499683

`A090632(A046787(n))`
-/

namespace A392889.P7759538489361499683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090632 (A046787 n).toNat

end

end A392889.P7759538489361499683

/-! ## A392889.P8913251551267780676

`A008621(A000088(n)*A369618(n))`
-/

namespace A392889.P8913251551267780676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A000088 n * A369618 n).toNat

end

end A392889.P8913251551267780676

/-!
# A392896: a(n) = least k >= 2 such that Sum_{i=2..k} 1/log(i) >= n.

The programs for A392896, there is no canonical definition to state claims against.
-/

/-! ## A392896.P11660647732606631641

`ceil(log2(A052841(n+2)+A052007(n+1)))-n`
-/

namespace A392896.P11660647732606631641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A052841 (n + 2) + A052007 (n + 1) : ℝ)⌉ - (n : ℤ)

end

end A392896.P11660647732606631641

/-! ## A392896.P17680382357981342564

`A391618(A299269(n))+2`
-/

namespace A392896.P17680382357981342564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A299269 n).toNat + 2

end

end A392896.P17680382357981342564

/-! ## A392896.P8166105053662020812

`A177151(A229170(n+2))`
-/

namespace A392896.P8166105053662020812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A229170 (n + 2)).toNat

end

end A392896.P8166105053662020812

/-! ## A392896.P11430643987018989426

`A070939(A005418(n+1))+A001399(n)`
-/

namespace A392896.P11430643987018989426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A005418 (n + 1)).toNat + A001399 n

end

end A392896.P11430643987018989426

/-! ## A392896.P11850345576722693433

`A082527(∑[n]²+3)`
-/

namespace A392896.P11850345576722693433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082527 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 3)

end

end A392896.P11850345576722693433

/-!
# A392898: a(n) = a(n-1) + a(n-2) + n! with a(0)=0, a(1)=1.

The programs for A392898, the canonical program `A392898.P13758147942873924454` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392898 has offset 0).

The definition of A392898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n!` (program `A392898.P13758147942873924454`, by `A392898.P13758147942873924454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392898.P13758147942873924454

`a(n-1)+a(n-2)+n!` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392898

/-- `a(n-1)+a(n-2)+n!` -/
def P13758147942873924454.Spec : Prop :=
  ∀ n, (P13758147942873924454.a n : ℤ) = A392898 n

theorem P13758147942873924454.correct : P13758147942873924454.Spec := by
  intro n
  simp only [A392898]

end A392898

/-! ## A392898.P2117319896471643155

`(n+1)*a(n-1)-(n-1)*a(n-2)-n*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A392898.P2117319896471643155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (n + 1 : ℤ) * a (n - 1) - ((n : ℤ) - 1) * a (n - 2) - (n : ℤ) * a (n - 3)

end

end A392898.P2117319896471643155

namespace A392898

/-- `(n+1)*a(n-1)-(n-1)*a(n-2)-n*a(n-3)` -/
def P2117319896471643155.Spec : Prop :=
  ∀ n, P2117319896471643155.a n = A392898 n

end A392898

/-! ## A392898.P3690628884403066722

`A192745(n+1)-A000045(n+1)`
-/

namespace A392898.P3690628884403066722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192745 (n + 1) - A000045 (n + 1)

end

end A392898.P3690628884403066722

namespace A392898

/-- `A192745(n+1)-A000045(n+1)` -/
def P3690628884403066722.Spec : Prop :=
  ∀ n, P3690628884403066722.a n = A392898 n

end A392898

/-! ## A392898.P8621606024889606500

`∑[A192744(n)]-A000045(n+1)`
-/

namespace A392898.P8621606024889606500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 (n + 1)

end

end A392898.P8621606024889606500

namespace A392898

/-- `∑[A192744(n)]-A000045(n+1)` -/
def P8621606024889606500.Spec : Prop :=
  ∀ n, P8621606024889606500.a n = A392898 n

end A392898

/-!
# A392899: Number of bipartite complete simple games with a maximum number of minimal winning pairs.

The programs for A392899, there is no canonical definition to state claims against.
-/

/-! ## A392899.P5291411682147324915

`A228708(eq[2, A374996(n)])`
-/

namespace A392899.P5291411682147324915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A392899.P5291411682147324915

