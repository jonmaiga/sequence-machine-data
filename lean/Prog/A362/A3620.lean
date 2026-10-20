import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A362001: Numbers k such that the digits of k^2 are a subsequence of the digits of 2^k.

The programs for A362001, there is no canonical definition to state claims against.
-/

/-! ## A362001.P11413109186885289375

`comp[A362018(n+1)]`
-/

namespace A362001.P11413109186885289375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A362001.P11413109186885289375

/-!
# A362002: Numbers k such that the digits of k^2 are a subsequence of the digits of k^3.

The programs for A362002, there is no canonical definition to state claims against.
-/

/-! ## A362002.P24397751274809252

`A032742(A051109(n+1))*A178487(n)`
-/

namespace A362002.P24397751274809252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A051109 (n + 1)).toNat * A178487 n

end

end A362002.P24397751274809252

/-!
# A362005: a(n) is the least prime == 4 mod a(n-1), with a(1) = 3.

The programs for A362005, there is no canonical definition to state claims against.
-/

/-! ## A362005.P4422602132009728628

`A158722(A079663(n+1))`
-/

namespace A362005.P4422602132009728628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158722 (A079663 (n + 1)).toNat

end

end A362005.P4422602132009728628

/-! ## A362005.P5486979388613828077

`∑[A335125(A141769(n+1)²)+2]`
-/

namespace A362005.P5486979388613828077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335125 (A141769 (n + 1) ^ 2).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362005.P5486979388613828077

/-!
# A362007: Fourth Lie-Betti number of a path graph on n vertices.

The programs for A362007, there is no canonical definition to state claims against.
-/

/-! ## A362007.P9643463902179671867

`A360571(A027690(n))%A294138(3*n)`
-/

namespace A362007.P9643463902179671867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360571 (A027690 n).toNat) (A294138 (3 * n))

end

end A362007.P9643463902179671867

/-! ## A362007.P2228083396848023354

`A049455(A002450(n+2))-1`
-/

namespace A362007.P2228083396848023354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (A002450 (n + 2)).toNat - 1

end

end A362007.P2228083396848023354

/-!
# A362008: Numbers whose Euler's cototient is divisible by 9.

The programs for A362008, the canonical program `A362008.P15802057352919654675` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362008 has offset 1).

The definition of A362008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362008.P15802057352919654675

`eq[9, dr(A051953(n+1))]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A362008

/-- `eq[9, dr(A051953(n+1))]+1` -/
def P15802057352919654675.Spec : Prop :=
  ∀ n, (P15802057352919654675.a n : ℤ) = A362008 (n + 1)

theorem P15802057352919654675.correct : P15802057352919654675.Spec := by
  intro n
  simp only [A362008, Nat.add_sub_cancel]

end A362008

/-! ## A362008.P14159102229335865995

`eq[A010888(n), A010888(A225530(n))]`
-/

namespace A362008.P14159102229335865995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362008.P14159102229335865995

namespace A362008

/-- `eq[A010888(n), A010888(A225530(n))]` -/
def P14159102229335865995.Spec : Prop :=
  ∀ n, (P14159102229335865995.a n : ℤ) = A362008 (n + 1)

end A362008

/-!
# A362010: Numbers k such that 1 < gcd(k, 42) < k and A007947(k) does not divide 42.

The programs for A362010, there is no canonical definition to state claims against.
-/

/-! ## A362010.P4089245947035922008

`A345945(lt[A161362(n+3), A179597(n)])`
-/

namespace A362010.P4089245947035922008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161362 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345945 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362010.P4089245947035922008

/-! ## A362010.P13840461496042052781

`A345945(lt[A161362(n+3), A345194(n)])`
-/

namespace A362010.P13840461496042052781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161362 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345945 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362010.P13840461496042052781

/-!
# A362012: Numbers k such that 1 < gcd(k, 105) < k and A007947(k) does not divide 105.

The programs for A362012, there is no canonical definition to state claims against.
-/

/-! ## A362012.P15935950974777750889

`A005117(2*n+5)-A162642(A005773(n))`
-/

namespace A362012.P15935950974777750889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (2 * n + 5) - A162642 (A005773 n).toNat

end

end A362012.P15935950974777750889

/-! ## A362012.P16793657592981260913

`A005117(2*n+5)-A001221(A252653(n+1))`
-/

namespace A362012.P16793657592981260913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (2 * n + 5) - A001221 (A252653 (n + 1)).toNat

end

end A362012.P16793657592981260913

/-! ## A362012.P2226044588007764619

`A175961(A141636(n+2))+2*n`
-/

namespace A362012.P2226044588007764619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175961 (A141636 (n + 2)).toNat + (2 * n : ℤ)

end

end A362012.P2226044588007764619

/-! ## A362012.P1159569019477811341

`A138191(A005029(n))+A119848(2*n+5)`
-/

namespace A362012.P1159569019477811341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (A005029 n).toNat + A119848 (2 * n + 5)

end

end A362012.P1159569019477811341

/-! ## A362012.P15758641119189183856

`A265640(2*n+5)+A244051(A008324(n))`
-/

namespace A362012.P15758641119189183856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (2 * n + 5) + A244051 (A008324 n).toNat

end

end A362012.P15758641119189183856

/-!
# A362016: Maximal number of unmarked cells with at least 3 marked neighboring cells in the n X n kings' graph.

The programs for A362016, there is no canonical definition to state claims against.
-/

/-! ## A362016.P2286993949907147023

`A089233(A353391(2*n+1))+A056827(2*n+1)`
-/

namespace A362016.P2286993949907147023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (A353391 (2 * n + 1)).toNat + A056827 (2 * n + 1)

end

end A362016.P2286993949907147023

/-! ## A362016.P1802764125363722790

`A232748(floor(ϕ*(∑[n]+1)))`
-/

namespace A362016.P1802764125363722790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 ⌊Real.goldenRatio * ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ)⌋.toNat

end

end A362016.P1802764125363722790

/-! ## A362016.P14684464244898799001

`A277903(A295133(n))`
-/

namespace A362016.P14684464244898799001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A295133 n).toNat

end

end A362016.P14684464244898799001

/-! ## A362016.P10905642825563317615

`A347697(A394096(n))`
-/

namespace A362016.P10905642825563317615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A394096 n).toNat

end

end A362016.P10905642825563317615

/-!
# A362017: a(n) is the leading prime in the n-th prime sublist defined in A348168.

The programs for A362017, there is no canonical definition to state claims against.
-/

/-! ## A362017.P15019522056803594836

`record[A230504(n+1)%A335911(n+1)]`
-/

namespace A362017.P15019522056803594836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230504 (n + 1)) (A335911 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362017.P15019522056803594836

/-! ## A362017.P2356842377682206731

`A006530(record[A215081(n)])`
-/

namespace A362017.P2356842377682206731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A362017.P2356842377682206731

/-! ## A362017.P1586148854246218154

`record[A151800(A141470(2*n+1))]`
-/

namespace A362017.P1586148854246218154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A141470 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362017.P1586148854246218154

/-! ## A362017.P10408203789370083442

`∩[A040046(n+1), A076564(n+1)]`
-/

namespace A362017.P10408203789370083442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362017.P10408203789370083442

/-! ## A362017.P2445714849000154122

`∩[A040046(n+1), A226537(n+1)]`
-/

namespace A362017.P2445714849000154122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362017.P2445714849000154122

/-!
# A362018: Numbers k such that the digits of k^2 do not form a subsequence of the digits of 2^k.

The programs for A362018, there is no canonical definition to state claims against.
-/

/-! ## A362018.P2320342618831409065

`comp[A362001(A007306(n))]`
-/

namespace A362018.P2320342618831409065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362001 (A007306 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A362018.P2320342618831409065

/-! ## A362018.P18432615019496552804

`comp[A362001(A283734(n+1))]`
-/

namespace A362018.P18432615019496552804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362001 (A283734 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A362018.P18432615019496552804

/-! ## A362018.P2263136563444497662

`comp[A362001(n+1)%A292896(n+1)]`
-/

namespace A362018.P2263136563444497662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362001 (n + 1)) (A292896 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A362018.P2263136563444497662

/-! ## A362018.P11972168190181479902

`comp[A362001(A361966(n+1))]`
-/

namespace A362018.P11972168190181479902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362001 (A361966 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A362018.P11972168190181479902

/-! ## A362018.P2376343165418089361

`comp[A362001(A260741(n+1))]`
-/

namespace A362018.P2376343165418089361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362001 (A260741 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A362018.P2376343165418089361

/-!
# A362020: Nonnegative numbers k not ending in 0 such that, in decimal representation, the subsequence of digits of k^2 occupying an odd position is equal to the digits of k.

The programs for A362020, there is no canonical definition to state claims against.
-/

/-! ## A362020.P16886191931250338011

`∩[A046830(n+1), A326418(n+1)]`
-/

namespace A362020.P16886191931250338011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362020.P16886191931250338011

/-! ## A362020.P186473772833105835

`∩[A046828(n+1), A326418(n+1)]`
-/

namespace A362020.P186473772833105835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362020.P186473772833105835

/-! ## A362020.P5215645727444517219

`filter[A326418(n+1), A168184(#)]`
-/

namespace A362020.P5215645727444517219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A362020.P5215645727444517219

/-!
# A362021: a(n) = Sum_{k=1..n} (-1)^(n-k) * k * mu(k), where mu(k) is the Moebius function.

The programs for A362021, the canonical program `A362021.P6297100833742267610` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362021 has offset 1).

The definition of A362021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362021.P3501470924371837920

`(n+1)*round(acot(∏{e}[n+1, -#]))-a(n-1)` with `a(0)=1`
-/

namespace A362021.P3501470924371837920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ)) - a (n - 1)

end

end A362021.P3501470924371837920

namespace A362021

/-- `(n+1)*round(acot(∏{e}[n+1, -#]))-a(n-1)` -/
def P3501470924371837920.Spec : Prop :=
  ∀ n, P3501470924371837920.a n = A362021 (n + 1)

end A362021

/-! ## A362021.P6297100833742267610

`A055615(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A362021

/-- `A055615(n+1)-a(n-1)` -/
def P6297100833742267610.Spec : Prop :=
  ∀ n, P6297100833742267610.a n = A362021 (n + 1)

theorem P6297100833742267610.correct : P6297100833742267610.Spec := by
  intro n
  simp only [A362021, Nat.add_sub_cancel]

end A362021

/-! ## A362021.P4111886963773136642

`A062004(n+1)/2-a(n-1)` with `a(0)=1`
-/

namespace A362021.P4111886963773136642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A062004 (n + 1) : ℚ) / 2 - a (n - 1)

end

end A362021.P4111886963773136642

namespace A362021

/-- `A062004(n+1)/2-a(n-1)` -/
def P4111886963773136642.Spec : Prop :=
  ∀ n, P4111886963773136642.a n = (A362021 (n + 1) : ℚ)

end A362021

/-! ## A362021.P5137360704814604248

`Δ[a(n-2)+n*A008683(n)]` with `a(0)=0, a(1)=1`
-/

namespace A362021.P5137360704814604248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (n : ℤ) * A008683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362021.P5137360704814604248

namespace A362021

/-- `Δ[a(n-2)+n*A008683(n)]` -/
def P5137360704814604248.Spec : Prop :=
  ∀ n, P5137360704814604248.a n = A362021 (n + 1)

end A362021

/-! ## A362021.P16545666324289934099

`(n+1)*A008683(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A362021.P16545666324289934099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A008683 (n + 1) - a (n - 1)

end

end A362021.P16545666324289934099

namespace A362021

/-- `(n+1)*A008683(n+1)-a(n-1)` -/
def P16545666324289934099.Spec : Prop :=
  ∀ n, P16545666324289934099.a n = A362021 (n + 1)

end A362021

/-! ## A362021.P15770152870141310016

`∑{d}[n+1, #*A328722((n+1)/#)]-a(n-1)` with `a(0)=1`
-/

namespace A362021.P15770152870141310016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - a (n - 1)

end

end A362021.P15770152870141310016

namespace A362021

/-- `∑{d}[n+1, #*A328722((n+1)/#)]-a(n-1)` -/
def P15770152870141310016.Spec : Prop :=
  ∀ n, P15770152870141310016.a n = A362021 (n + 1)

end A362021

/-! ## A362021.P16555581973262695829

`A328729((n+1)²)-a(n-1)` with `a(0)=1`
-/

namespace A362021.P16555581973262695829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328729 ((n + 1) ^ 2) - a (n - 1)

end

end A362021.P16555581973262695829

namespace A362021

/-- `A328729((n+1)²)-a(n-1)` -/
def P16555581973262695829.Spec : Prop :=
  ∀ n, P16555581973262695829.a n = A362021 (n + 1)

end A362021

/-!
# A362023: a(n) is the least positive integer whose decimal expansion is the concatenation of the decimal expansions of two numbers whose product is n.

The programs for A362023, there is no canonical definition to state claims against.
-/

/-! ## A362023.P13139816035452575259

`A347471(n+1)%A176084(n+5)`
-/

namespace A362023.P13139816035452575259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347471 (n + 1)) (A176084 (n + 5))

end

end A362023.P13139816035452575259

/-! ## A362023.P8602004806945579778

`A249351(A236932(n))*A347471(n+1)`
-/

namespace A362023.P8602004806945579778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A236932 n).toNat * A347471 (n + 1)

end

end A362023.P8602004806945579778

/-! ## A362023.P4066909906499260431

`A347471(n+1)+A010051(A025634(n+1))`
-/

namespace A362023.P4066909906499260431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347471 (n + 1) + A010051 (A025634 (n + 1)).toNat

end

end A362023.P4066909906499260431

/-! ## A362023.P6545644986634036855

`A347442(A022170(n+2))*A347471(n+1)`
-/

namespace A362023.P6545644986634036855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347442 (A022170 (n + 2)).toNat * A347471 (n + 1)

end

end A362023.P6545644986634036855

/-! ## A362023.P17251248094785238883

`A347456(A000040(n+3))*A347471(n+1)`
-/

namespace A362023.P17251248094785238883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347456 (A000040 (n + 3)).toNat * A347471 (n + 1)

end

end A362023.P17251248094785238883

/-!
# A362024: The number of iterations of the infinitary totient function iphi (A064380) required to reach from n to 1.

The programs for A362024, there is no canonical definition to state claims against.
-/

/-! ## A362024.P2239093320145030352

`a(A064380(n+2)-2)+1` with `a(0)=1`
-/

namespace A362024.P2239093320145030352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A064380 (n + 2) - 2).toNat + 1

end

end A362024.P2239093320145030352

/-! ## A362024.P16774754245251864055

`a(A185079(n+2)/Δ[A327566(n+1)]-2)+1` with `a(0)=1`
-/

namespace A362024.P16774754245251864055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((A185079 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ) - 2)).toNat + 1

end

end A362024.P16774754245251864055

/-! ## A362024.P1051846845850807034

`A000720(n+4)-A189718(A350947(n+1))`
-/

namespace A362024.P1051846845850807034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 4) - A189718 (A350947 (n + 1)).toNat

end

end A362024.P1051846845850807034

/-! ## A362024.P12605434169820207708

`A084558(A185091(n+2)*A265074(n))`
-/

namespace A362024.P12605434169820207708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A185091 (n + 2) * A265074 n).toNat

end

end A362024.P12605434169820207708

/-! ## A362024.P14092491378717422646

`A084558(A211413(n+1)*A296119(n+1))`
-/

namespace A362024.P14092491378717422646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A211413 (n + 1) * A296119 (n + 1)).toNat

end

end A362024.P14092491378717422646

/-!
# A362028: a(n) = Sum_{k=1..n} (-1)^(n-k) * mu(k)^2, where mu(k) is the Moebius function.

The programs for A362028, the canonical program `A362028.P7926075174844375824` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362028 has offset 1).

The definition of A362028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362028.P10464225181702266137

`round(acot(∏{e}[n+1, #]))-a(n-1)` with `a(0)=1`
-/

namespace A362028.P10464225181702266137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)) - a (n - 1)

end

end A362028.P10464225181702266137

namespace A362028

/-- `round(acot(∏{e}[n+1, #]))-a(n-1)` -/
def P10464225181702266137.Spec : Prop :=
  ∀ n, P10464225181702266137.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P7926075174844375824

`floor(1/∏{e}[n+1, #])-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362028

/-- `floor(1/∏{e}[n+1, #])-a(n-1)` -/
def P7926075174844375824.Spec : Prop :=
  ∀ n, P7926075174844375824.a n = A362028 (n + 1)

theorem P7926075174844375824.correct : P7926075174844375824.Spec := by
  intro n
  simp only [A362028, Nat.add_sub_cancel]

end A362028

/-! ## A362028.P8139273542066019330

`∏{e}[n+1, #!%2]-a(n-1)` with `a(0)=1`
-/

namespace A362028.P8139273542066019330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) % 2 : ℕ) : ℤ) - a (n - 1)

end

end A362028.P8139273542066019330

namespace A362028

/-- `∏{e}[n+1, #!%2]-a(n-1)` -/
def P8139273542066019330.Spec : Prop :=
  ∀ n, P8139273542066019330.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P7491471470683162310

`A008966(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A362028.P7491471470683162310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008966 (n + 1) - a (n - 1)

end

end A362028.P7491471470683162310

namespace A362028

/-- `A008966(n+1)-a(n-1)` -/
def P7491471470683162310.Spec : Prop :=
  ∀ n, P7491471470683162310.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P2019812675106084392

`abs(A008683(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A362028.P2019812675106084392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A008683 (n + 1)| - a (n - 1)

end

end A362028.P2019812675106084392

namespace A362028

/-- `abs(A008683(n+1))-a(n-1)` -/
def P2019812675106084392.Spec : Prop :=
  ∀ n, P2019812675106084392.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P3595377757347179040

`A069158(n+1)²-a(n-1)` with `a(0)=1`
-/

namespace A362028.P3595377757347179040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069158 (n + 1) ^ 2 - a (n - 1)

end

end A362028.P3595377757347179040

namespace A362028

/-- `A069158(n+1)²-a(n-1)` -/
def P3595377757347179040.Spec : Prop :=
  ∀ n, P3595377757347179040.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P16086301911752576311

`A080323(n+1)²-a(n-1)` with `a(0)=1`
-/

namespace A362028.P16086301911752576311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080323 (n + 1) ^ 2 - a (n - 1)

end

end A362028.P16086301911752576311

namespace A362028

/-- `A080323(n+1)²-a(n-1)` -/
def P16086301911752576311.Spec : Prop :=
  ∀ n, P16086301911752576311.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P15855144148445399364

`A157657(n+1)²-a(n-1)` with `a(0)=1`
-/

namespace A362028.P15855144148445399364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157657 (n + 1) ^ 2 - a (n - 1)

end

end A362028.P15855144148445399364

namespace A362028

/-- `A157657(n+1)²-a(n-1)` -/
def P15855144148445399364.Spec : Prop :=
  ∀ n, P15855144148445399364.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P1343819517774821984

`A157658(n+1)²-a(n-1)` with `a(0)=1`
-/

namespace A362028.P1343819517774821984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157658 (n + 1) ^ 2 - a (n - 1)

end

end A362028.P1343819517774821984

namespace A362028

/-- `A157658(n+1)²-a(n-1)` -/
def P1343819517774821984.Spec : Prop :=
  ∀ n, P1343819517774821984.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P15196870047419809748

`A359155(n+1)²-a(n-1)` with `a(0)=1`
-/

namespace A362028.P15196870047419809748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A359155 (n + 1) ^ 2 - a (n - 1)

end

end A362028.P15196870047419809748

namespace A362028

/-- `A359155(n+1)²-a(n-1)` -/
def P15196870047419809748.Spec : Prop :=
  ∀ n, P15196870047419809748.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P1077041164752808647

`Δ[a(n-2)+A008683(n)²]` with `a(0)=0, a(1)=1`
-/

namespace A362028.P1077041164752808647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + A008683 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362028.P1077041164752808647

namespace A362028

/-- `Δ[a(n-2)+A008683(n)²]` -/
def P1077041164752808647.Spec : Prop :=
  ∀ n, P1077041164752808647.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P15791765310166297678

`A008683(lcm(2, n+1))²-a(n-1)` with `a(0)=1`
-/

namespace A362028.P15791765310166297678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (Nat.lcm 2 (n + 1)) ^ 2 - a (n - 1)

end

end A362028.P15791765310166297678

namespace A362028

/-- `A008683(lcm(2, n+1))²-a(n-1)` -/
def P15791765310166297678.Spec : Prop :=
  ∀ n, P15791765310166297678.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P7365164995231045332

`A008683(C(n+1, n))²-a(n-1)` with `a(0)=1`
-/

namespace A362028.P7365164995231045332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (Nat.choose (n + 1) n) ^ 2 - a (n - 1)

end

end A362028.P7365164995231045332

namespace A362028

/-- `A008683(C(n+1, n))²-a(n-1)` -/
def P7365164995231045332.Spec : Prop :=
  ∀ n, P7365164995231045332.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P15976797847805776598

`A008683(∏{e}[n+1, #²])-a(n-1)` with `a(0)=1`
-/

namespace A362028.P15976797847805776598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2) - a (n - 1)

end

end A362028.P15976797847805776598

namespace A362028

/-- `A008683(∏{e}[n+1, #²])-a(n-1)` -/
def P15976797847805776598.Spec : Prop :=
  ∀ n, P15976797847805776598.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P15120528144044189735

`A008683(∑[2*n]/n)²-a(n-1)` with `a(0)=1`
-/

namespace A362028.P15120528144044189735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ))).toNat ^ 2 - a (n - 1)

end

end A362028.P15120528144044189735

namespace A362028

/-- `A008683(∑[2*n]/n)²-a(n-1)` -/
def P15120528144044189735.Spec : Prop :=
  ∀ n, P15120528144044189735.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P9522839423008960700

`and(1, A008683(2*n-(n-1)))-a(n-1)` with `a(0)=1`
-/

namespace A362028.P9522839423008960700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) - a (n - 1)

end

end A362028.P9522839423008960700

namespace A362028

/-- `and(1, A008683(2*n-(n-1)))-a(n-1)` -/
def P9522839423008960700.Spec : Prop :=
  ∀ n, P9522839423008960700.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P9311818709731558216

`A008683(2*n+1-n)²²-a(n-1)` with `a(0)=1`
-/

namespace A362028.P9311818709731558216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A008683 (2 * n + 1 - n) ^ 2) ^ 2 - a (n - 1)

end

end A362028.P9311818709731558216

namespace A362028

/-- `A008683(2*n+1-n)²²-a(n-1)` -/
def P9311818709731558216.Spec : Prop :=
  ∀ n, P9311818709731558216.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P14133833973710576704

`A000045((A008683(n+1)^n)²)-a(n-1)` with `a(0)=1`
-/

namespace A362028.P14133833973710576704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 ((A008683 (n + 1) ^ n) ^ 2).toNat - a (n - 1)

end

end A362028.P14133833973710576704

namespace A362028

/-- `A000045((A008683(n+1)^n)²)-a(n-1)` -/
def P14133833973710576704.Spec : Prop :=
  ∀ n, P14133833973710576704.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P4988415708975642832

`Δ[A302604(n+2)]`
-/

namespace A362028.P4988415708975642832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302604 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362028.P4988415708975642832

namespace A362028

/-- `Δ[A302604(n+2)]` -/
def P4988415708975642832.Spec : Prop :=
  ∀ n, P4988415708975642832.a n = A362028 (n + 1)

end A362028

/-! ## A362028.P3267087862456905180

`char[∏{p}[n, #]-1]-a(n-1)` with `a(0)=1`
-/

namespace A362028.P3267087862456905180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - a (n - 1)

end

end A362028.P3267087862456905180

namespace A362028

/-- `char[∏{p}[n, #]-1]-a(n-1)` -/
def P3267087862456905180.Spec : Prop :=
  ∀ n, P3267087862456905180.a n = A362028 (n + 1)

end A362028

/-!
# A362029: a(n) = Sum_{k=1..n} (-1)^(n-k) * k * mu(k)^2, where mu(k) is the Moebius function.

The programs for A362029, the canonical program `A362029.P4418960772162551608` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362029 has offset 1).

The definition of A362029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362029.P4418960772162551608

`C(∏{p}[n+1, #], n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362029

/-- `C(∏{p}[n+1, #], n)-a(n-1)` -/
def P4418960772162551608.Spec : Prop :=
  ∀ n, P4418960772162551608.a n = A362029 (n + 1)

theorem P4418960772162551608.correct : P4418960772162551608.Spec := by
  intro n
  simp only [A362029, Nat.add_sub_cancel]

end A362029

/-! ## A362029.P16601347298424085881

`C(A007913(n+1), n)-a(n-1)` with `a(0)=1`
-/

namespace A362029.P16601347298424085881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (A007913 (n + 1)).toNat n : ℤ) - a (n - 1)

end

end A362029.P16601347298424085881

namespace A362029

/-- `C(A007913(n+1), n)-a(n-1)` -/
def P16601347298424085881.Spec : Prop :=
  ∀ n, P16601347298424085881.a n = A362029 (n + 1)

end A362029

/-! ## A362029.P4770797451624623424

`C(A019554(n+1), n)-a(n-1)` with `a(0)=1`
-/

namespace A362029.P4770797451624623424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (A019554 (n + 1)).toNat n : ℤ) - a (n - 1)

end

end A362029.P4770797451624623424

namespace A362029

/-- `C(A019554(n+1), n)-a(n-1)` -/
def P4770797451624623424.Spec : Prop :=
  ∀ n, P4770797451624623424.a n = A362029 (n + 1)

end A362029

/-! ## A362029.P13533263737526571725

`(n+1)*A008966(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A362029.P13533263737526571725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A008966 (n + 1) - a (n - 1)

end

end A362029.P13533263737526571725

namespace A362029

/-- `(n+1)*A008966(n+1)-a(n-1)` -/
def P13533263737526571725.Spec : Prop :=
  ∀ n, P13533263737526571725.a n = A362029 (n + 1)

end A362029

/-! ## A362029.P3653280442842588709

`lcm(n+1, A008683(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A362029.P3653280442842588709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n + 1 : ℤ) (A008683 (n + 1)) : ℤ) - a (n - 1)

end

end A362029.P3653280442842588709

namespace A362029

/-- `lcm(n+1, A008683(n+1))-a(n-1)` -/
def P3653280442842588709.Spec : Prop :=
  ∀ n, P3653280442842588709.a n = A362029 (n + 1)

end A362029

/-! ## A362029.P17100832973194385802

`Δ[A303165(n+2)]`
-/

namespace A362029.P17100832973194385802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303165 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362029.P17100832973194385802

namespace A362029

/-- `Δ[A303165(n+2)]` -/
def P17100832973194385802.Spec : Prop :=
  ∀ n, P17100832973194385802.a n = A362029 (n + 1)

end A362029

/-! ## A362029.P14430611889902446354

`A303165(n+3)-A303165(n+2)`
-/

namespace A362029.P14430611889902446354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303165 (n + 3) - A303165 (n + 2)

end

end A362029.P14430611889902446354

namespace A362029

/-- `A303165(n+3)-A303165(n+2)` -/
def P14430611889902446354.Spec : Prop :=
  ∀ n, P14430611889902446354.a n = A362029 (n + 1)

end A362029

/-! ## A362029.P16838147491922501168

`A046692((n+1)²)-a(n-1)` with `a(0)=1`
-/

namespace A362029.P16838147491922501168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046692 ((n + 1) ^ 2) - a (n - 1)

end

end A362029.P16838147491922501168

namespace A362029

/-- `A046692((n+1)²)-a(n-1)` -/
def P16838147491922501168.Spec : Prop :=
  ∀ n, P16838147491922501168.a n = A362029 (n + 1)

end A362029

/-! ## A362029.P13700202433268706975

`A383717((n+1)²)-a(n-1)` with `a(0)=1`
-/

namespace A362029.P13700202433268706975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A383717 ((n + 1) ^ 2) - a (n - 1)

end

end A362029.P13700202433268706975

namespace A362029

/-- `A383717((n+1)²)-a(n-1)` -/
def P13700202433268706975.Spec : Prop :=
  ∀ n, P13700202433268706975.a n = A362029 (n + 1)

end A362029

/-! ## A362029.P13626389450746926802

`A397136((n+1)²)-a(n-1)` with `a(0)=1`
-/

namespace A362029.P13626389450746926802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A397136 ((n + 1) ^ 2) - a (n - 1)

end

end A362029.P13626389450746926802

namespace A362029

/-- `A397136((n+1)²)-a(n-1)` -/
def P13626389450746926802.Spec : Prop :=
  ∀ n, P13626389450746926802.a n = A362029 (n + 1)

end A362029

/-! ## A362029.P13468227585072616135

`A397238((n+1)²)-a(n-1)` with `a(0)=1`
-/

namespace A362029.P13468227585072616135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A397238 ((n + 1) ^ 2) - a (n - 1)

end

end A362029.P13468227585072616135

namespace A362029

/-- `A397238((n+1)²)-a(n-1)` -/
def P13468227585072616135.Spec : Prop :=
  ∀ n, P13468227585072616135.a n = A362029 (n + 1)

end A362029

/-!
# A362030: Irregular triangle read by rows where row n contains the balanced binary words of length 2n interpreted as binary numbers.

The programs for A362030, the canonical program `A362030.P1231653781431482654` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362030 has offset 1).

The definition of A362030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362030.P1231653781431482654

`A062050(A258410(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A362030

/-- `A062050(A258410(n+1))` -/
def P1231653781431482654.Spec : Prop :=
  ∀ n, P1231653781431482654.a n = A362030 (n + 1)

theorem P1231653781431482654.correct : P1231653781431482654.Spec := by
  intro n
  simp only [A362030, Nat.add_sub_cancel]

end A362030

/-! ## A362030.P1826286525311546474

`A053645(A031448(n+2))`
-/

namespace A362030.P1826286525311546474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A031448 (n + 2)).toNat

end

end A362030.P1826286525311546474

namespace A362030

/-- `A053645(A031448(n+2))` -/
def P1826286525311546474.Spec : Prop :=
  ∀ n, P1826286525311546474.a n = A362030 (n + 1)

end A362030

/-! ## A362030.P645535441603338596

`A053645(A258410(n+1)+1)`
-/

namespace A362030.P645535441603338596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A258410 (n + 1) + 1).toNat

end

end A362030.P645535441603338596

namespace A362030

/-- `A053645(A258410(n+1)+1)` -/
def P645535441603338596.Spec : Prop :=
  ∀ n, P645535441603338596.a n = A362030 (n + 1)

end A362030

/-! ## A362030.P415762183445004187

`A068505(A368804(n+1))`
-/

namespace A362030.P415762183445004187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A368804 (n + 1)).toNat

end

end A362030.P415762183445004187

namespace A362030

/-- `A068505(A368804(n+1))` -/
def P415762183445004187.Spec : Prop :=
  ∀ n, P415762183445004187.a n = A362030 (n + 1)

end A362030

/-! ## A362030.P7153342708869583333

`A068505(A214521(n+1)-A214488(n+1))`
-/

namespace A362030.P7153342708869583333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A214521 (n + 1) - A214488 (n + 1)).toNat

end

end A362030.P7153342708869583333

namespace A362030

/-- `A068505(A214521(n+1)-A214488(n+1))` -/
def P7153342708869583333.Spec : Prop :=
  ∀ n, P7153342708869583333.a n = A362030 (n + 1)

end A362030

/-!
# A362032: Lexicographically least counterexample to Dombi's conjecture.

The programs for A362032, there is no canonical definition to state claims against.
-/

/-! ## A362032.P5472398182183101939

`A262038(2*n+2)+A000005(A000244(n))`
-/

namespace A362032.P5472398182183101939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (2 * n + 2) + A000005 (A000244 n).toNat

end

end A362032.P5472398182183101939

/-! ## A362032.P15872162649874940623

`A262038(2*n+2)+A239218(A239218(n+1))`
-/

namespace A362032.P15872162649874940623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (2 * n + 2) + A239218 (A239218 (n + 1)).toNat

end

end A362032.P15872162649874940623

/-! ## A362032.P5328979963976901125

`A262038(2*n+2)+A110304(A110304(n+1))`
-/

namespace A362032.P5328979963976901125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (2 * n + 2) + A110304 (A110304 (n + 1)).toNat

end

end A362032.P5328979963976901125

/-! ## A362032.P16822130594744770148

`∑[val(A088011(A061129(n)+15), 2)]`
-/

namespace A362032.P16822130594744770148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A088011 (A061129 n + 15).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362032.P16822130594744770148

/-!
# A362033: The indices where A362031(n) = 1.

The programs for A362033, there is no canonical definition to state claims against.
-/

/-! ## A362033.P14415855402109996682

`eq[1, A362031(n+1)]+1`
-/

namespace A362033.P14415855402109996682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362033.P14415855402109996682

/-! ## A362033.P13604042863289407867

`record[A000027(n+1)/A362031(n+1)]`
-/

namespace A362033.P13604042863289407867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A362031 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362033.P13604042863289407867

/-! ## A362033.P10472372790558905600

`record[A130472(2*(n+1))/A362031(n+1)]`
-/

namespace A362033.P10472372790558905600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130472 (2 * (n + 1)) : ℚ) / (A362031 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362033.P10472372790558905600

/-! ## A362033.P6789755117848622697

`record[A189671(3*(n+1))/A362031(n+1)]`
-/

namespace A362033.P6789755117848622697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189671 (3 * (n + 1)) : ℚ) / (A362031 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362033.P6789755117848622697

/-!
# A362034: Triangle read by rows: T(n,0) = T(n,n) = 2, 0 < k < n: T(n,k) = smallest prime not less than T(n-1,k) + T(n-1,k-1).

The programs for A362034, there is no canonical definition to state claims against.
-/

/-! ## A362034.P11926885723231284096

`A000040(A362036(n))`
-/

namespace A362034.P11926885723231284096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A362036 n).toNat

end

end A362034.P11926885723231284096

/-! ## A362034.P14298195565432618708

`A008578(A362036(n)+1)`
-/

namespace A362034.P14298195565432618708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A362036 n + 1).toNat

end

end A362034.P14298195565432618708

/-! ## A362034.P5632586688432554962

`A007918(A131060(n)%A028329(3*n+2))`
-/

namespace A362034.P5632586688432554962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.tmod (A131060 n) (A028329 (3 * n + 2))).toNat

end

end A362034.P5632586688432554962

/-! ## A362034.P11399424707648720625

`A007918(A131060(n))%A002450(3*n+2)`
-/

namespace A362034.P11399424707648720625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 (A131060 n).toNat) (A002450 (3 * n + 2))

end

end A362034.P11399424707648720625

/-! ## A362034.P3486666470123714102

`A007918(A131060(n)%A225427(n+1))`
-/

namespace A362034.P3486666470123714102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.tmod (A131060 n) (A225427 (n + 1))).toNat

end

end A362034.P3486666470123714102

/-! ## A362034.P6623296360894482087

`A010054(A076439(n+1))+A007918(A131060(n))`
-/

namespace A362034.P6623296360894482087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A076439 (n + 1)).toNat + A007918 (A131060 n).toNat

end

end A362034.P6623296360894482087

/-!
# A362036: The prime indices of A362034.

The programs for A362036, there is no canonical definition to state claims against.
-/

/-! ## A362036.P11272790990554271734

`A000720(A362034(n))`
-/

namespace A362036.P11272790990554271734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A362034 n).toNat

end

end A362036.P11272790990554271734

/-! ## A362036.P8618481508709187811

`A055396(p?[A362034(n)])`
-/

namespace A362036.P8618481508709187811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A362036.P8618481508709187811

/-! ## A362036.P14240547907650679705

`A003963(2*A362034(n))`
-/

namespace A362036.P14240547907650679705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A362034 n).toNat

end

end A362036.P14240547907650679705

/-! ## A362036.P2610352086770396353

`A061395(2*A362034(n))`
-/

namespace A362036.P2610352086770396353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A362034 n).toNat

end

end A362036.P2610352086770396353

/-! ## A362036.P14337287509918198115

`A286471(2*A362034(n))`
-/

namespace A362036.P14337287509918198115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A362034 n).toNat

end

end A362036.P14337287509918198115

/-! ## A362036.P11461577263845560399

`A290103(2*A362034(n))`
-/

namespace A362036.P11461577263845560399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A362034 n).toNat

end

end A362036.P11461577263845560399

/-! ## A362036.P1959948285066448503

`A344616(4*A362034(n))`
-/

namespace A362036.P1959948285066448503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (4 * A362034 n).toNat

end

end A362036.P1959948285066448503

/-! ## A362036.P15649332495678152422

`A003963(lcm(2, A362034(n)))`
-/

namespace A362036.P15649332495678152422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A362034 n))

end

end A362036.P15649332495678152422

/-! ## A362036.P4781537997812819670

`A049084(A362034(2*n-n))`
-/

namespace A362036.P4781537997812819670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A362034 (2 * n - n)).toNat

end

end A362036.P4781537997812819670

/-! ## A362036.P17129214939436807445

`A056239(A362034(n)%A238471(n))`
-/

namespace A362036.P17129214939436807445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A362034 n) (A238471 n)).toNat

end

end A362036.P17129214939436807445

/-!
# A362037: Sums of the rows in A362034.

The programs for A362037, there is no canonical definition to state claims against.
-/

/-! ## A362037.P4780579985261676681

`A079583(n)+A008836(A114242(n))`
-/

namespace A362037.P4780579985261676681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 n + A008836 (A114242 n).toNat

end

end A362037.P4780579985261676681

/-! ## A362037.P17961411458612613474

`A079583(n)+A008836(A351057(n))`
-/

namespace A362037.P17961411458612613474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 n + A008836 (A351057 n).toNat

end

end A362037.P17961411458612613474

/-! ## A362037.P15486862438582497327

`A095151(n)+A000122(A351057(n))`
-/

namespace A362037.P15486862438582497327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095151 n + A000122 (A351057 n).toNat

end

end A362037.P15486862438582497327

/-!
# A362038: A list of lists where T(n,k) is the smallest n-digit number whose digits have arithmetic mean k, for 1 <= k <= 9.

The programs for A362038, there is no canonical definition to state claims against.
-/

/-! ## A362038.P746555602379151975

`∩[A070698(n+1), A061383(n)]`
-/

namespace A362038.P746555602379151975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362038.P746555602379151975

/-! ## A362038.P9834115543507439829

`∩[eq[0, A180160(n)], A070698(n+1)]`
-/

namespace A362038.P9834115543507439829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A362038.P9834115543507439829

/-! ## A362038.P16283064447876760724

`∩[eq[1, A371384(n)], A070698(n+1)]`
-/

namespace A362038.P16283064447876760724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A362038.P16283064447876760724

/-! ## A362038.P12685434719862582600

`lt[A000700(A056963(n+1)), A339664(n+1)]`
-/

namespace A362038.P12685434719862582600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A056963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362038.P12685434719862582600

/-! ## A362038.P1246555953294214866

`lt[A066568(n), A340479(A321014(3*(n+1)))]`
-/

namespace A362038.P1246555953294214866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 (A321014 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362038.P1246555953294214866

/-!
# A362040: a(n) is the number of distinct sums of one or more contiguous terms in the sequence thus far.

The programs for A362040, there is no canonical definition to state claims against.
-/

/-! ## A362040.P18293186012027996987

`∑[char[1]+n]+1-record[A125940(n+1)]`
-/

namespace A362040.P18293186012027996987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A362040.P18293186012027996987

/-! ## A362040.P16267034072044278260

`A005311(n+1)-A368991(n)`
-/

namespace A362040.P16267034072044278260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005311 (n + 1) - A368991 n

end

end A362040.P16267034072044278260

/-! ## A362040.P16779379545720624897

`A005311(n+1)-A027195(n+1)`
-/

namespace A362040.P16779379545720624897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005311 (n + 1) - A027195 (n + 1)

end

end A362040.P16779379545720624897

/-! ## A362040.P15923122992673946205

`A005311(n+1)-A161030(n+1)`
-/

namespace A362040.P15923122992673946205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005311 (n + 1) - A161030 (n + 1)

end

end A362040.P15923122992673946205

/-! ## A362040.P1387629305819321152

`A000217(n)-A137813(A025575(n+1))`
-/

namespace A362040.P1387629305819321152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A137813 (A025575 (n + 1)).toNat

end

end A362040.P1387629305819321152

/-!
# A362041: a(0) = 1; for n > 0, a(n) is the largest k < A013929(n) such that rad(k) = rad(A013929(n)), where rad(n) = A007947(n).

The programs for A362041, there is no canonical definition to state claims against.
-/

/-! ## A362041.P4884015326943625234

`A285328(A162966(n+1))`
-/

namespace A362041.P4884015326943625234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (A162966 (n + 1)).toNat

end

end A362041.P4884015326943625234

/-!
# A362042: Number of odd semiprimes less than 2^n.

The programs for A362042, there is no canonical definition to state claims against.
-/

/-! ## A362042.P2277501476504583625

`∑[A362318(n)]`
-/

namespace A362042.P2277501476504583625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362042.P2277501476504583625

/-! ## A362042.P7031406562012270889

`A125527(n+1)-(A362318(n+1)+A007053(n))`
-/

namespace A362042.P7031406562012270889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125527 (n + 1) - (A362318 (n + 1) + A007053 n)

end

end A362042.P7031406562012270889

/-! ## A362042.P4750632815049501310

`A144740(2^n)`
-/

namespace A362042.P4750632815049501310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144740 (2 ^ n)

end

end A362042.P4750632815049501310

/-! ## A362042.P6534037084046608785

`A184945(n)+A144740(A000079(n))`
-/

namespace A362042.P6534037084046608785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n + A144740 (A000079 n).toNat

end

end A362042.P6534037084046608785

/-! ## A362042.P12960940149069477000

`A185203(n)+A144740(A000079(n))`
-/

namespace A362042.P12960940149069477000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185203 n + A144740 (A000079 n).toNat

end

end A362042.P12960940149069477000

/-!
# A362043: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * Sum_{j=0..floor(n/3)} (k/6)^j * binomial(n-2*j,j)/(n-2*j)!.

The programs for A362043, there is no canonical definition to state claims against.
-/

/-! ## A362043.P7620151740290742808

`A000005(A007628(n+1))-A362302(n)`
-/

namespace A362043.P7620151740290742808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007628 (n + 1)).toNat - A362302 n

end

end A362043.P7620151740290742808

/-! ## A362043.P6177845415040827693

`A000005(A128824(n+1))-A362302(n)`
-/

namespace A362043.P6177845415040827693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A128824 (n + 1)).toNat - A362302 n

end

end A362043.P6177845415040827693

/-! ## A362043.P13959578528111677356

`A046523(A085104(n+1))-A362302(n)`
-/

namespace A362043.P13959578528111677356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A085104 (n + 1)).toNat - A362302 n

end

end A362043.P13959578528111677356

/-! ## A362043.P3683025378954682259

`A300247(A095078(n+1))-A362302(n)`
-/

namespace A362043.P3683025378954682259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300247 (A095078 (n + 1)).toNat - A362302 n

end

end A362043.P3683025378954682259

/-!
# A362044: a(n) = largest k such that k < m^2 and rad(k) | m, where rad(k) = A007947(k) and m = A120944(n).

The programs for A362044, there is no canonical definition to state claims against.
-/

/-! ## A362044.P4179945541914674142

`A079277(A177492(n+1))`
-/

namespace A362044.P4179945541914674142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079277 (A177492 (n + 1)).toNat

end

end A362044.P4179945541914674142

/-! ## A362044.P14820632338993993132

`A079277(A120944(n+1)²)`
-/

namespace A362044.P14820632338993993132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079277 (A120944 (n + 1) ^ 2).toNat

end

end A362044.P14820632338993993132

/-! ## A362044.P10809331279426068915

`A373736(A120944(n+1)²)`
-/

namespace A362044.P10809331279426068915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373736 (A120944 (n + 1) ^ 2).toNat

end

end A362044.P10809331279426068915

/-! ## A362044.P14301481964799138449

`A079277(A120944(n+1)^2)`
-/

namespace A362044.P14301481964799138449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079277 (A120944 (n + 1) ^ 2).toNat

end

end A362044.P14301481964799138449

/-! ## A362044.P6241583154714192100

`A079277(A120944(n+1)*A120944(n+1))`
-/

namespace A362044.P6241583154714192100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079277 (A120944 (n + 1) * A120944 (n + 1)).toNat

end

end A362044.P6241583154714192100

/-!
# A362045: a(n) = smallest k such that k > m^2 and rad(k) | m, where rad(k) = A007947(k) and m = A120944(n).

The programs for A362045, there is no canonical definition to state claims against.
-/

/-! ## A362045.P16947756922463455380

`A289280(A177492(n+1))`
-/

namespace A362045.P16947756922463455380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289280 (A177492 (n + 1)).toNat

end

end A362045.P16947756922463455380

/-! ## A362045.P685206558522388586

`A289280(A120944(n+1)²)`
-/

namespace A362045.P685206558522388586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289280 (A120944 (n + 1) ^ 2).toNat

end

end A362045.P685206558522388586

/-! ## A362045.P7530955138548070656

`A289280(A327829(n+1)²)`
-/

namespace A362045.P7530955138548070656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289280 (A327829 (n + 1) ^ 2).toNat

end

end A362045.P7530955138548070656

/-! ## A362045.P8941723763206855885

`A289280(A120944(n+1)^2)`
-/

namespace A362045.P8941723763206855885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289280 (A120944 (n + 1) ^ 2).toNat

end

end A362045.P8941723763206855885

/-! ## A362045.P3776726928159193343

`A289280(A120944(n+1)*A120944(n+1))`
-/

namespace A362045.P3776726928159193343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289280 (A120944 (n + 1) * A120944 (n + 1)).toNat

end

end A362045.P3776726928159193343

/-!
# A362046: Number of nonempty subsets of {1..n} with mean n/2.

The programs for A362046, there is no canonical definition to state claims against.
-/

/-! ## A362046.P1967670830788993827

`A133406(n+1)-1`
-/

namespace A362046.P1967670830788993827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133406 (n + 1) - 1

end

end A362046.P1967670830788993827

/-! ## A362046.P4972440876575638823

`(A070925(n+1)-1)/2`
-/

namespace A362046.P4972440876575638823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070925 (n + 1) - 1 : ℚ) / 2

end

end A362046.P4972440876575638823

/-! ## A362046.P5234522447863801748

`floor(A070925(n+1)/2)`
-/

namespace A362046.P5234522447863801748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070925 (n + 1) : ℚ) / 2⌋

end

end A362046.P5234522447863801748

/-! ## A362046.P1838480248955238129

`A222955(n+1)/2-1`
-/

namespace A362046.P1838480248955238129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222955 (n + 1) : ℚ) / 2 - 1

end

end A362046.P1838480248955238129

/-! ## A362046.P16618975677334891959

`A222855(n+1)-(2^n+1)`
-/

namespace A362046.P16618975677334891959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222855 (n + 1) - (2 ^ n + 1 : ℤ)

end

end A362046.P16618975677334891959

/-!
# A362048: Number of integer partitions of n such that (length) <= 2*(median).

The programs for A362048, there is no canonical definition to state claims against.
-/

/-! ## A362048.P7538127724704896404

`A394301(A192961(n+1))`
-/

namespace A362048.P7538127724704896404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 (A192961 (n + 1)).toNat

end

end A362048.P7538127724704896404

/-! ## A362048.P380972086533138638

`A261133(A341127(n+10))`
-/

namespace A362048.P380972086533138638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261133 (A341127 (n + 10)).toNat

end

end A362048.P380972086533138638

/-! ## A362048.P14350676947480919357

`A106244(2*n+3)-A070939(A001006(n))`
-/

namespace A362048.P14350676947480919357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 (2 * n + 3) - A070939 (A001006 n).toNat

end

end A362048.P14350676947480919357

/-!
# A362051: Number of integer partitions of 2n without a nonempty initial consecutive subsequence summing to n.

The programs for A362051, there is no canonical definition to state claims against.
-/

/-! ## A362051.P396865375744585347

`A362558(2*n)`
-/

namespace A362051.P396865375744585347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362558 (2 * n)

end

end A362051.P396865375744585347

/-! ## A362051.P15592204588473734961

`A000027(A362558(comp[Δ[n²]]))`
-/

namespace A362051.P15592204588473734961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A362558 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A362051.P15592204588473734961

/-! ## A362051.P17580434915865328244

`A362558(A005843(n))%A016090(n+1)`
-/

namespace A362051.P17580434915865328244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362558 (A005843 n).toNat) (A016090 (n + 1))

end

end A362051.P17580434915865328244

/-!
# A362052: Practical numbers (A005153) that are abundant and have a record low value of abundancy index.

The programs for A362052, there is no canonical definition to state claims against.
-/

/-! ## A362052.P10073003753525316502

`filter[A071927(n+1), A087748(#)]`
-/

namespace A362052.P10073003753525316502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087748 (f1 j).toNat = 1) n)

end

end A362052.P10073003753525316502

/-! ## A362052.P2470772855204184377

`filter[A071927(n+1), A104974(#)]`
-/

namespace A362052.P2470772855204184377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104974 (f1 j).toNat = 1) n)

end

end A362052.P2470772855204184377

/-! ## A362052.P8643347902538982901

`filter[A071927(n+1), A105594(#)]`
-/

namespace A362052.P8643347902538982901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105594 (f1 j).toNat = 1) n)

end

end A362052.P8643347902538982901

/-! ## A362052.P17129627076074878165

`filter[A071927(n+1), A106344(#)]`
-/

namespace A362052.P17129627076074878165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106344 (f1 j).toNat = 1) n)

end

end A362052.P17129627076074878165

/-!
# A362053: Primitive abundant numbers k (A071395) whose abundancy index sigma(k)/k has a record low value.

The programs for A362053, there is no canonical definition to state claims against.
-/

/-! ## A362053.P4084188119689931736

`∩[A006039(n+1), A071927(n+1)]`
-/

namespace A362053.P4084188119689931736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362053.P4084188119689931736

/-! ## A362053.P13820085229449894326

`∩[A071395(n+1), A071927(n+1)]`
-/

namespace A362053.P13820085229449894326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362053.P13820085229449894326

/-! ## A362053.P16210014746270900067

`∩[A071927(n+1), A117349(n+1)]`
-/

namespace A362053.P16210014746270900067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362053.P16210014746270900067

/-! ## A362053.P16025830869174722329

`∩[A071927(n+1), A088011(n+1)]`
-/

namespace A362053.P16025830869174722329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362053.P16025830869174722329

/-! ## A362053.P10069445924362832204

`∩[A071927(n+1), A117347(n+1)]`
-/

namespace A362053.P10069445924362832204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362053.P10069445924362832204

/-!
# A362055: Number of compositions of n that are anti-palindromic modulo 2.

The programs for A362055, the canonical program `A362055.P3507151518145879261` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362055 has offset 0).

The definition of A362055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362055.P13361081655619067200

`ogf((1+x-x^2-x^3)/(1-2x^2-2x^3+x^4))`
-/

namespace A362055.P13361081655619067200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -1] [1, 0, -2, -2, 1] n

end

end A362055.P13361081655619067200

namespace A362055

/-- `ogf((1+x-x^2-x^3)/(1-2x^2-2x^3+x^4))` -/
def P13361081655619067200.Spec : Prop :=
  ∀ n, P13361081655619067200.a n = A362055 n

end A362055

/-! ## A362055.P3507151518145879261

`2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362055

/-- `2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P3507151518145879261.Spec : Prop :=
  ∀ n, P3507151518145879261.a n = A362055 n

theorem P3507151518145879261.correct : P3507151518145879261.Spec := by
  intro n
  simp only [A362055]

end A362055

/-! ## A362055.P127349825453180167

`or(1, A089854(A274160(n)))`
-/

namespace A362055.P127349825453180167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089854 (A274160 n).toNat)

end

end A362055.P127349825453180167

namespace A362055

/-- `or(1, A089854(A274160(n)))` -/
def P127349825453180167.Spec : Prop :=
  ∀ n, P127349825453180167.a n = A362055 n

end A362055

/-! ## A362055.P1396296568074744135

`A196372(A030037(n+1))`
-/

namespace A362055.P1396296568074744135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196372 (A030037 (n + 1)).toNat

end

end A362055.P1396296568074744135

namespace A362055

/-- `A196372(A030037(n+1))` -/
def P1396296568074744135.Spec : Prop :=
  ∀ n, P1396296568074744135.a n = A362055 n

end A362055

/-! ## A362055.P6243560587448869155

`A329129(A006349(n+1))`
-/

namespace A362055.P6243560587448869155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329129 (A006349 (n + 1)).toNat

end

end A362055.P6243560587448869155

namespace A362055

/-- `A329129(A006349(n+1))` -/
def P6243560587448869155.Spec : Prop :=
  ∀ n, P6243560587448869155.a n = A362055 n

end A362055

/-!
# A362056: Prime numbers of the form prime(k)! - prime(k!).

The programs for A362056, there is no canonical definition to state claims against.
-/

/-! ## A362056.P16438278663553840273

`A261997(comp[floor(3/2*n²)])`
-/

namespace A362056.P16438278663553840273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261997 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A362056.P16438278663553840273

/-!
# A362057: Number of compositions of n that are anti-palindromic modulo 3.

The programs for A362057, the canonical program `A362057.P18117863127661535087` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362057 has offset 0).

The definition of A362057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362057.P18117863127661535087

`ogf((1-x^3)/(1-x-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362057

/-- `ogf((1-x^3)/(1-x-3x^3+x^4))` -/
def P18117863127661535087.Spec : Prop :=
  ∀ n, P18117863127661535087.a n = A362057 n

theorem P18117863127661535087.correct : P18117863127661535087.Spec := by
  intro n
  simp only [A362057]

end A362057

/-! ## A362057.P2536224299540670512

`A247424(A357532(n))`
-/

namespace A362057.P2536224299540670512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247424 (A357532 n).toNat

end

end A362057.P2536224299540670512

namespace A362057

/-- `A247424(A357532(n))` -/
def P2536224299540670512.Spec : Prop :=
  ∀ n, P2536224299540670512.a n = A362057 n

end A362057

/-! ## A362057.P17694133297638243211

`or(A005361(n+1), A212123(A025048(n)))`
-/

namespace A362057.P17694133297638243211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005361 (n + 1)) (A212123 (A025048 n).toNat)

end

end A362057.P17694133297638243211

namespace A362057

/-- `or(A005361(n+1), A212123(A025048(n)))` -/
def P17694133297638243211.Spec : Prop :=
  ∀ n, P17694133297638243211.a n = A362057 n

end A362057

/-! ## A362057.P16946518919271350402

`A089854(floor((n+1)^((n+1)/5)))`
-/

namespace A362057.P16946518919271350402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 ⌊(n + 1 : ℝ) ^ ((n + 1 : ℚ) / 5 : ℝ)⌋.toNat

end

end A362057.P16946518919271350402

namespace A362057

/-- `A089854(floor((n+1)^((n+1)/5)))` -/
def P16946518919271350402.Spec : Prop :=
  ∀ n, P16946518919271350402.a n = A362057 n

end A362057

/-! ## A362057.P13819450554132861450

`A195083(A374761(n))`
-/

namespace A362057.P13819450554132861450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195083 (A374761 n).toNat

end

end A362057.P13819450554132861450

namespace A362057

/-- `A195083(A374761(n))` -/
def P13819450554132861450.Spec : Prop :=
  ∀ n, P13819450554132861450.a n = A362057 n

end A362057

/-!
# A362058: The location of the first occurrence of n in the decimal expansion of phi (the golden ratio, 1.6180339887...).

The programs for A362058, there is no canonical definition to state claims against.
-/

/-! ## A362058.P16436922349987092056

`A088577(n)-1`
-/

namespace A362058.P16436922349987092056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088577 n - 1

end

end A362058.P16436922349987092056

/-! ## A362058.P2738078273248159075

`A023443(A088577(n))`
-/

namespace A362058.P2738078273248159075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A088577 n).toNat

end

end A362058.P2738078273248159075

/-! ## A362058.P15792009626808536483

`A023444(A088577(n)+1)`
-/

namespace A362058.P15792009626808536483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A088577 n + 1).toNat

end

end A362058.P15792009626808536483

/-! ## A362058.P10241196140920356679

`A289207(A088577(n)+1)`
-/

namespace A362058.P10241196140920356679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A088577 n + 1).toNat

end

end A362058.P10241196140920356679

/-! ## A362058.P13809911437789588693

`A099837(3*n+4)+A088577(n)`
-/

namespace A362058.P13809911437789588693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 4) + A088577 n

end

end A362058.P13809911437789588693

/-! ## A362058.P1296809141242568016

`abs(A088577(n)+A033999(2*n+3))`
-/

namespace A362058.P1296809141242568016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A088577 n + A033999 (2 * n + 3)|

end

end A362058.P1296809141242568016

/-! ## A362058.P400386775916247110

`abs(A088577(n)+A057428(3*n+4))`
-/

namespace A362058.P400386775916247110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A088577 n + A057428 (3 * n + 4)|

end

end A362058.P400386775916247110

/-! ## A362058.P1646202216558869390

`A144204(A000124(n))+A088577(n)`
-/

namespace A362058.P1646202216558869390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (A000124 n).toNat + A088577 n

end

end A362058.P1646202216558869390

/-! ## A362058.P4533812416561006901

`A244140(A133265(2*n))+A088577(n)`
-/

namespace A362058.P4533812416561006901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244140 (A133265 (2 * n)).toNat + A088577 n

end

end A362058.P4533812416561006901

/-!
# A362059: Total number of even divisors of all positive integers <= n.

The programs for A362059, the canonical program `A362059.P13964323751538108829` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362059 has offset 1).

The definition of A362059 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362059.P13964323751538108829

`A006218(floor((n+1)/2))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A362059

/-- `A006218(floor((n+1)/2))` -/
def P13964323751538108829.Spec : Prop :=
  ∀ n, P13964323751538108829.a n = A362059 (n + 1)

theorem P13964323751538108829.correct : P13964323751538108829.Spec := by
  intro n
  simp only [A362059, Nat.add_sub_cancel]

end A362059

/-! ## A362059.P531030453877355407

`∑[∑{d}[n+1, log2(gcd(2, #))]]`
-/

namespace A362059.P531030453877355407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Real.logb 2 (Nat.gcd 2 d : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P531030453877355407

namespace A362059

/-- `∑[∑{d}[n+1, log2(gcd(2, #))]]` -/
def P531030453877355407.Spec : Prop :=
  ∀ n, P531030453877355407.a n = (A362059 (n + 1) : ℝ)

end A362059

/-! ## A362059.P16389711110337807825

`∑[∑{d}[n+1, (#+1)%2]]`
-/

namespace A362059.P16389711110337807825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P16389711110337807825

namespace A362059

/-- `∑[∑{d}[n+1, (#+1)%2]]` -/
def P16389711110337807825.Spec : Prop :=
  ∀ n, (P16389711110337807825.a n : ℤ) = A362059 (n + 1)

end A362059

/-! ## A362059.P2123203219155602908

`∑[∑{d}[n+1, and(1, #+1)]]`
-/

namespace A362059.P2123203219155602908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.land 1 (d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P2123203219155602908

namespace A362059

/-- `∑[∑{d}[n+1, and(1, #+1)]]` -/
def P2123203219155602908.Spec : Prop :=
  ∀ n, (P2123203219155602908.a n : ℤ) = A362059 (n + 1)

end A362059

/-! ## A362059.P7589666511341349574

`∑[∑{d}[n+1, or(1, #)-#]]`
-/

namespace A362059.P7589666511341349574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((Nat.lor 1 d : ℤ) - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P7589666511341349574

namespace A362059

/-- `∑[∑{d}[n+1, or(1, #)-#]]` -/
def P7589666511341349574.Spec : Prop :=
  ∀ n, P7589666511341349574.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P2030584609585953623

`∑[∑{d}[2*(n+1), (-1)^#]]`
-/

namespace A362059.P2030584609585953623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P2030584609585953623

namespace A362059

/-- `∑[∑{d}[2*(n+1), (-1)^#]]` -/
def P2030584609585953623.Spec : Prop :=
  ∀ n, P2030584609585953623.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P322755964415807659

`∑[val(n+1, 2)*∑{d}[n+1, val(#²+1, 2)]]`
-/

namespace A362059.P322755964415807659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 * (∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.valuation (d ^ 2 + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P322755964415807659

namespace A362059

/-- `∑[val(n+1, 2)*∑{d}[n+1, val(#²+1, 2)]]` -/
def P322755964415807659.Spec : Prop :=
  ∀ n, (P322755964415807659.a n : ℤ) = A362059 (n + 1)

end A362059

/-! ## A362059.P8147914635266697303

`∑[n%2*∏{e}[∑[n%2], #+1]+1]-(n+1)`
-/

namespace A362059.P8147914635266697303
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A362059.P8147914635266697303

namespace A362059

/-- `∑[n%2*∏{e}[∑[n%2], #+1]+1]-(n+1)` -/
def P8147914635266697303.Spec : Prop :=
  ∀ n, P8147914635266697303.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P17319030432100810557

`∑[∏{e}[n+1, #+1]-∑{d}[n+1, val(#²+1, 2)]]`
-/

namespace A362059.P17319030432100810557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), SequenceMachineLib.valuation (d ^ 2 + 1) 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P17319030432100810557

namespace A362059

/-- `∑[∏{e}[n+1, #+1]-∑{d}[n+1, val(#²+1, 2)]]` -/
def P17319030432100810557.Spec : Prop :=
  ∀ n, P17319030432100810557.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P14728789919229721183

`∑[A183063(n+1)]`
-/

namespace A362059.P14728789919229721183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P14728789919229721183

namespace A362059

/-- `∑[A183063(n+1)]` -/
def P14728789919229721183.Spec : Prop :=
  ∀ n, P14728789919229721183.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P2126250172595675918

`A054519(round(n/2))-1`
-/

namespace A362059.P2126250172595675918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat - 1

end

end A362059.P2126250172595675918

namespace A362059

/-- `A054519(round(n/2))-1` -/
def P2126250172595675918.Spec : Prop :=
  ∀ n, P2126250172595675918.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P6835409320614303570

`∑[1-A325937(2*(n+1))]`
-/

namespace A362059.P6835409320614303570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A325937 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P6835409320614303570

namespace A362059

/-- `∑[1-A325937(2*(n+1))]` -/
def P6835409320614303570.Spec : Prop :=
  ∀ n, P6835409320614303570.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P182446410469611402

`∑[A325939(2*(n+1))-1]`
-/

namespace A362059.P182446410469611402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P182446410469611402

namespace A362059

/-- `∑[A325939(2*(n+1))-1]` -/
def P182446410469611402.Spec : Prop :=
  ∀ n, P182446410469611402.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P6956597945973878895

`∑[val(n+1, 2)*A001227(n+1)]`
-/

namespace A362059.P6956597945973878895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P6956597945973878895

namespace A362059

/-- `∑[val(n+1, 2)*A001227(n+1)]` -/
def P6956597945973878895.Spec : Prop :=
  ∀ n, P6956597945973878895.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P16592391685035034724

`∑[and(1, n)*A000005(floor(n/2)+1)]`
-/

namespace A362059.P16592391685035034724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A000005 (⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P16592391685035034724

namespace A362059

/-- `∑[and(1, n)*A000005(floor(n/2)+1)]` -/
def P16592391685035034724.Spec : Prop :=
  ∀ n, P16592391685035034724.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P13868668936861000649

`A000005(floor((n+1)/2))+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A362059.P13868668936861000649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000005 ⌊(n + 1 : ℚ) / 2⌋.toNat + a (n - 2)

end

end A362059.P13868668936861000649

namespace A362059

/-- `A000005(floor((n+1)/2))+a(n-2)` -/
def P13868668936861000649.Spec : Prop :=
  ∀ n, P13868668936861000649.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P10513082291796823096

`A060831(n)-A177235(n+1)`
-/

namespace A362059.P10513082291796823096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - A177235 (n + 1)

end

end A362059.P10513082291796823096

namespace A362059

/-- `A060831(n)-A177235(n+1)` -/
def P10513082291796823096.Spec : Prop :=
  ∀ n, P10513082291796823096.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P11426311832409813196

`∑[A000035(n)*A069157(n+1)]`
-/

namespace A362059.P11426311832409813196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A069157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362059.P11426311832409813196

namespace A362059

/-- `∑[A000035(n)*A069157(n+1)]` -/
def P11426311832409813196.Spec : Prop :=
  ∀ n, P11426311832409813196.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P16328607242074603553

`A211275(n+1)+A181972(n+1)`
-/

namespace A362059.P16328607242074603553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211275 (n + 1) + A181972 (n + 1)

end

end A362059.P16328607242074603553

namespace A362059

/-- `A211275(n+1)+A181972(n+1)` -/
def P16328607242074603553.Spec : Prop :=
  ∀ n, P16328607242074603553.a n = A362059 (n + 1)

end A362059

/-! ## A362059.P1338879273318512687

`A002541(n+1)-A248517(n+1)`
-/

namespace A362059.P1338879273318512687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) - A248517 (n + 1)

end

end A362059.P1338879273318512687

namespace A362059

/-- `A002541(n+1)-A248517(n+1)` -/
def P1338879273318512687.Spec : Prop :=
  ∀ n, P1338879273318512687.a n = A362059 (n + 1)

end A362059

/-!
# A362060: Numbers k such that the digits of k are a subsequence of the digits of prime(k).

The programs for A362060, there is no canonical definition to state claims against.
-/

/-! ## A362060.P1656542267867531076

`A000720(A114924(n+1))`
-/

namespace A362060.P1656542267867531076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A114924 (n + 1)).toNat

end

end A362060.P1656542267867531076

/-! ## A362060.P12735253682321108666

`A000720(A362066(n+1))`
-/

namespace A362060.P12735253682321108666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A362066 (n + 1)).toNat

end

end A362060.P12735253682321108666

/-! ## A362060.P8319469213645290624

`A061395(A114924(n+1)+A047764(3*n+1))`
-/

namespace A362060.P8319469213645290624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A114924 (n + 1) + A047764 (3 * n + 1)).toNat

end

end A362060.P8319469213645290624

/-! ## A362060.P4903237887105678481

`A061395(A362066(n+1)+char[A003350(3*n+2)])`
-/

namespace A362060.P4903237887105678481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003350 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A362066 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A362060.P4903237887105678481

/-! ## A362060.P2926885721204233571

`A061395(A362066(n+1)+char[A386209(2*n+3)])`
-/

namespace A362060.P2926885721204233571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386209 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A362066 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A362060.P2926885721204233571

/-!
# A362062: First index in A362061 where A001221(A362061(a(n))) = n.

The programs for A362062, there is no canonical definition to state claims against.
-/

/-! ## A362062.P17817856556232306545

`record[(n+1)/A362061(n+2)]`
-/

namespace A362062.P17817856556232306545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A362061 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362062.P17817856556232306545

/-! ## A362062.P10737423538409221296

`A056593(n)+A001065(A002110(n))`
-/

namespace A362062.P10737423538409221296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056593 n + A001065 (A002110 n).toNat

end

end A362062.P10737423538409221296

/-!
# A362063: Number of 2-balanced binary words of length n with respect to the permutations of the symbols.

The programs for A362063, there is no canonical definition to state claims against.
-/

/-! ## A362063.P2687812533993952134

`ceil(A274005(n)/2)`
-/

namespace A362063.P2687812533993952134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A274005 n : ℚ) / 2⌉

end

end A362063.P2687812533993952134

/-! ## A362063.P1409565342660550718

`A274005(A028310(n))/2`
-/

namespace A362063.P1409565342660550718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274005 (A028310 n).toNat : ℚ) / 2

end

end A362063.P1409565342660550718

/-! ## A362063.P17469948319084490766

`A274005(n)/A036452(n+1)`
-/

namespace A362063.P17469948319084490766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274005 n : ℚ) / (A036452 (n + 1) : ℚ)

end

end A362063.P17469948319084490766

/-! ## A362063.P16319249954450218561

`A274005(n)/A036453(n+1)`
-/

namespace A362063.P16319249954450218561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274005 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A362063.P16319249954450218561

/-!
# A362067: Sum of successive Fibonacci numbers F(n) : a(n) = Sum_{k = 0..n} F(n+k).

The programs for A362067, the canonical program `A362067.P7535074229727964740` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362067 has offset 0).

The definition of A362067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362067.P7535074229727964740

`2*A094292(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A362067

/-- `2*A094292(n+1)` -/
def P7535074229727964740.Spec : Prop :=
  ∀ n, P7535074229727964740.a n = A362067 n

theorem P7535074229727964740.correct : P7535074229727964740.Spec := by
  intro n
  simp only [A362067]

end A362067

/-! ## A362067.P2597163393897754591

`A000045(n+1)*(A000032(n+1)-1)`
-/

namespace A362067.P2597163393897754591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (A000032 (n + 1) - 1)

end

end A362067.P2597163393897754591

namespace A362067

/-- `A000045(n+1)*(A000032(n+1)-1)` -/
def P2597163393897754591.Spec : Prop :=
  ∀ n, P2597163393897754591.a n = A362067 n

end A362067

/-! ## A362067.P5743226772126914516

`A000045(2*n+2)-A000045(n+1)`
-/

namespace A362067.P5743226772126914516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 2) - A000045 (n + 1)

end

end A362067.P5743226772126914516

namespace A362067

/-- `A000045(2*n+2)-A000045(n+1)` -/
def P5743226772126914516.Spec : Prop :=
  ∀ n, P5743226772126914516.a n = A362067 n

end A362067

/-! ## A362067.P797429066670574465

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=18`
-/

namespace A362067.P797429066670574465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 18] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3) + a (n - 4)

end

end A362067.P797429066670574465

namespace A362067

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` -/
def P797429066670574465.Spec : Prop :=
  ∀ n, P797429066670574465.a n = A362067 n

end A362067

/-! ## A362067.P7997204749112094522

`ogf((2x-2x^2)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A362067.P7997204749112094522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2] [1, -4, 3, 2, -1] n

end

end A362067.P7997204749112094522

namespace A362067

/-- `ogf((2x-2x^2)/(1-4x+3x^2+2x^3-x^4))` -/
def P7997204749112094522.Spec : Prop :=
  ∀ n, P7997204749112094522.a n = A362067 n

end A362067

/-! ## A362067.P11661358190783881170

`A121364(2*(n+1))`
-/

namespace A362067.P11661358190783881170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121364 (2 * (n + 1))

end

end A362067.P11661358190783881170

namespace A362067

/-- `A121364(2*(n+1))` -/
def P11661358190783881170.Spec : Prop :=
  ∀ n, P11661358190783881170.a n = A362067 n

end A362067

/-! ## A362067.P6213244463484830401

`2*Δ[A056014(n+1)]`
-/

namespace A362067.P6213244463484830401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A362067.P6213244463484830401

namespace A362067

/-- `2*Δ[A056014(n+1)]` -/
def P6213244463484830401.Spec : Prop :=
  ∀ n, P6213244463484830401.a n = A362067 n

end A362067

/-! ## A362067.P10218852559091128345

`2*A032089(2*(n+1))`
-/

namespace A362067.P10218852559091128345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032089 (2 * (n + 1))

end

end A362067.P10218852559091128345

namespace A362067

/-- `2*A032089(2*(n+1))` -/
def P10218852559091128345.Spec : Prop :=
  ∀ n, P10218852559091128345.a n = A362067 n

end A362067

/-! ## A362067.P2375703939828400895

`2*Δ[A032090(2*(n+1))]`
-/

namespace A362067.P2375703939828400895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A362067.P2375703939828400895

namespace A362067

/-- `2*Δ[A032090(2*(n+1))]` -/
def P2375703939828400895.Spec : Prop :=
  ∀ n, P2375703939828400895.a n = A362067 n

end A362067

/-! ## A362067.P4829687148556751698

`A096140(n)+A001906(n)`
-/

namespace A362067.P4829687148556751698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096140 n + A001906 n

end

end A362067.P4829687148556751698

namespace A362067

/-- `A096140(n)+A001906(n)` -/
def P4829687148556751698.Spec : Prop :=
  ∀ n, P4829687148556751698.a n = A362067 n

end A362067

/-! ## A362067.P5156888632281269286

`A105693(n)+A027934(n)`
-/

namespace A362067.P5156888632281269286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105693 n + A027934 n

end

end A362067.P5156888632281269286

namespace A362067

/-- `A105693(n)+A027934(n)` -/
def P5156888632281269286.Spec : Prop :=
  ∀ n, P5156888632281269286.a n = A362067 n

end A362067

/-! ## A362067.P1029868635801861619

`A035508(n)-A000071(n+1)`
-/

namespace A362067.P1029868635801861619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n - A000071 (n + 1)

end

end A362067.P1029868635801861619

namespace A362067

/-- `A035508(n)-A000071(n+1)` -/
def P1029868635801861619.Spec : Prop :=
  ∀ n, P1029868635801861619.a n = A362067 n

end A362067

/-! ## A362067.P13540618050582041690

`A192475(n+1)-A020695(n)`
-/

namespace A362067.P13540618050582041690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192475 (n + 1) - A020695 n

end

end A362067.P13540618050582041690

namespace A362067

/-- `A192475(n+1)-A020695(n)` -/
def P13540618050582041690.Spec : Prop :=
  ∀ n, P13540618050582041690.a n = A362067 n

end A362067

/-! ## A362067.P18204704886588928561

`A192068(n+1)-A074331(n)`
-/

namespace A362067.P18204704886588928561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192068 (n + 1) - A074331 n

end

end A362067.P18204704886588928561

namespace A362067

/-- `A192068(n+1)-A074331(n)` -/
def P18204704886588928561.Spec : Prop :=
  ∀ n, P18204704886588928561.a n = A362067 n

end A362067

/-! ## A362067.P922124957995152706

`A000045(n+1)*A001610(n)`
-/

namespace A362067.P922124957995152706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001610 n

end

end A362067.P922124957995152706

namespace A362067

/-- `A000045(n+1)*A001610(n)` -/
def P922124957995152706.Spec : Prop :=
  ∀ n, P922124957995152706.a n = A362067 n

end A362067

/-! ## A362067.P3354266864602867455

`A096140(n)+A000045(2*n)`
-/

namespace A362067.P3354266864602867455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096140 n + A000045 (2 * n)

end

end A362067.P3354266864602867455

namespace A362067

/-- `A096140(n)+A000045(2*n)` -/
def P3354266864602867455.Spec : Prop :=
  ∀ n, P3354266864602867455.a n = A362067 n

end A362067

/-! ## A362067.P15458181748086121025

`A096140(n)+A005013(2*n)`
-/

namespace A362067.P15458181748086121025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096140 n + A005013 (2 * n)

end

end A362067.P15458181748086121025

namespace A362067

/-- `A096140(n)+A005013(2*n)` -/
def P15458181748086121025.Spec : Prop :=
  ∀ n, P15458181748086121025.a n = A362067 n

end A362067

/-! ## A362067.P12735189508091331843

`2*(A122367(n)-A005207(n))`
-/

namespace A362067.P12735189508091331843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122367 n - A005207 n)

end

end A362067.P12735189508091331843

namespace A362067

/-- `2*(A122367(n)-A005207(n))` -/
def P12735189508091331843.Spec : Prop :=
  ∀ n, P12735189508091331843.a n = A362067 n

end A362067

/-! ## A362067.P8548142559406329324

`A001906(n+1)-A000045(n+1)`
-/

namespace A362067.P8548142559406329324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A000045 (n + 1)

end

end A362067.P8548142559406329324

namespace A362067

/-- `A001906(n+1)-A000045(n+1)` -/
def P8548142559406329324.Spec : Prop :=
  ∀ n, P8548142559406329324.a n = A362067 n

end A362067

/-! ## A362067.P1283053868318314794

`A088305(n+1)-A000045(n+1)`
-/

namespace A362067.P1283053868318314794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) - A000045 (n + 1)

end

end A362067.P1283053868318314794

namespace A362067

/-- `A088305(n+1)-A000045(n+1)` -/
def P1283053868318314794.Spec : Prop :=
  ∀ n, P1283053868318314794.a n = A362067 n

end A362067

/-!
# A362068: a(n) is the smallest positive integer k such that n can be expressed as the arithmetic mean of k squares.

The programs for A362068, there is no canonical definition to state claims against.
-/

/-! ## A362068.P654251667825047676

`A360530(A008607(n+1))`
-/

namespace A362068.P654251667825047676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360530 (A008607 (n + 1)).toNat

end

end A362068.P654251667825047676

/-! ## A362068.P11933234858977484488

`A360530(A044332(n+1))`
-/

namespace A362068.P11933234858977484488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360530 (A044332 (n + 1)).toNat

end

end A362068.P11933234858977484488

/-! ## A362068.P9614461966939547165

`A002828((n+1)*A300622(n))`
-/

namespace A362068.P9614461966939547165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 ((n + 1 : ℤ) * A300622 n).toNat

end

end A362068.P9614461966939547165

/-! ## A362068.P2695623371209929198

`A101787(A248576(∑{d}[n+1, #]))`
-/

namespace A362068.P2695623371209929198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101787 (A248576 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A362068.P2695623371209929198

/-! ## A362068.P17899005837201105597

`A109301(gcd(2*∑{d}[n+1, #], A109318(n+2)))`
-/

namespace A362068.P17899005837201105597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109301 (Int.gcd ((2 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) (A109318 (n + 2)))

end

end A362068.P17899005837201105597

/-!
# A362071: a(1) = 1, and thereafter a(n) is the number of terms with index m < n such that gpf(a(m)) = gpf(a(n-1)), where gpf(k) = A006530(k) is the greatest prime factor of k (or 1 if k=1).

The programs for A362071, there is no canonical definition to state claims against.
-/

/-! ## A362071.P4340727851503260543

`A338899(A250266(n+1))`
-/

namespace A362071.P4340727851503260543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338899 (A250266 (n + 1)).toNat

end

end A362071.P4340727851503260543

/-! ## A362071.P13616743506673626015

`A086275(A192400(n)+A029931(n+1))`
-/

namespace A362071.P13616743506673626015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086275 (A192400 n + A029931 (n + 1)).toNat

end

end A362071.P13616743506673626015

/-! ## A362071.P5818187468494617010

`A057945(lcm(A002944(n+1), A039599(n)))`
-/

namespace A362071.P5818187468494617010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (Int.lcm (A002944 (n + 1)) (A039599 n))

end

end A362071.P5818187468494617010

/-! ## A362071.P10094591497121382070

`A353352(A056367(n+3)+A001414(n+1))`
-/

namespace A362071.P10094591497121382070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353352 (A056367 (n + 3) + A001414 (n + 1)).toNat

end

end A362071.P10094591497121382070

/-! ## A362071.P13292097185116429245

`A227739(A108951(n+1)+A008965(n+5))`
-/

namespace A362071.P13292097185116429245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (A108951 (n + 1) + A008965 (n + 5)).toNat

end

end A362071.P13292097185116429245

/-!
# A362079: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = [x^n] 1/(1 - x*(1+x)^n)^k.

The programs for A362079, there is no canonical definition to state claims against.
-/

/-! ## A362079.P16175611593775463514

`A378292(n)-A353477(A182908(n+1))`
-/

namespace A362079.P16175611593775463514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378292 n - A353477 (A182908 (n + 1)).toNat

end

end A362079.P16175611593775463514

/-! ## A362079.P9408809576087222090

`A007814(2^A378289(n))`
-/

namespace A362079.P9408809576087222090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378289 n : ℤ))).toNat

end

end A362079.P9408809576087222090

/-! ## A362079.P926422634539552449

`A023416(2^A378289(n))`
-/

namespace A362079.P926422634539552449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378289 n : ℤ))).toNat

end

end A362079.P926422634539552449

/-! ## A362079.P13126484694408268612

`A029837(2^A378289(n))`
-/

namespace A362079.P13126484694408268612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378289 n : ℤ))).toNat

end

end A362079.P13126484694408268612

/-! ## A362079.P4403483956059113603

`A037916(2^A378289(n))`
-/

namespace A362079.P4403483956059113603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378289 n : ℤ))).toNat

end

end A362079.P4403483956059113603

/-!
# A362080: a(n) = [x^n] 1/(1 - x*(1+x)^n)^n.

The programs for A362080, there is no canonical definition to state claims against.
-/

/-! ## A362080.P14188972307714115208

`A362125(∑[4*n])`
-/

namespace A362080.P14188972307714115208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362080.P14188972307714115208

/-! ## A362080.P2220008274056891318

`A362125(A046092(n))+A007814(2*n+3)`
-/

namespace A362080.P2220008274056891318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 (A046092 n).toNat + A007814 (2 * n + 3)

end

end A362080.P2220008274056891318

/-! ## A362080.P5801347632478184917

`A362125(A046092(n))+A057078(3*n+4)`
-/

namespace A362080.P5801347632478184917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 (A046092 n).toNat + A057078 (3 * n + 4)

end

end A362080.P5801347632478184917

/-! ## A362080.P12134843203559158187

`A362078(∑[4*n])`
-/

namespace A362080.P12134843203559158187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362078 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362080.P12134843203559158187

/-! ## A362080.P14146039737883972225

`A362079(∑[4*n])`
-/

namespace A362080.P14146039737883972225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362079 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362080.P14146039737883972225

/-!
# A362081: Numbers k achieving record abundance (sigma(k) > 2*k) via a residue-based measure M(k) (see Comments), analogous to superabundant numbers A004394.

The programs for A362081, there is no canonical definition to state claims against.
-/

/-! ## A362081.P11872331067237102125

`record[A286598(A131516(n))]`
-/

namespace A362081.P11872331067237102125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (A131516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362081.P11872331067237102125

/-! ## A362081.P1543916370742161296

`eq[n, A328612(A089854(n))]`
-/

namespace A362081.P1543916370742161296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328612 (A089854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A362081.P1543916370742161296

/-! ## A362081.P4635364929854487552

`eq[A346475(n), A360071(n+1)]`
-/

namespace A362081.P4635364929854487552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346475 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362081.P4635364929854487552

/-! ## A362081.P1121839399332426099

`record[A046523(n+1)/A336137(n)]`
-/

namespace A362081.P1121839399332426099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) / (A336137 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362081.P1121839399332426099

/-!
# A362082: Numbers k achieving record deficiency via a residue-based measure, M(k) = (k+1)*(1 - zeta(2)/2) - 1 - ( Sum_{j=1..k} k mod j )/k.

The programs for A362082, there is no canonical definition to state claims against.
-/

/-! ## A362082.P5084087646321041780

`A058197(A348809(n)+A069813(n+3))`
-/

namespace A362082.P5084087646321041780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058197 (A348809 n + A069813 (n + 3)).toNat

end

end A362082.P5084087646321041780

/-! ## A362082.P2991783535853908957

`A326393(n+2)%A134967(A081584(n))`
-/

namespace A362082.P2991783535853908957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326393 (n + 2)) (A134967 (A081584 n).toNat)

end

end A362082.P2991783535853908957

/-! ## A362082.P15003801355236843126

`C(A326393(n+2), A289508(A006385(n)))`
-/

namespace A362082.P15003801355236843126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326393 (n + 2)).toNat (A289508 (A006385 n).toNat).toNat

end

end A362082.P15003801355236843126

/-!
# A362083: Numbers k such that, via a residue based measure M(k) (see Comments), k is deficient, k+1 is abundant, and abs(M(k)) + abs(M(k+1)) reaches a new maximum.

The programs for A362083, there is no canonical definition to state claims against.
-/

/-! ## A362083.P13641600533442175547

`record[A136801(A363724(n+4))]`
-/

namespace A362083.P13641600533442175547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136801 (A363724 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362083.P13641600533442175547

/-! ## A362083.P11542205030887115081

`filter[A351682(n+3), A104104(#)]`
-/

namespace A362083.P11542205030887115081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351682 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104104 (f1 j).toNat = 1) n)

end

end A362083.P11542205030887115081

/-!
# A362084: a(n) = Sum_{k=0..n} (-1)^k * binomial(-2,k) * binomial(n*k,n-k).

The programs for A362084, there is no canonical definition to state claims against.
-/

/-! ## A362084.P7933536200652268793

`A362079(∑[n+3])`
-/

namespace A362084.P7933536200652268793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362079 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362084.P7933536200652268793

/-! ## A362084.P2170546411985056247

`A099237(n)+n*A299044(n)`
-/

namespace A362084.P2170546411985056247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099237 n + (n : ℤ) * A299044 n

end

end A362084.P2170546411985056247

/-! ## A362084.P7475448366486830943

`record[A362079(n)/A038207(n+2)]`
-/

namespace A362084.P7475448366486830943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362079 n : ℚ) / (A038207 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362084.P7475448366486830943

/-! ## A362084.P12027469928631866464

`record[A362079(n)/A211836(n+4)]`
-/

namespace A362084.P12027469928631866464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362079 n : ℚ) / (A211836 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362084.P12027469928631866464

/-!
# A362085: a(n) = Sum_{k=0..n} (-1)^k * binomial(-3,k) * binomial(n*k,n-k).

The programs for A362085, there is no canonical definition to state claims against.
-/

/-! ## A362085.P4195814440152832300

`A362079(A046691(n+2))`
-/

namespace A362085.P4195814440152832300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362079 (A046691 (n + 2)).toNat

end

end A362085.P4195814440152832300

/-! ## A362085.P3931701048273202176

`A362079(A155212(n)+4)`
-/

namespace A362085.P3931701048273202176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362079 (A155212 n + 4).toNat

end

end A362085.P3931701048273202176

/-! ## A362085.P17291451076194582616

`A362079(eq[3, A025581(n)])`
-/

namespace A362085.P17291451076194582616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362085.P17291451076194582616

/-! ## A362085.P5835415579991664388

`record[A362079(abs(A046691(n)))]`
-/

namespace A362085.P5835415579991664388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362079 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362085.P5835415579991664388

/-! ## A362085.P3479259254241546056

`A362079(A000217(n+4)-4)`
-/

namespace A362085.P3479259254241546056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362079 (A000217 (n + 4) - 4).toNat

end

end A362085.P3479259254241546056

/-!
# A362086: Denominator of the continued fraction 1/(2-3/(3-4/(4-5/(...(n-1)-n/(-3))))).

The programs for A362086, there is no canonical definition to state claims against.
-/

/-! ## A362086.P2734655685356616335

`A345941(∑[A143941(n+1)])`
-/

namespace A362086.P2734655685356616335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362086.P2734655685356616335

/-! ## A362086.P10217988491249529510

`A002034(∑[∑[A132209(n+1)]])`
-/

namespace A362086.P10217988491249529510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362086.P10217988491249529510

/-! ## A362086.P17869843714606990478

`A002034(∑[∑[A142463(n+1)]])`
-/

namespace A362086.P17869843714606990478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362086.P17869843714606990478

/-! ## A362086.P5774619622835225215

`A002034(∑[∑[A047838(2*n+3)]])`
-/

namespace A362086.P5774619622835225215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362086.P5774619622835225215

/-!
# A362087: a(n) = Sum_{k=0..n} (-1)^k * binomial(-n,k) * binomial(2*k,n-k).

The programs for A362087, there is no canonical definition to state claims against.
-/

/-! ## A362087.P18018508956438884255

`A362078(∑[n+3])`
-/

namespace A362087.P18018508956438884255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362078 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362087.P18018508956438884255

/-!
# A362088: a(n) = Sum_{k=0..n} (-1)^k * binomial(-n,k) * binomial(3*k,n-k).

The programs for A362088, there is no canonical definition to state claims against.
-/

/-! ## A362088.P3737263710265687836

`A362078(∑[n+3]+3+n)`
-/

namespace A362088.P3737263710265687836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362078 (∑ j ∈ Finset.range (n + 1), f1 j + 3 + n)

end

end A362088.P3737263710265687836

/-! ## A362088.P8585065182412777270

`A117571(n*A196150(n))`
-/

namespace A362088.P8585065182412777270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 ((n : ℤ) * A196150 n).toNat

end

end A362088.P8585065182412777270

/-!
# A362089: The base-3 expansion of a(n) is obtained by inserting a zero before each nonzero digit of the base-3 expansion of n.

The programs for A362089, there is no canonical definition to state claims against.
-/

/-! ## A362089.P8445421872640197818

`A365278(A305878(n))`
-/

namespace A362089.P8445421872640197818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365278 (A305878 n).toNat

end

end A362089.P8445421872640197818

/-! ## A362089.P9812274302357619966

`A366348(A101278(n))`
-/

namespace A362089.P9812274302357619966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366348 (A101278 n).toNat

end

end A362089.P9812274302357619966

/-!
# A362090: a(n) = A328749(A362089(n)).

The programs for A362090, there is no canonical definition to state claims against.
-/

/-! ## A362090.P16329670518734429139

`A328749(A362089(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362090.P16329670518734429139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A362089 n).toNat

end

end A362090.P16329670518734429139

/-!
# A362095: Records in A361511.

The programs for A362095, there is no canonical definition to state claims against.
-/

/-! ## A362095.P18086594270852319286

`record[A361513(n+1)]`
-/

namespace A362095.P18086594270852319286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362095.P18086594270852319286

/-! ## A362095.P1131765780129689984

`record[A361511(n+1)]`
-/

namespace A362095.P1131765780129689984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362095.P1131765780129689984

/-! ## A362095.P12030900568565010143

`A361511(A361516(n+1))`
-/

namespace A362095.P12030900568565010143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (A361516 (n + 1)).toNat

end

end A362095.P12030900568565010143

/-!
# A362097: Numbers k such that 5^k starts with k.

The programs for A362097, there is no canonical definition to state claims against.
-/

/-! ## A362097.P11106627561958989883

`A331379(-∑[xor(-1, n²)])+A000217(2*n+1)`
-/

namespace A362097.P11106627561958989883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331379 (-(∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A000217 (2 * n + 1)

end

end A362097.P11106627561958989883

