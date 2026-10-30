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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A182100: The number of connected simple labeled graphs with <= n nodes.

The programs for A182100, there is no canonical definition to state claims against.
-/

/-! ## A182100.P13698993366656104986

`A327078(n)+n`
-/

namespace A182100.P13698993366656104986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327078 n + (n : ℤ)

end

end A182100.P13698993366656104986

/-! ## A182100.P6424375968239293922

`∑{#}[n, C(n, #)*A001187(#)]`
-/

namespace A182100.P6424375968239293922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A001187 k

end

end A182100.P6424375968239293922

/-! ## A182100.P4417144514385192872

`A006125(n)+1-A327199(n)+n`
-/

namespace A182100.P4417144514385192872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n + (1 - A327199 n) + (n : ℤ)

end

end A182100.P4417144514385192872

/-! ## A182100.P5765686495435064111

`A167939(A028310(n))+A057427(n)`
-/

namespace A182100.P5765686495435064111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167939 (A028310 n).toNat + A057427 n

end

end A182100.P5765686495435064111

/-! ## A182100.P12765338979106095266

`A167939(A028310(n))+char[A007318(n)]`
-/

namespace A182100.P12765338979106095266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167939 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A182100.P12765338979106095266

/-!
# A182101: Random walk determined by the binary digits of the Dottie number, A003957.

The programs for A182101, there is no canonical definition to state claims against.
-/

/-! ## A182101.P9674037086637950647

`∑{e}[A174317(A075168(n)), #]`
-/

namespace A182101.P9674037086637950647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174317 (A075168 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A182101.P9674037086637950647

/-! ## A182101.P10590425483127116229

`∑[A011591(∑[A004918(n+1)])]`
-/

namespace A182101.P10590425483127116229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182101.P10590425483127116229

/-! ## A182101.P2207344665341795329

`∑[A165573(A071239(n))]`
-/

namespace A182101.P2207344665341795329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (A071239 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182101.P2207344665341795329

/-!
# A182105: Number of elements merged by bottom-up merge sort.

The programs for A182105, the canonical program `A182105.P6910077357457844647` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182105 has offset 1).

The definition of A182105 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082850, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182105.P6910077357457844647

`2^(A082850(n+1)-1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182105

/-- `2^(A082850(n+1)-1)` -/
def P6910077357457844647.Spec : Prop :=
  ∀ n, P6910077357457844647.a n = (A182105 (n + 1) : ℚ)

end A182105

/-! ## A182105.P4005777208858006926

`abs(Δ[A339451(n)])`
-/

namespace A182105.P4005777208858006926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A182105.P4005777208858006926

namespace A182105

/-- `abs(Δ[A339451(n)])` -/
def P4005777208858006926.Spec : Prop :=
  ∀ n, P4005777208858006926.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P15055499239441157807

`2^A215020(1+n)`
-/

namespace A182105.P15055499239441157807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A215020 (1 + n) : ℤ)

end

end A182105.P15055499239441157807

namespace A182105

/-- `2^A215020(1+n)` -/
def P15055499239441157807.Spec : Prop :=
  ∀ n, P15055499239441157807.a n = (A182105 (n + 1) : ℚ)

end A182105

/-! ## A182105.P10246435790576426440

`gcd(a(n-1)+a(n-1), A151555(n))` with `a(0)=1`
-/

namespace A182105.P10246435790576426440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + a (n - 1) : ℤ) (A151555 n)

end

end A182105.P10246435790576426440

namespace A182105

/-- `gcd(a(n-1)+a(n-1), A151555(n))` -/
def P10246435790576426440.Spec : Prop :=
  ∀ n, (P10246435790576426440.a n : ℤ) = A182105 (n + 1)

end A182105

/-! ## A182105.P11507904309397878027

`A011782(A082850(n+1))`
-/

namespace A182105.P11507904309397878027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A082850 (n + 1)).toNat

end

end A182105.P11507904309397878027

namespace A182105

/-- `A011782(A082850(n+1))` -/
def P11507904309397878027.Spec : Prop :=
  ∀ n, P11507904309397878027.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P11768047348235408101

`A000079(A215020(n+1))`
-/

namespace A182105.P11768047348235408101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A215020 (n + 1)).toNat

end

end A182105.P11768047348235408101

namespace A182105

/-- `A000079(A215020(n+1))` -/
def P11768047348235408101.Spec : Prop :=
  ∀ n, P11768047348235408101.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P15175824974627546326

`A000079(A082850(n+1)-1)`
-/

namespace A182105.P15175824974627546326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A082850 (n + 1) - 1).toNat

end

end A182105.P15175824974627546326

namespace A182105

/-- `A000079(A082850(n+1)-1)` -/
def P15175824974627546326.Spec : Prop :=
  ∀ n, P15175824974627546326.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P12024882748521846344

`A000010(2^A082850(n+1))`
-/

namespace A182105.P12024882748521846344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A082850 (n + 1) : ℤ))).toNat

end

end A182105.P12024882748521846344

namespace A182105

/-- `A000010(2^A082850(n+1))` -/
def P12024882748521846344.Spec : Prop :=
  ∀ n, P12024882748521846344.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P14483951208852521187

`A046699(n+2)-A339451(n)`
-/

namespace A182105.P14483951208852521187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 2) - A339451 n

end

end A182105.P14483951208852521187

namespace A182105

/-- `A046699(n+2)-A339451(n)` -/
def P14483951208852521187.Spec : Prop :=
  ∀ n, P14483951208852521187.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P16686150836184762737

`gcd(A339451(n+1), A339451(n))`
-/

namespace A182105.P16686150836184762737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A339451 (n + 1)) (A339451 n)

end

end A182105.P16686150836184762737

namespace A182105

/-- `gcd(A339451(n+1), A339451(n))` -/
def P16686150836184762737.Spec : Prop :=
  ∀ n, (P16686150836184762737.a n : ℤ) = A182105 (n + 1)

end A182105

/-! ## A182105.P8522156397308366358

`A046699(n+2)/A123390(n+1)`
-/

namespace A182105.P8522156397308366358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046699 (n + 2) : ℚ) / (A123390 (n + 1) : ℚ)

end

end A182105.P8522156397308366358

namespace A182105

/-- `A046699(n+2)/A123390(n+1)` -/
def P8522156397308366358.Spec : Prop :=
  ∀ n, P8522156397308366358.a n = (A182105 (n + 1) : ℚ)

end A182105

/-! ## A182105.P12340050569710181934

`filter[A210208(n+1), A135528(#)]`
-/

namespace A182105.P12340050569710181934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A182105.P12340050569710181934

namespace A182105

/-- `filter[A210208(n+1), A135528(#)]` -/
def P12340050569710181934.Spec : Prop :=
  ∀ n, P12340050569710181934.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P1503164940917485942

`filter[A210208(n+1), A209229(#)]`
-/

namespace A182105.P1503164940917485942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A182105.P1503164940917485942

namespace A182105

/-- `filter[A210208(n+1), A209229(#)]` -/
def P1503164940917485942.Spec : Prop :=
  ∀ n, P1503164940917485942.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P12826457519995244979

`filter[A210208(n+1), A264739(#)]`
-/

namespace A182105.P12826457519995244979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264739 (f1 j).toNat = 1) n)

end

end A182105.P12826457519995244979

namespace A182105

/-- `filter[A210208(n+1), A264739(#)]` -/
def P12826457519995244979.Spec : Prop :=
  ∀ n, P12826457519995244979.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P12560159665951606576

`filter[A210208(n+1), A266591(#)]`
-/

namespace A182105.P12560159665951606576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A182105.P12560159665951606576

namespace A182105

/-- `filter[A210208(n+1), A266591(#)]` -/
def P12560159665951606576.Spec : Prop :=
  ∀ n, P12560159665951606576.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P5132698787982625990

`A006519(A339451(n+1)+A339451(n))`
-/

namespace A182105.P5132698787982625990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A339451 (n + 1) + A339451 n).toNat

end

end A182105.P5132698787982625990

namespace A182105

/-- `A006519(A339451(n+1)+A339451(n))` -/
def P5132698787982625990.Spec : Prop :=
  ∀ n, P5132698787982625990.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P4644972028463744736

`A006519(A108918(n+1))`
-/

namespace A182105.P4644972028463744736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A108918 (n + 1)).toNat

end

end A182105.P4644972028463744736

namespace A182105

/-- `A006519(A108918(n+1))` -/
def P4644972028463744736.Spec : Prop :=
  ∀ n, P4644972028463744736.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P13531538599741365025

`A006519(A254112(n+1))`
-/

namespace A182105.P13531538599741365025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A254112 (n + 1)).toNat

end

end A182105.P13531538599741365025

namespace A182105

/-- `A006519(A254112(n+1))` -/
def P13531538599741365025.Spec : Prop :=
  ∀ n, P13531538599741365025.a n = A182105 (n + 1)

end A182105

/-! ## A182105.P12811369657865069913

`gcd(A001316(n), A254112(n+1))`
-/

namespace A182105.P12811369657865069913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001316 n) (A254112 (n + 1))

end

end A182105.P12811369657865069913

namespace A182105

/-- `gcd(A001316(n), A254112(n+1))` -/
def P12811369657865069913.Spec : Prop :=
  ∀ n, (P12811369657865069913.a n : ℤ) = A182105 (n + 1)

end A182105

/-! ## A182105.P12915689489798151721

`gcd(∑[A079559(n)], A108918(n+1))`
-/

namespace A182105.P12915689489798151721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A108918 (n + 1))

end

end A182105.P12915689489798151721

namespace A182105

/-- `gcd(∑[A079559(n)], A108918(n+1))` -/
def P12915689489798151721.Spec : Prop :=
  ∀ n, (P12915689489798151721.a n : ℤ) = A182105 (n + 1)

end A182105

/-!
# A182106: Number of tilings of an n X n square with rectangles with integer sides and area n.

The programs for A182106, there is no canonical definition to state claims against.
-/

/-! ## A182106.P2628647500373766652

`A220122(2*n*A089247(n+1))`
-/

namespace A182106.P2628647500373766652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (2 * ((n : ℤ) * A089247 (n + 1))).toNat

end

end A182106.P2628647500373766652

/-! ## A182106.P1142192435672633672

`A220122(∑[4*n])`
-/

namespace A182106.P1142192435672633672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182106.P1142192435672633672

/-! ## A182106.P18088055758769242992

`or(char[1], A220122(A046092(n)))`
-/

namespace A182106.P18088055758769242992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A220122 (A046092 n).toNat)

end

end A182106.P18088055758769242992

/-! ## A182106.P17341808765129201139

`A220122(A046092(n))%A033304(n)`
-/

namespace A182106.P17341808765129201139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220122 (A046092 n).toNat) (A033304 n)

end

end A182106.P17341808765129201139

/-! ## A182106.P9722753257073013265

`A220122(A046092(n))/A007318(∑[n])`
-/

namespace A182106.P9722753257073013265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220122 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A182106.P9722753257073013265

/-!
# A182109: Records in A094593.

The programs for A182109, there is no canonical definition to state claims against.
-/

/-! ## A182109.P17894972323650402476

`record[A094593(n+3)]`
-/

namespace A182109.P17894972323650402476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094593 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182109.P17894972323650402476

/-! ## A182109.P4495482698102456660

`A094593(A331398(n+1))`
-/

namespace A182109.P4495482698102456660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094593 (A331398 (n + 1)).toNat

end

end A182109.P4495482698102456660

/-! ## A182109.P4191338829550339463

`record[A006093(n+3)/A062117(n+3)]`
-/

namespace A182109.P4191338829550339463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 3) : ℚ) / (A062117 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182109.P4191338829550339463

/-! ## A182109.P8381256385267019724

`record[round(A045319(n+2)/A062117(n+3))]`
-/

namespace A182109.P8381256385267019724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045319 (n + 2) : ℚ) / (A062117 (n + 3) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182109.P8381256385267019724

/-!
# A182111: Number of iterations of the map n -> sum of the cubes of the decimal digits of n.

The programs for A182111, there is no canonical definition to state claims against.
-/

/-! ## A182111.P11235371601464192662

`A165331(A055012(n+1))+A031178(n+1)`
-/

namespace A182111.P11235371601464192662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 (A055012 (n + 1)).toNat + A031178 (n + 1)

end

end A182111.P11235371601464192662

/-!
# A182112: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and (w+n)^2=x+y+w.

The programs for A182112, the canonical program `A182112.P16970799148170175086` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182112 has offset 0).

The definition of A182112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182112.P11733043928352610135

`∑[round(sqrt(char[1]+1+n))]+n`
-/

namespace A182112.P11733043928352610135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((if ∃ j, f2 j = n then 1 else 0) + 1 + n : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A182112.P11733043928352610135

namespace A182112

/-- `∑[round(sqrt(char[1]+1+n))]+n` -/
def P11733043928352610135.Spec : Prop :=
  ∀ n, P11733043928352610135.a n = A182112 n

end A182112

/-! ## A182112.P8412852254251623505

`∑[comp[n²]-xor(n, C(n, n²))]`
-/

namespace A182112.P8412852254251623505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (Nat.xor n (Nat.choose n (n ^ 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182112.P8412852254251623505

namespace A182112

/-- `∑[comp[n²]-xor(n, C(n, n²))]` -/
def P8412852254251623505.Spec : Prop :=
  ∀ n, P8412852254251623505.a n = A182112 n

end A182112

/-! ## A182112.P12178546472252647936

`round(a(n-1)+sqrt(n+1)+1)` with `a(0)=1, a(1)=4`
-/

namespace A182112.P12178546472252647936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + (Real.sqrt (n + 1 : ℝ) + 1))

end

end A182112.P12178546472252647936

namespace A182112

/-- `round(a(n-1)+sqrt(n+1)+1)` -/
def P12178546472252647936.Spec : Prop :=
  ∀ n, P12178546472252647936.a n = A182112 n

end A182112

/-! ## A182112.P16970799148170175086

`∑[A270059(A000267(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A182112

/-- `∑[A270059(A000267(n))]` -/
def P16970799148170175086.Spec : Prop :=
  ∀ n, P16970799148170175086.a n = A182112 n

theorem P16970799148170175086.correct : P16970799148170175086.Spec := by
  intro n
  simp only [A182112]

end A182112

/-! ## A182112.P11963194764920047033

`∑[A270059(A284359(n))]`
-/

namespace A182112.P11963194764920047033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (A284359 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182112.P11963194764920047033

namespace A182112

/-- `∑[A270059(A284359(n))]` -/
def P11963194764920047033.Spec : Prop :=
  ∀ n, P11963194764920047033.a n = A182112 n

end A182112

/-! ## A182112.P15365522678686753060

`∑[A270059(∑[A240025(n)])]`
-/

namespace A182112.P15365522678686753060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182112.P15365522678686753060

namespace A182112

/-- `∑[A270059(∑[A240025(n)])]` -/
def P15365522678686753060.Spec : Prop :=
  ∀ n, P15365522678686753060.a n = A182112 n

end A182112

/-!
# A182114: Number of partitions of n with largest inscribed rectangle having area <= k; triangle T(n,k), 0<=n, 0<=k<=n, read by rows.

The programs for A182114, there is no canonical definition to state claims against.
-/

/-! ## A182114.P11496524890797166711

`A065333(A002148(n))+A022554(A258850(n))`
-/

namespace A182114.P11496524890797166711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A002148 n).toNat + A022554 (A258850 n).toNat

end

end A182114.P11496524890797166711

/-! ## A182114.P11571748559943062296

`A158611(A306680(n))+A065333(A002148(n))`
-/

namespace A182114.P11571748559943062296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A306680 n).toNat + A065333 (A002148 n).toNat

end

end A182114.P11571748559943062296

/-! ## A182114.P1854552882679092926

`A135528(A001248(n+1))+A022554(A258850(n))`
-/

namespace A182114.P1854552882679092926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A001248 (n + 1)).toNat + A022554 (A258850 n).toNat

end

end A182114.P1854552882679092926

/-! ## A182114.P5439504612892690371

`A158611(A306680(n))+A135528(A001248(n+1))`
-/

namespace A182114.P5439504612892690371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A306680 n).toNat + A135528 (A001248 (n + 1)).toNat

end

end A182114.P5439504612892690371

/-! ## A182114.P9546954770419775983

`A022554(A258850(n))^A025474(A018834(n+2))`
-/

namespace A182114.P9546954770419775983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022554 (A258850 n).toNat : ℚ) ^ (A025474 (A018834 (n + 2)).toNat : ℤ)

end

end A182114.P9546954770419775983

/-!
# A182117: The number of simple unlabeled graphs whose connected components have distinct sizes (no two connected components have the same number of nodes).

The programs for A182117, there is no canonical definition to state claims against.
-/

/-! ## A182117.P4114611212764572141

`A207828(n)-A094186(A084782(n))`
-/

namespace A182117.P4114611212764572141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207828 n - A094186 (A084782 n).toNat

end

end A182117.P4114611212764572141

/-! ## A182117.P12610245060364870514

`A207828(n)-A102679(A157016(n))`
-/

namespace A182117.P12610245060364870514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207828 n - A102679 (A157016 n).toNat

end

end A182117.P12610245060364870514

/-! ## A182117.P3297374531748936314

`A207828(n)-A358005(A090339(n))`
-/

namespace A182117.P3297374531748936314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207828 n - A358005 ((A090339 n).toNat + 19)

end

end A182117.P3297374531748936314

/-!
# A182120: Numbers for which the canonical prime factorization contains only exponents which are congruent to 2 modulo 3.

The programs for A182120, there is no canonical definition to state claims against.
-/

/-! ## A182120.P6653174500260296126

`record[A159253(A306458(1+n))]`
-/

namespace A182120.P6653174500260296126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159253 (A306458 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182120.P6653174500260296126

/-! ## A182120.P4352501675695983790

`filter[A390437(n+1), A355448(#)]`
-/

namespace A182120.P4352501675695983790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A182120.P4352501675695983790

/-! ## A182120.P493601699612577631

`filter[A392632(n+1), A355448(#)]`
-/

namespace A182120.P493601699612577631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A182120.P493601699612577631

/-! ## A182120.P15094478336974778387

`∩[A350014(n+1), A390437(n+1)]`
-/

namespace A182120.P15094478336974778387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182120.P15094478336974778387

/-! ## A182120.P9457736950085013395

`∩[A350014(n+1), A392632(n+1)]`
-/

namespace A182120.P9457736950085013395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182120.P9457736950085013395

/-! ## A182120.P3613973533486169201

`record[A159253(A003557(n+1))]`
-/

namespace A182120.P3613973533486169201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159253 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182120.P3613973533486169201

/-! ## A182120.P17306402653857838277

`record[A102631(n+1)/A159253(n+1)]`
-/

namespace A182120.P17306402653857838277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (n + 1) : ℚ) / (A159253 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182120.P17306402653857838277

/-! ## A182120.P6099142827355606369

`eq[A062953(n+1)², A050985(n+1)]+1`
-/

namespace A182120.P6099142827355606369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A182120.P6099142827355606369

/-! ## A182120.P17341653628216485247

`record[A003557(n+1)*A007913(A000189(n+1))]`
-/

namespace A182120.P17341653628216485247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A007913 (A000189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182120.P17341653628216485247

/-! ## A182120.P963547300604132883

`record[A000188(A050985(n+1))*A003557(n+1)]`
-/

namespace A182120.P963547300604132883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A050985 (n + 1)).toNat * A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182120.P963547300604132883

/-!
# A182121: Primes p such that the sum of both three and five consecutive primes starting with p is prime.

The programs for A182121, there is no canonical definition to state claims against.
-/

/-! ## A182121.P18323744898888695251

`A000040(∩[A072225(n+1), A288041(n+1)])`
-/

namespace A182121.P18323744898888695251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288041 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A182121.P18323744898888695251

/-! ## A182121.P1677807073001999932

`∩[A073681(n+1), A000040(A288041(n+1))]`
-/

namespace A182121.P1677807073001999932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A288041 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182121.P1677807073001999932

/-! ## A182121.P13176180684001309149

`∩[A073681(n+1), A008578(A288041(n+1)+1)]`
-/

namespace A182121.P13176180684001309149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A288041 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182121.P13176180684001309149

/-! ## A182121.P6244481652582415424

`∩[A073681(n+1), A045344(A288041(n+1)-1)]`
-/

namespace A182121.P6244481652582415424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A288041 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182121.P6244481652582415424

/-! ## A182121.P8668568494748234099

`∩[A073681(n+1), A152468(n+1)]`
-/

namespace A182121.P8668568494748234099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182121.P8668568494748234099

/-! ## A182121.P10295744828234958444

`∩[A000040(A072225(n+1)), A152468(n+1)]`
-/

namespace A182121.P10295744828234958444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072225 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182121.P10295744828234958444

/-! ## A182121.P12515188718744520932

`∩[A152468(n+1), A064989(A152469(n+1))]`
-/

namespace A182121.P12515188718744520932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A152469 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182121.P12515188718744520932

/-! ## A182121.P3558523085479881993

`∩[A152468(n+1), A033302(A152470(n+1))]`
-/

namespace A182121.P3558523085479881993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A152470 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182121.P3558523085479881993

/-!
# A182122: Expansion of exp( arcsinh( 2*x ) ).

The programs for A182122, the canonical program `A182122.P2060482867973186169` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182122 has offset 0).

The definition of A182122 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104624, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182122.P2060482867973186169

`(-1)^n*A104624(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A182122

/-- `(-1)^n*A104624(n)` -/
def P2060482867973186169.Spec : Prop :=
  ∀ n, P2060482867973186169.a n = A182122 n

theorem P2060482867973186169.correct : P2060482867973186169.Spec := by
  intro n
  simp only [A182122]

end A182122

/-! ## A182122.P7901447653555907979

`(3/n-1)*4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A182122.P7901447653555907979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 / (n : ℚ) - 1) * (4 * a (n - 2))

end

end A182122.P7901447653555907979

namespace A182122

/-- `(3/n-1)*4*a(n-2)` -/
def P7901447653555907979.Spec : Prop :=
  ∀ n, P7901447653555907979.a n = (A182122 n : ℚ)

end A182122

/-! ## A182122.P9047178850536947051

`A104624(A254667(n))`
-/

namespace A182122.P9047178850536947051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104624 (A254667 n).toNat

end

end A182122.P9047178850536947051

namespace A182122

/-- `A104624(A254667(n))` -/
def P9047178850536947051.Spec : Prop :=
  ∀ n, P9047178850536947051.a n = A182122 n

end A182122

/-! ## A182122.P17697854236881592816

`A104624(n)*A309873(n+1)`
-/

namespace A182122.P17697854236881592816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104624 n * A309873 (n + 1)

end

end A182122.P17697854236881592816

namespace A182122

/-- `A104624(n)*A309873(n+1)` -/
def P17697854236881592816.Spec : Prop :=
  ∀ n, P17697854236881592816.a n = A182122 n

end A182122

/-! ## A182122.P3359344987986889984

`and(A104624(n), A118830(n+1))`
-/

namespace A182122.P3359344987986889984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104624 n) (A118830 (n + 1))

end

end A182122.P3359344987986889984

namespace A182122

/-- `and(A104624(n), A118830(n+1))` -/
def P3359344987986889984.Spec : Prop :=
  ∀ n, P3359344987986889984.a n = A182122 n

end A182122

/-! ## A182122.P17116205578957800638

`A198786(n+1)/2`
-/

namespace A182122.P17116205578957800638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198786 (n + 1) : ℚ) / 2

end

end A182122.P17116205578957800638

namespace A182122

/-- `A198786(n+1)/2` -/
def P17116205578957800638.Spec : Prop :=
  ∀ n, P17116205578957800638.a n = (A182122 n : ℚ)

end A182122

/-! ## A182122.P7264081502780875425

`xor(A104624(n+1)+A104624(n), A104624(n+1))`
-/

namespace A182122.P7264081502780875425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A104624 (n + 1) + A104624 n) (A104624 (n + 1))

end

end A182122.P7264081502780875425

namespace A182122

/-- `xor(A104624(n+1)+A104624(n), A104624(n+1))` -/
def P7264081502780875425.Spec : Prop :=
  ∀ n, P7264081502780875425.a n = A182122 n

end A182122

/-! ## A182122.P16890355631370207842

`A135863(n+1)/4`
-/

namespace A182122.P16890355631370207842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135863 (n + 1) : ℚ) / 4

end

end A182122.P16890355631370207842

namespace A182122

/-- `A135863(n+1)/4` -/
def P16890355631370207842.Spec : Prop :=
  ∀ n, P16890355631370207842.a n = (A182122 n : ℚ)

end A182122

/-! ## A182122.P7773286210909876006

`and(A104624(n), A163961(n+1))`
-/

namespace A182122.P7773286210909876006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104624 n) (A163961 (n + 1))

end

end A182122.P7773286210909876006

namespace A182122

/-- `and(A104624(n), A163961(n+1))` -/
def P7773286210909876006.Spec : Prop :=
  ∀ n, P7773286210909876006.a n = A182122 n

end A182122

/-! ## A182122.P5588594468126326034

`and(A104624(n), A168008(n+1))`
-/

namespace A182122.P5588594468126326034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104624 n) (A168008 (n + 1))

end

end A182122.P5588594468126326034

namespace A182122

/-- `and(A104624(n), A168008(n+1))` -/
def P5588594468126326034.Spec : Prop :=
  ∀ n, P5588594468126326034.a n = A182122 n

end A182122

/-!
# A182123: Poulet numbers of the form (6k+1)*(24k+1).

The programs for A182123, there is no canonical definition to state claims against.
-/

/-! ## A182123.P3944200266918604377

`∩[A001107(3*n+1), A001567(n+1)]`
-/

namespace A182123.P3944200266918604377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182123.P3944200266918604377

/-! ## A182123.P11868848194963588700

`∩[A001107(3*n+1), A321870(n+1)]`
-/

namespace A182123.P11868848194963588700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182123.P11868848194963588700

/-! ## A182123.P8449070830292804647

`∩[A001107(6*n+7), A215326(n+1)]`
-/

namespace A182123.P8449070830292804647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (6 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182123.P8449070830292804647

/-! ## A182123.P10818085236611517307

`∩[A001567(n+1), A213398(6*(n+1))]`
-/

namespace A182123.P10818085236611517307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 (6 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182123.P10818085236611517307

/-! ## A182123.P2471956881890458187

`∩[A213398(6*(n+1)), A215326(n+1)]`
-/

namespace A182123.P2471956881890458187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 (6 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182123.P2471956881890458187

/-! ## A182123.P4517011631613075803

`∩[A213398(6*(n+1)), A321870(n+1)]`
-/

namespace A182123.P4517011631613075803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 (6 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182123.P4517011631613075803

/-! ## A182123.P8207067065517806094

`∩[A001567(n+1), A074377(6*n+7)]`
-/

namespace A182123.P8207067065517806094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 (6 * n + 7)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182123.P8207067065517806094

/-! ## A182123.P12960432620846074975

`∩[A321870(n+1), A074377(6*n+7)]`
-/

namespace A182123.P12960432620846074975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 (6 * n + 7)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182123.P12960432620846074975

/-!
# A182124: The number of simple labeled graphs on n nodes such that no two connected components have the same number of nodes.

The programs for A182124, there is no canonical definition to state claims against.
-/

/-! ## A182124.P5658182558097605197

`xor(A064894(A064898(n)), A093352(n))`
-/

namespace A182124.P5658182558097605197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064894 (A064898 n).toNat) (A093352 n)

end

end A182124.P5658182558097605197

/-! ## A182124.P13749448715692366212

`A211991(A128157(2*(n+1)))+A093352(n)`
-/

namespace A182124.P13749448715692366212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (A128157 (2 * (n + 1))).toNat + A093352 n

end

end A182124.P13749448715692366212

/-!
# A182126: a(n) = prime(n)*prime(n+1) mod prime(n+2).

The programs for A182126, the canonical program `A182126.P1631624918066832588` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182126 has offset 1).

The definition of A182126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182126.P1631624918066832588

`A111071(n+1)%A004139(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A182126

/-- `A111071(n+1)%A004139(n+1)` -/
def P1631624918066832588.Spec : Prop :=
  ∀ n, P1631624918066832588.a n = A182126 (n + 1)

theorem P1631624918066832588.correct : P1631624918066832588.Spec := by
  intro n
  simp only [A182126, Nat.add_sub_cancel]

end A182126

/-! ## A182126.P3608542500760523225

`A127345(n+1)%A004139(n+1)`
-/

namespace A182126.P3608542500760523225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127345 (n + 1)) (A004139 (n + 1))

end

end A182126.P3608542500760523225

namespace A182126

/-- `A127345(n+1)%A004139(n+1)` -/
def P3608542500760523225.Spec : Prop :=
  ∀ n, P3608542500760523225.a n = A182126 (n + 1)

end A182126

/-! ## A182126.P1877285925727187449

`(A037166(n+1)+A000040(n+1))%A215848(n+1)`
-/

namespace A182126.P1877285925727187449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037166 (n + 1) + A000040 (n + 1)) (A215848 (n + 1))

end

end A182126.P1877285925727187449

namespace A182126

/-- `(A037166(n+1)+A000040(n+1))%A215848(n+1)` -/
def P1877285925727187449.Spec : Prop :=
  ∀ n, P1877285925727187449.a n = A182126 (n + 1)

end A182126

/-! ## A182126.P7794675353802813961

`A166329(n+1)%A046301(n+1)/A006094(n+1)`
-/

namespace A182126.P7794675353802813961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A166329 (n + 1)) (A046301 (n + 1)) : ℚ) / (A006094 (n + 1) : ℚ)

end

end A182126.P7794675353802813961

namespace A182126

/-- `A166329(n+1)%A046301(n+1)/A006094(n+1)` -/
def P7794675353802813961.Spec : Prop :=
  ∀ n, P7794675353802813961.a n = (A182126 (n + 1) : ℚ)

end A182126

/-! ## A182126.P15207302931230945082

`A292926(n+1)%A065091(n+2)`
-/

namespace A182126.P15207302931230945082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292926 (n + 1)) (A065091 (n + 2))

end

end A182126.P15207302931230945082

namespace A182126

/-- `A292926(n+1)%A065091(n+2)` -/
def P15207302931230945082.Spec : Prop :=
  ∀ n, P15207302931230945082.a n = A182126 (n + 1)

end A182126

/-! ## A182126.P11009250129736198518

`(A000040(n+1)*A065091(n+1))%A065091(n+2)`
-/

namespace A182126.P11009250129736198518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A065091 (n + 1)) (A065091 (n + 2))

end

end A182126.P11009250129736198518

namespace A182126

/-- `(A000040(n+1)*A065091(n+1))%A065091(n+2)` -/
def P11009250129736198518.Spec : Prop :=
  ∀ n, P11009250129736198518.a n = A182126 (n + 1)

end A182126

/-! ## A182126.P9720898174542308616

`A006094(n+1)%A000040(n+3)`
-/

namespace A182126.P9720898174542308616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 1)) (A000040 (n + 3))

end

end A182126.P9720898174542308616

namespace A182126

/-- `A006094(n+1)%A000040(n+3)` -/
def P9720898174542308616.Spec : Prop :=
  ∀ n, P9720898174542308616.a n = A182126 (n + 1)

end A182126

/-! ## A182126.P6881055109820959886

`(A000040(n+1)*A000040(n+2))%A000040(n+3)`
-/

namespace A182126.P6881055109820959886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A000040 (n + 2)) (A000040 (n + 3))

end

end A182126.P6881055109820959886

namespace A182126

/-- `(A000040(n+1)*A000040(n+2))%A000040(n+3)` -/
def P6881055109820959886.Spec : Prop :=
  ∀ n, P6881055109820959886.a n = A182126 (n + 1)

end A182126

/-! ## A182126.P9271124042034864822

`record[A116570(n)]%A116570(2*n+3)`
-/

namespace A182126.P9271124042034864822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A116570 (2 * n + 3))

end

end A182126.P9271124042034864822

namespace A182126

/-- `record[A116570(n)]%A116570(2*n+3)` -/
def P9271124042034864822.Spec : Prop :=
  ∀ n, P9271124042034864822.a n = A182126 (n + 1)

end A182126

/-! ## A182126.P12585209433440343528

`A006094(n+1)%p?[A062545(n)]`
-/

namespace A182126.P12585209433440343528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A182126.P12585209433440343528

namespace A182126

/-- `A006094(n+1)%p?[A062545(n)]` -/
def P12585209433440343528.Spec : Prop :=
  ∀ n, P12585209433440343528.a n = A182126 (n + 1)

end A182126

/-!
# A182128: Number of iterations of the map n -> (sum of the decimal digits of n)^3 before reaching the last number of the cycle.

The programs for A182128, there is no canonical definition to state claims against.
-/

/-! ## A182128.P13388870581725380826

`A324025(A179454(n+3)+A136699(n))`
-/

namespace A182128.P13388870581725380826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324025 (A179454 (n + 3) + A136699 n).toNat

end

end A182128.P13388870581725380826

/-!
# A182130: Number of independent sets of nodes in the armchair (3,3) carbon nanotube graph of breadth n (n>=1).

The programs for A182130, the canonical program `A182130.P14935834938050792049` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182130 has offset 0).

The definition of A182130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182130.P14935834938050792049

`ogf((27-29x-89x^2+55x^3+28x^4)/(1-13x-17x^2+109x^3-42x^4-28x^5))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182130

/-- `ogf((27-29x-89x^2+55x^3+28x^4)/(1-13x-17x^2+109x^3-42x^4-28x^5))` -/
def P14935834938050792049.Spec : Prop :=
  ∀ n, P14935834938050792049.a n = A182130 n

theorem P14935834938050792049.correct : P14935834938050792049.Spec := by
  intro n
  simp only [A182130]

end A182130

/-!
# A182131: Largest group of fireflies on a 15 X 15 board for which no pair ever converges.

The programs for A182131, there is no canonical definition to state claims against.
-/

/-! ## A182131.P16044843543270487232

`A331417(n)+A138789(A126024(n))`
-/

namespace A182131.P16044843543270487232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331417 n + A138789 (A126024 n).toNat

end

end A182131.P16044843543270487232

/-!
# A182134: Number of primes p such that prime(n) < p < prime(n)^(1 + 1/n).

The programs for A182134, the canonical program `A182134.P4086781864908587248` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182134 has offset 1).

The definition of A182134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182134.P4086781864908587248

`∑{#}[A249669(n+1)-A000040(n+2), A010051(#+A000040(n+2))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A182134

/-- `∑{#}[A249669(n+1)-A000040(n+2), A010051(#+A000040(n+2))]` -/
def P4086781864908587248.Spec : Prop :=
  ∀ n, P4086781864908587248.a n = A182134 (n + 1)

theorem P4086781864908587248.correct : P4086781864908587248.Spec := by
  intro n
  simp only [A182134, Nat.add_sub_cancel]

end A182134

/-! ## A182134.P15713018092136053472

`A000720(A249669(n+1))-(n+1)`
-/

namespace A182134.P15713018092136053472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A249669 (n + 1)).toNat - (n + 1 : ℤ)

end

end A182134.P15713018092136053472

namespace A182134

/-- `A000720(A249669(n+1))-(n+1)` -/
def P15713018092136053472.Spec : Prop :=
  ∀ n, P15713018092136053472.a n = A182134 (n + 1)

end A182134

/-! ## A182134.P6483873291438422329

`A001478(n+1)+A000720(A249669(n+1))`
-/

namespace A182134.P6483873291438422329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A000720 (A249669 (n + 1)).toNat

end

end A182134.P6483873291438422329

namespace A182134

/-- `A001478(n+1)+A000720(A249669(n+1))` -/
def P6483873291438422329.Spec : Prop :=
  ∀ n, P6483873291438422329.a n = A182134 (n + 1)

end A182134

/-! ## A182134.P12727535287479867408

`A033270(A249669(n+1))-n`
-/

namespace A182134.P12727535287479867408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A249669 (n + 1)).toNat - (n : ℤ)

end

end A182134.P12727535287479867408

namespace A182134

/-- `A033270(A249669(n+1))-n` -/
def P12727535287479867408.Spec : Prop :=
  ∀ n, P12727535287479867408.a n = A182134 (n + 1)

end A182134

/-! ## A182134.P13461948853070139542

`A036234(A249669(n+1))-A020725(n+1)`
-/

namespace A182134.P13461948853070139542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A249669 (n + 1)).toNat - A020725 (n + 1)

end

end A182134.P13461948853070139542

namespace A182134

/-- `A036234(A249669(n+1))-A020725(n+1)` -/
def P13461948853070139542.Spec : Prop :=
  ∀ n, P13461948853070139542.a n = A182134 (n + 1)

end A182134

/-! ## A182134.P9791048920567854246

`A230980(A249669(n+1))-A000027(n+1)`
-/

namespace A182134.P9791048920567854246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A249669 (n + 1)).toNat - A000027 (n + 1)

end

end A182134.P9791048920567854246

namespace A182134

/-- `A230980(A249669(n+1))-A000027(n+1)` -/
def P9791048920567854246.Spec : Prop :=
  ∀ n, P9791048920567854246.a n = A182134 (n + 1)

end A182134

/-! ## A182134.P12577237649789431105

`A033270(A245396(n+1))-n`
-/

namespace A182134.P12577237649789431105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A245396 (n + 1)).toNat - (n : ℤ)

end

end A182134.P12577237649789431105

namespace A182134

/-- `A033270(A245396(n+1))-n` -/
def P12577237649789431105.Spec : Prop :=
  ∀ n, P12577237649789431105.a n = A182134 (n + 1)

end A182134

/-! ## A182134.P10510981936259194930

`A004870(A061395(A245396(n+1))-n)`
-/

namespace A182134.P10510981936259194930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004870 (A061395 (A245396 (n + 1)).toNat - (n : ℤ)).toNat

end

end A182134.P10510981936259194930

namespace A182134

/-- `A004870(A061395(A245396(n+1))-n)` -/
def P10510981936259194930.Spec : Prop :=
  ∀ n, P10510981936259194930.a n = A182134 (n + 1)

end A182134

/-! ## A182134.P16274227103528147437

`A058933(A245396(n+1))-A000027(n+1)`
-/

namespace A182134.P16274227103528147437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A245396 (n + 1)).toNat - A000027 (n + 1)

end

end A182134.P16274227103528147437

namespace A182134

/-- `A058933(A245396(n+1))-A000027(n+1)` -/
def P16274227103528147437.Spec : Prop :=
  ∀ n, P16274227103528147437.a n = A182134 (n + 1)

end A182134

/-!
# A182135: Number of partitions of 2^2^n into powers of 2 less than or equal to 2^n.

The programs for A182135, there is no canonical definition to state claims against.
-/

/-! ## A182135.P5148795808851149705

`A172288(∑[4*n])`
-/

namespace A182135.P5148795808851149705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172288 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182135.P5148795808851149705

/-!
# A182137: Size of the set of b for numbers of the form 2^n*x + b that cannot be the smallest element of a set giving a duration of infinite flight in the Collatz problem.

The programs for A182137, there is no canonical definition to state claims against.
-/

/-! ## A182137.P152611005156742885

`2^(n+1)-A076227(n+1)`
-/

namespace A182137.P152611005156742885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A076227 (n + 1)

end

end A182137.P152611005156742885

/-! ## A182137.P11200178939715739743

`A260591(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A182137.P11200178939715739743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260591 (n + 1) + 2 * a (n - 1)

end

end A182137.P11200178939715739743

/-! ## A182137.P78431072574061618

`∑[A000079(n)-Δ[A076227(n)]]`
-/

namespace A182137.P78431072574061618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076227 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182137.P78431072574061618

/-! ## A182137.P2283552211196841139

`A080595(A151040(n))`
-/

namespace A182137.P2283552211196841139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A151040 n).toNat

end

end A182137.P2283552211196841139

/-!
# A182138: Irregular triangle T, read by rows, in which row n lists the distances between n and the two primes whose sum makes 2n in decreasing order (Goldbach conjecture).

The programs for A182138, there is no canonical definition to state claims against.
-/

/-! ## A182138.P4963113378877926918

`A049087(A350455(n+2))/2`
-/

namespace A182138.P4963113378877926918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049087 (A350455 (n + 2)).toNat : ℚ) / 2

end

end A182138.P4963113378877926918

/-! ## A182138.P17572847836782355386

`A198292(n+2)-A184995(n+2)`
-/

namespace A182138.P17572847836782355386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198292 (n + 2) - A184995 (n + 2)

end

end A182138.P17572847836782355386

/-! ## A182138.P17689548132300379021

`A006530(A350455(n+2))-A198292(n+2)`
-/

namespace A182138.P17689548132300379021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A350455 (n + 2)).toNat - A198292 (n + 2)

end

end A182138.P17689548132300379021

/-! ## A182138.P7091997136252440415

`A123528(A350455(n+2))-A184995(n+2)`
-/

namespace A182138.P7091997136252440415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (A350455 (n + 2)).toNat - A184995 (n + 2)

end

end A182138.P7091997136252440415

/-! ## A182138.P9707413555408787440

`A003415(A350455(n+2))/2-A014673(2*A350455(n+2))`
-/

namespace A182138.P9707413555408787440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A350455 (n + 2)).toNat : ℚ) / 2 - (A014673 (2 * A350455 (n + 2)).toNat : ℚ)

end

end A182138.P9707413555408787440

/-! ## A182138.P5890190173350246969

`A234316(n+2)-A198292(n+2)`
-/

namespace A182138.P5890190173350246969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234316 (n + 2) - A198292 (n + 2)

end

end A182138.P5890190173350246969

/-! ## A182138.P16002465447989660767

`(A234316(n+2)-A184995(n+2))/2`
-/

namespace A182138.P16002465447989660767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234316 (n + 2) - A184995 (n + 2) : ℚ) / 2

end

end A182138.P16002465447989660767

/-! ## A182138.P7786498639269612529

`A001281(A234316(n+2)-A184995(n+2))`
-/

namespace A182138.P7786498639269612529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A234316 (n + 2) - A184995 (n + 2)).toNat

end

end A182138.P7786498639269612529

/-!
# A182139: Inverse Moebius transform of A061142.

The programs for A182139, the canonical program `A182139.P16620863046333250501` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182139 has offset 1).

The definition of A182139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182139.P18026929158909881299

`∑{d}[n+1, A061142(#)]`
-/

namespace A182139.P18026929158909881299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061142 d

end

end A182139.P18026929158909881299

namespace A182139

/-- `∑{d}[n+1, A061142(#)]` -/
def P18026929158909881299.Spec : Prop :=
  ∀ n, P18026929158909881299.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P16620863046333250501

`∑{d}[n+1, 2^A001222(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A182139

/-- `∑{d}[n+1, 2^A001222(#)]` -/
def P16620863046333250501.Spec : Prop :=
  ∀ n, P16620863046333250501.a n = (A182139 (n + 1) : ℚ)

end A182139

/-! ## A182139.P5742789842587436338

`∏{e}[n+1, A126646(#)]`
-/

namespace A182139.P5742789842587436338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A126646 (Nat.factorization (f1 n) p)

end

end A182139.P5742789842587436338

namespace A182139

/-- `∏{e}[n+1, A126646(#)]` -/
def P5742789842587436338.Spec : Prop :=
  ∀ n, P5742789842587436338.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P10070622269048536475

`∑{d}[n+1, sqrt(A165825(#))]`
-/

namespace A182139.P10070622269048536475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A165825 d : ℝ)

end

end A182139.P10070622269048536475

namespace A182139

/-- `∑{d}[n+1, sqrt(A165825(#))]` -/
def P10070622269048536475.Spec : Prop :=
  ∀ n, P10070622269048536475.a n = (A182139 (n + 1) : ℝ)

end A182139

/-! ## A182139.P5286001878929629575

`∏{e}[n+1, A000225(#+1)]`
-/

namespace A182139.P5286001878929629575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000225 (Nat.factorization (f1 n) p + 1)

end

end A182139.P5286001878929629575

namespace A182139

/-- `∏{e}[n+1, A000225(#+1)]` -/
def P5286001878929629575.Spec : Prop :=
  ∀ n, P5286001878929629575.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P5805840173883121710

`∏{e}[n+1, A000203(2^#)]`
-/

namespace A182139.P5805840173883121710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000203 (2 ^ Nat.factorization (f1 n) p)

end

end A182139.P5805840173883121710

namespace A182139

/-- `∏{e}[n+1, A000203(2^#)]` -/
def P5805840173883121710.Spec : Prop :=
  ∀ n, P5805840173883121710.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P18013023917083913742

`∑{d}[A046523(n+1), abs(A165872(#))]`
-/

namespace A182139.P18013023917083913742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, |A165872 d|

end

end A182139.P18013023917083913742

namespace A182139

/-- `∑{d}[A046523(n+1), abs(A165872(#))]` -/
def P18013023917083913742.Spec : Prop :=
  ∀ n, P18013023917083913742.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P17057811505541406322

`∑{d}[n+1, A000005(#)*A162510((n+1)/#)]`
-/

namespace A182139.P17057811505541406322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A162510 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A182139.P17057811505541406322

namespace A182139

/-- `∑{d}[n+1, A000005(#)*A162510((n+1)/#)]` -/
def P17057811505541406322.Spec : Prop :=
  ∀ n, P17057811505541406322.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P10785766031419213964

`∑{d}[n+1, A034444(#)*A351347((n+1)/#)]`
-/

namespace A182139.P10785766031419213964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A351347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A182139.P10785766031419213964

namespace A182139

/-- `∑{d}[n+1, A034444(#)*A351347((n+1)/#)]` -/
def P10785766031419213964.Spec : Prop :=
  ∀ n, P10785766031419213964.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P9071181858236520347

`∑{d}[n+1, A076479(#)*A328854((n+1)/#)]`
-/

namespace A182139.P9071181858236520347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076479 d * A328854 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A182139.P9071181858236520347

namespace A182139

/-- `∑{d}[n+1, A076479(#)*A328854((n+1)/#)]` -/
def P9071181858236520347.Spec : Prop :=
  ∀ n, P9071181858236520347.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P6504277567212824841

`∏{e}[(n+1)², A052551(#)]`
-/

namespace A182139.P6504277567212824841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A052551 (Nat.factorization (f1 n) p)

end

end A182139.P6504277567212824841

namespace A182139

/-- `∏{e}[(n+1)², A052551(#)]` -/
def P6504277567212824841.Spec : Prop :=
  ∀ n, P6504277567212824841.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P8067901010006831273

`∏{e}[(n+1)², A052955(#)]`
-/

namespace A182139.P8067901010006831273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A052955 (Nat.factorization (f1 n) p)

end

end A182139.P8067901010006831273

namespace A182139

/-- `∏{e}[(n+1)², A052955(#)]` -/
def P8067901010006831273.Spec : Prop :=
  ∀ n, P8067901010006831273.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P2674167645962117127

`∏{e}[(n+1)², A056007(#)]`
-/

namespace A182139.P2674167645962117127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056007 (Nat.factorization (f1 n) p)

end

end A182139.P2674167645962117127

namespace A182139

/-- `∏{e}[(n+1)², A056007(#)]` -/
def P2674167645962117127.Spec : Prop :=
  ∀ n, P2674167645962117127.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P1617213227267239511

`∏{e}[(n+1)², A066880(#)]`
-/

namespace A182139.P1617213227267239511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A066880 (Nat.factorization (f1 n) p)

end

end A182139.P1617213227267239511

namespace A182139

/-- `∏{e}[(n+1)², A066880(#)]` -/
def P1617213227267239511.Spec : Prop :=
  ∀ n, P1617213227267239511.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P231097305057114716

`∏{e}[(n+1)², A075427(#)]`
-/

namespace A182139.P231097305057114716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A075427 (Nat.factorization (f1 n) p)

end

end A182139.P231097305057114716

namespace A182139

/-- `∏{e}[(n+1)², A075427(#)]` -/
def P231097305057114716.Spec : Prop :=
  ∀ n, P231097305057114716.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P5855502737212722328

`∏{e}[(n+1)², A077629(#)]`
-/

namespace A182139.P5855502737212722328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A077629 (Nat.factorization (f1 n) p)

end

end A182139.P5855502737212722328

namespace A182139

/-- `∏{e}[(n+1)², A077629(#)]` -/
def P5855502737212722328.Spec : Prop :=
  ∀ n, P5855502737212722328.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P5895772241339589340

`∏{e}[(n+1)², A077896(#)]`
-/

namespace A182139.P5895772241339589340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A077896 (Nat.factorization (f1 n) p)

end

end A182139.P5895772241339589340

namespace A182139

/-- `∏{e}[(n+1)², A077896(#)]` -/
def P5895772241339589340.Spec : Prop :=
  ∀ n, P5895772241339589340.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P17630440045163993271

`∏{e}[(n+1)², A078159(#)]`
-/

namespace A182139.P17630440045163993271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A078159 (Nat.factorization (f1 n) p)

end

end A182139.P17630440045163993271

namespace A182139

/-- `∏{e}[(n+1)², A078159(#)]` -/
def P17630440045163993271.Spec : Prop :=
  ∀ n, P17630440045163993271.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P14785109956743265249

`∏{e}[(n+1)², A086341(#)]`
-/

namespace A182139.P14785109956743265249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A086341 (Nat.factorization (f1 n) p)

end

end A182139.P14785109956743265249

namespace A182139

/-- `∏{e}[(n+1)², A086341(#)]` -/
def P14785109956743265249.Spec : Prop :=
  ∀ n, P14785109956743265249.a n = A182139 (n + 1)

end A182139

/-! ## A182139.P9492299433281238377

`A324910(A064549(n+1))`
-/

namespace A182139.P9492299433281238377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324910 (A064549 (n + 1)).toNat

end

end A182139.P9492299433281238377

namespace A182139

/-- `A324910(A064549(n+1))` -/
def P9492299433281238377.Spec : Prop :=
  ∀ n, P9492299433281238377.a n = A182139 (n + 1)

end A182139

/-!
# A182140: Numbers n such that A060968(n) = A201629(n).

The programs for A182140, there is no canonical definition to state claims against.
-/

/-! ## A182140.P8697964416640950020

`∪[A000040(n+1), A235864(n+1)]`
-/

namespace A182140.P8697964416640950020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182140.P8697964416640950020

/-! ## A182140.P8195053065236988585

`∪[A000040(n+1), A152246(A152261(n))]`
-/

namespace A182140.P8195053065236988585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152246 (A152261 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182140.P8195053065236988585

/-! ## A182140.P2751448936058797803

`∪[A000040(n+1), A152246(A152264(n))]`
-/

namespace A182140.P2751448936058797803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152246 (A152264 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182140.P2751448936058797803

/-! ## A182140.P9164968773498229204

`∪[A000040(n+1), A152246(A152266(n))]`
-/

namespace A182140.P9164968773498229204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152246 (A152266 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182140.P9164968773498229204

/-! ## A182140.P4722173934364745104

`∪[A000040(n+1), A152246(A152267(n))]`
-/

namespace A182140.P4722173934364745104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152246 (A152267 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182140.P4722173934364745104

/-!
# A182142: Abundance d = sigma(N) - 2*N = A033880(N) of numbers N = A153501(n), i.e., N has d > 0 as divisor.

The programs for A182142, there is no canonical definition to state claims against.
-/

/-! ## A182142.P9961076950769261103

`gcd(∑{d}[A153501(n+1), #], A153501(n+1))`
-/

namespace A182142.P9961076950769261103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A153501 (n + 1))

end

end A182142.P9961076950769261103

/-! ## A182142.P5560704545930081655

`gcd(A000203(A153501(n+1)), A153501(n+1))`
-/

namespace A182142.P5560704545930081655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A153501 (n + 1)).toNat) (A153501 (n + 1))

end

end A182142.P5560704545930081655

/-! ## A182142.P2533516131007074830

`A325636(A153501(n+1))`
-/

namespace A182142.P2533516131007074830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325636 (A153501 (n + 1)).toNat

end

end A182142.P2533516131007074830

/-! ## A182142.P15454153976881596355

`-A033879(lcm(2, A153501(n+1)))`
-/

namespace A182142.P15454153976881596355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033879 (Int.lcm 2 (A153501 (n + 1)))

end

end A182142.P15454153976881596355

/-! ## A182142.P15558424724959580923

`A189628(3*n+4)-A033879(A153501(n+1))`
-/

namespace A182142.P15558424724959580923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (3 * n + 4) - A033879 (A153501 (n + 1)).toNat

end

end A182142.P15558424724959580923

/-!
# A182143: Number of independent vertex sets in the Moebius ladder graph with 2n nodes (n >= 0).

The programs for A182143, the canonical program `A182143.P1600622321874521385` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182143 has offset 0).

The definition of A182143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182143.P1882613875870597043

`ogf((1+2x-x^2)/(1-x-3x^2-x^3))`
-/

namespace A182143.P1882613875870597043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -1, -3, -1] n

end

end A182143.P1882613875870597043

namespace A182143

/-- `ogf((1+2x-x^2)/(1-x-3x^2-x^3))` -/
def P1882613875870597043.Spec : Prop :=
  ∀ n, P1882613875870597043.a n = A182143 n

end A182143

/-! ## A182143.P1600622321874521385

`a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182143

/-- `a(n-1)+3*a(n-2)+a(n-3)` -/
def P1600622321874521385.Spec : Prop :=
  ∀ n, (P1600622321874521385.a n : ℤ) = A182143 n

theorem P1600622321874521385.correct : P1600622321874521385.Spec := by
  intro n
  simp only [A182143]

end A182143

/-! ## A182143.P2568756646075790472

`A002203(n)-(-1)^n`
-/

namespace A182143.P2568756646075790472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - (-1) ^ n

end

end A182143.P2568756646075790472

namespace A182143

/-- `A002203(n)-(-1)^n` -/
def P2568756646075790472.Spec : Prop :=
  ∀ n, P2568756646075790472.a n = A182143 n

end A182143

/-! ## A182143.P11656985408989459202

`xor(2, a(n-2)+2*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A182143.P11656985408989459202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 2 (a (n - 2) + 2 * a (n - 1))

end

end A182143.P11656985408989459202

namespace A182143

/-- `xor(2, a(n-2)+2*a(n-1))` -/
def P11656985408989459202.Spec : Prop :=
  ∀ n, (P11656985408989459202.a n : ℤ) = A182143 n

end A182143

/-! ## A182143.P1400611075114402876

`xor(2, a(n-1)+a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A182143.P1400611075114402876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 2 (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A182143.P1400611075114402876

namespace A182143

/-- `xor(2, a(n-1)+a(n-1)+a(n-2))` -/
def P1400611075114402876.Spec : Prop :=
  ∀ n, (P1400611075114402876.a n : ℤ) = A182143 n

end A182143

/-! ## A182143.P4504987897511838403

`(1+sqrt(2))^n+(1-sqrt(2))^n-(-1)^n`
-/

namespace A182143.P4504987897511838403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + Real.sqrt (2 : ℝ)) ^ n + (1 - Real.sqrt (2 : ℝ)) ^ n - ((-1) ^ n : ℝ)

end

end A182143.P4504987897511838403

namespace A182143

/-- `(1+sqrt(2))^n+(1-sqrt(2))^n-(-1)^n` -/
def P4504987897511838403.Spec : Prop :=
  ∀ n, P4504987897511838403.a n = (A182143 n : ℝ)

theorem P4504987897511838403.correct : P4504987897511838403.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A182143, Nat.add_sub_cancel, A182143.P4504987897511838403.a, A182143.P1600622321874521385.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A182143, Nat.add_sub_cancel, A182143.P4504987897511838403.a, A182143.P1600622321874521385.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A182143

/-! ## A182143.P4093640097252794810

`or(1, A080039(n))`
-/

namespace A182143.P4093640097252794810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A080039 n)

end

end A182143.P4093640097252794810

namespace A182143

/-- `or(1, A080039(n))` -/
def P4093640097252794810.Spec : Prop :=
  ∀ n, P4093640097252794810.a n = A182143 n

end A182143

/-! ## A182143.P16524426948750183135

`xor(2, A051927(n))`
-/

namespace A182143.P16524426948750183135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A051927 n)

end

end A182143.P16524426948750183135

namespace A182143

/-- `xor(2, A051927(n))` -/
def P16524426948750183135.Spec : Prop :=
  ∀ n, P16524426948750183135.a n = A182143 n

end A182143

/-! ## A182143.P13925721464587933060

`abs(1-2*A123335(n))`
-/

namespace A182143.P13925721464587933060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A123335 n|

end

end A182143.P13925721464587933060

namespace A182143

/-- `abs(1-2*A123335(n))` -/
def P13925721464587933060.Spec : Prop :=
  ∀ n, P13925721464587933060.a n = A182143 n

end A182143

/-! ## A182143.P10457253536853588372

`xor(A000035(n), A080039(n))`
-/

namespace A182143.P10457253536853588372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A080039 n)

end

end A182143.P10457253536853588372

namespace A182143

/-- `xor(A000035(n), A080039(n))` -/
def P10457253536853588372.Spec : Prop :=
  ∀ n, P10457253536853588372.a n = A182143 n

end A182143

/-! ## A182143.P589547354180913888

`xor(A010673(n), A100227(n))`
-/

namespace A182143.P589547354180913888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A100227 n)

end

end A182143.P589547354180913888

namespace A182143

/-- `xor(A010673(n), A100227(n))` -/
def P589547354180913888.Spec : Prop :=
  ∀ n, P589547354180913888.a n = A182143 n

end A182143

/-! ## A182143.P4516654379355847885

`xor(A002203(n), A176040(n))`
-/

namespace A182143.P4516654379355847885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002203 n) (A176040 n)

end

end A182143.P4516654379355847885

namespace A182143

/-- `xor(A002203(n), A176040(n))` -/
def P4516654379355847885.Spec : Prop :=
  ∀ n, P4516654379355847885.a n = A182143 n

end A182143

/-! ## A182143.P11718457247144612456

`xor(A002203(n), A010684(n+1))`
-/

namespace A182143.P11718457247144612456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002203 n) (A010684 (n + 1))

end

end A182143.P11718457247144612456

namespace A182143

/-- `xor(A002203(n), A010684(n+1))` -/
def P11718457247144612456.Spec : Prop :=
  ∀ n, P11718457247144612456.a n = A182143 n

end A182143

/-! ## A182143.P6865695828531169086

`Δ[Δ[A001333(n)]-A000034(n)]`
-/

namespace A182143.P6865695828531169086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182143.P6865695828531169086

namespace A182143

/-- `Δ[Δ[A001333(n)]-A000034(n)]` -/
def P6865695828531169086.Spec : Prop :=
  ∀ n, P6865695828531169086.a n = A182143 n

end A182143

/-! ## A182143.P17713710469434092468

`Δ[ceil(sqrt(A001541(n)))]`
-/

namespace A182143.P17713710469434092468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001541 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182143.P17713710469434092468

namespace A182143

/-- `Δ[ceil(sqrt(A001541(n)))]` -/
def P17713710469434092468.Spec : Prop :=
  ∀ n, P17713710469434092468.a n = A182143 n

end A182143

/-! ## A182143.P3415382376339450628

`abs(floor(A123335(2*n+1)/A123335(n+1)))`
-/

namespace A182143.P3415382376339450628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A123335 (2 * n + 1) : ℚ) / (A123335 (n + 1) : ℚ)⌋|

end

end A182143.P3415382376339450628

namespace A182143

/-- `abs(floor(A123335(2*n+1)/A123335(n+1)))` -/
def P3415382376339450628.Spec : Prop :=
  ∀ n, P3415382376339450628.a n = A182143 n

end A182143

/-! ## A182143.P2774077835572678222

`(A080039(n)+A080039(n)²)/A002203(n)`
-/

namespace A182143.P2774077835572678222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080039 n + A080039 n ^ 2 : ℚ) / (A002203 n : ℚ)

end

end A182143.P2774077835572678222

namespace A182143

/-- `(A080039(n)+A080039(n)²)/A002203(n)` -/
def P2774077835572678222.Spec : Prop :=
  ∀ n, P2774077835572678222.a n = (A182143 n : ℚ)

end A182143

/-!
# A182144: G.f. satisfies: A(x) = A(x^2)^2 + x*A(x)^2.

The programs for A182144, there is no canonical definition to state claims against.
-/

/-! ## A182144.P2846957199721314061

`A023190(A056204(n))`
-/

namespace A182144.P2846957199721314061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A056204 n).toNat

end

end A182144.P2846957199721314061

/-! ## A182144.P15681026905008313149

`A212011(floor((A000041(n)+1)²/log(10)))`
-/

namespace A182144.P15681026905008313149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212011 ⌊((A000041 n + 1) ^ 2 : ℝ) / Real.log (10 : ℝ)⌋.toNat

end

end A182144.P15681026905008313149

/-!
# A182145: XOR(d1,d2), where d1 and d2 are the difference between consecutive primes given in binary.

The programs for A182145, the canonical program `A182145.P14347110186623288046` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182145 has offset 1).

The definition of A182145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182145.P14347110186623288046

`xor(A001223(n+1), A001223(n+2))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A182145

/-- `xor(A001223(n+1), A001223(n+2))` -/
def P14347110186623288046.Spec : Prop :=
  ∀ n, P14347110186623288046.a n = A182145 (n + 1)

theorem P14347110186623288046.correct : P14347110186623288046.Spec := by
  intro n
  simp only [A182145, Nat.add_sub_cancel]

end A182145

/-! ## A182145.P18153321329015510761

`xor(A075526(n+1), A075526(n+2))`
-/

namespace A182145.P18153321329015510761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A075526 (n + 1)) (A075526 (n + 2))

end

end A182145.P18153321329015510761

namespace A182145

/-- `xor(A075526(n+1), A075526(n+2))` -/
def P18153321329015510761.Spec : Prop :=
  ∀ n, P18153321329015510761.a n = A182145 (n + 1)

end A182145

/-! ## A182145.P13137169661004678419

`xor(A054541(n+2), A054541(n+3))`
-/

namespace A182145.P13137169661004678419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054541 (n + 2)) (A054541 (n + 3))

end

end A182145.P13137169661004678419

namespace A182145

/-- `xor(A054541(n+2), A054541(n+3))` -/
def P13137169661004678419.Spec : Prop :=
  ∀ n, P13137169661004678419.a n = A182145 (n + 1)

end A182145

/-! ## A182145.P3831786798203730929

`xor(log2(A218075(n+1)), A125266(n+3))`
-/

namespace A182145.P3831786798203730929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.logb 2 (A218075 (n + 1) : ℝ))) (A125266 (n + 3))

end

end A182145.P3831786798203730929

namespace A182145

/-- `xor(log2(A218075(n+1)), A125266(n+3))` -/
def P3831786798203730929.Spec : Prop :=
  ∀ n, P3831786798203730929.a n = A182145 (n + 1)

end A182145

/-! ## A182145.P5947183372080348045

`xor(Δ[A065091(n+1)], A134735(2*(n+1)))`
-/

namespace A182145.P5947183372080348045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A134735 (2 * (n + 1)))

end

end A182145.P5947183372080348045

namespace A182145

/-- `xor(Δ[A065091(n+1)], A134735(2*(n+1)))` -/
def P5947183372080348045.Spec : Prop :=
  ∀ n, P5947183372080348045.a n = A182145 (n + 1)

end A182145

/-! ## A182145.P4319039079498436381

`xor(A134735(2*(n+1)), A134735(2*(n+2)))`
-/

namespace A182145.P4319039079498436381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A134735 (2 * (n + 1))) (A134735 (2 * (n + 2)))

end

end A182145.P4319039079498436381

namespace A182145

/-- `xor(A134735(2*(n+1)), A134735(2*(n+2)))` -/
def P4319039079498436381.Spec : Prop :=
  ∀ n, P4319039079498436381.a n = A182145 (n + 1)

end A182145

/-! ## A182145.P5957061073607188022

`xor(A219606(2*n+1), A219606(2*n+3))`
-/

namespace A182145.P5957061073607188022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A219606 (2 * n + 1)) (A219606 (2 * n + 3))

end

end A182145.P5957061073607188022

namespace A182145

/-- `xor(A219606(2*n+1), A219606(2*n+3))` -/
def P5957061073607188022.Spec : Prop :=
  ∀ n, P5957061073607188022.a n = A182145 (n + 1)

end A182145

/-! ## A182145.P14632615897914440488

`xor(A230850(2*n+3), A230850(2*n+5))`
-/

namespace A182145.P14632615897914440488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A230850 (2 * n + 3)) (A230850 (2 * n + 5))

end

end A182145.P14632615897914440488

namespace A182145

/-- `xor(A230850(2*n+3), A230850(2*n+5))` -/
def P14632615897914440488.Spec : Prop :=
  ∀ n, P14632615897914440488.a n = A182145 (n + 1)

end A182145

/-!
# A182146: The number of simple labeled graphs on n nodes with no components of size 1 or 2.

The programs for A182146, there is no canonical definition to state claims against.
-/

/-! ## A182146.P8402528404115526504

`∏[A000079(n)]-A093377(n+1)`
-/

namespace A182146.P8402528404115526504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A093377 (n + 1)

end

end A182146.P8402528404115526504

/-! ## A182146.P12273815949240241742

`A006125(n+1)-A093377(n+1)`
-/

namespace A182146.P12273815949240241742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) - A093377 (n + 1)

end

end A182146.P12273815949240241742

/-! ## A182146.P9457802945789576786

`∏[A011782(n+1)]-A093377(n+1)`
-/

namespace A182146.P9457802945789576786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A093377 (n + 1)

end

end A182146.P9457802945789576786

/-! ## A182146.P7799646218349811661

`A000079(A000217(n))-A093377(n+1)`
-/

namespace A182146.P7799646218349811661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000217 n).toNat - A093377 (n + 1)

end

end A182146.P7799646218349811661

/-! ## A182146.P3781278133048176224

`A327367(n+1)+A093376(n+1)`
-/

namespace A182146.P3781278133048176224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327367 (n + 1) + A093376 (n + 1)

end

end A182146.P3781278133048176224

/-!
# A182147: Numbers n equal to the sum of its proper divisors greater than square root of n.

The programs for A182147, there is no canonical definition to state claims against.
-/

/-! ## A182147.P8914430005791277515

`∩[A125640(n+1), A318168(n+1)]`
-/

namespace A182147.P8914430005791277515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182147.P8914430005791277515

/-! ## A182147.P9020537626310011714

`∩[A125640(n+1), A225110(n+1)]`
-/

namespace A182147.P9020537626310011714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182147.P9020537626310011714

/-! ## A182147.P6428495632358034253

`∩[A131651(n+1), A318168(n+1)]`
-/

namespace A182147.P6428495632358034253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182147.P6428495632358034253

/-! ## A182147.P10417234097222459824

`eq[2, A372834(n+1)]+1`
-/

namespace A182147.P10417234097222459824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372834 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182147.P10417234097222459824

/-! ## A182147.P498074564161161512

`eq[2*n, A070038(A028310(n))]`
-/

namespace A182147.P498074564161161512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182147.P498074564161161512

/-! ## A182147.P1965099679217639462

`eq[A004277(n), A238535(A028310(n))]`
-/

namespace A182147.P1965099679217639462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238535 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182147.P1965099679217639462

/-! ## A182147.P12464641718685322023

`eq[1, A005843(n)/A070038(A028310(n))]`
-/

namespace A182147.P12464641718685322023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A070038 (A028310 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A182147.P12464641718685322023

/-! ## A182147.P10108731341556176920

`eq[A004277(n), A238535(A004277(n)-n)]`
-/

namespace A182147.P10108731341556176920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238535 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182147.P10108731341556176920

/-! ## A182147.P3912444704715944686

`eq[A028310(2*n), A238535(A028310(n))]`
-/

namespace A182147.P3912444704715944686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238535 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182147.P3912444704715944686

/-!
# A182148: a(n) = Fibonacci(n-1)^n.

The programs for A182148, there is no canonical definition to state claims against.
-/

/-! ## A182148.P11348713186553234039

`Δ[round(ϕ^n/sqrt(5))]^n`
-/

namespace A182148.P11348713186553234039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A182148.P11348713186553234039

/-! ## A182148.P16664262672614217302

`abs((∑[a(n-1)-(1-a(n-2))]-n)^n)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A182148.P16664262672614217302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) ^ n|

end

end A182148.P16664262672614217302

/-! ## A182148.P2866291701131960173

`floor((∑[a(n-1)-(1-a(n-2))]-n)^n)` with `a(0)=1, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A182148.P2866291701131960173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) ^ n

end

end A182148.P2866291701131960173

/-! ## A182148.P13135113802062263250

`ceil((∑[a(n-1)-(1-a(n-2))]-n)^n)` with `a(0)=1, a(1)=0, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A182148.P13135113802062263250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) ^ n

end

end A182148.P13135113802062263250

/-!
# A182149: a(n) = Fibonacci(n^3).

The programs for A182149, the canonical program `A182149.P4857482356050143344` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182149 has offset 0).

The definition of A182149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n^3)` (program `A182149.P4857482356050143344`, by `A182149.P4857482356050143344.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182149.P4857482356050143344

`A000045(n^3)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A182149

/-- `A000045(n^3)` -/
def P4857482356050143344.Spec : Prop :=
  ∀ n, P4857482356050143344.a n = A182149 n

theorem P4857482356050143344.correct : P4857482356050143344.Spec := by
  intro n
  simp only [A182149]

end A182149

/-! ## A182149.P1850499346110037283

`abs(A236191(n^3))`
-/

namespace A182149.P1850499346110037283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (n ^ 3)|

end

end A182149.P1850499346110037283

namespace A182149

/-- `abs(A236191(n^3))` -/
def P1850499346110037283.Spec : Prop :=
  ∀ n, P1850499346110037283.a n = A182149 n

end A182149

/-! ## A182149.P7959673057292371997

`A212804(n^3+1)`
-/

namespace A182149.P7959673057292371997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n ^ 3 + 1)

end

end A182149.P7959673057292371997

namespace A182149

/-- `A212804(n^3+1)` -/
def P7959673057292371997.Spec : Prop :=
  ∀ n, P7959673057292371997.a n = A182149 n

end A182149

/-!
# A182150: Semiprimes that are also semiprime when their digits are sorted into nondecreasing order.

The programs for A182150, there is no canonical definition to state claims against.
-/

/-! ## A182150.P16712284462639404249

`eq[A004526(A211110(n)), A043284(n+1)]`
-/

namespace A182150.P16712284462639404249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A211110 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182150.P16712284462639404249

/-! ## A182150.P4591254291719685651

`eq[A004526(A211110(n)), A083230(n+1)]`
-/

namespace A182150.P4591254291719685651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A211110 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182150.P4591254291719685651

/-! ## A182150.P14444153399071174486

`eq[A004526(A211110(n)), A268357(n+1)]`
-/

namespace A182150.P14444153399071174486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A211110 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182150.P14444153399071174486

/-! ## A182150.P17950570456232306637

`A001358(lt[A263405(n), A216642(n+1)])`
-/

namespace A182150.P17950570456232306637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182150.P17950570456232306637

/-! ## A182150.P11676458878255197631

`∩[A001358(n+1), A171524(A171524(n+1))]`
-/

namespace A182150.P11676458878255197631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171524 (A171524 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182150.P11676458878255197631

/-!
# A182152: G.f.: [Sum_{n>=0} x^(n*(n+1)/2) * (1+x)^n ]^3.

The programs for A182152, there is no canonical definition to state claims against.
-/

/-! ## A182152.P3713891004439656833

`∑[∑[A174726(A059613(n+1))]]`
-/

namespace A182152.P3713891004439656833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (A059613 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182152.P3713891004439656833

/-! ## A182152.P3154427262004509929

`∑[lt[A245172(n+4), A151574(3*n)]]`
-/

namespace A182152.P3154427262004509929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245172 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182152.P3154427262004509929

/-! ## A182152.P4415750705263060851

`A191286(2*n+1)+A016024(A214732(n))`
-/

namespace A182152.P4415750705263060851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191286 (2 * n + 1) + A016024 (A214732 n).toNat

end

end A182152.P4415750705263060851

/-! ## A182152.P9879420609634665604

`A191286(2*n+1)+A120730(A059023(3*n+4))`
-/

namespace A182152.P9879420609634665604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191286 (2 * n + 1) + A120730 (A059023 (3 * n + 4)).toNat

end

end A182152.P9879420609634665604

/-! ## A182152.P421241038892940208

`A191286(2*n+1)-A063647(A059023(3*n+4)+1)+1`
-/

namespace A182152.P421241038892940208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191286 (2 * n + 1) - A063647 (A059023 (3 * n + 4) + 1).toNat + 1

end

end A182152.P421241038892940208

/-!
# A182153: G.f.: [Sum_{n>=0} x^(n^2) * (1+x+x^2)^n ]^2.

The programs for A182153, the canonical program `A182153.P11382980372099176779` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182153 has offset 0).

The definition of A182153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182153.P11382980372099176779

`∑{#}[n, A027907(#)*A027907(n-#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A182153

/-- `∑{#}[n, A027907(#)*A027907(n-#)]` -/
def P11382980372099176779.Spec : Prop :=
  ∀ n, P11382980372099176779.a n = A182153 n

theorem P11382980372099176779.correct : P11382980372099176779.Spec := by
  intro n
  simp only [A182153]

end A182153

/-!
# A182155: Integers of the form: 0/3 + 1/3 + 2/3 + 3/3 + 5/3 + 7/3 + 11/3 + 13/3 + 17/3 + ....

The programs for A182155, there is no canonical definition to state claims against.
-/

/-! ## A182155.P8856852940456117812

`record[A058281(A175965(n+1))-A175965(n+1)]`
-/

namespace A182155.P8856852940456117812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A175965 (n + 1)).toNat - A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182155.P8856852940456117812

/-! ## A182155.P11994514992409992643

`record[-A128615(A007504(n))]`
-/

namespace A182155.P11994514992409992643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A128615 (A007504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182155.P11994514992409992643

/-! ## A182155.P5595910147267869293

`record[A175676(A007504(n)+1)]`
-/

namespace A182155.P5595910147267869293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A007504 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182155.P5595910147267869293

/-! ## A182155.P1933807858210174773

`record[A175676(A014284(n+1))]`
-/

namespace A182155.P1933807858210174773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A014284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182155.P1933807858210174773

/-! ## A182155.P8280810946094719318

`record[A175676(∑[A008578(n+1)])]`
-/

namespace A182155.P8280810946094719318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182155.P8280810946094719318

/-!
# A182156: Numbers k such that 2^k-61 is prime.

The programs for A182156, there is no canonical definition to state claims against.
-/

/-! ## A182156.P13386147054217918166

`lt[A006799(n+1), A006792(n+3)]+4`
-/

namespace A182156.P13386147054217918166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006792 (n + 3 + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 4

end

end A182156.P13386147054217918166

/-! ## A182156.P13615920682996612647

`lt[A006800(n+1), A006792(n+3)]+4`
-/

namespace A182156.P13615920682996612647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006792 (n + 3 + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 4

end

end A182156.P13615920682996612647

/-! ## A182156.P8424511736251279562

`lt[A185959(n+1), A006792(n+3)]+4`
-/

namespace A182156.P8424511736251279562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006792 (n + 3 + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 4

end

end A182156.P8424511736251279562

/-! ## A182156.P2620125910774869433

`lt[A327754(n+1), A006792(n+3)]+4`
-/

namespace A182156.P2620125910774869433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006792 (n + 3 + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 4

end

end A182156.P2620125910774869433

/-! ## A182156.P3966321321627404007

`A206074(n+3)+A204263(A105082(n))`
-/

namespace A182156.P3966321321627404007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 3) + A204263 (A105082 n).toNat

end

end A182156.P3966321321627404007

/-!
# A182157: The number of simple unlabelled graphs with n nodes having no components of size 1 or 2.

The programs for A182157, there is no canonical definition to state claims against.
-/

/-! ## A182157.P10322068616252275837

`record[Δ[A002494(A052938(n))]]`
-/

namespace A182157.P10322068616252275837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182157.P10322068616252275837

/-! ## A182157.P346879865411682427

`Δ[A000088(n+2)-A000088(n)]`
-/

namespace A182157.P346879865411682427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 2) - A000088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182157.P346879865411682427

/-! ## A182157.P12625567424179585865

`A002494(n+3)-A002494(n+1)`
-/

namespace A182157.P12625567424179585865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (n + 3) - A002494 (n + 1)

end

end A182157.P12625567424179585865

/-! ## A182157.P3275014066191240451

`Δ[Δ[A000088(n+1)+A000088(n)]]`
-/

namespace A182157.P3275014066191240451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) + A000088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182157.P3275014066191240451

/-! ## A182157.P3116084549075514978

`Δ[A002494(n+1)+record[A002494(n)]]`
-/

namespace A182157.P3116084549075514978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182157.P3116084549075514978

/-!
# A182158: Number of solutions to x^2 + x + y + y^2 == 1 mod n.

The programs for A182158, the canonical program `A182158.P9573976614242427067` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182158 has offset 1).

The definition of A182158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182158.P9573976614242427067

`∑{d}[n+1, A120630(#)*A186099((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A182158

/-- `∑{d}[n+1, A120630(#)*A186099((n+1)/#)]` -/
def P9573976614242427067.Spec : Prop :=
  ∀ n, P9573976614242427067.a n = A182158 (n + 1)

theorem P9573976614242427067.correct : P9573976614242427067.Spec := by
  intro n
  simp only [A182158, Nat.add_sub_cancel]

end A182158

/-! ## A182158.P11305208973821948591

`lcm(A056594(n), A340583(A330745(n+1)))`
-/

namespace A182158.P11305208973821948591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A340583 (A330745 (n + 1)).toNat)

end

end A182158.P11305208973821948591

namespace A182158

/-- `lcm(A056594(n), A340583(A330745(n+1)))` -/
def P11305208973821948591.Spec : Prop :=
  ∀ n, (P11305208973821948591.a n : ℤ) = A182158 (n + 1)

end A182158

/-! ## A182158.P14261170970696845179

`and(A151895(A126120(n)), A293754(n+1))`
-/

namespace A182158.P14261170970696845179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151895 (A126120 n).toNat) (A293754 (n + 1))

end

end A182158.P14261170970696845179

namespace A182158

/-- `and(A151895(A126120(n)), A293754(n+1))` -/
def P14261170970696845179.Spec : Prop :=
  ∀ n, P14261170970696845179.a n = A182158 (n + 1)

end A182158

/-! ## A182158.P6152176127707844833

`A056594(n²)*A340583(A330745(n+1))`
-/

namespace A182158.P6152176127707844833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A340583 (A330745 (n + 1)).toNat

end

end A182158.P6152176127707844833

namespace A182158

/-- `A056594(n²)*A340583(A330745(n+1))` -/
def P6152176127707844833.Spec : Prop :=
  ∀ n, P6152176127707844833.a n = A182158 (n + 1)

end A182158

/-! ## A182158.P14128833389349332575

`A060968(n+1)%A040857(A158484(n+1))`
-/

namespace A182158.P14128833389349332575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060968 (n + 1)) (A040857 (A158484 (n + 1)).toNat)

end

end A182158.P14128833389349332575

namespace A182158

/-- `A060968(n+1)%A040857(A158484(n+1))` -/
def P14128833389349332575.Spec : Prop :=
  ∀ n, P14128833389349332575.a n = A182158 (n + 1)

end A182158

/-!
# A182159: a(n) = A000088(n) - A004251(n).

The programs for A182159, there is no canonical definition to state claims against.
-/

/-! ## A182159.P14788861297366003742

`A000088(n)-A004251(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182159.P14788861297366003742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A004251 n

end

end A182159.P14788861297366003742

/-! ## A182159.P5586040411697286153

`∑[A002494(n)]-A004251(n)`
-/

namespace A182159.P5586040411697286153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004251 n

end

end A182159.P5586040411697286153

/-! ## A182159.P9551594532646257377

`A000719(n)+A001349(n)-A004251(n)`
-/

namespace A182159.P9551594532646257377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 n + (A001349 n - A004251 n)

end

end A182159.P9551594532646257377

/-! ## A182159.P1664663743262484696

`A157015(n)+A157016(n)-A004251(n)`
-/

namespace A182159.P1664663743262484696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157015 n + (A157016 n - A004251 n)

end

end A182159.P1664663743262484696

/-! ## A182159.P14466382417866581879

`A201922(2-A080956(n))+A000719(n)-A004251(n)`
-/

namespace A182159.P14466382417866581879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (2 - A080956 n).toNat + A000719 n - A004251 n

end

end A182159.P14466382417866581879

/-!
# A182161: Number of extensional acyclic digraphs on n labeled nodes.

The programs for A182161, there is no canonical definition to state claims against.
-/

/-! ## A182161.P2552394082122529712

`n!*A001192(n)`
-/

namespace A182161.P2552394082122529712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001192 n

end

end A182161.P2552394082122529712

/-! ## A182161.P2874600906409210201

`A000142(n)*A001192(n)`
-/

namespace A182161.P2874600906409210201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001192 n

end

end A182161.P2874600906409210201

/-! ## A182161.P17580572798017219502

`A001192(n)*A131689(A000096(n))`
-/

namespace A182161.P17580572798017219502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001192 n * A131689 (A000096 n).toNat

end

end A182161.P17580572798017219502

/-!
# A182163: First column of A182162.

The programs for A182163, there is no canonical definition to state claims against.
-/

/-! ## A182163.P6920110058562529086

`record[A182162(n+1)]`
-/

namespace A182163.P6920110058562529086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182163.P6920110058562529086

/-! ## A182163.P15012438825096733369

`record[ratio[A182162(A193592(n))]]`
-/

namespace A182163.P15012438825096733369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182162 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182163.P15012438825096733369

/-! ## A182163.P17677636408483666729

`record[A182162(A193592(n))]-A059995(n)`
-/

namespace A182163.P17677636408483666729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182162 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A059995 n

end

end A182163.P17677636408483666729

/-! ## A182163.P11165956047984373094

`record[A182162(A193592(n))/A133233(n)]`
-/

namespace A182163.P11165956047984373094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182162 (A193592 n).toNat : ℚ) / (A133233 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182163.P11165956047984373094

/-! ## A182163.P10776451218827017344

`record[A182162(A193592(n))%A000032(n)]`
-/

namespace A182163.P10776451218827017344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182162 (A193592 n).toNat) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182163.P10776451218827017344

/-!
# A182166: The total number of components of size 2 over all simple labeled graphs on n nodes.

The programs for A182166, the canonical program `A182166.P15318440697969543613` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182166 has offset 2).

The definition of A182166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182166.P15318440697969543613

`C(n+2, 2)*2^C(n, 2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182166

/-- `C(n+2, 2)*2^C(n, 2)` -/
def P15318440697969543613.Spec : Prop :=
  ∀ n, (P15318440697969543613.a n : ℤ) = A182166 (n + 2)

theorem P15318440697969543613.correct : P15318440697969543613.Spec := by
  intro n
  simp only [A182166, Nat.add_sub_cancel]

end A182166

/-! ## A182166.P8842573697134937228

`2^C(n, 2)*∑[n+1]`
-/

namespace A182166.P8842573697134937228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182166.P8842573697134937228

namespace A182166

/-- `2^C(n, 2)*∑[n+1]` -/
def P8842573697134937228.Spec : Prop :=
  ∀ n, (P8842573697134937228.a n : ℤ) = A182166 (n + 2)

end A182166

/-! ## A182166.P7014042701783392640

`2^(∑[n]-n)*∑[n+1]`
-/

namespace A182166.P7014042701783392640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℤ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A182166.P7014042701783392640

namespace A182166

/-- `2^(∑[n]-n)*∑[n+1]` -/
def P7014042701783392640.Spec : Prop :=
  ∀ n, P7014042701783392640.a n = (A182166 (n + 2) : ℚ)

end A182166

/-! ## A182166.P11791597888509882748

`A223894(∑[n+1]+2)`
-/

namespace A182166.P11791597888509882748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A182166.P11791597888509882748

namespace A182166

/-- `A223894(∑[n+1]+2)` -/
def P11791597888509882748.Spec : Prop :=
  ∀ n, P11791597888509882748.a n = A182166 (n + 2)

end A182166

/-! ## A182166.P2588572446186559033

`∏[A001792(n)/round(1/acot(n))]`
-/

namespace A182166.P2588572446186559033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001792 n : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182166.P2588572446186559033

namespace A182166

/-- `∏[A001792(n)/round(1/acot(n))]` -/
def P2588572446186559033.Spec : Prop :=
  ∀ n, P2588572446186559033.a n = (A182166 (n + 2) : ℚ)

end A182166

/-!
# A182167: Min( f(n), n-f(n) ), where f(n) = A002708(n) = Fibonacci(n) mod n.

The programs for A182167, the canonical program `A182167.P1515146561545747847` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182167 has offset 1).

The definition of A182167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182167.P1515146561545747847

`A053616(A002708(n+1)+∑[n])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182167

/-- `A053616(A002708(n+1)+∑[n])` -/
def P1515146561545747847.Spec : Prop :=
  ∀ n, P1515146561545747847.a n = A182167 (n + 1)

theorem P1515146561545747847.correct : P1515146561545747847.Spec := by
  intro n
  simp only [A182167, Nat.add_sub_cancel]

end A182167

/-! ## A182167.P6374566687948898219

`A004197(∑[n+1]+A000045(n+1)%(n+1))`
-/

namespace A182167.P6374566687948898219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A000045 (n + 1)) (n + 1 : ℤ)).toNat

end

end A182167.P6374566687948898219

namespace A182167

/-- `A004197(∑[n+1]+A000045(n+1)%(n+1))` -/
def P6374566687948898219.Spec : Prop :=
  ∀ n, P6374566687948898219.a n = A182167 (n + 1)

end A182167

/-! ## A182167.P6340336837372792239

`A239017(A272868(n))%A000005(3*n+1)`
-/

namespace A182167.P6340336837372792239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239017 (A272868 n).toNat) (A000005 (3 * n + 1))

end

end A182167.P6340336837372792239

namespace A182167

/-- `A239017(A272868(n))%A000005(3*n+1)` -/
def P6340336837372792239.Spec : Prop :=
  ∀ n, P6340336837372792239.a n = A182167 (n + 1)

end A182167

/-! ## A182167.P13694971309189697366

`and(A101849(n+1), A101872(A047363(n+3)))`
-/

namespace A182167.P13694971309189697366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101849 (n + 1)) (A101872 (A047363 (n + 3)).toNat)

end

end A182167.P13694971309189697366

namespace A182167

/-- `and(A101849(n+1), A101872(A047363(n+3)))` -/
def P13694971309189697366.Spec : Prop :=
  ∀ n, P13694971309189697366.a n = A182167 (n + 1)

end A182167

/-! ## A182167.P1379972921775626709

`A107111(n)%A000005(A253772(n+1))`
-/

namespace A182167.P1379972921775626709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107111 n) (A000005 (A253772 (n + 1)).toNat)

end

end A182167.P1379972921775626709

namespace A182167

/-- `A107111(n)%A000005(A253772(n+1))` -/
def P1379972921775626709.Spec : Prop :=
  ∀ n, P1379972921775626709.a n = A182167 (n + 1)

end A182167

/-!
# A182169: Numbers n such that sigma(n) divides sum_{k=1..n} tau(k), where tau(k) is the number of divisors of k (A000005) and sigma(n) is the sum of divisors of n (A000203).

The programs for A182169, there is no canonical definition to state claims against.
-/

/-! ## A182169.P12236411167022054236

`A091515(a(n-1)+3)` with `a(0)=1, a(1)=2`
-/

namespace A182169.P12236411167022054236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A091515 (a (n - 1) + 3).toNat

end

end A182169.P12236411167022054236

/-!
# A182172: Number A(n,k) of standard Young tableaux of n cells and height <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A182172, there is no canonical definition to state claims against.
-/

/-! ## A182172.P9239674043023197315

`A059939(ceil(exp(A247506(n))))`
-/

namespace A182172.P9239674043023197315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 ⌈Real.exp (A247506 n : ℝ)⌉.toNat

end

end A182172.P9239674043023197315

/-! ## A182172.P1512259966930513265

`A059939(round(exp(A247506(n))))`
-/

namespace A182172.P1512259966930513265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (SequenceMachineLib.roundAway (Real.exp (A247506 n : ℝ))).toNat

end

end A182172.P1512259966930513265

/-! ## A182172.P5602060818527602848

`A000523(ceil(cosh(A247506(n))))`
-/

namespace A182172.P5602060818527602848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 ⌈Real.cosh (A247506 n : ℝ)⌉.toNat

end

end A182172.P5602060818527602848

/-! ## A182172.P6899076914169344275

`A000523(round(cosh(A247506(n))))`
-/

namespace A182172.P6899076914169344275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway (Real.cosh (A247506 n : ℝ))).toNat

end

end A182172.P6899076914169344275

/-! ## A182172.P4765699421987604508

`A067693(floor(A320955(n)^ϕ))`
-/

namespace A182172.P4765699421987604508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 ⌊(A320955 n : ℝ) ^ Real.goldenRatio⌋.toNat

end

end A182172.P4765699421987604508

/-!
# A182173: Number of inequivalent expressions involving n operands.

The programs for A182173, there is no canonical definition to state claims against.
-/

/-! ## A182173.P9428868866153198872

`2*A247982(n+1)`
-/

namespace A182173.P9428868866153198872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247982 (n + 1)

end

end A182173.P9428868866153198872

/-! ## A182173.P3829457112727886334

`lcm(A000005(A020483(n)), A247982(n+1))`
-/

namespace A182173.P3829457112727886334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A020483 n).toNat) (A247982 (n + 1))

end

end A182173.P3829457112727886334

/-! ## A182173.P16421266642327729344

`A247982(n+1)+or(A000035(n), A247982(n+1))`
-/

namespace A182173.P16421266642327729344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247982 (n + 1) + Int.lor (A000035 n) (A247982 (n + 1))

end

end A182173.P16421266642327729344

/-! ## A182173.P13570498248117863369

`lcm(2, A247982(A048266(n+1)))`
-/

namespace A182173.P13570498248117863369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247982 (A048266 (n + 1)).toNat)

end

end A182173.P13570498248117863369

/-!
# A182174: a(n) = prime(n)^2 - n.

The programs for A182174, the canonical program `A182174.P16448291357391898493` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182174 has offset 1).

The definition of A182174 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)²-(n+1)` (program `A182174.P16448291357391898493`, by `A182174.P16448291357391898493.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182174.P17683556818926357754

`A001248(n+1)-(n+1)`
-/

namespace A182174.P17683556818926357754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (n + 1 : ℤ)

end

end A182174.P17683556818926357754

namespace A182174

/-- `A001248(n+1)-(n+1)` -/
def P17683556818926357754.Spec : Prop :=
  ∀ n, P17683556818926357754.a n = A182174 (n + 1)

end A182174

/-! ## A182174.P16448291357391898493

`A000040(n+1)²-(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A182174

/-- `A000040(n+1)²-(n+1)` -/
def P16448291357391898493.Spec : Prop :=
  ∀ n, P16448291357391898493.a n = A182174 (n + 1)

theorem P16448291357391898493.correct : P16448291357391898493.Spec := by
  intro n
  simp only [A182174, Nat.add_sub_cancel]

end A182174

/-! ## A182174.P2163224199873041348

`A084920(n+1)-n`
-/

namespace A182174.P2163224199873041348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - (n : ℤ)

end

end A182174.P2163224199873041348

namespace A182174

/-- `A084920(n+1)-n` -/
def P2163224199873041348.Spec : Prop :=
  ∀ n, P2163224199873041348.a n = A182174 (n + 1)

theorem P2163224199873041348.correct : P2163224199873041348.Spec := by
  intro n
  simp only [A182174, Nat.add_sub_cancel, A182174.P2163224199873041348.a, A182174.P16448291357391898493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084920, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182174

/-! ## A182174.P1167843903202617475

`A049001(n+1)+1-n`
-/

namespace A182174.P1167843903202617475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + (1 - (n : ℤ))

end

end A182174.P1167843903202617475

namespace A182174

/-- `A049001(n+1)+1-n` -/
def P1167843903202617475.Spec : Prop :=
  ∀ n, P1167843903202617475.a n = A182174 (n + 1)

theorem P1167843903202617475.correct : P1167843903202617475.Spec := by
  intro n
  simp only [A182174, Nat.add_sub_cancel, A182174.P1167843903202617475.a, A182174.P16448291357391898493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P8777299766092042792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182174

/-! ## A182174.P14411429173987586329

`A066872(n+1)-(n+2)`
-/

namespace A182174.P14411429173987586329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - (n + 2 : ℤ)

end

end A182174.P14411429173987586329

namespace A182174

/-- `A066872(n+1)-(n+2)` -/
def P14411429173987586329.Spec : Prop :=
  ∀ n, P14411429173987586329.a n = A182174 (n + 1)

theorem P14411429173987586329.correct : P14411429173987586329.Spec := by
  intro n
  simp only [A182174, Nat.add_sub_cancel, A182174.P14411429173987586329.a, A182174.P16448291357391898493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066872, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182174

/-! ## A182174.P4166218284152129676

`A182200(n+1)+2-n`
-/

namespace A182174.P4166218284152129676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) + (2 - (n : ℤ))

end

end A182174.P4166218284152129676

namespace A182174

/-- `A182200(n+1)+2-n` -/
def P4166218284152129676.Spec : Prop :=
  ∀ n, P4166218284152129676.a n = A182174 (n + 1)

theorem P4166218284152129676.correct : P4166218284152129676.Spec := by
  intro n
  simp only [A182174, Nat.add_sub_cancel, A182174.P4166218284152129676.a, A182174.P16448291357391898493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A182200, A182200.P11759421930425352337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182174

/-! ## A182174.P15597132173736685168

`A061725(n+1)-(n+3)`
-/

namespace A182174.P15597132173736685168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - (n + 3 : ℤ)

end

end A182174.P15597132173736685168

namespace A182174

/-- `A061725(n+1)-(n+3)` -/
def P15597132173736685168.Spec : Prop :=
  ∀ n, P15597132173736685168.a n = A182174 (n + 1)

theorem P15597132173736685168.correct : P15597132173736685168.Spec := by
  intro n
  simp only [A182174, Nat.add_sub_cancel, A182174.P15597132173736685168.a, A182174.P16448291357391898493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061725, A061725.P7248628641150990420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182174

/-! ## A182174.P1969116527204000072

`A166010(n+1)+3-n`
-/

namespace A182174.P1969116527204000072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + (3 - (n : ℤ))

end

end A182174.P1969116527204000072

namespace A182174

/-- `A166010(n+1)+3-n` -/
def P1969116527204000072.Spec : Prop :=
  ∀ n, P1969116527204000072.a n = A182174 (n + 1)

theorem P1969116527204000072.correct : P1969116527204000072.Spec := by
  intro n
  simp only [A182174, Nat.add_sub_cancel, A182174.P1969116527204000072.a, A182174.P16448291357391898493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A166010, A166010.P2375559703123786713.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182174

/-! ## A182174.P1258721623375189600

`A287922(n+1)-(n+5)`
-/

namespace A182174.P1258721623375189600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1) - (n + 5 : ℤ)

end

end A182174.P1258721623375189600

namespace A182174

/-- `A287922(n+1)-(n+5)` -/
def P1258721623375189600.Spec : Prop :=
  ∀ n, P1258721623375189600.a n = A182174 (n + 1)

end A182174

/-! ## A182174.P5981503746761213813

`A153480(n)/2-(n-1)`
-/

namespace A182174.P5981503746761213813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153480 n : ℚ) / 2 - ((n : ℤ) - 1 : ℚ)

end

end A182174.P5981503746761213813

namespace A182174

/-- `A153480(n)/2-(n-1)` -/
def P5981503746761213813.Spec : Prop :=
  ∀ n, P5981503746761213813.a n = (A182174 (n + 1) : ℚ)

theorem P5981503746761213813.correct : P5981503746761213813.Spec := by
  intro n
  simp only [A182174, Nat.add_sub_cancel, A182174.P5981503746761213813.a, A182174.P16448291357391898493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A153480, A153480.P7601742437354690742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182174

/-! ## A182174.P5520787434921641617

`floor(sqrt(A138401(n+1))-n)`
-/

namespace A182174.P5520787434921641617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A138401 (n + 1) : ℝ) - (n : ℝ)⌋

end

end A182174.P5520787434921641617

namespace A182174

/-- `floor(sqrt(A138401(n+1))-n)` -/
def P5520787434921641617.Spec : Prop :=
  ∀ n, P5520787434921641617.a n = A182174 (n + 1)

end A182174

/-! ## A182174.P13107656045663763765

`floor(sqrt(A138402(n+1))-n)`
-/

namespace A182174.P13107656045663763765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A138402 (n + 1) : ℝ) - (n : ℝ)⌋

end

end A182174.P13107656045663763765

namespace A182174

/-- `floor(sqrt(A138402(n+1))-n)` -/
def P13107656045663763765.Spec : Prop :=
  ∀ n, P13107656045663763765.a n = A182174 (n + 1)

end A182174

/-! ## A182174.P811678218192140945

`Δ[A007504(n)]²-(n+1)`
-/

namespace A182174.P811678218192140945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (n + 1 : ℤ)

end

end A182174.P811678218192140945

namespace A182174

/-- `Δ[A007504(n)]²-(n+1)` -/
def P811678218192140945.Spec : Prop :=
  ∀ n, P811678218192140945.a n = A182174 (n + 1)

end A182174

/-! ## A182174.P4457842079740912025

`Δ[A008348(n)]²-(n+1)`
-/

namespace A182174.P4457842079740912025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (n + 1 : ℤ)

end

end A182174.P4457842079740912025

namespace A182174

/-- `Δ[A008348(n)]²-(n+1)` -/
def P4457842079740912025.Spec : Prop :=
  ∀ n, P4457842079740912025.a n = A182174 (n + 1)

end A182174

/-! ## A182174.P2269898372480375920

`Δ[A022837(n)]²-(n+1)`
-/

namespace A182174.P2269898372480375920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (n + 1 : ℤ)

end

end A182174.P2269898372480375920

namespace A182174

/-- `Δ[A022837(n)]²-(n+1)` -/
def P2269898372480375920.Spec : Prop :=
  ∀ n, P2269898372480375920.a n = A182174 (n + 1)

end A182174

/-! ## A182174.P3937948073353523015

`Δ[A064365(n)]²-(n+1)`
-/

namespace A182174.P3937948073353523015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (n + 1 : ℤ)

end

end A182174.P3937948073353523015

namespace A182174

/-- `Δ[A064365(n)]²-(n+1)` -/
def P3937948073353523015.Spec : Prop :=
  ∀ n, P3937948073353523015.a n = A182174 (n + 1)

end A182174

/-! ## A182174.P5433204002294789328

`Δ[A117128(n)]²-(n+1)`
-/

namespace A182174.P5433204002294789328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (n + 1 : ℤ)

end

end A182174.P5433204002294789328

namespace A182174

/-- `Δ[A117128(n)]²-(n+1)` -/
def P5433204002294789328.Spec : Prop :=
  ∀ n, P5433204002294789328.a n = A182174 (n + 1)

end A182174

/-! ## A182174.P7131580768683113809

`Δ[A309222(n)]²-(n+1)`
-/

namespace A182174.P7131580768683113809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (n + 1 : ℤ)

end

end A182174.P7131580768683113809

namespace A182174

/-- `Δ[A309222(n)]²-(n+1)` -/
def P7131580768683113809.Spec : Prop :=
  ∀ n, P7131580768683113809.a n = A182174 (n + 1)

end A182174

/-! ## A182174.P9687294881325358410

`A079704(n+1)/2-(n+1)`
-/

namespace A182174.P9687294881325358410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A182174.P9687294881325358410

namespace A182174

/-- `A079704(n+1)/2-(n+1)` -/
def P9687294881325358410.Spec : Prop :=
  ∀ n, P9687294881325358410.a n = (A182174 (n + 1) : ℚ)

theorem P9687294881325358410.correct : P9687294881325358410.Spec := by
  intro n
  simp only [A182174, Nat.add_sub_cancel, A182174.P9687294881325358410.a, A182174.P16448291357391898493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A079704, A079704.P2518524558801344655.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182174

/-! ## A182174.P17905849568499566757

`A079705(n+1)/3-(n+1)`
-/

namespace A182174.P17905849568499566757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079705 (n + 1) : ℚ) / 3 - (n + 1 : ℚ)

end

end A182174.P17905849568499566757

namespace A182174

/-- `A079705(n+1)/3-(n+1)` -/
def P17905849568499566757.Spec : Prop :=
  ∀ n, P17905849568499566757.a n = (A182174 (n + 1) : ℚ)

theorem P17905849568499566757.correct : P17905849568499566757.Spec := by
  intro n
  simp only [A182174, Nat.add_sub_cancel, A182174.P17905849568499566757.a, A182174.P16448291357391898493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A079705, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182174

/-!
# A182175: Numbers with the property that every pair of adjacent digits sum to a prime number.

The programs for A182175, there is no canonical definition to state claims against.
-/

/-! ## A182175.P12361523987905639501

`comp[A219110(n+1)]`
-/

namespace A182175.P12361523987905639501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182175.P12361523987905639501

/-! ## A182175.P8886768116082704353

`A118759(A252495(n+1))`
-/

namespace A182175.P8886768116082704353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A252495 (n + 1)).toNat

end

end A182175.P8886768116082704353

/-! ## A182175.P10269493067809100039

`A118759(A252996(n+1))`
-/

namespace A182175.P10269493067809100039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A252996 (n + 1)).toNat

end

end A182175.P10269493067809100039

/-! ## A182175.P2577850702203644725

`A000194(A252495(n+1)²)`
-/

namespace A182175.P2577850702203644725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A252495 (n + 1) ^ 2).toNat

end

end A182175.P2577850702203644725

/-! ## A182175.P11488499750644052262

`A000196(A252495(n+1)²)`
-/

namespace A182175.P11488499750644052262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A252495 (n + 1) ^ 2).toNat

end

end A182175.P11488499750644052262

/-!
# A182176: Number of affine subspaces of GF(2)^n.

The programs for A182176, there is no canonical definition to state claims against.
-/

/-! ## A182176.P9496799067474861326

`Δ[A006116(n)]`
-/

namespace A182176.P9496799067474861326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182176.P9496799067474861326

/-! ## A182176.P14757085841707600014

`A289383(n)+A006116(n)`
-/

namespace A182176.P14757085841707600014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289383 n + A006116 n

end

end A182176.P14757085841707600014

/-! ## A182176.P14042985483507955306

`A006116(n+1)-A006116(n)`
-/

namespace A182176.P14042985483507955306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006116 (n + 1) - A006116 n

end

end A182176.P14042985483507955306

/-! ## A182176.P4193271941373655242

`∑[A000079(n)*A061034(A011782(n))]`
-/

namespace A182176.P4193271941373655242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A061034 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182176.P4193271941373655242

/-! ## A182176.P12678390525044716806

`∑[(A000051(n)-1)*A061034(A011782(n))]`
-/

namespace A182176.P12678390525044716806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 n - 1) * A061034 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182176.P12678390525044716806

/-!
# A182179: a(n) = |A001349(n) - A004251(n)|.

The programs for A182179, there is no canonical definition to state claims against.
-/

/-! ## A182179.P1123917257592282770

`abs(A001349(n)-A004251(n))`
-/

namespace A182179.P1123917257592282770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001349 n - A004251 n|

end

end A182179.P1123917257592282770

/-! ## A182179.P15334335011705003600

`abs(A001349(n)-∑[A095268(n)])`
-/

namespace A182179.P15334335011705003600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001349 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A182179.P15334335011705003600

/-! ## A182179.P16453464805956376007

`abs(A304311(∑[n])-A004251(n))`
-/

namespace A182179.P16453464805956376007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A304311 (∑ j ∈ Finset.range (n + 1), f1 j) - A004251 n|

end

end A182179.P16453464805956376007

/-! ## A182179.P2250977529339686924

`abs(A000088(n)-(A004251(n)+A000719(n)))`
-/

namespace A182179.P2250977529339686924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000088 n - (A004251 n + A000719 n)|

end

end A182179.P2250977529339686924

/-! ## A182179.P7182107495987566563

`abs(A004251(n)-(A157051(n)+A005142(n)))`
-/

namespace A182179.P7182107495987566563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004251 n - (A157051 n + A005142 n)|

end

end A182179.P7182107495987566563

/-!
# A182180: Semiprimes that become prime when their digits are sorted into nonincreasing order.

The programs for A182180, there is no canonical definition to state claims against.
-/

/-! ## A182180.P9358160607878258641

`∩[A001358(n+1), A224402(n+1)]`
-/

namespace A182180.P9358160607878258641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182180.P9358160607878258641

/-! ## A182180.P5935217296507645711

`∩[A001358(n+1), A371653(n+1)]`
-/

namespace A182180.P5935217296507645711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182180.P5935217296507645711

/-! ## A182180.P7468764029797549604

`filter[A224402(n+1), A064911(#)]`
-/

namespace A182180.P7468764029797549604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A182180.P7468764029797549604

/-! ## A182180.P17712935584221086347

`filter[A224402(n+1), A101040(#)]`
-/

namespace A182180.P17712935584221086347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A182180.P17712935584221086347

/-! ## A182180.P2171406405556285374

`filter[A371653(n+1), A064911(#)]`
-/

namespace A182180.P2171406405556285374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A182180.P2171406405556285374

/-! ## A182180.P7805544196766994856

`∩[A112381(n+1), A224402(n+1)]`
-/

namespace A182180.P7805544196766994856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182180.P7805544196766994856

/-! ## A182180.P14384709541247259

`∩[A112381(n+1), A371653(n+1)]`
-/

namespace A182180.P14384709541247259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182180.P14384709541247259

/-! ## A182180.P896722340744007265

`∩[A176540(n+1), A224402(n+1)]`
-/

namespace A182180.P896722340744007265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182180.P896722340744007265

/-! ## A182180.P5313347101494839356

`∩[A176540(n+1), A371653(n+1)]`
-/

namespace A182180.P5313347101494839356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182180.P5313347101494839356

/-! ## A182180.P8212749217042956907

`∩[A037143(n+1), A224402(n+1)]`
-/

namespace A182180.P8212749217042956907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182180.P8212749217042956907

/-! ## A182180.P16983190051696374840

`record[A076290(A224402(n+1))]`
-/

namespace A182180.P16983190051696374840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A224402 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182180.P16983190051696374840

/-! ## A182180.P4117068574063761261

`eq[A092976(A004186(n)), A105700(n)]`
-/

namespace A182180.P4117068574063761261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 (A004186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182180.P4117068574063761261

/-!
# A182181: Total number of parts in the modular table of partitions of A135010 with n regions.

The programs for A182181, there is no canonical definition to state claims against.
-/

/-! ## A182181.P4200477101644917357

`∑[A194446(n+1)]`
-/

namespace A182181.P4200477101644917357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182181.P4200477101644917357

/-! ## A182181.P7559735051218826388

`A194446(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A182181.P7559735051218826388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194446 (n + 1) + a (A023443 n).toNat

end

end A182181.P7559735051218826388

/-! ## A182181.P17346693164119185635

`a(n-1)+A194446(n+1)+A130706(n+1)` with `a(0)=1`
-/

namespace A182181.P17346693164119185635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A194446 (n + 1) + A130706 (n + 1))

end

end A182181.P17346693164119185635

/-! ## A182181.P101683830299996589

`a(n-1)+A194446(n+1)+A000045(C(2, n+2))` with `a(0)=1`
-/

namespace A182181.P101683830299996589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A194446 (n + 1) + A000045 (Nat.choose 2 (n + 2)))

end

end A182181.P101683830299996589

/-! ## A182181.P7446640867191561236

`a(n-1)+A194446(n+1)*A238949(A027746(n+1))` with `a(0)=1`
-/

namespace A182181.P7446640867191561236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A194446 (n + 1) * A238949 (A027746 (n + 1)).toNat

end

end A182181.P7446640867191561236

/-! ## A182181.P793512977033732492

`A338478(A338478(a(n-1)))+A194446(n+1)` with `a(0)=1`
-/

namespace A182181.P793512977033732492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338478 (A338478 (a (n - 1)).toNat).toNat + A194446 (n + 1)

end

end A182181.P793512977033732492

/-! ## A182181.P3269117751134722517

`∑[∑[1-Δ[A210451(n)]]]`
-/

namespace A182181.P3269117751134722517
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182181.P3269117751134722517

/-! ## A182181.P7253687311720106330

`∑[1-A210451(n+1)+n]`
-/

namespace A182181.P7253687311720106330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A210451 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182181.P7253687311720106330

/-! ## A182181.P777763581321091316

`∑[n-A023443(A210451(n+1))]`
-/

namespace A182181.P777763581321091316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A210451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182181.P777763581321091316

/-! ## A182181.P16363665461872410357

`∑[A141285(n+1)-A194447(n+1)]`
-/

namespace A182181.P16363665461872410357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - A194447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182181.P16363665461872410357

/-!
# A182182: a(0) = 0, a(1) = 1; for n > 1, a(n) = a(n-1) XOR a(n-2) XOR n.

The programs for A182182, the canonical program `A182182.P12281082567551074576` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182182 has offset 0).

The definition of A182182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182182.P12281082567551074576

`xor(n, xor(a(n-1), a(n-2)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182182

/-- `xor(n, xor(a(n-1), a(n-2)))` -/
def P12281082567551074576.Spec : Prop :=
  ∀ n, (P12281082567551074576.a n : ℤ) = A182182 n

theorem P12281082567551074576.correct : P12281082567551074576.Spec := by
  intro n
  simp only [A182182]

end A182182

/-! ## A182182.P15513443160279744164

`xor(a(n-3), A135481(A261693(n)))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A182182.P15513443160279744164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  Int.xor (a (n - 3)) (A135481 (A261693 n).toNat)

end

end A182182.P15513443160279744164

namespace A182182

/-- `xor(a(n-3), A135481(A261693(n)))` -/
def P15513443160279744164.Spec : Prop :=
  ∀ n, P15513443160279744164.a n = A182182 n

end A182182

/-! ## A182182.P2182851067057197305

`A261283(A033129(n))`
-/

namespace A182182.P2182851067057197305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 (A033129 n).toNat

end

end A182182.P2182851067057197305

namespace A182182

/-- `A261283(A033129(n))` -/
def P2182851067057197305.Spec : Prop :=
  ∀ n, P2182851067057197305.a n = A182182 n

end A182182

/-! ## A182182.P8308148472754517199

`A253315(A033129(n+1))`
-/

namespace A182182.P8308148472754517199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (A033129 (n + 1)).toNat

end

end A182182.P8308148472754517199

namespace A182182

/-- `A253315(A033129(n+1))` -/
def P8308148472754517199.Spec : Prop :=
  ∀ n, P8308148472754517199.a n = A182182 n

end A182182

/-! ## A182182.P18272082514525117652

`A253315(2*A033129(n))`
-/

namespace A182182.P18272082514525117652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (2 * A033129 n).toNat

end

end A182182.P18272082514525117652

namespace A182182

/-- `A253315(2*A033129(n))` -/
def P18272082514525117652.Spec : Prop :=
  ∀ n, P18272082514525117652.a n = A182182 n

end A182182

/-!
# A182183: Numbers k such that the divisors of k are divisible by all digits of their divisors.

The programs for A182183, there is no canonical definition to state claims against.
-/

/-! ## A182183.P4625951012538740810

`A209933(A133137(n+1))`
-/

namespace A182183.P4625951012538740810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209933 (A133137 (n + 1)).toNat

end

end A182183.P4625951012538740810

/-! ## A182183.P12155381362175810555

`A209933(round(log(A120845(n))))`
-/

namespace A182183.P12155381362175810555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209933 (SequenceMachineLib.roundAway (Real.log (A120845 n : ℝ))).toNat

end

end A182183.P12155381362175810555

/-! ## A182183.P15763522878208841055

`A209933(∑[A307597(n)!])`
-/

namespace A182183.P15763522878208841055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A307597 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209933 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182183.P15763522878208841055

/-! ## A182183.P11529150534445180547

`A209933(A054900(n)+1+n)`
-/

namespace A182183.P11529150534445180547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209933 (A054900 n + 1 + (n : ℤ)).toNat

end

end A182183.P11529150534445180547

/-! ## A182183.P14985581194802276784

`filter[A209933(n+1), A307430(#)]`
-/

namespace A182183.P14985581194802276784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A182183.P14985581194802276784

/-!
# A182185: G.f.: exp( Sum_{n>=1} 3^b(n) * x^n/n ) where b(n) = highest exponent of 3 in 2^n+1.

The programs for A182185, there is no canonical definition to state claims against.
-/

/-! ## A182185.P18131863265390490116

`A294371(A217838(n))`
-/

namespace A182185.P18131863265390490116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294371 (A217838 n).toNat

end

end A182185.P18131863265390490116

/-! ## A182185.P17835470354642083894

`or(1, A329978(∑[n]+1))`
-/

namespace A182185.P17835470354642083894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A329978 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A182185.P17835470354642083894

/-! ## A182185.P16728158959659076818

`A294371(A046489(n)-n)`
-/

namespace A182185.P16728158959659076818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294371 (A046489 n - (n : ℤ)).toNat

end

end A182185.P16728158959659076818

/-! ## A182185.P1764198636573672640

`A398050(n)+A378282(A398050(n+1))`
-/

namespace A182185.P1764198636573672640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398050 n + A378282 (A398050 (n + 1)).toNat

end

end A182185.P1764198636573672640

/-! ## A182185.P7783046568726939048

`or(A165430(A000108(n)), A184535(n+1))`
-/

namespace A182185.P7783046568726939048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165430 (A000108 n).toNat) (A184535 (n + 1))

end

end A182185.P7783046568726939048

/-!
# A182186: Number b(n) of basic ideals in the Borel subalgebra of the untwisted affine Lie algebra of type B.

The programs for A182186, the canonical program `A182186.P4683048126343918756` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182186 has offset 2).

The definition of A182186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182186.P4683048126343918756

`(3*(n+2)+5)*2^(2*(n+2)-2)-2*(3*(n+2)-1)*C(2*(n+2)-2, n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182186

/-- `(3*(n+2)+5)*2^(2*(n+2)-2)-2*(3*(n+2)-1)*C(2*(n+2)-2, n+1)` -/
def P4683048126343918756.Spec : Prop :=
  ∀ n, P4683048126343918756.a n = (A182186 (n + 2) : ℚ)

end A182186

/-! ## A182186.P12738141047028338382

`A000302(n+1)+Δ[A153337(n+2)]`
-/

namespace A182186.P12738141047028338382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153337 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) + (f1 (n + 1) - f1 n)

end

end A182186.P12738141047028338382

namespace A182186

/-- `A000302(n+1)+Δ[A153337(n+2)]` -/
def P12738141047028338382.Spec : Prop :=
  ∀ n, P12738141047028338382.a n = A182186 (n + 2)

end A182186

/-! ## A182186.P8371209413138517110

`A000302(n+1)+Δ[A153334(2*n+3)]`
-/

namespace A182186.P8371209413138517110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) + (f1 (n + 1) - f1 n)

end

end A182186.P8371209413138517110

namespace A182186

/-- `A000302(n+1)+Δ[A153334(2*n+3)]` -/
def P8371209413138517110.Spec : Prop :=
  ∀ n, P8371209413138517110.a n = A182186 (n + 2)

end A182186

/-! ## A182186.P10708867235632567286

`A000079(n+1)²+Δ[A153334(2*n+3)]`
-/

namespace A182186.P10708867235632567286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 + (f1 (n + 1) - f1 n)

end

end A182186.P10708867235632567286

namespace A182186

/-- `A000079(n+1)²+Δ[A153334(2*n+3)]` -/
def P10708867235632567286.Spec : Prop :=
  ∀ n, P10708867235632567286.a n = A182186 (n + 2)

end A182186

/-! ## A182186.P16707914815718039305

`A000079(2*(n+1))+Δ[A153334(2*n+3)]`
-/

namespace A182186.P16707914815718039305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A182186.P16707914815718039305

namespace A182186

/-- `A000079(2*(n+1))+Δ[A153334(2*n+3)]` -/
def P16707914815718039305.Spec : Prop :=
  ∀ n, P16707914815718039305.a n = A182186 (n + 2)

end A182186

/-! ## A182186.P3797184893771758974

`record[A090988(n+1)²]+Δ[A153334(2*n+3)]`
-/

namespace A182186.P3797184893771758974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (f2 (n + 1) - f2 n)

end

end A182186.P3797184893771758974

namespace A182186

/-- `record[A090988(n+1)²]+Δ[A153334(2*n+3)]` -/
def P3797184893771758974.Spec : Prop :=
  ∀ n, P3797184893771758974.a n = A182186 (n + 2)

end A182186

/-!
# A182187: a(n) is the least m >= n such that the Hamming distance D(n,m) = 2.

The programs for A182187, the canonical program `A182187.P12216310265339320362` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182187 has offset 0).

The definition of A182187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182187.P12216310265339320362

`xor(n, A151787(xor(n, n+2)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A182187

/-- `xor(n, A151787(xor(n, n+2)))` -/
def P12216310265339320362.Spec : Prop :=
  ∀ n, P12216310265339320362.a n = A182187 n

theorem P12216310265339320362.correct : P12216310265339320362.Spec := by
  intro n
  simp only [A182187]

end A182187

/-! ## A182187.P711193066296491412

`xor(n, A233775(xor(n, n+2)))`
-/

namespace A182187.P711193066296491412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A233775 (Nat.xor n (n + 2)))

end

end A182187.P711193066296491412

namespace A182187

/-- `xor(n, A233775(xor(n, n+2)))` -/
def P711193066296491412.Spec : Prop :=
  ∀ n, P711193066296491412.a n = A182187 n

end A182187

/-! ## A182187.P11643706832003042099

`xor(n, A341915(xor(n, n+2)))`
-/

namespace A182187.P11643706832003042099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A341915 (Nat.xor n (n + 2)))

end

end A182187.P11643706832003042099

namespace A182187

/-- `xor(n, A341915(xor(n, n+2)))` -/
def P11643706832003042099.Spec : Prop :=
  ∀ n, P11643706832003042099.a n = A182187 n

end A182187

/-! ## A182187.P7312347478466084230

`xor(n, A007283(val(∑[1+n], 2)))`
-/

namespace A182187.P7312347478466084230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A007283 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2))

end

end A182187.P7312347478466084230

namespace A182187

/-- `xor(n, A007283(val(∑[1+n], 2)))` -/
def P7312347478466084230.Spec : Prop :=
  ∀ n, P7312347478466084230.a n = A182187 n

end A182187

/-! ## A182187.P18053112895714591427

`xor(n, A145342(xor(n, n+2)+1))`
-/

namespace A182187.P18053112895714591427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A145342 (Nat.xor n (n + 2) + 1))

end

end A182187.P18053112895714591427

namespace A182187

/-- `xor(n, A145342(xor(n, n+2)+1))` -/
def P18053112895714591427.Spec : Prop :=
  ∀ n, P18053112895714591427.a n = A182187 n

end A182187

/-! ## A182187.P16289036738396370102

`xor(A038712(n+1), A381764(n+1))`
-/

namespace A182187.P16289036738396370102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038712 (n + 1)) (A381764 (n + 1))

end

end A182187.P16289036738396370102

namespace A182187

/-- `xor(A038712(n+1), A381764(n+1))` -/
def P16289036738396370102.Spec : Prop :=
  ∀ n, P16289036738396370102.a n = A182187 n

end A182187

/-! ## A182187.P13646844322455732887

`xor(n, A003188(A006519(n+2)*A006519(n+1)))`
-/

namespace A182187.P13646844322455732887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A003188 (A006519 (n + 2) * A006519 (n + 1)).toNat)

end

end A182187.P13646844322455732887

namespace A182187

/-- `xor(n, A003188(A006519(n+2)*A006519(n+1)))` -/
def P13646844322455732887.Spec : Prop :=
  ∀ n, P13646844322455732887.a n = A182187 n

end A182187

/-!
# A182188: A sequence of row differences for table A182119.

The programs for A182188, the canonical program `A182188.P15232264858634727768` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182188 has offset 0).

The definition of A182188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182188.P3848717139801847851

`ogf((1-8x+3x^2)/(1-7x+7x^2-x^3))`
-/

namespace A182188.P3848717139801847851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8, 3] [1, -7, 7, -1] n

end

end A182188.P3848717139801847851

namespace A182188

/-- `ogf((1-8x+3x^2)/(1-7x+7x^2-x^3))` -/
def P3848717139801847851.Spec : Prop :=
  ∀ n, P3848717139801847851.a n = A182188 n

end A182188

/-! ## A182188.P15232264858634727768

`6*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182188

/-- `6*a(n-1)-a(n-2)-4` -/
def P15232264858634727768.Spec : Prop :=
  ∀ n, P15232264858634727768.a n = A182188 n

theorem P15232264858634727768.correct : P15232264858634727768.Spec := by
  intro n
  simp only [A182188]

end A182188

/-! ## A182188.P16391563991473752965

`1-A001542(n)`
-/

namespace A182188.P16391563991473752965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001542 n

end

end A182188.P16391563991473752965

namespace A182188

/-- `1-A001542(n)` -/
def P16391563991473752965.Spec : Prop :=
  ∀ n, P16391563991473752965.a n = A182188 n

end A182188

/-! ## A182188.P12753106641710193599

`2-A182189(n)`
-/

namespace A182188.P12753106641710193599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A182189 n

end

end A182188.P12753106641710193599

namespace A182188

/-- `2-A182189(n)` -/
def P12753106641710193599.Spec : Prop :=
  ∀ n, P12753106641710193599.a n = A182188 n

end A182188

/-! ## A182188.P2284826753420821388

`1-A000129(2*n)`
-/

namespace A182188.P2284826753420821388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000129 (2 * n)

end

end A182188.P2284826753420821388

namespace A182188

/-- `1-A000129(2*n)` -/
def P2284826753420821388.Spec : Prop :=
  ∀ n, P2284826753420821388.a n = A182188 n

end A182188

/-! ## A182188.P1435718823227765984

`1-2*A001109(n)`
-/

namespace A182188.P1435718823227765984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A001109 n

end

end A182188.P1435718823227765984

namespace A182188

/-- `1-2*A001109(n)` -/
def P1435718823227765984.Spec : Prop :=
  ∀ n, P1435718823227765984.a n = A182188 n

end A182188

/-! ## A182188.P4703027789951453147

`∑[ogf((1-8x+3x^2)/(1-6x+x^2))]`
-/

namespace A182188.P4703027789951453147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8, 3] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182188.P4703027789951453147

namespace A182188

/-- `∑[ogf((1-8x+3x^2)/(1-6x+x^2))]` -/
def P4703027789951453147.Spec : Prop :=
  ∀ n, P4703027789951453147.a n = A182188 n

end A182188

/-! ## A182188.P1426069118715543556

`2-A111954(2*n)`
-/

namespace A182188.P1426069118715543556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A111954 (2 * n)

end

end A182188.P1426069118715543556

namespace A182188

/-- `2-A111954(2*n)` -/
def P1426069118715543556.Spec : Prop :=
  ∀ n, P1426069118715543556.a n = A182188 n

end A182188

/-! ## A182188.P5381865020114231072

`2-A174191(2*n)`
-/

namespace A182188.P5381865020114231072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A174191 (2 * n)

end

end A182188.P5381865020114231072

namespace A182188

/-- `2-A174191(2*n)` -/
def P5381865020114231072.Spec : Prop :=
  ∀ n, P5381865020114231072.a n = A182188 n

end A182188

/-! ## A182188.P6973936064668672607

`1-A249576(6*n)`
-/

namespace A182188.P6973936064668672607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A249576 (6 * n)

end

end A182188.P6973936064668672607

namespace A182188

/-- `1-A249576(6*n)` -/
def P6973936064668672607.Spec : Prop :=
  ∀ n, P6973936064668672607.a n = A182188 n

end A182188

/-! ## A182188.P6316215748021643033

`A176981(Δ[n²])+1`
-/

namespace A182188.P6316215748021643033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A182188.P6316215748021643033

namespace A182188

/-- `A176981(Δ[n²])+1` -/
def P6316215748021643033.Spec : Prop :=
  ∀ n, P6316215748021643033.a n = A182188 n

end A182188

/-! ## A182188.P2381121006652094745

`2-record[∑[A123335(n)]]`
-/

namespace A182188.P2381121006652094745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182188.P2381121006652094745

namespace A182188

/-- `2-record[∑[A123335(n)]]` -/
def P2381121006652094745.Spec : Prop :=
  ∀ n, P2381121006652094745.a n = A182188 n

end A182188

/-! ## A182188.P3113387422844238833

`A215936(2*(n+1))+1`
-/

namespace A182188.P3113387422844238833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (2 * (n + 1)) + 1

end

end A182188.P3113387422844238833

namespace A182188

/-- `A215936(2*(n+1))+1` -/
def P3113387422844238833.Spec : Prop :=
  ∀ n, P3113387422844238833.a n = A182188 n

end A182188

/-! ## A182188.P17811127120355385349

`1-A126354(2*(n+1))`
-/

namespace A182188.P17811127120355385349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A126354 (2 * (n + 1))

end

end A182188.P17811127120355385349

namespace A182188

/-- `1-A126354(2*(n+1))` -/
def P17811127120355385349.Spec : Prop :=
  ∀ n, P17811127120355385349.a n = A182188 n

end A182188

/-! ## A182188.P216900398347329949

`1-A204512(2*n+3)`
-/

namespace A182188.P216900398347329949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204512 (2 * n + 3)

end

end A182188.P216900398347329949

namespace A182188

/-- `1-A204512(2*n+3)` -/
def P216900398347329949.Spec : Prop :=
  ∀ n, P216900398347329949.a n = A182188 n

end A182188

/-! ## A182188.P13283341173256153701

`or(1, 1-A215928(2*n))`
-/

namespace A182188.P13283341173256153701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (1 - A215928 (2 * n))

end

end A182188.P13283341173256153701

namespace A182188

/-- `or(1, 1-A215928(2*n))` -/
def P13283341173256153701.Spec : Prop :=
  ∀ n, P13283341173256153701.a n = A182188 n

end A182188

/-! ## A182188.P8297582013058085851

`a(n-1)-A075870(n)` with `a(0)=1`
-/

namespace A182188.P8297582013058085851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A075870 n

end

end A182188.P8297582013058085851

namespace A182188

/-- `a(n-1)-A075870(n)` -/
def P8297582013058085851.Spec : Prop :=
  ∀ n, P8297582013058085851.a n = A182188 n

end A182188

/-! ## A182188.P16653922376035927003

`Δ[n²]-A209971(2*n)`
-/

namespace A182188.P16653922376035927003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A209971 (2 * n)

end

end A182188.P16653922376035927003

namespace A182188

/-- `Δ[n²]-A209971(2*n)` -/
def P16653922376035927003.Spec : Prop :=
  ∀ n, P16653922376035927003.a n = A182188 n

end A182188

/-! ## A182188.P5606242367179233028

`2*∑[A176981(2*n)]-1`
-/

namespace A182188.P5606242367179233028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A182188.P5606242367179233028

namespace A182188

/-- `2*∑[A176981(2*n)]-1` -/
def P5606242367179233028.Spec : Prop :=
  ∀ n, P5606242367179233028.a n = A182188 n

end A182188

/-! ## A182188.P7013914708385100718

`A001541(n)-A053141(n)-A053141(n)`
-/

namespace A182188.P7013914708385100718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n - A053141 n - A053141 n

end

end A182188.P7013914708385100718

namespace A182188

/-- `A001541(n)-A053141(n)-A053141(n)` -/
def P7013914708385100718.Spec : Prop :=
  ∀ n, P7013914708385100718.a n = A182188 n

end A182188

/-!
# A182189: a(n) = 6*a(n-1) - a(n-2) - 4 with n > 1, a(0)=1, a(1)=3.

The programs for A182189, the canonical program `A182189.P11996278113594985545` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182189 has offset 0).

The definition of A182189 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)-4` (program `A182189.P11996278113594985545`, by `A182189.P11996278113594985545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182189.P7459397284942071849

`ogf((1-4x-x^2)/(1-7x+7x^2-x^3))`
-/

namespace A182189.P7459397284942071849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -1] [1, -7, 7, -1] n

end

end A182189.P7459397284942071849

namespace A182189

/-- `ogf((1-4x-x^2)/(1-7x+7x^2-x^3))` -/
def P7459397284942071849.Spec : Prop :=
  ∀ n, P7459397284942071849.a n = A182189 n

end A182189

/-! ## A182189.P11996278113594985545

`6*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182189

/-- `6*a(n-1)-a(n-2)-4` -/
def P11996278113594985545.Spec : Prop :=
  ∀ n, P11996278113594985545.a n = A182189 n

theorem P11996278113594985545.correct : P11996278113594985545.Spec := by
  intro n
  simp only [A182189]

end A182189

/-! ## A182189.P15282060550736328450

`1+A000129(2*n)`
-/

namespace A182189.P15282060550736328450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000129 (2 * n)

end

end A182189.P15282060550736328450

namespace A182189

/-- `1+A000129(2*n)` -/
def P15282060550736328450.Spec : Prop :=
  ∀ n, P15282060550736328450.a n = A182189 n

end A182189

/-! ## A182189.P11289784501967551592

`∑[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A182189.P11289784501967551592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182189.P11289784501967551592

namespace A182189

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]` -/
def P11289784501967551592.Spec : Prop :=
  ∀ n, P11289784501967551592.a n = A182189 n

end A182189

/-! ## A182189.P16412950949884388842

`floor(a(n-1)/(3-sqrt(8)))-4` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A182189.P16412950949884388842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ - 4

end

end A182189.P16412950949884388842

namespace A182189

/-- `floor(a(n-1)/(3-sqrt(8)))-4` -/
def P16412950949884388842.Spec : Prop :=
  ∀ n, P16412950949884388842.a n = A182189 n

end A182189

/-! ## A182189.P13552633755999929458

`6*a(n-1)-(a(n-2)+4)` with `a(0)=1, a(1)=3`
-/

namespace A182189.P13552633755999929458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 * a (n - 1) - (a (n - 2) + 4)

end

end A182189.P13552633755999929458

namespace A182189

/-- `6*a(n-1)-(a(n-2)+4)` -/
def P13552633755999929458.Spec : Prop :=
  ∀ n, P13552633755999929458.a n = A182189 n

theorem P13552633755999929458.correct : P13552633755999929458.Spec := by
  intro n
  simp only [A182189, Nat.add_sub_cancel, A182189.P13552633755999929458.a, A182189.P11996278113594985545.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182189

/-! ## A182189.P4289308805051670349

`A001542(n)+1`
-/

namespace A182189.P4289308805051670349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n + 1

end

end A182189.P4289308805051670349

namespace A182189

/-- `A001542(n)+1` -/
def P4289308805051670349.Spec : Prop :=
  ∀ n, P4289308805051670349.a n = A182189 n

end A182189

/-! ## A182189.P11333213771132628500

`2-A182188(n)`
-/

namespace A182189.P11333213771132628500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A182188 n

end

end A182189.P11333213771132628500

namespace A182189

/-- `2-A182188(n)` -/
def P11333213771132628500.Spec : Prop :=
  ∀ n, P11333213771132628500.a n = A182189 n

end A182189

/-! ## A182189.P18086531636573993239

`A111954(2*n)`
-/

namespace A182189.P18086531636573993239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 (2 * n)

end

end A182189.P18086531636573993239

namespace A182189

/-- `A111954(2*n)` -/
def P18086531636573993239.Spec : Prop :=
  ∀ n, P18086531636573993239.a n = A182189 n

end A182189

/-! ## A182189.P4088677898945688918

`A174191(2*n)`
-/

namespace A182189.P4088677898945688918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (2 * n)

end

end A182189.P4088677898945688918

namespace A182189

/-- `A174191(2*n)` -/
def P4088677898945688918.Spec : Prop :=
  ∀ n, P4088677898945688918.a n = A182189 n

end A182189

/-! ## A182189.P2877352863557824397

`record[∑[A123335(n)]]`
-/

namespace A182189.P2877352863557824397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182189.P2877352863557824397

namespace A182189

/-- `record[∑[A123335(n)]]` -/
def P2877352863557824397.Spec : Prop :=
  ∀ n, P2877352863557824397.a n = A182189 n

end A182189

/-! ## A182189.P2726705444699601447

`2*A001109(n)+1`
-/

namespace A182189.P2726705444699601447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001109 n + 1

end

end A182189.P2726705444699601447

namespace A182189

/-- `2*A001109(n)+1` -/
def P2726705444699601447.Spec : Prop :=
  ∀ n, P2726705444699601447.a n = A182189 n

end A182189

/-! ## A182189.P13736695122538799488

`A249576(6*n)+1`
-/

namespace A182189.P13736695122538799488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (6 * n) + 1

end

end A182189.P13736695122538799488

namespace A182189

/-- `A249576(6*n)+1` -/
def P13736695122538799488.Spec : Prop :=
  ∀ n, P13736695122538799488.a n = A182189 n

end A182189

/-! ## A182189.P3427957092759105776

`or(1, A215928(2*n))`
-/

namespace A182189.P3427957092759105776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A215928 (2 * n))

end

end A182189.P3427957092759105776

namespace A182189

/-- `or(1, A215928(2*n))` -/
def P3427957092759105776.Spec : Prop :=
  ∀ n, P3427957092759105776.a n = A182189 n

end A182189

/-! ## A182189.P8377595606831280568

`1-A176981(Δ[n²])`
-/

namespace A182189.P8377595606831280568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A176981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182189.P8377595606831280568

namespace A182189

/-- `1-A176981(Δ[n²])` -/
def P8377595606831280568.Spec : Prop :=
  ∀ n, P8377595606831280568.a n = A182189 n

end A182189

/-! ## A182189.P17890023020685279531

`∑[A137199(2*n)]+n`
-/

namespace A182189.P17890023020685279531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A182189.P17890023020685279531

namespace A182189

/-- `∑[A137199(2*n)]+n` -/
def P17890023020685279531.Spec : Prop :=
  ∀ n, P17890023020685279531.a n = A182189 n

end A182189

/-! ## A182189.P16883243592066249052

`A126354(2*(n+1))+1`
-/

namespace A182189.P16883243592066249052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (2 * (n + 1)) + 1

end

end A182189.P16883243592066249052

namespace A182189

/-- `A126354(2*(n+1))+1` -/
def P16883243592066249052.Spec : Prop :=
  ∀ n, P16883243592066249052.a n = A182189 n

end A182189

/-! ## A182189.P18384427620641607629

`1-A215936(2*(n+1))`
-/

namespace A182189.P18384427620641607629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A215936 (2 * (n + 1))

end

end A182189.P18384427620641607629

namespace A182189

/-- `1-A215936(2*(n+1))` -/
def P18384427620641607629.Spec : Prop :=
  ∀ n, P18384427620641607629.a n = A182189 n

end A182189

/-! ## A182189.P16808752558346050283

`A204512(2*n+3)+1`
-/

namespace A182189.P16808752558346050283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (2 * n + 3) + 1

end

end A182189.P16808752558346050283

namespace A182189

/-- `A204512(2*n+3)+1` -/
def P16808752558346050283.Spec : Prop :=
  ∀ n, P16808752558346050283.a n = A182189 n

end A182189

/-! ## A182189.P3681897605312950067

`A075870(n)+a(n-1)` with `a(0)=1`
-/

namespace A182189.P3681897605312950067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075870 n + a (n - 1)

end

end A182189.P3681897605312950067

namespace A182189

/-- `A075870(n)+a(n-1)` -/
def P3681897605312950067.Spec : Prop :=
  ∀ n, P3681897605312950067.a n = A182189 n

end A182189

/-!
# A182190: a(n) = 6*a(n-1) - a(n-2) + 4 with n > 1, a(0)=0, a(1)=4.

The programs for A182190, the canonical program `A182190.P11013254931516319799` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182190 has offset 0).

The definition of A182190 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)+4` (program `A182190.P11013254931516319799`, by `A182190.P11013254931516319799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182190.P10128846184292037793

`ogf(4x/(1-7x+7x^2-x^3))`
-/

namespace A182190.P10128846184292037793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -7, 7, -1] n

end

end A182190.P10128846184292037793

namespace A182190

/-- `ogf(4x/(1-7x+7x^2-x^3))` -/
def P10128846184292037793.Spec : Prop :=
  ∀ n, P10128846184292037793.a n = A182190 n

end A182190

/-! ## A182190.P11013254931516319799

`6*a(n-1)-a(n-2)+4` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182190

/-- `6*a(n-1)-a(n-2)+4` -/
def P11013254931516319799.Spec : Prop :=
  ∀ n, P11013254931516319799.a n = A182190 n

theorem P11013254931516319799.correct : P11013254931516319799.Spec := by
  intro n
  simp only [A182190]

end A182190

/-! ## A182190.P5650827000407532731

`4*A053142(n)`
-/

namespace A182190.P5650827000407532731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A053142 n

end

end A182190.P5650827000407532731

namespace A182190

/-- `4*A053142(n)` -/
def P5650827000407532731.Spec : Prop :=
  ∀ n, P5650827000407532731.a n = A182190 n

end A182190

/-! ## A182190.P9792965484549032175

`A001653(n+1)-1`
-/

namespace A182190.P9792965484549032175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) - 1

end

end A182190.P9792965484549032175

namespace A182190

/-- `A001653(n+1)-1` -/
def P9792965484549032175.Spec : Prop :=
  ∀ n, P9792965484549032175.a n = A182190 n

end A182190

/-! ## A182190.P7031920736842414601

`A000129(2*n+1)-1`
-/

namespace A182190.P7031920736842414601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n + 1) - 1

end

end A182190.P7031920736842414601

namespace A182190

/-- `A000129(2*n+1)-1` -/
def P7031920736842414601.Spec : Prop :=
  ∀ n, P7031920736842414601.a n = A182190 n

end A182190

/-! ## A182190.P10722090215330747935

`A143608(n)*A143608(n+1)`
-/

namespace A182190.P10722090215330747935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 n * A143608 (n + 1)

end

end A182190.P10722090215330747935

namespace A182190

/-- `A143608(n)*A143608(n+1)` -/
def P10722090215330747935.Spec : Prop :=
  ∀ n, P10722090215330747935.a n = A182190 n

end A182190

/-! ## A182190.P3016035022176074964

`∑[ogf(4x/(1-6x+x^2))]`
-/

namespace A182190.P3016035022176074964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182190.P3016035022176074964

namespace A182190

/-- `∑[ogf(4x/(1-6x+x^2))]` -/
def P3016035022176074964.Spec : Prop :=
  ∀ n, P3016035022176074964.a n = A182190 n

end A182190

/-! ## A182190.P17972697759799748101

`∑[6*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=4`
-/

namespace A182190.P17972697759799748101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182190.P17972697759799748101

namespace A182190

/-- `∑[6*a(n-1)-a(n-2)]` -/
def P17972697759799748101.Spec : Prop :=
  ∀ n, P17972697759799748101.a n = A182190 n

end A182190

/-! ## A182190.P11335796945460852861

`6*a(n-1)+4-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A182190.P11335796945460852861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  6 * a (n - 1) + 4 - a (n - 2)

end

end A182190.P11335796945460852861

namespace A182190

/-- `6*a(n-1)+4-a(n-2)` -/
def P11335796945460852861.Spec : Prop :=
  ∀ n, P11335796945460852861.a n = A182190 n

theorem P11335796945460852861.correct : P11335796945460852861.Spec := by
  intro n
  simp only [A182190, Nat.add_sub_cancel, A182190.P11335796945460852861.a, A182190.P11013254931516319799.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182190

/-! ## A182190.P1455220172738000722

`4-(a(n-2)-6*a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A182190.P1455220172738000722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  4 - (a (n - 2) - 6 * a (n - 1))

end

end A182190.P1455220172738000722

namespace A182190

/-- `4-(a(n-2)-6*a(n-1))` -/
def P1455220172738000722.Spec : Prop :=
  ∀ n, P1455220172738000722.a n = A182190 n

end A182190

/-! ## A182190.P16548756627293178167

`record[a(n-2)-a(n-1)-a(n-1)]-1` with `a(0)=1, a(1)=0`
-/

namespace A182190.P16548756627293178167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A182190.P16548756627293178167

namespace A182190

/-- `record[a(n-2)-a(n-1)-a(n-1)]-1` -/
def P16548756627293178167.Spec : Prop :=
  ∀ n, P16548756627293178167.a n = A182190 n

end A182190

/-! ## A182190.P9950831803319752283

`∑[A005319(n)]`
-/

namespace A182190.P9950831803319752283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182190.P9950831803319752283

namespace A182190

/-- `∑[A005319(n)]` -/
def P9950831803319752283.Spec : Prop :=
  ∀ n, P9950831803319752283.a n = A182190 n

end A182190

/-! ## A182190.P1837502563179066686

`2*A053141(n)`
-/

namespace A182190.P1837502563179066686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053141 n

end

end A182190.P1837502563179066686

namespace A182190

/-- `2*A053141(n)` -/
def P1837502563179066686.Spec : Prop :=
  ∀ n, P1837502563179066686.a n = A182190 n

end A182190

/-! ## A182190.P15020105329120924998

`A111954(Δ[n²])`
-/

namespace A182190.P15020105329120924998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182190.P15020105329120924998

namespace A182190

/-- `A111954(Δ[n²])` -/
def P15020105329120924998.Spec : Prop :=
  ∀ n, P15020105329120924998.a n = A182190 n

end A182190

/-! ## A182190.P3166708750027803147

`Δ[A001109(n)]-1`
-/

namespace A182190.P3166708750027803147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A182190.P3166708750027803147

namespace A182190

/-- `Δ[A001109(n)]-1` -/
def P3166708750027803147.Spec : Prop :=
  ∀ n, P3166708750027803147.a n = A182190 n

end A182190

/-! ## A182190.P2055887124422792105

`∑[2*A001542(n)]`
-/

namespace A182190.P2055887124422792105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182190.P2055887124422792105

namespace A182190

/-- `∑[2*A001542(n)]` -/
def P2055887124422792105.Spec : Prop :=
  ∀ n, P2055887124422792105.a n = A182190 n

end A182190

/-! ## A182190.P13581943586665751218

`∑[A089499(2*n)]`
-/

namespace A182190.P13581943586665751218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182190.P13581943586665751218

namespace A182190

/-- `∑[A089499(2*n)]` -/
def P13581943586665751218.Spec : Prop :=
  ∀ n, P13581943586665751218.a n = A182190 n

end A182190

/-! ## A182190.P10275540053332400589

`∑[A143608(2*n)]`
-/

namespace A182190.P10275540053332400589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182190.P10275540053332400589

namespace A182190

/-- `∑[A143608(2*n)]` -/
def P10275540053332400589.Spec : Prop :=
  ∀ n, P10275540053332400589.a n = A182190 n

end A182190

/-! ## A182190.P1143883452726972536

`∑[A081554(n)/2]`
-/

namespace A182190.P1143883452726972536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081554 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182190.P1143883452726972536

namespace A182190

/-- `∑[A081554(n)/2]` -/
def P1143883452726972536.Spec : Prop :=
  ∀ n, P1143883452726972536.a n = (A182190 n : ℚ)

end A182190

/-! ## A182190.P16274301179121933429

`record[A077985(n)-1]`
-/

namespace A182190.P16274301179121933429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182190.P16274301179121933429

namespace A182190

/-- `record[A077985(n)-1]` -/
def P16274301179121933429.Spec : Prop :=
  ∀ n, P16274301179121933429.a n = A182190 n

end A182190

/-!
# A182191: a(n) = 6*a(n-1) - a(n-2) + 12 with n>1, a(0)=-1, a(1)=5.

The programs for A182191, the canonical program `A182191.P18338558622631176917` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182191 has offset 0).

The definition of A182191 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)+12` (program `A182191.P18338558622631176917`, by `A182191.P18338558622631176917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182191.P15785507105246162284

`ogf((-1+12x+x^2)/(1-7x+7x^2-x^3))`
-/

namespace A182191.P15785507105246162284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 12, 1] [1, -7, 7, -1] n

end

end A182191.P15785507105246162284

namespace A182191

/-- `ogf((-1+12x+x^2)/(1-7x+7x^2-x^3))` -/
def P15785507105246162284.Spec : Prop :=
  ∀ n, P15785507105246162284.a n = A182191 n

end A182191

/-! ## A182191.P18338558622631176917

`6*a(n-1)-a(n-2)+12` with `a(0)=-1, a(1)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182191

/-- `6*a(n-1)-a(n-2)+12` -/
def P18338558622631176917.Spec : Prop :=
  ∀ n, P18338558622631176917.a n = A182191 n

theorem P18338558622631176917.correct : P18338558622631176917.Spec := by
  intro n
  simp only [A182191]

end A182191

/-! ## A182191.P15345297756909739820

`2*A038723(n)-3`
-/

namespace A182191.P15345297756909739820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038723 n - 3

end

end A182191.P15345297756909739820

namespace A182191

/-- `2*A038723(n)-3` -/
def P15345297756909739820.Spec : Prop :=
  ∀ n, P15345297756909739820.a n = A182191 n

end A182191

/-! ## A182191.P9834563332967827169

`A000129(2*n)+A002203(2*n)-3`
-/

namespace A182191.P9834563332967827169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n) + A002203 (2 * n) - 3

end

end A182191.P9834563332967827169

namespace A182191

/-- `A000129(2*n)+A002203(2*n)-3` -/
def P9834563332967827169.Spec : Prop :=
  ∀ n, P9834563332967827169.a n = A182191 n

end A182191

/-! ## A182191.P8147599586622140080

`A000129(2*n+2)-2*A000129(2*n)-3`
-/

namespace A182191.P8147599586622140080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n + 2) - 2 * A000129 (2 * n) - 3

end

end A182191.P8147599586622140080

namespace A182191

/-- `A000129(2*n+2)-2*A000129(2*n)-3` -/
def P8147599586622140080.Spec : Prop :=
  ∀ n, P8147599586622140080.a n = A182191 n

end A182191

/-! ## A182191.P6904931436621335804

`A266507(n)-3`
-/

namespace A182191.P6904931436621335804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266507 n - 3

end

end A182191.P6904931436621335804

namespace A182191

/-- `A266507(n)-3` -/
def P6904931436621335804.Spec : Prop :=
  ∀ n, P6904931436621335804.a n = A182191 n

end A182191

/-! ## A182191.P515651855575029487

`A174192(2*n)-2`
-/

namespace A182191.P515651855575029487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174192 (2 * n) - 2

end

end A182191.P515651855575029487

namespace A182191

/-- `A174192(2*n)-2` -/
def P515651855575029487.Spec : Prop :=
  ∀ n, P515651855575029487.a n = A182191 n

end A182191

/-! ## A182191.P16616373293757281373

`A111955(Δ[n²])-2`
-/

namespace A182191.P16616373293757281373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111955 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A182191.P16616373293757281373

namespace A182191

/-- `A111955(Δ[n²])-2` -/
def P16616373293757281373.Spec : Prop :=
  ∀ n, P16616373293757281373.a n = A182191 n

end A182191

/-! ## A182191.P18146605630981843008

`A078343(Δ[n²])-3`
-/

namespace A182191.P18146605630981843008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A182191.P18146605630981843008

namespace A182191

/-- `A078343(Δ[n²])-3` -/
def P18146605630981843008.Spec : Prop :=
  ∀ n, P18146605630981843008.a n = A182191 n

end A182191

/-! ## A182191.P13815548321843069222

`A217975(Δ[n²])-3`
-/

namespace A182191.P13815548321843069222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217975 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A182191.P13815548321843069222

namespace A182191

/-- `A217975(Δ[n²])-3` -/
def P13815548321843069222.Spec : Prop :=
  ∀ n, P13815548321843069222.a n = A182191 n

end A182191

/-! ## A182191.P7718219172994259441

`∑[A265107(2*n+1)]-2`
-/

namespace A182191.P7718219172994259441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265107 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A182191.P7718219172994259441

namespace A182191

/-- `∑[A265107(2*n+1)]-2` -/
def P7718219172994259441.Spec : Prop :=
  ∀ n, P7718219172994259441.a n = A182191 n

end A182191

/-! ## A182191.P8178601082494230186

`A266504(A016813(n))-3`
-/

namespace A182191.P8178601082494230186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A016813 n).toNat - 3

end

end A182191.P8178601082494230186

namespace A182191

/-- `A266504(A016813(n))-3` -/
def P8178601082494230186.Spec : Prop :=
  ∀ n, P8178601082494230186.a n = A182191 n

end A182191

/-! ## A182191.P5493021854480287659

`A001652(n)+A072221(n)-2`
-/

namespace A182191.P5493021854480287659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n + (A072221 n - 2)

end

end A182191.P5493021854480287659

namespace A182191

/-- `A001652(n)+A072221(n)-2` -/
def P5493021854480287659.Spec : Prop :=
  ∀ n, P5493021854480287659.a n = A182191 n

end A182191

/-! ## A182191.P8622368120544060262

`A001541(n)+A182190(n)-2`
-/

namespace A182191.P8622368120544060262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (A182190 n - 2)

end

end A182191.P8622368120544060262

namespace A182191

/-- `A001541(n)+A182190(n)-2` -/
def P8622368120544060262.Spec : Prop :=
  ∀ n, P8622368120544060262.a n = A182191 n

end A182191

/-! ## A182191.P16431033291459373325

`A182193(n)+A143608(2*n)`
-/

namespace A182191.P16431033291459373325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182193 n + A143608 (2 * n)

end

end A182191.P16431033291459373325

namespace A182191

/-- `A182193(n)+A143608(2*n)` -/
def P16431033291459373325.Spec : Prop :=
  ∀ n, P16431033291459373325.a n = A182191 n

end A182191

/-! ## A182191.P12107057177437488510

`2*A182190(n)-A182189(n)`
-/

namespace A182191.P12107057177437488510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182190 n - A182189 n

end

end A182191.P12107057177437488510

namespace A182191

/-- `2*A182190(n)-A182189(n)` -/
def P12107057177437488510.Spec : Prop :=
  ∀ n, P12107057177437488510.a n = A182191 n

end A182191

/-! ## A182191.P14490613734260487913

`A001541(n)+∑[A005319(n)]-2`
-/

namespace A182191.P14490613734260487913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A182191.P14490613734260487913

namespace A182191

/-- `A001541(n)+∑[A005319(n)]-2` -/
def P14490613734260487913.Spec : Prop :=
  ∀ n, P14490613734260487913.a n = A182191 n

end A182191

/-! ## A182191.P14817617038747631132

`∑[A002315(n)]-(A182435(n)+2)`
-/

namespace A182191.P14817617038747631132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A182435 n + 2)

end

end A182191.P14817617038747631132

namespace A182191

/-- `∑[A002315(n)]-(A182435(n)+2)` -/
def P14817617038747631132.Spec : Prop :=
  ∀ n, P14817617038747631132.a n = A182191 n

end A182191

/-! ## A182191.P15959623419407703975

`A001541(n)+A001653(n+1)-3`
-/

namespace A182191.P15959623419407703975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (A001653 (n + 1) - 3)

end

end A182191.P15959623419407703975

namespace A182191

/-- `A001541(n)+A001653(n+1)-3` -/
def P15959623419407703975.Spec : Prop :=
  ∀ n, P15959623419407703975.a n = A182191 n

end A182191

/-! ## A182191.P5571788228214863613

`A114689(2*n)-(A100828(2*n)+1)`
-/

namespace A182191.P5571788228214863613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114689 (2 * n) - (A100828 (2 * n) + 1)

end

end A182191.P5571788228214863613

namespace A182191

/-- `A114689(2*n)-(A100828(2*n)+1)` -/
def P5571788228214863613.Spec : Prop :=
  ∀ n, P5571788228214863613.a n = A182191 n

end A182191

/-!
# A182192: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal or vertical neighbor.

The programs for A182192, there is no canonical definition to state claims against.
-/

/-! ## A182192.P3487176526054692240

`A215904(∑[2*A083964(n+1)])`
-/

namespace A182192.P3487176526054692240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182192.P3487176526054692240

/-! ## A182192.P10194755903983045391

`A215924(A103517(n)*A153695(n+1))`
-/

namespace A182192.P10194755903983045391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (A103517 n * A153695 (n + 1)).toNat

end

end A182192.P10194755903983045391

/-!
# A182193: Sequence of row differences related to table A182355.

The programs for A182193, the canonical program `A182193.P2947870397431300376` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182193 has offset 0).

The definition of A182193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182193.P3764523652019982019

`ogf((-1+8x+5x^2)/(1-7x+7x^2-x^3))`
-/

namespace A182193.P3764523652019982019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 8, 5] [1, -7, 7, -1] n

end

end A182193.P3764523652019982019

namespace A182193

/-- `ogf((-1+8x+5x^2)/(1-7x+7x^2-x^3))` -/
def P3764523652019982019.Spec : Prop :=
  ∀ n, P3764523652019982019.a n = A182193 n

end A182193

/-! ## A182193.P2947870397431300376

`6*a(n-1)-a(n-2)+12` with `a(0)=-1, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182193

/-- `6*a(n-1)-a(n-2)+12` -/
def P2947870397431300376.Spec : Prop :=
  ∀ n, P2947870397431300376.a n = A182193 n

theorem P2947870397431300376.correct : P2947870397431300376.Spec := by
  intro n
  simp only [A182193]

end A182193

/-! ## A182193.P3376608533951365440

`A002203(2*n)-A000129(2*n)-3`
-/

namespace A182193.P3376608533951365440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n) - A000129 (2 * n) - 3

end

end A182193.P3376608533951365440

namespace A182193

/-- `A002203(2*n)-A000129(2*n)-3` -/
def P3376608533951365440.Spec : Prop :=
  ∀ n, P3376608533951365440.a n = A182193 n

end A182193

/-! ## A182193.P15995776458664979480

`∑[ogf((-1+8x+5x^2)/(1-6x+x^2))]`
-/

namespace A182193.P15995776458664979480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 8, 5] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182193.P15995776458664979480

namespace A182193

/-- `∑[ogf((-1+8x+5x^2)/(1-6x+x^2))]` -/
def P15995776458664979480.Spec : Prop :=
  ∀ n, P15995776458664979480.a n = A182193 n

end A182193

/-! ## A182193.P5432707085050401180

`2*A038725(n)-3`
-/

namespace A182193.P5432707085050401180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038725 n - 3

end

end A182193.P5432707085050401180

namespace A182193

/-- `2*A038725(n)-3` -/
def P5432707085050401180.Spec : Prop :=
  ∀ n, P5432707085050401180.a n = A182193 n

end A182193

/-! ## A182193.P5235887371744567870

`2*A108261(n)-5`
-/

namespace A182193.P5235887371744567870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108261 n - 5

end

end A182193.P5235887371744567870

namespace A182193

/-- `2*A108261(n)-5` -/
def P5235887371744567870.Spec : Prop :=
  ∀ n, P5235887371744567870.a n = A182193 n

end A182193

/-! ## A182193.P4401373205418116226

`A266504(4*n)-3`
-/

namespace A182193.P4401373205418116226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (4 * n) - 3

end

end A182193.P4401373205418116226

namespace A182193

/-- `A266504(4*n)-3` -/
def P4401373205418116226.Spec : Prop :=
  ∀ n, P4401373205418116226.a n = A182193 n

end A182193

/-! ## A182193.P9377762739911201053

`2*A006452(2*n)-3`
-/

namespace A182193.P9377762739911201053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006452 (2 * n) - 3

end

end A182193.P9377762739911201053

namespace A182193

/-- `2*A006452(2*n)-3` -/
def P9377762739911201053.Spec : Prop :=
  ∀ n, P9377762739911201053.a n = A182193 n

end A182193

/-! ## A182193.P5973686197206388707

`A038762(n)-(A038761(n)+3)`
-/

namespace A182193.P5973686197206388707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038762 n - (A038761 n + 3)

end

end A182193.P5973686197206388707

namespace A182193

/-- `A038762(n)-(A038761(n)+3)` -/
def P5973686197206388707.Spec : Prop :=
  ∀ n, P5973686197206388707.a n = A182193 n

end A182193

/-! ## A182193.P16462699719522048677

`6*A001108(n)-A001653(n+1)`
-/

namespace A182193.P16462699719522048677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001108 n - A001653 (n + 1)

end

end A182193.P16462699719522048677

namespace A182193

/-- `6*A001108(n)-A001653(n+1)` -/
def P16462699719522048677.Spec : Prop :=
  ∀ n, P16462699719522048677.a n = A182193 n

end A182193

/-! ## A182193.P14127799510341570173

`A100227(2*n)-(A111954(2*n)+1)`
-/

namespace A182193.P14127799510341570173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 (2 * n) - (A111954 (2 * n) + 1)

end

end A182193.P14127799510341570173

namespace A182193

/-- `A100227(2*n)-(A111954(2*n)+1)` -/
def P14127799510341570173.Spec : Prop :=
  ∀ n, P14127799510341570173.a n = A182193 n

end A182193

/-! ## A182193.P7521607584496426462

`A080039(2*n)-(A000129(2*n)+2)`
-/

namespace A182193.P7521607584496426462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 (2 * n) - (A000129 (2 * n) + 2)

end

end A182193.P7521607584496426462

namespace A182193

/-- `A080039(2*n)-(A000129(2*n)+2)` -/
def P7521607584496426462.Spec : Prop :=
  ∀ n, P7521607584496426462.a n = A182193 n

end A182193

/-! ## A182193.P10248323823365640368

`A100227(2*n)-(A000129(2*n)+2)`
-/

namespace A182193.P10248323823365640368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 (2 * n) - (A000129 (2 * n) + 2)

end

end A182193.P10248323823365640368

namespace A182193

/-- `A100227(2*n)-(A000129(2*n)+2)` -/
def P10248323823365640368.Spec : Prop :=
  ∀ n, P10248323823365640368.a n = A182193 n

end A182193

/-! ## A182193.P15108270374038293771

`A002203(2*n)-(A111954(2*n)+2)`
-/

namespace A182193.P15108270374038293771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n) - (A111954 (2 * n) + 2)

end

end A182193.P15108270374038293771

namespace A182193

/-- `A002203(2*n)-(A111954(2*n)+2)` -/
def P15108270374038293771.Spec : Prop :=
  ∀ n, P15108270374038293771.a n = A182193 n

end A182193

/-! ## A182193.P17228894000187619694

`A000129(2*n)+A137199(2*n)-2`
-/

namespace A182193.P17228894000187619694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n) + (A137199 (2 * n) - 2)

end

end A182193.P17228894000187619694

namespace A182193

/-- `A000129(2*n)+A137199(2*n)-2` -/
def P17228894000187619694.Spec : Prop :=
  ∀ n, P17228894000187619694.a n = A182193 n

end A182193

/-! ## A182193.P11263467356961181039

`A182143(2*n)-(A000129(2*n)+2)`
-/

namespace A182193.P11263467356961181039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 (2 * n) - (A000129 (2 * n) + 2)

end

end A182193.P11263467356961181039

namespace A182193

/-- `A182143(2*n)-(A000129(2*n)+2)` -/
def P11263467356961181039.Spec : Prop :=
  ∀ n, P11263467356961181039.a n = A182193 n

end A182193

/-! ## A182193.P9252376665768453081

`A098790(2*n)-(A353580(2*n)+2)`
-/

namespace A182193.P9252376665768453081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 (2 * n) - (A353580 (2 * n) + 2)

end

end A182193.P9252376665768453081

namespace A182193

/-- `A098790(2*n)-(A353580(2*n)+2)` -/
def P9252376665768453081.Spec : Prop :=
  ∀ n, P9252376665768453081.a n = A182193 n

end A182193

/-! ## A182193.P11542045254927207669

`A001333(2*n+1)-(A111955(2*n)+2)`
-/

namespace A182193.P11542045254927207669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (2 * n + 1) - (A111955 (2 * n) + 2)

end

end A182193.P11542045254927207669

namespace A182193

/-- `A001333(2*n+1)-(A111955(2*n)+2)` -/
def P11542045254927207669.Spec : Prop :=
  ∀ n, P11542045254927207669.a n = A182193 n

end A182193

/-! ## A182193.P12661742531624512978

`A176981(2*n+1)+A100227(2*n)-2`
-/

namespace A182193.P12661742531624512978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (2 * n + 1) + (A100227 (2 * n) - 2)

end

end A182193.P12661742531624512978

namespace A182193

/-- `A176981(2*n+1)+A100227(2*n)-2` -/
def P12661742531624512978.Spec : Prop :=
  ∀ n, P12661742531624512978.a n = A182193 n

end A182193

/-! ## A182193.P12381563319780219178

`A111955(2*n+1)-2*A111954(2*n)`
-/

namespace A182193.P12381563319780219178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111955 (2 * n + 1) - 2 * A111954 (2 * n)

end

end A182193.P12381563319780219178

namespace A182193

/-- `A111955(2*n+1)-2*A111954(2*n)` -/
def P12381563319780219178.Spec : Prop :=
  ∀ n, P12381563319780219178.a n = A182193 n

end A182193

/-!
# A182195: Numbers k for which no numbers w,x,y, all in {1,...,k}, satisfy w^2 + x^2 + y^2 = 2k.

The programs for A182195, there is no canonical definition to state claims against.
-/

/-! ## A182195.P12460153922043840763

`eq[0, A211649(n)]`
-/

namespace A182195.P12460153922043840763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182195.P12460153922043840763

/-! ## A182195.P16073769461126695057

`eq[0, A025427(2*n)]`
-/

namespace A182195.P16073769461126695057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182195.P16073769461126695057

/-! ## A182195.P9398401539207652747

`eq[0, A037215(2*n)]`
-/

namespace A182195.P9398401539207652747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182195.P9398401539207652747

/-! ## A182195.P18288898325022409663

`eq[0, A063691(2*n)]`
-/

namespace A182195.P18288898325022409663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182195.P18288898325022409663

/-! ## A182195.P17238005623359426087

`eq[0, A347802(2*n)]`
-/

namespace A182195.P17238005623359426087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347802 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182195.P17238005623359426087

/-! ## A182195.P4734037992021992708

`A008626(A178615(n+2))`
-/

namespace A182195.P4734037992021992708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008626 (A178615 (n + 2)).toNat

end

end A182195.P4734037992021992708

/-! ## A182195.P3528880312270444956

`eq[A000161(n), A000164(2*n)]`
-/

namespace A182195.P3528880312270444956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182195.P3528880312270444956

/-!
# A182197: a(n) = round(e^(n+1)/(e^2+1)).

The programs for A182197, the canonical program `A182197.P3636812512801989307` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182197 has offset 0).

The definition of A182197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182197.P3636812512801989307

`round(exp(n+1)/(1+exp(2)))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A182197

/-- `round(exp(n+1)/(1+exp(2)))` -/
def P3636812512801989307.Spec : Prop :=
  ∀ n, P3636812512801989307.a n = A182197 n

theorem P3636812512801989307.correct : P3636812512801989307.Spec := by
  intro n
  simp only [A182197]

end A182197

/-! ## A182197.P18004655542417382059

`round(cosh(n)/cosh(1))-and(1, (-2)^n+2)`
-/

namespace A182197.P18004655542417382059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (n : ℝ) / Real.cosh (1 : ℝ)) - Int.land 1 ((-2) ^ n + 2)

end

end A182197.P18004655542417382059

namespace A182197

/-- `round(cosh(n)/cosh(1))-and(1, (-2)^n+2)` -/
def P18004655542417382059.Spec : Prop :=
  ∀ n, P18004655542417382059.a n = A182197 n

end A182197

/-! ## A182197.P8105713642279372906

`round(cosh(n)/cosh(1))-A000007(n)`
-/

namespace A182197.P8105713642279372906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (n : ℝ) / Real.cosh (1 : ℝ)) - A000007 n

end

end A182197.P8105713642279372906

namespace A182197

/-- `round(cosh(n)/cosh(1))-A000007(n)` -/
def P8105713642279372906.Spec : Prop :=
  ∀ n, P8105713642279372906.a n = A182197 n

end A182197

/-! ## A182197.P15016244441651003456

`round(cosh(n)/cosh(1))%A049853(n)²`
-/

namespace A182197.P15016244441651003456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.cosh (n : ℝ) / Real.cosh (1 : ℝ))) (A049853 n ^ 2)

end

end A182197.P15016244441651003456

namespace A182197

/-- `round(cosh(n)/cosh(1))%A049853(n)²` -/
def P15016244441651003456.Spec : Prop :=
  ∀ n, P15016244441651003456.a n = A182197 n

end A182197

/-! ## A182197.P82113560663195363

`round(cosh(n)/cosh(1))-A010051(2*(n+1))`
-/

namespace A182197.P82113560663195363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (n : ℝ) / Real.cosh (1 : ℝ)) - A010051 (2 * (n + 1))

end

end A182197.P82113560663195363

namespace A182197

/-- `round(cosh(n)/cosh(1))-A010051(2*(n+1))` -/
def P82113560663195363.Spec : Prop :=
  ∀ n, P82113560663195363.a n = A182197 n

end A182197

/-! ## A182197.P14527635637908065754

`round(cosh(n)/cosh(1))-A267525(n²)`
-/

namespace A182197.P14527635637908065754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (n : ℝ) / Real.cosh (1 : ℝ)) - A267525 (n ^ 2)

end

end A182197.P14527635637908065754

namespace A182197

/-- `round(cosh(n)/cosh(1))-A267525(n²)` -/
def P14527635637908065754.Spec : Prop :=
  ∀ n, P14527635637908065754.a n = A182197 n

end A182197

/-! ## A182197.P15105517206367204665

`round(cosh(n)/cosh(1))%A151024(n)`
-/

namespace A182197.P15105517206367204665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.cosh (n : ℝ) / Real.cosh (1 : ℝ))) (A151024 n)

end

end A182197.P15105517206367204665

namespace A182197

/-- `round(cosh(n)/cosh(1))%A151024(n)` -/
def P15105517206367204665.Spec : Prop :=
  ∀ n, P15105517206367204665.a n = A182197 n

end A182197

/-!
# A182198: Primes of form a^2 + b^2 such that a^4 + b^4 is prime.

The programs for A182198, there is no canonical definition to state claims against.
-/

/-! ## A182198.P10462576154779505668

`A002313(lt[A241335(n), A191730(n+1)])`
-/

namespace A182198.P10462576154779505668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182198.P10462576154779505668

/-! ## A182198.P11094409709284655520

`A233346(lt[A045648(n+1), A298593(n+1)])`
-/

namespace A182198.P11094409709284655520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233346 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182198.P11094409709284655520

/-! ## A182198.P8271896392279561146

`lt[0, sin(A205535(n))]`
-/

namespace A182198.P8271896392279561146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A205535 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A182198.P8271896392279561146

/-! ## A182198.P3153114429143922817

`p?[A091010(3*n+2)]`
-/

namespace A182198.P3153114429143922817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091010 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182198.P3153114429143922817

/-! ## A182198.P12390755882917436226

`eq[gcd(3, n), A205535(n+1)]+1`
-/

namespace A182198.P12390755882917436226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205535 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182198.P12390755882917436226

