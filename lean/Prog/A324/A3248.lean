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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
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
import Seq.B012.C000
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
# A324800: Numerator of Sum_{k=1..n} 1/(k*(prime(k+1)-prime(k))).

The programs for A324800, there is no canonical definition to state claims against.
-/

/-! ## A324800.P17016172804449139951

`or(1, A065515(A091527(n)))`
-/

namespace A324800.P17016172804449139951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065515 (A091527 n).toNat)

end

end A324800.P17016172804449139951

/-!
# A324801: Denominator of Sum_{k=1..n} 1/(k*(prime(k+1)-prime(k))).

The programs for A324801, there is no canonical definition to state claims against.
-/

/-! ## A324801.P5266130812372402201

`A066616(n+1)*A348001(A349111(n+1))`
-/

namespace A324801.P5266130812372402201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066616 (n + 1) * A348001 (A349111 (n + 1)).toNat

end

end A324801.P5266130812372402201

/-! ## A324801.P16361373436493925913

`∏[A082299(A082299(n+1)^A105560(n+1))]`
-/

namespace A324801.P16361373436493925913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (SequenceMachineLib.roundAway ((A082299 (n + 1) : ℚ) ^ (A105560 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A324801.P16361373436493925913

/-! ## A324801.P18342026018222920040

`A104588(n+1)*A257088(A058312(n+1))`
-/

namespace A324801.P18342026018222920040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104588 (n + 1) * A257088 (A058312 (n + 1)).toNat

end

end A324801.P18342026018222920040

/-! ## A324801.P12332181095818198683

`lcm(A028310(a(n-1)), A141042(n+1))` with `a(0)=1`
-/

namespace A324801.P12332181095818198683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A028310 (a (n - 1))) (A141042 (n + 1))

end

end A324801.P12332181095818198683

/-! ## A324801.P8714236301190597336

`A014684(a(n-1))*A059806(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A324801.P8714236301190597336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A014684 (a (n - 1)).toNat * A059806 (n + 1)

end

end A324801.P8714236301190597336

/-!
# A324802: T(n,k) is the number of non-equivalent distinguishing partitions of the cycle on n vertices with exactly k parts. Regular triangle read by rows, n >= 1, 1 <= k <= n.

The programs for A324802, there is no canonical definition to state claims against.
-/

/-! ## A324802.P2063596872157909902

`A320647(n+1)-A102683(A281563(n+1))`
-/

namespace A324802.P2063596872157909902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (n + 1) - A102683 (A281563 (n + 1)).toNat

end

end A324802.P2063596872157909902

/-!
# A324803: T(n,k) is the number of non-equivalent distinguishing partitions of the cycle on n vertices with at most k part. Square array read by descending antidiagonals, n >= 1, k >= 1.

The programs for A324803, there is no canonical definition to state claims against.
-/

/-! ## A324803.P3898302295054033653

`A320742(n+1)+A178798(A320742(n+1))`
-/

namespace A324803.P3898302295054033653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) + A178798 (A320742 (n + 1)).toNat

end

end A324803.P3898302295054033653

/-! ## A324803.P4924911657973561098

`A320742(n+1)-A283001(A320757(n+1))`
-/

namespace A324803.P4924911657973561098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) - A283001 (A320757 (n + 1)).toNat

end

end A324803.P4924911657973561098

/-! ## A324803.P17018138167069980922

`A320742(n+1)-A316863(A320742(n+1)²)`
-/

namespace A324803.P17018138167069980922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) - A316863 (A320742 (n + 1) ^ 2).toNat

end

end A324803.P17018138167069980922

/-! ## A324803.P7876264200324683347

`A320742(n+1)-A121373(A101745(2*n+3))`
-/

namespace A324803.P7876264200324683347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) - A121373 (A101745 (2 * n + 3)).toNat

end

end A324803.P7876264200324683347

/-! ## A324803.P17877467010988760942

`A320742(n+1)-A335520(A209297(n+1))`
-/

namespace A324803.P17877467010988760942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) - A335520 (A209297 (n + 1)).toNat

end

end A324803.P17877467010988760942

/-!
# A324804: a(n) is the number of endofunctions on a set of size n with preimage constraint {0, 1, 2, 3, 4}.

The programs for A324804, there is no canonical definition to state claims against.
-/

/-! ## A324804.P18024765372200536698

`A306800(A052905(n+2))`
-/

namespace A324804.P18024765372200536698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (A052905 (n + 2)).toNat

end

end A324804.P18024765372200536698

/-! ## A324804.P5119463371619853448

`A306800(A000096(n+4)-4)`
-/

namespace A324804.P5119463371619853448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (A000096 (n + 4) - 4).toNat

end

end A324804.P5119463371619853448

/-! ## A324804.P9004830288007790320

`A306800(eq[5, A004736(n+1)])`
-/

namespace A324804.P9004830288007790320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324804.P9004830288007790320

/-! ## A324804.P8279973875406164997

`A306800(A000217(n+4)+n)`
-/

namespace A324804.P8279973875406164997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A324804.P8279973875406164997

/-! ## A324804.P1698965226473417833

`A306800(Δ[A023545(n+1)]-1)`
-/

namespace A324804.P1698965226473417833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (f1 (n + 1) - f1 n - 1).toNat

end

end A324804.P1698965226473417833

/-!
# A324805: a(n) is the number of endofunctions on a set of size n with preimage constraint {0, 1, 2, 3, 4, 5}.

The programs for A324805, there is no canonical definition to state claims against.
-/

/-! ## A324805.P11425379911996884053

`A306800(A056119(n)+15)`
-/

namespace A324805.P11425379911996884053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (A056119 n + 15).toNat

end

end A324805.P11425379911996884053

/-! ## A324805.P5523383817436319308

`A306800(eq[6, A193739(n)])`
-/

namespace A324805.P5523383817436319308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324805.P5523383817436319308

/-! ## A324805.P10285322007356709887

`A306800(eq[6, A004736(n+1)])`
-/

namespace A324805.P10285322007356709887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324805.P10285322007356709887

/-! ## A324805.P8682016973298317532

`A306800(A000217(n+5)+n)`
-/

namespace A324805.P8682016973298317532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (A000217 (n + 5) + (n : ℤ)).toNat

end

end A324805.P8682016973298317532

/-!
# A324807: a(n) is the number of endofunctions on a set of size n with preimage constraint {0, 1, 2, 3, 4, 5, 6, 7}.

The programs for A324807, there is no canonical definition to state claims against.
-/

/-! ## A324807.P10246034654969124077

`A306800(eq[8, A193739(n)])`
-/

namespace A324807.P10246034654969124077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324807.P10246034654969124077

/-!
# A324810: Sum of A324828(d) over the divisors d of n.

The programs for A324810, there is no canonical definition to state claims against.
-/

/-! ## A324810.P1360291570206845764

`∑{d}[n+1, A324828(#)]`
-/

namespace A324810.P1360291570206845764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324828 d

end

end A324810.P1360291570206845764

/-! ## A324810.P14853255597641877659

`∑{d}[A080513(2*n), A324828(#)]%Δ[n²]`
-/

namespace A324810.P14853255597641877659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A324828 d) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A324810.P14853255597641877659

/-! ## A324810.P6889324948906167700

`∑{d}[A080513(2*n), A324828(#)]*A054977(n)`
-/

namespace A324810.P6889324948906167700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, A324828 d) * A054977 n

end

end A324810.P6889324948906167700

/-! ## A324810.P17524533449928770597

`A001221(A350068(∏{p}[n+1, gcd((n+1)*(n+2), #²)])!)`
-/

namespace A324810.P17524533449928770597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A350068 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2))).toNat)

end

end A324810.P17524533449928770597

/-! ## A324810.P12366273673435467870

`A353351(n+1)-A303709(A087304(n+1))`
-/

namespace A324810.P12366273673435467870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) - A303709 (A087304 (n + 1)).toNat

end

end A324810.P12366273673435467870

/-!
# A324811: a(n) = A324728(n) - A061395(n).

The programs for A324811, there is no canonical definition to state claims against.
-/

/-! ## A324811.P15981315862548741357

`A324728(n+1)-A061395(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324811.P15981315862548741357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A061395 (n + 1)

end

end A324811.P15981315862548741357

/-! ## A324811.P4556689268781142256

`A324728(n+1)-A000720(A006530(n+1))`
-/

namespace A324811.P4556689268781142256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A000720 (A006530 (n + 1)).toNat

end

end A324811.P4556689268781142256

/-! ## A324811.P9793990677899629657

`A324728(n+1)-A064741(A064664(n+1))`
-/

namespace A324811.P9793990677899629657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A064741 (A064664 (n + 1)).toNat

end

end A324811.P9793990677899629657

/-! ## A324811.P38656821899062666

`A324728(n+1)-A065770(A088835(n+1))`
-/

namespace A324811.P38656821899062666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A065770 (A088835 (n + 1)).toNat

end

end A324811.P38656821899062666

/-! ## A324811.P13907017560349831874

`A324728(n+1)-A335603(A007947(n+1))`
-/

namespace A324811.P13907017560349831874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A335603 (A007947 (n + 1)).toNat

end

end A324811.P13907017560349831874

/-! ## A324811.P6863526246685088024

`A324728(n+1)-A335603(A109395(n+1))`
-/

namespace A324811.P6863526246685088024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A335603 (A109395 (n + 1)).toNat

end

end A324811.P6863526246685088024

/-! ## A324811.P8171817280538106151

`A324728(n+1)-A065770(A053585(∏{p}[n+1, #]))`
-/

namespace A324811.P8171817280538106151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A065770 (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A324811.P8171817280538106151

/-! ## A324811.P10847903785479182552

`A324728(n+1)-A324728(∏{p}[A053585(n+1), #])`
-/

namespace A324811.P10847903785479182552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A324728 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A324811.P10847903785479182552

/-! ## A324811.P9397156175963518611

`A324735(n+1)+A324829(n+1)-A061395(n+1)`
-/

namespace A324811.P9397156175963518611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324735 (n + 1) + (A324829 (n + 1) - A061395 (n + 1))

end

end A324811.P9397156175963518611

/-! ## A324811.P16025821779026232191

`A324728(n+1)+A339895(n+1)-A339894(n+1)`
-/

namespace A324811.P16025821779026232191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) + (A339895 (n + 1) - A339894 (n + 1))

end

end A324811.P16025821779026232191

/-! ## A324811.P3728537772944405181

`A324728(n+1)-A132090(A105562(n+1))`
-/

namespace A324811.P3728537772944405181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A132090 (A105562 (n + 1)).toNat

end

end A324811.P3728537772944405181

/-!
# A324812: Numbers k such that A156552(k) is a square.

The programs for A324812, the canonical program `A324812.P15702729500118577564` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324812 has offset 1).

The definition of A324812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324812.P15702729500118577564

`record[(n+1)*A324822(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324812

/-- `record[(n+1)*A324822(n+1)]` -/
def P15702729500118577564.Spec : Prop :=
  ∀ n, P15702729500118577564.a n = A324812 (n + 1)

theorem P15702729500118577564.correct : P15702729500118577564.Spec := by
  intro n
  simp only [A324812, Nat.add_sub_cancel]

end A324812

/-! ## A324812.P10544419174276008140

`filter[A324813(n+1), A324822(#)]`
-/

namespace A324812.P10544419174276008140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P10544419174276008140

namespace A324812

/-- `filter[A324813(n+1), A324822(#)]` -/
def P10544419174276008140.Spec : Prop :=
  ∀ n, P10544419174276008140.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P2239800387088957353

`record[and(-A324822(n+1), A000027(n+1))]`
-/

namespace A324812.P2239800387088957353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A324822 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324812.P2239800387088957353

namespace A324812

/-- `record[and(-A324822(n+1), A000027(n+1))]` -/
def P2239800387088957353.Spec : Prop :=
  ∀ n, P2239800387088957353.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P4458474615359679152

`eq[1, A324822(n+1)]+1`
-/

namespace A324812.P4458474615359679152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324812.P4458474615359679152

namespace A324812

/-- `eq[1, A324822(n+1)]+1` -/
def P4458474615359679152.Spec : Prop :=
  ∀ n, (P4458474615359679152.a n : ℤ) = A324812 (n + 1)

end A324812

/-! ## A324812.P1619114571501285646

`filter[A108118(n+1), A324822(#)]`
-/

namespace A324812.P1619114571501285646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P1619114571501285646

namespace A324812

/-- `filter[A108118(n+1), A324822(#)]` -/
def P1619114571501285646.Spec : Prop :=
  ∀ n, P1619114571501285646.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P4653409537500186699

`filter[A359375(n+1), A324822(#)]`
-/

namespace A324812.P4653409537500186699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P4653409537500186699

namespace A324812

/-- `filter[A359375(n+1), A324822(#)]` -/
def P4653409537500186699.Spec : Prop :=
  ∀ n, P4653409537500186699.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P17263897609056371923

`filter[A074232(n+1), A324822(#)]`
-/

namespace A324812.P17263897609056371923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P17263897609056371923

namespace A324812

/-- `filter[A074232(n+1), A324822(#)]` -/
def P17263897609056371923.Spec : Prop :=
  ∀ n, P17263897609056371923.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P10600451088088573236

`filter[A325431(n+1), A324822(#)]`
-/

namespace A324812.P10600451088088573236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P10600451088088573236

namespace A324812

/-- `filter[A325431(n+1), A324822(#)]` -/
def P10600451088088573236.Spec : Prop :=
  ∀ n, P10600451088088573236.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P17604416620393571201

`filter[A001651(n+1), A324822(#)]`
-/

namespace A324812.P17604416620393571201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P17604416620393571201

namespace A324812

/-- `filter[A001651(n+1), A324822(#)]` -/
def P17604416620393571201.Spec : Prop :=
  ∀ n, P17604416620393571201.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P14878249634919631250

`filter[A048103(n+1), A324822(#)]`
-/

namespace A324812.P14878249634919631250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P14878249634919631250

namespace A324812

/-- `filter[A048103(n+1), A324822(#)]` -/
def P14878249634919631250.Spec : Prop :=
  ∀ n, P14878249634919631250.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P5387713648995649952

`filter[A014528(n), A324822(#)]`
-/

namespace A324812.P5387713648995649952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P5387713648995649952

namespace A324812

/-- `filter[A014528(n), A324822(#)]` -/
def P5387713648995649952.Spec : Prop :=
  ∀ n, P5387713648995649952.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P17377646999109661590

`filter[A007417(n+1), A324822(#)]`
-/

namespace A324812.P17377646999109661590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P17377646999109661590

namespace A324812

/-- `filter[A007417(n+1), A324822(#)]` -/
def P17377646999109661590.Spec : Prop :=
  ∀ n, P17377646999109661590.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P838262380330348110

`filter[A042968(n+1), A324822(#)]`
-/

namespace A324812.P838262380330348110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P838262380330348110

namespace A324812

/-- `filter[A042968(n+1), A324822(#)]` -/
def P838262380330348110.Spec : Prop :=
  ∀ n, P838262380330348110.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P14934815626678823585

`filter[A047253(n+1), A324822(#)]`
-/

namespace A324812.P14934815626678823585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P14934815626678823585

namespace A324812

/-- `filter[A047253(n+1), A324822(#)]` -/
def P14934815626678823585.Spec : Prop :=
  ∀ n, P14934815626678823585.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P4319793213861029600

`filter[A047592(n+1), A324822(#)]`
-/

namespace A324812.P4319793213861029600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P4319793213861029600

namespace A324812

/-- `filter[A047592(n+1), A324822(#)]` -/
def P4319793213861029600.Spec : Prop :=
  ∀ n, P4319793213861029600.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P9975308890594002960

`filter[A064598(n+1), A324822(#)]`
-/

namespace A324812.P9975308890594002960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P9975308890594002960

namespace A324812

/-- `filter[A064598(n+1), A324822(#)]` -/
def P9975308890594002960.Spec : Prop :=
  ∀ n, P9975308890594002960.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P8292650610362632803

`filter[A031980(n+1), A324822(#)]`
-/

namespace A324812.P8292650610362632803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P8292650610362632803

namespace A324812

/-- `filter[A031980(n+1), A324822(#)]` -/
def P8292650610362632803.Spec : Prop :=
  ∀ n, P8292650610362632803.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P8380024458185153469

`filter[A068937(n+1), A324822(#)]`
-/

namespace A324812.P8380024458185153469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P8380024458185153469

namespace A324812

/-- `filter[A068937(n+1), A324822(#)]` -/
def P8380024458185153469.Spec : Prop :=
  ∀ n, P8380024458185153469.a n = A324812 (n + 1)

end A324812

/-! ## A324812.P6022537351734567982

`filter[A222257(n), A324822(#)]`
-/

namespace A324812.P6022537351734567982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324822 (f1 j).toNat = 1) n)

end

end A324812.P6022537351734567982

namespace A324812

/-- `filter[A222257(n), A324822(#)]` -/
def P6022537351734567982.Spec : Prop :=
  ∀ n, P6022537351734567982.a n = A324812 (n + 1)

end A324812

/-!
# A324813: Numbers n for which A156552(n) is a square or a twice a square.

The programs for A324813, there is no canonical definition to state claims against.
-/

/-! ## A324813.P17583961292087340931

`record[n*A324823(n+1)+1]`
-/

namespace A324813.P17583961292087340931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A324823 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324813.P17583961292087340931

/-! ## A324813.P6826268734337704066

`lt[A324884(n+1), 2]+1`
-/

namespace A324813.P6826268734337704066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324884 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324813.P6826268734337704066

/-! ## A324813.P9431368317763232959

`lt[A324885(n+1), 2]+1`
-/

namespace A324813.P9431368317763232959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324885 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324813.P9431368317763232959

/-! ## A324813.P377924600075958925

`eq[1, A324884(ceil(abs(γ-n))+1)]+1`
-/

namespace A324813.P377924600075958925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324884 (⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324813.P377924600075958925

/-! ## A324813.P17927677898523452127

`eq[A057427(n), A324885(n+1)]+1`
-/

namespace A324813.P17927677898523452127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324813.P17927677898523452127

/-!
# A324814: Numbers n > 1 for which sigma(A156552(n)) == 2 (mod 4).

The programs for A324814, there is no canonical definition to state claims against.
-/

/-! ## A324814.P14520072539383184633

`eq[1, A324824(n+1)]+1`
-/

namespace A324814.P14520072539383184633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324814.P14520072539383184633

/-! ## A324814.P9896411846477868089

`eq[2, A324885(n+1)]+1`
-/

namespace A324814.P9896411846477868089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324814.P9896411846477868089

/-! ## A324814.P15143071403923880927

`filter[A014528(n), A324824(#)]`
-/

namespace A324814.P15143071403923880927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P15143071403923880927

/-! ## A324814.P11293450298501704823

`filter[A065940(n), A324824(#)]`
-/

namespace A324814.P11293450298501704823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P11293450298501704823

/-! ## A324814.P7210204515150706208

`filter[A089088(n), A324824(#)]`
-/

namespace A324814.P7210204515150706208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P7210204515150706208

/-! ## A324814.P13672830100142420974

`filter[A103838(n), A324824(#)]`
-/

namespace A324814.P13672830100142420974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P13672830100142420974

/-! ## A324814.P18222842765503201264

`filter[A000037(n+1), A324824(#)]`
-/

namespace A324814.P18222842765503201264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P18222842765503201264

/-! ## A324814.P13562805212015576464

`filter[A002808(n+1), A324824(#)]`
-/

namespace A324814.P13562805212015576464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P13562805212015576464

/-! ## A324814.P8182873285824389056

`filter[A005767(n+1), A324824(#)]`
-/

namespace A324814.P8182873285824389056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P8182873285824389056

/-! ## A324814.P8252308095644345868

`filter[A007916(n+1), A324824(#)]`
-/

namespace A324814.P8252308095644345868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P8252308095644345868

/-! ## A324814.P12307306091473437042

`filter[A018252(n+1), A324824(#)]`
-/

namespace A324814.P12307306091473437042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P12307306091473437042

/-! ## A324814.P6819826278263130277

`filter[A024619(n+1), A324824(#)]`
-/

namespace A324814.P6819826278263130277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P6819826278263130277

/-! ## A324814.P17889266312704392517

`filter[A042968(n+1), A324824(#)]`
-/

namespace A324814.P17889266312704392517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P17889266312704392517

/-! ## A324814.P3191508797329922789

`filter[A052485(n+1), A324824(#)]`
-/

namespace A324814.P3191508797329922789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P3191508797329922789

/-! ## A324814.P16855575620709105270

`filter[A056653(n+1), A324824(#)]`
-/

namespace A324814.P16855575620709105270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P16855575620709105270

/-! ## A324814.P8153494332260662814

`filter[A065090(n+1), A324824(#)]`
-/

namespace A324814.P8153494332260662814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P8153494332260662814

/-! ## A324814.P12835077238049160630

`filter[A080257(n+1), A324824(#)]`
-/

namespace A324814.P12835077238049160630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P12835077238049160630

/-! ## A324814.P18230385919561174989

`filter[A080364(n+1), A324824(#)]`
-/

namespace A324814.P18230385919561174989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P18230385919561174989

/-! ## A324814.P1247091808635652622

`filter[A085232(n+1), A324824(#)]`
-/

namespace A324814.P1247091808635652622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P1247091808635652622

/-! ## A324814.P18195102265397576189

`filter[A085234(n+1), A324824(#)]`
-/

namespace A324814.P18195102265397576189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324824 (f1 j).toNat = 1) n)

end

end A324814.P18195102265397576189

/-!
# A324815: a(n) = 2*A156552(n) AND A323243(n), where AND is bitwise-and, A004198.

The programs for A324815, there is no canonical definition to state claims against.
-/

/-! ## A324815.P16996105136052298913

`2*A156552(n+1)-A324716(n+1)`
-/

namespace A324815.P16996105136052298913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156552 (n + 1) - A324716 (n + 1)

end

end A324815.P16996105136052298913

/-! ## A324815.P7032196066712640916

`and(2*A156552(n+1), A323243(n+1))`
-/

namespace A324815.P7032196066712640916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A156552 (n + 1)) (A323243 (n + 1))

end

end A324815.P7032196066712640916

/-! ## A324815.P11957000363391698507

`and(A323244(n+1)+A323243(n+1), A323243(n+1))`
-/

namespace A324815.P11957000363391698507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323244 (n + 1) + A323243 (n + 1)) (A323243 (n + 1))

end

end A324815.P11957000363391698507

/-! ## A324815.P12042473325605918487

`A324819(n+1)-A324713(n+1)`
-/

namespace A324815.P12042473325605918487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324819 (n + 1) - A324713 (n + 1)

end

end A324815.P12042473325605918487

/-! ## A324815.P5115876638494537189

`A323243(n+1)+A324716(n+1)-A324713(n+1)`
-/

namespace A324815.P5115876638494537189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) + (A324716 (n + 1) - A324713 (n + 1))

end

end A324815.P5115876638494537189

/-!
# A324816: Binary weight of A324815; number of 1-bits in common positions in 2*A156552(n) and A323243(n).

The programs for A324816, there is no canonical definition to state claims against.
-/

/-! ## A324816.P3938548594092706097

`A000120(A324815(n+1))`
-/

namespace A324816.P3938548594092706097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324815 (n + 1)).toNat

end

end A324816.P3938548594092706097

/-! ## A324816.P7667082726547944902

`A056924(A001316(A324815(n+1))²)`
-/

namespace A324816.P7667082726547944902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A001316 (A324815 (n + 1)).toNat ^ 2).toNat

end

end A324816.P7667082726547944902

/-! ## A324816.P4226932727451257265

`A061357(A001316(A324815(n+1))²)`
-/

namespace A324816.P4226932727451257265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A001316 (A324815 (n + 1)).toNat ^ 2).toNat

end

end A324816.P4226932727451257265

/-! ## A324816.P2919907701083306968

`A324868(A001316(A324815(n+1))²)`
-/

namespace A324816.P2919907701083306968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324868 (A001316 (A324815 (n + 1)).toNat ^ 2).toNat

end

end A324816.P2919907701083306968

/-! ## A324816.P3503246034245799840

`∑{d}[A001316(A324815(n+1)), A001221(#)]`
-/

namespace A324816.P3503246034245799840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A324815 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A324816.P3503246034245799840

/-! ## A324816.P17193204841003108338

`∏{digits}[A001316(A324815(n+1)), A001222(#)]`
-/

namespace A324816.P17193204841003108338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A324815 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001222 x).prod

end

end A324816.P17193204841003108338

/-!
# A324817: a(n) = sign(A323244(n))*A001511(A323244(n)), with a(n) = 0 if A323244(n) = 0.

The programs for A324817, there is no canonical definition to state claims against.
-/

/-! ## A324817.P6209962698553395720

`A089263(A001749(n+1)*A324867(n+1))`
-/

namespace A324817.P6209962698553395720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A001749 (n + 1) * A324867 (n + 1)).toNat

end

end A324817.P6209962698553395720

/-! ## A324817.P10386660591227836815

`A333768(A055061(n+2)*A323244(n+1))`
-/

namespace A324817.P10386660591227836815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A055061 (n + 2) * A323244 (n + 1)).toNat

end

end A324817.P10386660591227836815

/-! ## A324817.P7299451528152047691

`val(A001817(n+1)*A098507(3*n), 2)`
-/

namespace A324817.P7299451528152047691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001817 (n + 1) * A098507 (3 * n)).toNat 2

end

end A324817.P7299451528152047691

/-! ## A324817.P14949740742032055481

`A020639(A041055(n))%A305897(n+1)`
-/

namespace A324817.P14949740742032055481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A041055 n).toNat) (A305897 (n + 1))

end

end A324817.P14949740742032055481

/-! ## A324817.P2459491448703412695

`A221167(A322601(n))`
-/

namespace A324817.P2459491448703412695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221167 (A322601 n).toNat

end

end A324817.P2459491448703412695

/-!
# A324818: Lexicographically earliest sequence such that a(i) = a(j) => A009194(i) = A009194(j) and A324396(i) = A324396(j) for all i, j.

The programs for A324818, there is no canonical definition to state claims against.
-/

/-! ## A324818.P15088327243451439844

`A362611(n+1)+A082062(A034729(n+1))`
-/

namespace A324818.P15088327243451439844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (n + 1) + A082062 (A034729 (n + 1)).toNat

end

end A324818.P15088327243451439844

/-! ## A324818.P7366831461322855629

`A085033(A147582(n+1)*A323495(n+1))`
-/

namespace A324818.P7366831461322855629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (A147582 (n + 1) * A323495 (n + 1)).toNat

end

end A324818.P7366831461322855629

/-! ## A324818.P3870857709778146813

`A331307(A332827(n+1)%A125068(n+8))`
-/

namespace A324818.P3870857709778146813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331307 (Int.tmod (A332827 (n + 1)) (A125068 (n + 8))).toNat

end

end A324818.P3870857709778146813

/-!
# A324819: a(n) = 2*A156552(n) OR A323243(n), where OR is bitwise-OR, A003986.

The programs for A324819, there is no canonical definition to state claims against.
-/

/-! ## A324819.P13409621038457984827

`or(2*A156552(n+1), A323243(n+1))`
-/

namespace A324819.P13409621038457984827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A156552 (n + 1)) (A323243 (n + 1))

end

end A324819.P13409621038457984827

/-! ## A324819.P383611002125197322

`A324716(n+1)+A323243(n+1)`
-/

namespace A324819.P383611002125197322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324716 (n + 1) + A323243 (n + 1)

end

end A324819.P383611002125197322

/-! ## A324819.P14850873096340713703

`A324815(n+1)+A324713(n+1)`
-/

namespace A324819.P14850873096340713703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324815 (n + 1) + A324713 (n + 1)

end

end A324819.P14850873096340713703

/-! ## A324819.P10680705716342245127

`or(A323243(n+1), A324713(n+1))`
-/

namespace A324819.P10680705716342245127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A323243 (n + 1)) (A324713 (n + 1))

end

end A324819.P10680705716342245127

/-! ## A324819.P6782897363818268135

`or(2*A156552(n+1), A324713(n+1))`
-/

namespace A324819.P6782897363818268135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A156552 (n + 1)) (A324713 (n + 1))

end

end A324819.P6782897363818268135

/-!
# A324820: Xor-Moebius transform of A324815.

The programs for A324820, there is no canonical definition to state claims against.
-/

/-! ## A324820.P2731667148066412495

`xor(A324715(n+1), A324821(n+1))`
-/

namespace A324820.P2731667148066412495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324715 (n + 1)) (A324821 (n + 1))

end

end A324820.P2731667148066412495

/-! ## A324820.P4498360310593540364

`xor(2*A297106(n+1), A324717(n+1))`
-/

namespace A324820.P4498360310593540364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A297106 (n + 1)) (A324717 (n + 1))

end

end A324820.P4498360310593540364

/-! ## A324820.P3863039827342854262

`A005843(xor(A324717(n+1)/2, A297106(n+1)))`
-/

namespace A324820.P3863039827342854262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.xor (SequenceMachineLib.roundAway ((A324717 (n + 1) : ℚ) / 2)) (A297106 (n + 1))).toNat

end

end A324820.P3863039827342854262

/-! ## A324820.P10427370107203969817

`xor(A297106(A003961(n+1)), A324717(n+1))`
-/

namespace A324820.P10427370107203969817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297106 (A003961 (n + 1)).toNat) (A324717 (n + 1))

end

end A324820.P10427370107203969817

/-! ## A324820.P18076186373951933535

`xor(A005843(A297106(n+1)), A324717(n+1))`
-/

namespace A324820.P18076186373951933535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 (A297106 (n + 1)).toNat) (A324717 (n + 1))

end

end A324820.P18076186373951933535

/-!
# A324821: Xor-Moebius transform of A324819, where A324819(n) = bitor(2*A156552(n), A323243(n)), where bitor is A003986.

The programs for A324821, there is no canonical definition to state claims against.
-/

/-! ## A324821.P11405328987790696115

`xor(A324712(n+1), A324717(n+1))`
-/

namespace A324821.P11405328987790696115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324712 (n + 1)) (A324717 (n + 1))

end

end A324821.P11405328987790696115

/-! ## A324821.P11816690821917630322

`xor(A324715(n+1), A324820(n+1))`
-/

namespace A324821.P11816690821917630322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324715 (n + 1)) (A324820 (n + 1))

end

end A324821.P11816690821917630322

/-!
# A324822: a(n) = 1 if A156552(n) is a square, 0 otherwise.

The programs for A324822, the canonical program `A324822.P7208641422704206529` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324822 has offset 1).

The definition of A324822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324822.P7208641422704206529

`A010052(A156552(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324822

/-- `A010052(A156552(n+1))` -/
def P7208641422704206529.Spec : Prop :=
  ∀ n, P7208641422704206529.a n = A324822 (n + 1)

theorem P7208641422704206529.correct : P7208641422704206529.Spec := by
  intro n
  simp only [A324822, Nat.add_sub_cancel]

end A324822

/-! ## A324822.P16554491370708098725

`char[A324812(n+1)-1]`
-/

namespace A324822.P16554491370708098725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324822.P16554491370708098725

namespace A324822

/-- `char[A324812(n+1)-1]` -/
def P16554491370708098725.Spec : Prop :=
  ∀ n, (P16554491370708098725.a n : ℤ) = A324822 (n + 1)

end A324822

/-! ## A324822.P16691938235153112011

`and(1, A324105(n+1))^n`
-/

namespace A324822.P16691938235153112011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324105 (n + 1)) ^ n

end

end A324822.P16691938235153112011

namespace A324822

/-- `and(1, A324105(n+1))^n` -/
def P16691938235153112011.Spec : Prop :=
  ∀ n, P16691938235153112011.a n = A324822 (n + 1)

end A324822

/-! ## A324822.P14286855784874797275

`(A324105(n+1)%2)^A003415(n)`
-/

namespace A324822.P14286855784874797275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A324105 (n + 1)) 2 : ℚ) ^ (A003415 n : ℤ)

end

end A324822.P14286855784874797275

namespace A324822

/-- `(A324105(n+1)%2)^A003415(n)` -/
def P14286855784874797275.Spec : Prop :=
  ∀ n, P14286855784874797275.a n = (A324822 (n + 1) : ℚ)

end A324822

/-! ## A324822.P15842337441633378403

`and(1, A324105(n+1)+A000010(n+2))`
-/

namespace A324822.P15842337441633378403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324105 (n + 1) + A000010 (n + 2))

end

end A324822.P15842337441633378403

namespace A324822

/-- `and(1, A324105(n+1)+A000010(n+2))` -/
def P15842337441633378403.Spec : Prop :=
  ∀ n, P15842337441633378403.a n = A324822 (n + 1)

end A324822

/-! ## A324822.P6283489754754692341

`gcd(A000010(n+1), A324105(n+1))%2`
-/

namespace A324822.P6283489754754692341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A324105 (n + 1)) % 2

end

end A324822.P6283489754754692341

namespace A324822

/-- `gcd(A000010(n+1), A324105(n+1))%2` -/
def P6283489754754692341.Spec : Prop :=
  ∀ n, (P6283489754754692341.a n : ℤ) = A324822 (n + 1)

end A324822

/-! ## A324822.P6499795143981671502

`A000035(A324105(floor(1/(n+1)+n+1)))`
-/

namespace A324822.P6499795143981671502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A324105 ⌊1 / (n + 1 : ℚ) + (n + 1 : ℚ)⌋.toNat).toNat

end

end A324822.P6499795143981671502

namespace A324822

/-- `A000035(A324105(floor(1/(n+1)+n+1)))` -/
def P6499795143981671502.Spec : Prop :=
  ∀ n, P6499795143981671502.a n = A324822 (n + 1)

end A324822

/-! ## A324822.P2345356058893555236

`A000035(A102040(n+1)-A324105(n+1))`
-/

namespace A324822.P2345356058893555236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A102040 (n + 1) - A324105 (n + 1)).toNat

end

end A324822.P2345356058893555236

namespace A324822

/-- `A000035(A102040(n+1)-A324105(n+1))` -/
def P2345356058893555236.Spec : Prop :=
  ∀ n, P2345356058893555236.a n = A324822 (n + 1)

end A324822

/-! ## A324822.P4115387388114958300

`A000035(A102040(n+1)+A000035(A324105(n+1)))`
-/

namespace A324822.P4115387388114958300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A102040 (n + 1) + A000035 (A324105 (n + 1)).toNat).toNat

end

end A324822.P4115387388114958300

namespace A324822

/-- `A000035(A102040(n+1)+A000035(A324105(n+1)))` -/
def P4115387388114958300.Spec : Prop :=
  ∀ n, P4115387388114958300.a n = A324822 (n + 1)

end A324822

/-! ## A324822.P2929529852406173069

`A000035(A324105(n+1)+A102040(n+1))`
-/

namespace A324822.P2929529852406173069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A324105 (n + 1) + A102040 (n + 1)).toNat

end

end A324822.P2929529852406173069

namespace A324822

/-- `A000035(A324105(n+1)+A102040(n+1))` -/
def P2929529852406173069.Spec : Prop :=
  ∀ n, P2929529852406173069.a n = A324822 (n + 1)

end A324822

/-! ## A324822.P139017055525180500

`and(1, A324105(n+1)+A000005(n²+1))`
-/

namespace A324822.P139017055525180500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324105 (n + 1) + A000005 (n ^ 2 + 1))

end

end A324822.P139017055525180500

namespace A324822

/-- `and(1, A324105(n+1)+A000005(n²+1))` -/
def P139017055525180500.Spec : Prop :=
  ∀ n, P139017055525180500.a n = A324822 (n + 1)

end A324822

/-!
# A324823: a(n) = 1 if n > 1 and A156552(n) is a square or a twice a square, 0 otherwise.

The programs for A324823, there is no canonical definition to state claims against.
-/

/-! ## A324823.P7641026312273397832

`A323243(n+1)%2`
-/

namespace A324823.P7641026312273397832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323243 (n + 1)) 2

end

end A324823.P7641026312273397832

/-! ## A324823.P17698836799739982575

`A324810(n+1)%2`
-/

namespace A324823.P17698836799739982575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324810 (n + 1)) 2

end

end A324823.P17698836799739982575

/-! ## A324823.P12256966693225440530

`A000035(A324810(n+1))`
-/

namespace A324823.P12256966693225440530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A324810 (n + 1)).toNat

end

end A324823.P12256966693225440530

/-! ## A324823.P3979983419553967324

`A109718(A324810(n+1)²)`
-/

namespace A324823.P3979983419553967324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109718 (A324810 (n + 1) ^ 2).toNat

end

end A324823.P3979983419553967324

/-! ## A324823.P17424924572496768695

`A000007(xor(1, A324885(n+1)))`
-/

namespace A324823.P17424924572496768695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A324885 (n + 1))).toNat

end

end A324823.P17424924572496768695

/-! ## A324823.P15897403744223616703

`and(A007664(n), A324810(n+1))`
-/

namespace A324823.P15897403744223616703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A324810 (n + 1))

end

end A324823.P15897403744223616703

/-! ## A324823.P213073427641562672

`and(A016760(n), A324810(n+1))`
-/

namespace A324823.P213073427641562672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A324810 (n + 1))

end

end A324823.P213073427641562672

/-! ## A324823.P4696064036238184510

`and(A016820(n), A324810(n+1))`
-/

namespace A324823.P4696064036238184510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A324810 (n + 1))

end

end A324823.P4696064036238184510

/-! ## A324823.P9538806570535099066

`∑{d}[A324817(n+1), A008683(#)]`
-/

namespace A324823.P9538806570535099066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A324823.P9538806570535099066

/-! ## A324823.P10853314194032945338

`∑{d}[n+1, A008683(#)*A324825((n+1)/#)]`
-/

namespace A324823.P10853314194032945338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A324825 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324823.P10853314194032945338

/-! ## A324823.P16751203819867588811

`char[eq[1, A324884(n+1)]]`
-/

namespace A324823.P16751203819867588811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324884 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A324823.P16751203819867588811

/-! ## A324823.P11153809287532995185

`A324117(n+1)%2`
-/

namespace A324823.P11153809287532995185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324117 (n + 1)) 2

end

end A324823.P11153809287532995185

/-! ## A324823.P1343972503497240752

`and(A007664(n), A324117(n+1))`
-/

namespace A324823.P1343972503497240752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A324117 (n + 1))

end

end A324823.P1343972503497240752

/-! ## A324823.P14572783096457888017

`and(1, A324117(n+1)²*A001361(n+1))`
-/

namespace A324823.P14572783096457888017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324117 (n + 1) ^ 2 * A001361 (n + 1))

end

end A324823.P14572783096457888017

/-! ## A324823.P1749814969605832145

`and(1, A323244(n+1))`
-/

namespace A324823.P1749814969605832145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A323244 (n + 1))

end

end A324823.P1749814969605832145

/-! ## A324823.P16124215959035451129

`and(1, A323248(n+1)+A001222(n+1))`
-/

namespace A324823.P16124215959035451129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A323248 (n + 1) + A001222 (n + 1))

end

end A324823.P16124215959035451129

/-! ## A324823.P4450981385206103127

`A324118(n+1)%2`
-/

namespace A324823.P4450981385206103127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324118 (n + 1)) 2

end

end A324823.P4450981385206103127

/-! ## A324823.P5154020390353300302

`A000035(A324117(n+1))`
-/

namespace A324823.P5154020390353300302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A324117 (n + 1)).toNat

end

end A324823.P5154020390353300302

/-! ## A324823.P14123194815100993065

`and(1, A324865(n+1)+n)`
-/

namespace A324823.P14123194815100993065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324865 (n + 1) + (n : ℤ))

end

end A324823.P14123194815100993065

/-! ## A324823.P4557600447189089913

`A324867(n+1)%2`
-/

namespace A324823.P4557600447189089913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324867 (n + 1)) 2

end

end A324823.P4557600447189089913

/-!
# A324824: a(n) = 1 if n>1 and sigma(A156552(n)) is congruent to 2 modulo 4, otherwise a(n) = 0.

The programs for A324824, there is no canonical definition to state claims against.
-/

/-! ## A324824.P8357593721901570339

`A000007(xor(2, A324885(n+1)))`
-/

namespace A324824.P8357593721901570339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 2 (A324885 (n + 1))).toNat

end

end A324824.P8357593721901570339

/-! ## A324824.P17199110065260820899

`A000007((2-A324885(n+1))²)`
-/

namespace A324824.P17199110065260820899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((2 - A324885 (n + 1)) ^ 2).toNat

end

end A324824.P17199110065260820899

/-! ## A324824.P12892503208200315024

`A080791(and(3, A323244(n+1)+2*A324865(n+1)))`
-/

namespace A324824.P12892503208200315024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.land 3 (A323244 (n + 1) + 2 * A324865 (n + 1))).toNat

end

end A324824.P12892503208200315024

/-! ## A324824.P3373370782030845068

`A080791(and(3, 2*A156552(n+1)-A323244(n+1)))`
-/

namespace A324824.P3373370782030845068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.land 3 (2 * A156552 (n + 1) - A323244 (n + 1))).toNat

end

end A324824.P3373370782030845068

/-! ## A324824.P1606323494415630245

`A101040(A324884(n+1)^A324885(n+1))`
-/

namespace A324824.P1606323494415630245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (SequenceMachineLib.roundAway ((A324884 (n + 1) : ℚ) ^ (A324885 (n + 1) : ℤ))).toNat

end

end A324824.P1606323494415630245

/-! ## A324824.P533114760365632076

`A049084(gcd(A000079(n), A323243(n+1)))`
-/

namespace A324824.P533114760365632076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.gcd (A000079 n) (A323243 (n + 1)))

end

end A324824.P533114760365632076

/-! ## A324824.P4149901882476090807

`A269518(A324118(n+1))`
-/

namespace A324824.P4149901882476090807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269518 (A324118 (n + 1)).toNat

end

end A324824.P4149901882476090807

/-! ## A324824.P365967621596661533

`val(A020639(A332223(n+1)), 3)`
-/

namespace A324824.P365967621596661533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A332223 (n + 1)).toNat).toNat 3

end

end A324824.P365967621596661533

/-!
# A324825: Number of divisors d of n such that A323243(d) is odd; number of terms of A324813 larger than 1 that divide n.

The programs for A324825, there is no canonical definition to state claims against.
-/

/-! ## A324825.P10950952375415838846

`∑{d}[n+1, A324823(#)]`
-/

namespace A324825.P10950952375415838846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324823 d

end

end A324825.P10950952375415838846

/-! ## A324825.P16910697243258809525

`∑{d}[n+1, and(1, A324810(#))]`
-/

namespace A324825.P16910697243258809525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A324810 d)

end

end A324825.P16910697243258809525

/-! ## A324825.P9854058659087666493

`∑{d}[n+1, and(1, A323244(#))]`
-/

namespace A324825.P9854058659087666493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A323244 d)

end

end A324825.P9854058659087666493

/-! ## A324825.P13659120235790699959

`∑{d}[n+1, A323243(#)%2]`
-/

namespace A324825.P13659120235790699959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A323243 d) 2

end

end A324825.P13659120235790699959

/-! ## A324825.P3693384238952555672

`∑{d}[n+1, A324867(#)%2]`
-/

namespace A324825.P3693384238952555672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A324867 d) 2

end

end A324825.P3693384238952555672

/-! ## A324825.P6046901627106288546

`∑{d}[n+1, and(1, A324713(#))]`
-/

namespace A324825.P6046901627106288546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A324713 d)

end

end A324825.P6046901627106288546

/-! ## A324825.P5952470575356891774

`∑{d}[n+1, 1-A267635(A322993(#))]`
-/

namespace A324825.P5952470575356891774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A267635 (A322993 d).toNat)

end

end A324825.P5952470575356891774

/-!
# A324826: Number of divisors d of n such that A323243(d) is either 0 or 1 (mod 4).

The programs for A324826, there is no canonical definition to state claims against.
-/

/-! ## A324826.P4312940191549444060

`A000005(n+1)-A324827(n+1)`
-/

namespace A324826.P4312940191549444060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A324827 (n + 1)

end

end A324826.P4312940191549444060

/-! ## A324826.P10837497351655367341

`Δ[A006218(n)]-A324827(n+1)`
-/

namespace A324826.P10837497351655367341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324827 (n + 1)

end

end A324826.P10837497351655367341

/-! ## A324826.P17442619741987264907

`A032741(n+1)+1-A324827(n+1)`
-/

namespace A324826.P17442619741987264907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A324827 (n + 1)

end

end A324826.P17442619741987264907

/-! ## A324826.P8780738384007656746

`1-A049820(n+1)+n-A324827(n+1)`
-/

namespace A324826.P8780738384007656746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049820 (n + 1) + (n : ℤ) - A324827 (n + 1)

end

end A324826.P8780738384007656746

/-! ## A324826.P13620471728857578175

`A000027(∏{e}[n+1, #+1]-A324827(n+1))`
-/

namespace A324826.P13620471728857578175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A324827 (n + 1)).toNat

end

end A324826.P13620471728857578175

/-! ## A324826.P5733443697720647479

`A028310(∏{e}[n+1, #+1]-A324827(n+1))`
-/

namespace A324826.P5733443697720647479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A324827 (n + 1)).toNat

end

end A324826.P5733443697720647479

/-! ## A324826.P1958198901767501385

`A028310(∑{d}[n+1, gcd(#, n²)]-A324827(n+1))`
-/

namespace A324826.P1958198901767501385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd d (n ^ 2) : ℕ) : ℤ) - A324827 (n + 1)).toNat

end

end A324826.P1958198901767501385

/-! ## A324826.P987658156841195715

`∑{d}[n+1, #+1]-A000203(n+1)-A324827(n+1)`
-/

namespace A324826.P987658156841195715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A324827 (n + 1)

end

end A324826.P987658156841195715

/-! ## A324826.P13785868433210699003

`A000027(∑{d}[n+1, #+1]-∑{d}[n+1, #]-A324827(n+1))`
-/

namespace A324826.P13785868433210699003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - A324827 (n + 1)).toNat

end

end A324826.P13785868433210699003

/-! ## A324826.P5894082721596142098

`A028310(∑{d}[n+1, #+1]-∑{d}[n+1, #]-A324827(n+1))`
-/

namespace A324826.P5894082721596142098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - A324827 (n + 1)).toNat

end

end A324826.P5894082721596142098

/-! ## A324826.P12778279668467142492

`A000720(A105555(n+1))-A324827(n+1)`
-/

namespace A324826.P12778279668467142492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A105555 (n + 1)).toNat - A324827 (n + 1)

end

end A324826.P12778279668467142492

/-! ## A324826.P14536485705449754027

`A087990(n+1)+A087991(n+1)-A324827(n+1)`
-/

namespace A324826.P14536485705449754027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A324827 (n + 1))

end

end A324826.P14536485705449754027

/-! ## A324826.P14760097815237339507

`A294893(n+1)+A294894(n+1)-A324827(n+1)`
-/

namespace A324826.P14760097815237339507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) + (A294894 (n + 1) - A324827 (n + 1))

end

end A324826.P14760097815237339507

/-! ## A324826.P4171258409397293045

`A324392(n+1)+A324393(n+1)-A324827(n+1)`
-/

namespace A324826.P4171258409397293045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324392 (n + 1) + (A324393 (n + 1) - A324827 (n + 1))

end

end A324826.P4171258409397293045

/-! ## A324826.P3964650008850538848

`A336041(n+1)+A349658(n+1)-A324827(n+1)`
-/

namespace A324826.P3964650008850538848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A324827 (n + 1))

end

end A324826.P3964650008850538848

/-! ## A324826.P16989893659289011888

`A353351(n+1)+A353352(n+1)-A324827(n+1)`
-/

namespace A324826.P16989893659289011888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A324827 (n + 1))

end

end A324826.P16989893659289011888

/-! ## A324826.P8740175603595937364

`A353361(n+1)+A353362(n+1)-A324827(n+1)`
-/

namespace A324826.P8740175603595937364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A324827 (n + 1))

end

end A324826.P8740175603595937364

/-! ## A324826.P8958057828239269055

`A033273(n+1)+A001222(∏{p}[n+1, #])-A324827(n+1)`
-/

namespace A324826.P8958057828239269055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - A324827 (n + 1)

end

end A324826.P8958057828239269055

/-! ## A324826.P4721530923508756168

`A001489(A324827(n+1))+A000005(A000027(n+1))`
-/

namespace A324826.P4721530923508756168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A324827 (n + 1)).toNat + A000005 (A000027 (n + 1)).toNat

end

end A324826.P4721530923508756168

/-!
# A324827: Number of divisors d of n such that A323243(d) is either 2 or 3 (mod 4).

The programs for A324827, there is no canonical definition to state claims against.
-/

/-! ## A324827.P5436693702982015277

`A000005(n+1)-A324826(n+1)`
-/

namespace A324827.P5436693702982015277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A324826 (n + 1)

end

end A324827.P5436693702982015277

/-! ## A324827.P14419320352307273755

`Δ[A006218(n)]-A324826(n+1)`
-/

namespace A324827.P14419320352307273755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324826 (n + 1)

end

end A324827.P14419320352307273755

/-! ## A324827.P10053688468174339230

`Δ[A054519(n)]-A324826(n+1)`
-/

namespace A324827.P10053688468174339230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324826 (n + 1)

end

end A324827.P10053688468174339230

/-! ## A324827.P14738517438099359872

`A028310(∑{d}[n+1, ceil(1/#)])-A324826(n+1)`
-/

namespace A324827.P14738517438099359872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉).toNat - A324826 (n + 1)

end

end A324827.P14738517438099359872

/-! ## A324827.P17527085018447255072

`A028310(-∑{d}[n+1, val(#, n+2)-1])-A324826(n+1)`
-/

namespace A324827.P17527085018447255072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (-(∑ d ∈ Nat.divisors (f1 n), ((SequenceMachineLib.valuation d (n + 2) : ℤ) - 1))).toNat - A324826 (n + 1)

end

end A324827.P17527085018447255072

/-! ## A324827.P6393967129777403431

`A028310(-∑{d}[n+1, C(#, n+2)-1])-A324826(n+1)`
-/

namespace A324827.P6393967129777403431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (-(∑ d ∈ Nat.divisors (f1 n), ((Nat.choose d (n + 2) : ℤ) - 1))).toNat - A324826 (n + 1)

end

end A324827.P6393967129777403431

/-! ## A324827.P8283952408159755270

`A028310(-∑{d}[n+1, n-lcm(#, n+1)])-A324826(n+1)`
-/

namespace A324827.P8283952408159755270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (-(∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - (Nat.lcm d (n + 1) : ℤ)))).toNat - A324826 (n + 1)

end

end A324827.P8283952408159755270

/-!
# A324828: a(n) = A324543(n) read modulo 2, where A324543 is the Möbius-transform of sigma(A156552(n)).

The programs for A324828, there is no canonical definition to state claims against.
-/

/-! ## A324828.P15514897289458501289

`A324712(n+1)%2`
-/

namespace A324828.P15514897289458501289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324712 (n + 1)) 2

end

end A324828.P15514897289458501289

/-! ## A324828.P14730873466137505899

`A324715(n+1)%2`
-/

namespace A324828.P14730873466137505899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324715 (n + 1)) 2

end

end A324828.P14730873466137505899

/-! ## A324828.P1194222574984591634

`A102460(7*A324724(n+1))`
-/

namespace A324828.P1194222574984591634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (7 * A324724 (n + 1)).toNat

end

end A324828.P1194222574984591634

/-! ## A324828.P12548510186171390062

`A102460(A324724(n+1)^3)`
-/

namespace A324828.P12548510186171390062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A324724 (n + 1) ^ 3).toNat

end

end A324828.P12548510186171390062

/-! ## A324828.P1148480407179845486

`A057353(C(2, A324724(n+1)))`
-/

namespace A324828.P1148480407179845486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Nat.choose 2 (A324724 (n + 1)).toNat)

end

end A324828.P1148480407179845486

/-! ## A324828.P7037602547581055497

`A324362(C(2, A324724(n+1)))`
-/

namespace A324828.P7037602547581055497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (Nat.choose 2 (A324724 (n + 1)).toNat)

end

end A324828.P7037602547581055497

/-! ## A324828.P2114504653747318441

`A324692(C(2, A324724(n+1)))`
-/

namespace A324828.P2114504653747318441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (Nat.choose 2 (A324724 (n + 1)).toNat)

end

end A324828.P2114504653747318441

/-! ## A324828.P5920271530243423985

`A102460(A324724(n+1)²²)`
-/

namespace A324828.P5920271530243423985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 ((A324724 (n + 1) ^ 2) ^ 2).toNat

end

end A324828.P5920271530243423985

/-! ## A324828.P9720823370742785384

`∑{d}[n+1, A008683(#)*A324810((n+1)/#)]`
-/

namespace A324828.P9720823370742785384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A324810 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324828.P9720823370742785384

/-! ## A324828.P4570566598665582938

`and(1, A329644(n+1))`
-/

namespace A324828.P4570566598665582938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A329644 (n + 1))

end

end A324828.P4570566598665582938

/-! ## A324828.P8170434458013355043

`and(1, A329643(n+1)+A329642(n+1))`
-/

namespace A324828.P8170434458013355043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A329643 (n + 1) + A329642 (n + 1))

end

end A324828.P8170434458013355043

/-! ## A324828.P4703251131198252904

`and(1, A324542(n+1))`
-/

namespace A324828.P4703251131198252904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324542 (n + 1))

end

end A324828.P4703251131198252904

/-! ## A324828.P11014629889191287489

`A324877(n+1)%2`
-/

namespace A324828.P11014629889191287489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324877 (n + 1)) 2

end

end A324828.P11014629889191287489

/-! ## A324828.P1177028977624916519

`and(1, A324543(n+1))`
-/

namespace A324828.P1177028977624916519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324543 (n + 1))

end

end A324828.P1177028977624916519

/-! ## A324828.P1767863879362514235

`A324821(n+1)%2`
-/

namespace A324828.P1767863879362514235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324821 (n + 1)) 2

end

end A324828.P1767863879362514235

/-! ## A324828.P15983567349573612081

`and(A324821(n+1), A324822(A324812(n+1)))`
-/

namespace A324828.P15983567349573612081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324821 (n + 1)) (A324822 (A324812 (n + 1)).toNat)

end

end A324828.P15983567349573612081

/-! ## A324828.P6578431610419106898

`and(A324821(n+1), A324823(A324813(n+1)))`
-/

namespace A324828.P6578431610419106898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324821 (n + 1)) (A324823 (A324813 (n + 1)).toNat)

end

end A324828.P6578431610419106898

/-! ## A324828.P13537066947690528117

`and(1, xor(2*A297106(n+1), A324715(n+1)))`
-/

namespace A324828.P13537066947690528117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.xor (2 * A297106 (n + 1)) (A324715 (n + 1)))

end

end A324828.P13537066947690528117

/-! ## A324828.P7676552415085678403

`and(A324712(n+1)², A324724(n+1))`
-/

namespace A324828.P7676552415085678403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324712 (n + 1) ^ 2) (A324724 (n + 1))

end

end A324828.P7676552415085678403

/-! ## A324828.P3079284575138398500

`and(A000051(n), A324712(n+1))`
-/

namespace A324828.P3079284575138398500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A324712 (n + 1))

end

end A324828.P3079284575138398500

/-!
# A324829: a(n) = A000120(A324712(n)); binary weight of Xor-Moebius transform of A323243.

The programs for A324829, there is no canonical definition to state claims against.
-/

/-! ## A324829.P1653725156472198338

`A000120(A324712(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324829.P1653725156472198338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324712 (n + 1)).toNat

end

end A324829.P1653725156472198338

/-! ## A324829.P14539786054929866013

`A324730(n+1)+A324729(n+1)`
-/

namespace A324829.P14539786054929866013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324730 (n + 1) + A324729 (n + 1)

end

end A324829.P14539786054929866013

/-! ## A324829.P15651623852304228818

`A324728(n+1)-A324735(n+1)`
-/

namespace A324829.P15651623852304228818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A324735 (n + 1)

end

end A324829.P15651623852304228818

/-! ## A324829.P12317271779117362452

`A324733(n+1)-A324734(n+1)`
-/

namespace A324829.P12317271779117362452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324733 (n + 1) - A324734 (n + 1)

end

end A324829.P12317271779117362452

/-! ## A324829.P14758321995172107384

`A061395(n+1)+A324811(n+1)-A324735(n+1)`
-/

namespace A324829.P14758321995172107384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + (A324811 (n + 1) - A324735 (n + 1))

end

end A324829.P14758321995172107384

/-! ## A324829.P2281283060907309174

`A324728(n+1)-A080791(A066247(n+1)*A324712(n+1))`
-/

namespace A324829.P2281283060907309174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A080791 (A066247 (n + 1) * A324712 (n + 1)).toNat

end

end A324829.P2281283060907309174

/-! ## A324829.P5852221270132728021

`A324730(n+1)+A001222(A332223(n+1))`
-/

namespace A324829.P5852221270132728021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324730 (n + 1) + A001222 (A332223 (n + 1)).toNat

end

end A324829.P5852221270132728021

/-!
# A324830: Number of divisors d of n such that A323243(d) is a multiple of 3.

The programs for A324830, there is no canonical definition to state claims against.
-/

/-! ## A324830.P4823550787532520052

`A000005(n+1)-(A324831(n+1)+A324832(n+1))`
-/

namespace A324830.P4823550787532520052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A324831 (n + 1) + A324832 (n + 1))

end

end A324830.P4823550787532520052

/-! ## A324830.P9532631104351134522

`A140747(A191794(n)+4)`
-/

namespace A324830.P9532631104351134522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140747 (A191794 n + 4).toNat

end

end A324830.P9532631104351134522

/-! ## A324830.P10278316558927459416

`A002260(A352923(n+1)-A257994(2*n+1))`
-/

namespace A324830.P10278316558927459416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A352923 (n + 1) - A257994 (2 * n + 1)).toNat

end

end A324830.P10278316558927459416

/-! ## A324830.P9893768312499796573

`gcd(A008619(A193560(2*n+1)), A057555(n+3))`
-/

namespace A324830.P9893768312499796573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (A193560 (2 * n + 1)).toNat) (A057555 (n + 3))

end

end A324830.P9893768312499796573

/-! ## A324830.P7084475811747233649

`(∑{e}[n+1, #]+1)^A085983((n+1)*Δ[n^3])`
-/

namespace A324830.P7084475811747233649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℚ) ^ (A085983 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat : ℤ)

end

end A324830.P7084475811747233649

/-!
# A324831: Number of divisors d of n such that A323243(d) == 1 (mod 3).

The programs for A324831, there is no canonical definition to state claims against.
-/

/-! ## A324831.P13102463660249074389

`A000005(n+1)-(A324830(n+1)+A324832(n+1))`
-/

namespace A324831.P13102463660249074389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A324830 (n + 1) + A324832 (n + 1))

end

end A324831.P13102463660249074389

/-! ## A324831.P12941749179256714969

`A324810(A247503(n+1)%A141214(n))`
-/

namespace A324831.P12941749179256714969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324810 (Int.tmod (A247503 (n + 1)) (A141214 n)).toNat

end

end A324831.P12941749179256714969

/-! ## A324831.P5019780584958262707

`A324810(A247503(n+1))^Δ[A024656(n)]`
-/

namespace A324831.P5019780584958262707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024656 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324810 (A247503 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A324831.P5019780584958262707

/-! ## A324831.P8953411174859375356

`A324810(A247503(n+1))+A000038(A051891(n+1))`
-/

namespace A324831.P8953411174859375356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324810 (A247503 (n + 1)).toNat + A000038 (A051891 (n + 1)).toNat

end

end A324831.P8953411174859375356

/-! ## A324831.P14743242729213333818

`A086971(A006512(n+4)*A247503(n+1))`
-/

namespace A324831.P14743242729213333818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A006512 (n + 4) * A247503 (n + 1)).toNat

end

end A324831.P14743242729213333818

/-!
# A324832: Number of divisors d of n such that A323243(d) == 2 (mod 3).

The programs for A324832, there is no canonical definition to state claims against.
-/

/-! ## A324832.P15856089828409790600

`A000005(n+1)-(A324830(n+1)+A324831(n+1))`
-/

namespace A324832.P15856089828409790600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A324830 (n + 1) + A324831 (n + 1))

end

end A324832.P15856089828409790600

/-! ## A324832.P1867921158397475079

`A250253(n+2)%A003056(A001055(n+1))`
-/

namespace A324832.P1867921158397475079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250253 (n + 2)) (A003056 (A001055 (n + 1)).toNat)

end

end A324832.P1867921158397475079

/-! ## A324832.P10044490159216740965

`A088359(n+1)%A327407(A000203(n+3))`
-/

namespace A324832.P10044490159216740965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088359 (n + 1)) (A327407 (A000203 (n + 3)).toNat)

end

end A324832.P10044490159216740965

/-! ## A324832.P17674694298848397488

`A382307(n+1)%A384179(n+1)`
-/

namespace A324832.P17674694298848397488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382307 (n + 1)) (A384179 (n + 1))

end

end A324832.P17674694298848397488

/-! ## A324832.P2825700407907826463

`A037910(A069481(n+1))`
-/

namespace A324832.P2825700407907826463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037910 (A069481 (n + 1)).toNat

end

end A324832.P2825700407907826463

/-!
# A324837: Number of minimal subsets of {1...n} with least common multiple n.

The programs for A324837, there is no canonical definition to state claims against.
-/

/-! ## A324837.P9320017380115388000

`A050724(A066620(n+1)+2)`
-/

namespace A324837.P9320017380115388000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050724 (A066620 (n + 1) + 2).toNat

end

end A324837.P9320017380115388000

/-! ## A324837.P9727429216008239135

`gcd(A303838(n+1), A329383(A052938(n)))`
-/

namespace A324837.P9727429216008239135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303838 (n + 1)) (A329383 (A052938 n).toNat)

end

end A324837.P9727429216008239135

/-! ## A324837.P2512522640726757051

`A303838(n+1)+A036987(A100577(n+1))`
-/

namespace A324837.P2512522640726757051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (n + 1) + A036987 (A100577 (n + 1)).toNat

end

end A324837.P2512522640726757051

/-! ## A324837.P6366141530545537646

`A303838(n+1)+A010051(A174327(n+1))`
-/

namespace A324837.P6366141530545537646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (n + 1) + A010051 (A174327 (n + 1)).toNat

end

end A324837.P6366141530545537646

/-! ## A324837.P7404538430023014308

`A303838(n+1)+A000035(A295557(n+1))`
-/

namespace A324837.P7404538430023014308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (n + 1) + A000035 (A295557 (n + 1)).toNat

end

end A324837.P7404538430023014308

/-! ## A324837.P17808341846473722695

`A303838(n+1)^A304118(A285572(n+1))`
-/

namespace A324837.P17808341846473722695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303838 (n + 1) : ℚ) ^ (A304118 (A285572 (n + 1)).toNat : ℤ)

end

end A324837.P17808341846473722695

/-! ## A324837.P7927164590276924125

`or(A303838(n+1), A322308(A168324(n+1)))`
-/

namespace A324837.P7927164590276924125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A303838 (n + 1)) (A322308 (A168324 (n + 1)).toNat)

end

end A324837.P7927164590276924125

/-! ## A324837.P17461498433499684191

`A303838(n+1)+A000010(A076078(n+1)+1)%2`
-/

namespace A324837.P17461498433499684191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (n + 1) + Int.tmod (A000010 (A076078 (n + 1) + 1).toNat) 2

end

end A324837.P17461498433499684191

/-! ## A324837.P4060215037296086898

`A303838(n+1)+A055641(A303838(A349322(n+1)))`
-/

namespace A324837.P4060215037296086898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (n + 1) + A055641 (A303838 (A349322 (n + 1)).toNat).toNat

end

end A324837.P4060215037296086898

/-! ## A324837.P17380110588383763221

`A303838(n+1)+A008683(A087321(n+1))`
-/

namespace A324837.P17380110588383763221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (n + 1) + A008683 (A087321 (n + 1)).toNat

end

end A324837.P17380110588383763221

/-! ## A324837.P2354857008160918145

`A303838(n+1)+A097331(2*n)`
-/

namespace A324837.P2354857008160918145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (n + 1) + A097331 (2 * n)

end

end A324837.P2354857008160918145

/-! ## A324837.P10224117979637166106

`gcd(A260146(n), A303838(n+1))`
-/

namespace A324837.P10224117979637166106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260146 n) (A303838 (n + 1))

end

end A324837.P10224117979637166106

/-! ## A324837.P4452535300327108808

`A303838(n+1)+A154271(A005893(n))`
-/

namespace A324837.P4452535300327108808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (n + 1) + A154271 (A005893 n).toNat

end

end A324837.P4452535300327108808

/-! ## A324837.P16395981809901173738

`A303838(n+1)+A055615((n+1)²)`
-/

namespace A324837.P16395981809901173738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (n + 1) + A055615 ((n + 1) ^ 2)

end

end A324837.P16395981809901173738

/-! ## A324837.P18399932100682975488

`gcd(A303838(n+1)+A167367(n), A167367(n))`
-/

namespace A324837.P18399932100682975488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303838 (n + 1) + A167367 n) (A167367 n)

end

end A324837.P18399932100682975488

/-!
# A324839: Number of unlabeled rooted identity trees with n nodes where the branches of no branch of the root form a subset of the branches of the root.

The programs for A324839, there is no canonical definition to state claims against.
-/

/-! ## A324839.P11315820785605799404

`A247431(a(n-1)+a(n-2)+a(n-4))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A324839.P11315820785605799404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 2, 3] fun n a =>
  A247431 (a (n - 1) + (a (n - 2) + a (n - 4))).toNat

end

end A324839.P11315820785605799404

/-! ## A324839.P9766108234490052707

`A000196(A000055(n)*A090345(n))`
-/

namespace A324839.P9766108234490052707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000055 n * A090345 n).toNat

end

end A324839.P9766108234490052707

/-! ## A324839.P12757973504717798583

`A335999(A000055(n))%A000032(n)`
-/

namespace A324839.P12757973504717798583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335999 (A000055 n).toNat) (A000032 n)

end

end A324839.P12757973504717798583

/-! ## A324839.P436707589916043490

`A084927(A258935(n+1))`
-/

namespace A324839.P436707589916043490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084927 (A258935 (n + 1)).toNat

end

end A324839.P436707589916043490

/-! ## A324839.P2689984192797551241

`A084927(A240951(n+2))`
-/

namespace A324839.P2689984192797551241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084927 (A240951 (n + 2)).toNat

end

end A324839.P2689984192797551241

/-!
# A324840: Number of fully recursively anti-transitive rooted trees with n nodes.

The programs for A324840, there is no canonical definition to state claims against.
-/

/-! ## A324840.P4918042201129877356

`A292050(A334271(n))`
-/

namespace A324840.P4918042201129877356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (A334271 n).toNat

end

end A324840.P4918042201129877356

/-! ## A324840.P4208467193021483468

`A292050(A374634(n))`
-/

namespace A324840.P4208467193021483468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (A374634 n).toNat

end

end A324840.P4208467193021483468

/-! ## A324840.P17734621900598904099

`A000194(A065942(n)+A063032(n))`
-/

namespace A324840.P17734621900598904099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A065942 n + A063032 n).toNat

end

end A324840.P17734621900598904099

/-! ## A324840.P8351951308564255631

`A123108(A293606(n)+A005428(n))`
-/

namespace A324840.P8351951308564255631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A293606 n + A005428 n).toNat

end

end A324840.P8351951308564255631

/-! ## A324840.P2414101877340403616

`A248227(A113863(n)+A097992(n))`
-/

namespace A324840.P2414101877340403616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A113863 n + A097992 n).toNat

end

end A324840.P2414101877340403616

/-!
# A324841: Matula-Goebel numbers of fully recursively anti-transitive rooted trees.

The programs for A324841, there is no canonical definition to state claims against.
-/

/-! ## A324841.P14663381271332277547

`eq[0, A184159(n+1)]+1-A185284(A069811(n+1))`
-/

namespace A324841.P14663381271332277547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A185284 (A069811 (n + 1)).toNat

end

end A324841.P14663381271332277547

/-!
# A324842: Matula-Goebel numbers of rooted trees where the branches of any branch of any terminal subtree form a submultiset of the branches of the same subtree.

The programs for A324842, there is no canonical definition to state claims against.
-/

/-! ## A324842.P3074433217084251941

`∩[A120383(n+1), A236860(n+1)]`
-/

namespace A324842.P3074433217084251941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324842.P3074433217084251941

/-! ## A324842.P14360349450960002662

`∩[A120383(n+1), A318991(n+1)]`
-/

namespace A324842.P14360349450960002662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324842.P14360349450960002662

/-! ## A324842.P16247359462108741671

`∩[A120383(n+1), A318186(n+1)]`
-/

namespace A324842.P16247359462108741671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324842.P16247359462108741671

/-! ## A324842.P13360730932026288293

`∩[A120383(n+1), A298305(n+1)]`
-/

namespace A324842.P13360730932026288293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324842.P13360730932026288293

/-! ## A324842.P9138251347319570015

`∩[A120383(n+1), A316470(n+1)]`
-/

namespace A324842.P9138251347319570015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324842.P9138251347319570015

/-!
# A324844: Number of unlabeled rooted trees with n nodes where the branches of no non-leaf branch of any terminal subtree form a submultiset of the branches of the same subtree.

The programs for A324844, there is no canonical definition to state claims against.
-/

/-! ## A324844.P15034799206501709197

`A324979(n+1)+A186006(A202349(n+1))`
-/

namespace A324844.P15034799206501709197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324979 (n + 1) + A186006 (A202349 (n + 1)).toNat

end

end A324844.P15034799206501709197

/-!
# A324845: Matula-Goebel numbers of rooted trees where the branches of no non-leaf branch of any terminal subtree form a submultiset of the branches of the same subtree.

The programs for A324845, there is no canonical definition to state claims against.
-/

/-! ## A324845.P15280731361741088089

`A324758(n+1)+A088517(A101860(n+4))`
-/

namespace A324845.P15280731361741088089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (n + 1) + A088517 (A101860 (n + 4)).toNat

end

end A324845.P15280731361741088089

/-! ## A324845.P15763743182259970818

`A324758(n+1)+A010054(A189617(n+1))`
-/

namespace A324845.P15763743182259970818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (n + 1) + A010054 (A189617 (n + 1)).toNat

end

end A324845.P15763743182259970818

/-! ## A324845.P49774273202823500

`A324824(A324795(n+1))+A324758(n+1)`
-/

namespace A324845.P49774273202823500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324824 (A324795 (n + 1)).toNat + A324758 (n + 1)

end

end A324845.P49774273202823500

/-! ## A324845.P4007973710622331489

`A324758(n+1)+A296213(A000032(n))`
-/

namespace A324845.P4007973710622331489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (n + 1) + A296213 (A000032 n).toNat

end

end A324845.P4007973710622331489

/-! ## A324845.P4156805002679559956

`A324758(n+1)+A010815(A020477(2*(n+2)))`
-/

namespace A324845.P4156805002679559956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (n + 1) + A010815 (A020477 (2 * (n + 2))).toNat

end

end A324845.P4156805002679559956

/-!
# A324846: Positive integers divisible by none of their prime indices.

The programs for A324846, the canonical program `A324846.P15694583912219771153` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324846 has offset 1).

The definition of A324846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324846.P15694583912219771153

`lt[A324852(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324846

/-- `lt[A324852(n+1), 1]+1` -/
def P15694583912219771153.Spec : Prop :=
  ∀ n, (P15694583912219771153.a n : ℤ) = A324846 (n + 1)

theorem P15694583912219771153.correct : P15694583912219771153.Spec := by
  intro n
  simp only [A324846, Nat.add_sub_cancel]

end A324846

/-! ## A324846.P9121694729811605990

`record[n+1-A000720(n*A324852(n+1)+1)]`
-/

namespace A324846.P9121694729811605990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000720 ((n : ℤ) * A324852 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324846.P9121694729811605990

namespace A324846

/-- `record[n+1-A000720(n*A324852(n+1)+1)]` -/
def P9121694729811605990.Spec : Prop :=
  ∀ n, P9121694729811605990.a n = A324846 (n + 1)

end A324846

/-! ## A324846.P3019101203176890120

`∩[2*n+1, A324849(n+1)]`
-/

namespace A324846.P3019101203176890120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324846.P3019101203176890120

namespace A324846

/-- `∩[2*n+1, A324849(n+1)]` -/
def P3019101203176890120.Spec : Prop :=
  ∀ n, (P3019101203176890120.a n : ℤ) = A324846 (n + 1)

end A324846

/-! ## A324846.P12456915649604197637

`filter[A324849(n+1), A093719(#)]`
-/

namespace A324846.P12456915649604197637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A324846.P12456915649604197637

namespace A324846

/-- `filter[A324849(n+1), A093719(#)]` -/
def P12456915649604197637.Spec : Prop :=
  ∀ n, P12456915649604197637.a n = A324846 (n + 1)

end A324846

/-! ## A324846.P12975181170915245736

`∩[A324849(n+1), A004273(n)]`
-/

namespace A324846.P12975181170915245736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324846.P12975181170915245736

namespace A324846

/-- `∩[A324849(n+1), A004273(n)]` -/
def P12975181170915245736.Spec : Prop :=
  ∀ n, (P12975181170915245736.a n : ℤ) = A324846 (n + 1)

end A324846

/-! ## A324846.P9606451180540112822

`∩[A324849(n+1), A060747(n)]`
-/

namespace A324846.P9606451180540112822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324846.P9606451180540112822

namespace A324846

/-- `∩[A324849(n+1), A060747(n)]` -/
def P9606451180540112822.Spec : Prop :=
  ∀ n, (P9606451180540112822.a n : ℤ) = A324846 (n + 1)

end A324846

/-! ## A324846.P17001309067140483351

`record[gcd(n+1, A324848(n+1))]`
-/

namespace A324846.P17001309067140483351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A324848 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324846.P17001309067140483351

namespace A324846

/-- `record[gcd(n+1, A324848(n+1))]` -/
def P17001309067140483351.Spec : Prop :=
  ∀ n, (P17001309067140483351.a n : ℤ) = A324846 (n + 1)

end A324846

/-! ## A324846.P417451838828250973

`filter[A324849(n+1), A000035(#)]`
-/

namespace A324846.P417451838828250973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A324846.P417451838828250973

namespace A324846

/-- `filter[A324849(n+1), A000035(#)]` -/
def P417451838828250973.Spec : Prop :=
  ∀ n, P417451838828250973.a n = A324846 (n + 1)

end A324846

/-! ## A324846.P17142267894470656635

`filter[A324849(n+1), A260390(#)]`
-/

namespace A324846.P17142267894470656635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A324846.P17142267894470656635

namespace A324846

/-- `filter[A324849(n+1), A260390(#)]` -/
def P17142267894470656635.Spec : Prop :=
  ∀ n, P17142267894470656635.a n = A324846 (n + 1)

end A324846

/-! ## A324846.P12731259573880582734

`record[n+1-A120383(n+1)*A324852(n+1)]`
-/

namespace A324846.P12731259573880582734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A120383 (n + 1) * A324852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324846.P12731259573880582734

namespace A324846

/-- `record[n+1-A120383(n+1)*A324852(n+1)]` -/
def P12731259573880582734.Spec : Prop :=
  ∀ n, P12731259573880582734.a n = A324846 (n + 1)

end A324846

/-! ## A324846.P336903701071197241

`eq[2*A324852(A028310(n)), A059841(n)]`
-/

namespace A324846.P336903701071197241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324852 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324846.P336903701071197241

namespace A324846

/-- `eq[2*A324852(A028310(n)), A059841(n)]` -/
def P336903701071197241.Spec : Prop :=
  ∀ n, (P336903701071197241.a n : ℤ) = A324846 (n + 1)

end A324846

/-! ## A324846.P5768107259297600280

`record[n+1-A056239(n*A324852(n+1)+1)]`
-/

namespace A324846.P5768107259297600280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A056239 ((n : ℤ) * A324852 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324846.P5768107259297600280

namespace A324846

/-- `record[n+1-A056239(n*A324852(n+1)+1)]` -/
def P5768107259297600280.Spec : Prop :=
  ∀ n, P5768107259297600280.a n = A324846 (n + 1)

end A324846

/-!
# A324847: Numbers divisible by at least one of their prime indices.

The programs for A324847, the canonical program `A324847.P1887708991502220252` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324847 has offset 1).

The definition of A324847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324847.P1887708991502220252

`lt[0, A324852(n+2)]+2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324847

/-- `lt[0, A324852(n+2)]+2` -/
def P1887708991502220252.Spec : Prop :=
  ∀ n, (P1887708991502220252.a n : ℤ) = A324847 (n + 1)

theorem P1887708991502220252.correct : P1887708991502220252.Spec := by
  intro n
  simp only [A324847, Nat.add_sub_cancel]

end A324847

/-! ## A324847.P10545048110732623339

`comp[A324846(n+1)-1]+1`
-/

namespace A324847.P10545048110732623339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324846 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324847.P10545048110732623339

namespace A324847

/-- `comp[A324846(n+1)-1]+1` -/
def P10545048110732623339.Spec : Prop :=
  ∀ n, (P10545048110732623339.a n : ℤ) = A324847 (n + 1)

end A324847

/-! ## A324847.P3463096188018663946

`eq[1, A000700(a(A324852(n)))]` with `a(0)=2`
-/

namespace A324847.P3463096188018663946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000700 (f2 (A324852 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324847.P3463096188018663946

namespace A324847

/-- `eq[1, A000700(a(A324852(n)))]` -/
def P3463096188018663946.Spec : Prop :=
  ∀ n, (P3463096188018663946.a n : ℤ) = A324847 (n + 1)

end A324847

/-! ## A324847.P10643433947028722939

`∪[A047235(n+1), A324771(n+1)]`
-/

namespace A324847.P10643433947028722939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324847.P10643433947028722939

namespace A324847

/-- `∪[A047235(n+1), A324771(n+1)]` -/
def P10643433947028722939.Spec : Prop :=
  ∀ n, (P10643433947028722939.a n : ℤ) = A324847 (n + 1)

end A324847

/-! ## A324847.P9590467344260879457

`∪[A232745(n+1), A324771(n+1)]`
-/

namespace A324847.P9590467344260879457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324847.P9590467344260879457

namespace A324847

/-- `∪[A232745(n+1), A324771(n+1)]` -/
def P9590467344260879457.Spec : Prop :=
  ∀ n, (P9590467344260879457.a n : ℤ) = A324847 (n + 1)

end A324847

/-! ## A324847.P1956683128638515462

`eq[1, A265848(a(A324848(n)))]` with `a(0)=6`
-/

namespace A324847.P1956683128638515462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A265848 (f2 (A324848 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324847.P1956683128638515462

namespace A324847

/-- `eq[1, A265848(a(A324848(n)))]` -/
def P1956683128638515462.Spec : Prop :=
  ∀ n, (P1956683128638515462.a n : ℤ) = A324847 (n + 1)

end A324847

/-! ## A324847.P13794880434383357378

`eq[2, A002024(a(A324848(n)))]` with `a(0)=6`
-/

namespace A324847.P13794880434383357378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A002024 (f2 (A324848 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324847.P13794880434383357378

namespace A324847

/-- `eq[2, A002024(a(A324848(n)))]` -/
def P13794880434383357378.Spec : Prop :=
  ∀ n, (P13794880434383357378.a n : ℤ) = A324847 (n + 1)

end A324847

/-! ## A324847.P11584075744980477646

`eq[2, A091044(a(A324848(n)))]` with `a(0)=6`
-/

namespace A324847.P11584075744980477646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A091044 (f2 (A324848 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324847.P11584075744980477646

namespace A324847

/-- `eq[2, A091044(a(A324848(n)))]` -/
def P11584075744980477646.Spec : Prop :=
  ∀ n, (P11584075744980477646.a n : ℤ) = A324847 (n + 1)

end A324847

/-! ## A324847.P4715040315190135169

`eq[0, ∏{d}[n, n%A000040(#)]]`
-/

namespace A324847.P4715040315190135169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), Int.tmod (n : ℤ) (A000040 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324847.P4715040315190135169

namespace A324847

/-- `eq[0, ∏{d}[n, n%A000040(#)]]` -/
def P4715040315190135169.Spec : Prop :=
  ∀ n, (P4715040315190135169.a n : ℤ) = A324847 (n + 1)

end A324847

/-! ## A324847.P65559250402228061

`eq[char[A324846(n+2)], A061007(2*(n+1))]`
-/

namespace A324847.P65559250402228061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324846 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324847.P65559250402228061

namespace A324847

/-- `eq[char[A324846(n+2)], A061007(2*(n+1))]` -/
def P65559250402228061.Spec : Prop :=
  ∀ n, (P65559250402228061.a n : ℤ) = A324847 (n + 1)

end A324847

/-! ## A324847.P5803358477115623580

`∪[A097216(n+1), A323440(n+1)]`
-/

namespace A324847.P5803358477115623580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324847.P5803358477115623580

namespace A324847

/-- `∪[A097216(n+1), A323440(n+1)]` -/
def P5803358477115623580.Spec : Prop :=
  ∀ n, (P5803358477115623580.a n : ℤ) = A324847 (n + 1)

end A324847

/-!
# A324848: Number of prime indices of n (counted with multiplicity) that divide n.

The programs for A324848, the canonical program `A324848.P15119566397967557698` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324848 has offset 1).

The definition of A324848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324848.P15119566397967557698

`∑{d}[n+1, val(n+1, A000040(#))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A324848

/-- `∑{d}[n+1, val(n+1, A000040(#))]` -/
def P15119566397967557698.Spec : Prop :=
  ∀ n, (P15119566397967557698.a n : ℤ) = A324848 (n + 1)

theorem P15119566397967557698.correct : P15119566397967557698.Spec := by
  intro n
  simp only [A324848, Nat.add_sub_cancel]

end A324848

/-! ## A324848.P3312711484342363223

`∑{d}[n+1, val(n+1, A006093(#)+1)]`
-/

namespace A324848.P3312711484342363223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (n + 1) (A006093 d + 1).toNat

end

end A324848.P3312711484342363223

namespace A324848

/-- `∑{d}[n+1, val(n+1, A006093(#)+1)]` -/
def P3312711484342363223.Spec : Prop :=
  ∀ n, (P3312711484342363223.a n : ℤ) = A324848 (n + 1)

theorem P3312711484342363223.correct : P3312711484342363223.Spec := by
  intro n
  simp only [A324848, Nat.add_sub_cancel, A324848.P3312711484342363223.f1, A324848.P3312711484342363223.a, A324848.P15119566397967557698.f1, A324848.P15119566397967557698.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324848

/-! ## A324848.P13407721991481647445

`∑{d}[n+1, val(n+1, A008578(#+1))]`
-/

namespace A324848.P13407721991481647445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (n + 1) (A008578 (d + 1)).toNat

end

end A324848.P13407721991481647445

namespace A324848

/-- `∑{d}[n+1, val(n+1, A008578(#+1))]` -/
def P13407721991481647445.Spec : Prop :=
  ∀ n, (P13407721991481647445.a n : ℤ) = A324848 (n + 1)

end A324848

/-! ## A324848.P12780436985069038574

`∑{d}[n+1, val(n+1, A004086(A002385(#)))]`
-/

namespace A324848.P12780436985069038574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (n + 1) (A004086 (A002385 d).toNat).toNat

end

end A324848.P12780436985069038574

namespace A324848

/-- `∑{d}[n+1, val(n+1, A004086(A002385(#)))]` -/
def P12780436985069038574.Spec : Prop :=
  ∀ n, (P12780436985069038574.a n : ℤ) = A324848 (n + 1)

end A324848

/-! ## A324848.P3642226099033038984

`A169611(n+1)%A062790(A007569(n+4))`
-/

namespace A324848.P3642226099033038984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169611 (n + 1)) (A062790 (A007569 (n + 4)).toNat)

end

end A324848.P3642226099033038984

namespace A324848

/-- `A169611(n+1)%A062790(A007569(n+4))` -/
def P3642226099033038984.Spec : Prop :=
  ∀ n, P3642226099033038984.a n = A324848 (n + 1)

end A324848

/-!
# A324849: Positive integers divisible by none of their prime indices > 1.

The programs for A324849, the canonical program `A324849.P3412447664398633879` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324849 has offset 1).

The definition of A324849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324849.P4093086668911016523

`comp[A324771(n+1)-1]+1`
-/

namespace A324849.P4093086668911016523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324771 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324849.P4093086668911016523

namespace A324849

/-- `comp[A324771(n+1)-1]+1` -/
def P4093086668911016523.Spec : Prop :=
  ∀ n, (P4093086668911016523.a n : ℤ) = A324849 (n + 1)

end A324849

/-! ## A324849.P3412447664398633879

`eq[n%2, A324852(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324849

/-- `eq[n%2, A324852(n+1)]+1` -/
def P3412447664398633879.Spec : Prop :=
  ∀ n, (P3412447664398633879.a n : ℤ) = A324849 (n + 1)

theorem P3412447664398633879.correct : P3412447664398633879.Spec := by
  intro n
  simp only [A324849, Nat.add_sub_cancel]

end A324849

/-! ## A324849.P15144328649828898755

`eq[A000035(n), A324852(n+1)]+1`
-/

namespace A324849.P15144328649828898755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324849.P15144328649828898755

namespace A324849

/-- `eq[A000035(n), A324852(n+1)]+1` -/
def P15144328649828898755.Spec : Prop :=
  ∀ n, (P15144328649828898755.a n : ℤ) = A324849 (n + 1)

end A324849

/-! ## A324849.P13296457324399435136

`eq[A324848(n+1)+1, A001511(n+1)]+1`
-/

namespace A324849.P13296457324399435136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324848 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324849.P13296457324399435136

namespace A324849

/-- `eq[A324848(n+1)+1, A001511(n+1)]+1` -/
def P13296457324399435136.Spec : Prop :=
  ∀ n, (P13296457324399435136.a n : ℤ) = A324849 (n + 1)

end A324849

/-! ## A324849.P3821831513008034460

`eq[A059841(n), A324852(A028310(n))]`
-/

namespace A324849.P3821831513008034460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324849.P3821831513008034460

namespace A324849

/-- `eq[A059841(n), A324852(A028310(n))]` -/
def P3821831513008034460.Spec : Prop :=
  ∀ n, (P3821831513008034460.a n : ℤ) = A324849 (n + 1)

end A324849

/-!
# A324850: Numbers divisible by the product of their prime indices.

The programs for A324850, the canonical program `A324850.P6488381581613318012` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324850 has offset 1).

The definition of A324850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324850.P11676758136285051635

`eq[1, A324933(n+1)]+1`
-/

namespace A324850.P11676758136285051635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324850.P11676758136285051635

namespace A324850

/-- `eq[1, A324933(n+1)]+1` -/
def P11676758136285051635.Spec : Prop :=
  ∀ n, (P11676758136285051635.a n : ℤ) = A324850 (n + 1)

end A324850

/-! ## A324850.P6488381581613318012

`eq[0, (n+1)%A003963(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324850

/-- `eq[0, (n+1)%A003963(n+1)]+1` -/
def P6488381581613318012.Spec : Prop :=
  ∀ n, (P6488381581613318012.a n : ℤ) = A324850 (n + 1)

theorem P6488381581613318012.correct : P6488381581613318012.Spec := by
  intro n
  simp only [A324850, Nat.add_sub_cancel]

end A324850

/-! ## A324850.P3726524503617624784

`record[A000027(n+1)/A324933(n+1)]`
-/

namespace A324850.P3726524503617624784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A324933 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324850.P3726524503617624784

namespace A324850

/-- `record[A000027(n+1)/A324933(n+1)]` -/
def P3726524503617624784.Spec : Prop :=
  ∀ n, P3726524503617624784.a n = (A324850 (n + 1) : ℚ)

end A324850

/-! ## A324850.P8485970245215849345

`record[A249817(n+1)/A324933(n+1)]`
-/

namespace A324850.P8485970245215849345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A324933 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324850.P8485970245215849345

namespace A324850

/-- `record[A249817(n+1)/A324933(n+1)]` -/
def P8485970245215849345.Spec : Prop :=
  ∀ n, P8485970245215849345.a n = (A324850 (n + 1) : ℚ)

end A324850

/-! ## A324850.P10174805202914484546

`record[A120383(n+1)/A324933(A120383(n+1))]`
-/

namespace A324850.P10174805202914484546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120383 (n + 1) : ℚ) / (A324933 (A120383 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324850.P10174805202914484546

namespace A324850

/-- `record[A120383(n+1)/A324933(A120383(n+1))]` -/
def P10174805202914484546.Spec : Prop :=
  ∀ n, P10174805202914484546.a n = (A324850 (n + 1) : ℚ)

end A324850

/-! ## A324850.P13642969023509280135

`eq[1, char[A324922(n+1)]]`
-/

namespace A324850.P13642969023509280135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324850.P13642969023509280135

namespace A324850

/-- `eq[1, char[A324922(n+1)]]` -/
def P13642969023509280135.Spec : Prop :=
  ∀ n, (P13642969023509280135.a n : ℤ) = A324850 (n + 1)

end A324850

/-! ## A324850.P12947378589351341459

`record[A324933(2*n+1)/A324933(A324933(2*n+1))]`
-/

namespace A324850.P12947378589351341459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324933 (2 * n + 1) : ℚ) / (A324933 (A324933 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324850.P12947378589351341459

namespace A324850

/-- `record[A324933(2*n+1)/A324933(A324933(2*n+1))]` -/
def P12947378589351341459.Spec : Prop :=
  ∀ n, P12947378589351341459.a n = (A324850 (n + 1) : ℚ)

end A324850

/-! ## A324850.P12144312558433141193

`A324922(A324931(n+1))`
-/

namespace A324850.P12144312558433141193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (A324931 (n + 1)).toNat

end

end A324850.P12144312558433141193

namespace A324850

/-- `A324922(A324931(n+1))` -/
def P12144312558433141193.Spec : Prop :=
  ∀ n, P12144312558433141193.a n = A324850 (n + 1)

end A324850

/-! ## A324850.P14144625003938601433

`record[A255408(n+1)/A324933(n+1)]`
-/

namespace A324850.P14144625003938601433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255408 (n + 1) : ℚ) / (A324933 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324850.P14144625003938601433

namespace A324850

/-- `record[A255408(n+1)/A324933(n+1)]` -/
def P14144625003938601433.Spec : Prop :=
  ∀ n, P14144625003938601433.a n = (A324850 (n + 1) : ℚ)

end A324850

/-!
# A324851: Numbers > 1 divisible by the sum of their prime indices.

The programs for A324851, the canonical program `A324851.P11720887559579773851` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324851 has offset 1).

The definition of A324851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324851.P11720887559579773851

`eq[n+1, lcm(n+1, A056239(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324851

/-- `eq[n+1, lcm(n+1, A056239(n+1))]+1` -/
def P11720887559579773851.Spec : Prop :=
  ∀ n, (P11720887559579773851.a n : ℤ) = A324851 (n + 1)

theorem P11720887559579773851.correct : P11720887559579773851.Spec := by
  intro n
  simp only [A324851, Nat.add_sub_cancel]

end A324851

/-! ## A324851.P14969843038277203359

`lt[A185356(n), A185356(A184831(n+1))]`
-/

namespace A324851.P14969843038277203359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (A184831 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324851.P14969843038277203359

namespace A324851

/-- `lt[A185356(n), A185356(A184831(n+1))]` -/
def P14969843038277203359.Spec : Prop :=
  ∀ n, (P14969843038277203359.a n : ℤ) = A324851 (n + 1)

end A324851

/-! ## A324851.P9668850745210489509

`eq[A151622(n), A185356(n)]`
-/

namespace A324851.P9668850745210489509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324851.P9668850745210489509

namespace A324851

/-- `eq[A151622(n), A185356(n)]` -/
def P9668850745210489509.Spec : Prop :=
  ∀ n, (P9668850745210489509.a n : ℤ) = A324851 (n + 1)

end A324851

/-! ## A324851.P18155539465060479578

`eq[A151810(n), A185356(n)]`
-/

namespace A324851.P18155539465060479578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324851.P18155539465060479578

namespace A324851

/-- `eq[A151810(n), A185356(n)]` -/
def P18155539465060479578.Spec : Prop :=
  ∀ n, (P18155539465060479578.a n : ℤ) = A324851 (n + 1)

end A324851

/-! ## A324851.P3472070074819875081

`eq[A151811(n), A185356(n)]`
-/

namespace A324851.P3472070074819875081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324851.P3472070074819875081

namespace A324851

/-- `eq[A151811(n), A185356(n)]` -/
def P3472070074819875081.Spec : Prop :=
  ∀ n, (P3472070074819875081.a n : ℤ) = A324851 (n + 1)

end A324851

/-!
# A324852: Number of distinct prime indices of n that divide n.

The programs for A324852, the canonical program `A324852.P9108547436775433016` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324852 has offset 1).

The definition of A324852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324852.P16646721039158184717

`∑{d}[n+1, A001222(gcd(n+1, A000040(#)))]`
-/

namespace A324852.P16646721039158184717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (Int.gcd (n + 1 : ℤ) (A000040 d))

end

end A324852.P16646721039158184717

namespace A324852

/-- `∑{d}[n+1, A001222(gcd(n+1, A000040(#)))]` -/
def P16646721039158184717.Spec : Prop :=
  ∀ n, P16646721039158184717.a n = A324852 (n + 1)

end A324852

/-! ## A324852.P9108547436775433016

`∑{d}[n+1, A019431(val((n+1)², A000040(#)))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A324852

/-- `∑{d}[n+1, A019431(val((n+1)², A000040(#)))]` -/
def P9108547436775433016.Spec : Prop :=
  ∀ n, P9108547436775433016.a n = A324852 (n + 1)

theorem P9108547436775433016.correct : P9108547436775433016.Spec := by
  intro n
  simp only [A324852, Nat.add_sub_cancel]

end A324852

/-! ## A324852.P3298969611896826278

`∑{d}[n+1, A000007((n+1)%A000040(#))]`
-/

namespace A324852.P3298969611896826278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Int.tmod (n + 1 : ℤ) (A000040 d)).toNat

end

end A324852.P3298969611896826278

namespace A324852

/-- `∑{d}[n+1, A000007((n+1)%A000040(#))]` -/
def P3298969611896826278.Spec : Prop :=
  ∀ n, P3298969611896826278.a n = A324852 (n + 1)

end A324852

/-! ## A324852.P14958891328451834130

`A001222(gcd(∏{p}[n+1, #], A275700(n+1)))`
-/

namespace A324852.P14958891328451834130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A275700 (n + 1)))

end

end A324852.P14958891328451834130

namespace A324852

/-- `A001222(gcd(∏{p}[n+1, #], A275700(n+1)))` -/
def P14958891328451834130.Spec : Prop :=
  ∀ n, P14958891328451834130.a n = A324852 (n + 1)

end A324852

/-! ## A324852.P1711749637766929222

`A000120(and(A034729(n+1), A087207(n+1)))`
-/

namespace A324852.P1711749637766929222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A034729 (n + 1)) (A087207 (n + 1))).toNat

end

end A324852.P1711749637766929222

namespace A324852

/-- `A000120(and(A034729(n+1), A087207(n+1)))` -/
def P1711749637766929222.Spec : Prop :=
  ∀ n, P1711749637766929222.a n = A324852 (n + 1)

end A324852

/-!
# A324853: First number divisible by n of its own distinct prime indices.

The programs for A324853, there is no canonical definition to state claims against.
-/

/-! ## A324853.P4316331533399092101

`∏[record[A324345(A339991(n+1))]]`
-/

namespace A324853.P4316331533399092101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324345 (A339991 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A324853.P4316331533399092101

/-! ## A324853.P2865588116853036114

`∏[∑[A355534(A003314(2*n+5))]]`
-/

namespace A324853.P2865588116853036114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355534 (A003314 (2 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A324853.P2865588116853036114

/-! ## A324853.P6030867852794735142

`∏[record[A153443(n+1)%A072226(n+1)]]`
-/

namespace A324853.P6030867852794735142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153443 (n + 1)) (A072226 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A324853.P6030867852794735142

/-!
# A324854: Lexicographically earliest sequence containing 1 and all positive integers > 2 whose prime indices already belong to the sequence.

The programs for A324854, there is no canonical definition to state claims against.
-/

/-! ## A324854.P16240469765237854006

`A348288(∑[2*n])+2*n+1`
-/

namespace A324854.P16240469765237854006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348288 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n + 1 : ℤ)

end

end A324854.P16240469765237854006

/-! ## A324854.P3420053192791443485

`A328003(A034856(n+1))+A003817(n)`
-/

namespace A324854.P3420053192791443485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328003 (A034856 (n + 1)).toNat + A003817 n

end

end A324854.P3420053192791443485

/-! ## A324854.P1049192269798115789

`record[A235493(A235508(n+1)+A235492(n+1))]`
-/

namespace A324854.P1049192269798115789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235493 (A235508 (n + 1) + A235492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324854.P1049192269798115789

/-!
# A324855: Lexicographically earliest sequence containing 2 and all squarefree numbers > 2 whose prime indices already belong to the sequence.

The programs for A324855, there is no canonical definition to state claims against.
-/

/-! ## A324855.P11301717479331853336

`record[A348066(A324698(n+1))]`
-/

namespace A324855.P11301717479331853336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A324698 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324855.P11301717479331853336

/-! ## A324855.P3170455060444748091

`∩[A055396(A277098(n+1)), A324698(n+1)]`
-/

namespace A324855.P3170455060444748091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A277098 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324855.P3170455060444748091

/-! ## A324855.P322591179373976171

`∩[A324698(n+1), A000720(A277098(n+2))]`
-/

namespace A324855.P322591179373976171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A277098 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324855.P322591179373976171

/-! ## A324855.P17376303369850907627

`∩[A276625(n+1), A324698(n+1)]`
-/

namespace A324855.P17376303369850907627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324855.P17376303369850907627

/-! ## A324855.P4512947633621853884

`∩[A297571(n+1), A324698(n+1)]`
-/

namespace A324855.P4512947633621853884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324855.P4512947633621853884

/-!
# A324856: Numbers divisible by exactly one of their prime indices.

The programs for A324856, the canonical program `A324856.P11416853659660506855` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324856 has offset 1).

The definition of A324856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324856.P11416853659660506855

`eq[1, A324848(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324856

/-- `eq[1, A324848(n+1)]+1` -/
def P11416853659660506855.Spec : Prop :=
  ∀ n, (P11416853659660506855.a n : ℤ) = A324856 (n + 1)

theorem P11416853659660506855.correct : P11416853659660506855.Spec := by
  intro n
  simp only [A324856, Nat.add_sub_cancel]

end A324856

/-! ## A324856.P12062850315163322234

`eq[2, A000040(a(A324848(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A324856.P12062850315163322234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000040 (f2 (A324848 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324856.P12062850315163322234

namespace A324856

/-- `eq[2, A000040(a(A324848(n)))]` -/
def P12062850315163322234.Spec : Prop :=
  ∀ n, (P12062850315163322234.a n : ℤ) = A324856 (n + 1)

end A324856

/-! ## A324856.P4940758500866511285

`eq[2, A069753(a(A324848(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A324856.P4940758500866511285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A069753 (f2 (A324848 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324856.P4940758500866511285

namespace A324856

/-- `eq[2, A069753(a(A324848(n)))]` -/
def P4940758500866511285.Spec : Prop :=
  ∀ n, (P4940758500866511285.a n : ℤ) = A324856 (n + 1)

end A324856

/-! ## A324856.P13931105256180604213

`eq[1, A347767(a(A324848(n)))]` with `a(0)=3, a(1)=2`
-/

namespace A324856.P13931105256180604213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A347767 (f2 (A324848 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324856.P13931105256180604213

namespace A324856

/-- `eq[1, A347767(a(A324848(n)))]` -/
def P13931105256180604213.Spec : Prop :=
  ∀ n, (P13931105256180604213.a n : ℤ) = A324856 (n + 1)

end A324856

/-! ## A324856.P16605083191533740926

`A000720(p?[A000040(n+1)*A324848(n+1)])`
-/

namespace A324856.P16605083191533740926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A324848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324856.P16605083191533740926

namespace A324856

/-- `A000720(p?[A000040(n+1)*A324848(n+1)])` -/
def P16605083191533740926.Spec : Prop :=
  ∀ n, P16605083191533740926.a n = A324856 (n + 1)

end A324856

/-! ## A324856.P6380938168396100970

`A003963(p?[A000040(n+1)*A324848(n+1)])`
-/

namespace A324856.P6380938168396100970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A324848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324856.P6380938168396100970

namespace A324856

/-- `A003963(p?[A000040(n+1)*A324848(n+1)])` -/
def P6380938168396100970.Spec : Prop :=
  ∀ n, P6380938168396100970.a n = A324856 (n + 1)

end A324856

/-! ## A324856.P8174842095888706050

`A056239(p?[A000040(n+1)*A324848(n+1)])`
-/

namespace A324856.P8174842095888706050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A324848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324856.P8174842095888706050

namespace A324856

/-- `A056239(p?[A000040(n+1)*A324848(n+1)])` -/
def P8174842095888706050.Spec : Prop :=
  ∀ n, P8174842095888706050.a n = A324856 (n + 1)

end A324856

/-!
# A324857: Numbers m > 1 such that there exists a prime divisor p of m with s_p(m) = p.

The programs for A324857, there is no canonical definition to state claims against.
-/

/-! ## A324857.P11351265310393763600

`A324456(A306202(n+1)%A028749(2*n+1))`
-/

namespace A324857.P11351265310393763600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324456 (Int.tmod (A306202 (n + 1)) (A028749 (2 * n + 1))).toNat

end

end A324857.P11351265310393763600

/-! ## A324857.P7529467203664638109

`A324456(A306202(n+1)%A335085(n+4))`
-/

namespace A324857.P7529467203664638109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324456 (Int.tmod (A306202 (n + 1)) (A335085 (n + 4))).toNat

end

end A324857.P7529467203664638109

/-! ## A324857.P10634558390759142116

`A324456(A316495(n+1))%A303525(A167487(n+5))`
-/

namespace A324857.P10634558390759142116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324456 (A316495 (n + 1)).toNat) (A303525 (A167487 (n + 5)).toNat)

end

end A324857.P10634558390759142116

/-! ## A324857.P9614313269826502184

`A324456(∑[A288972(n)!])`
-/

namespace A324857.P9614313269826502184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A288972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324456 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324857.P9614313269826502184

/-! ## A324857.P13423262306065719198

`∩[A028749(n+1), A324456(n+1)]`
-/

namespace A324857.P13423262306065719198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324857.P13423262306065719198

/-!
# A324861: a(n) is the binary length of A324876(n).

The programs for A324861, there is no canonical definition to state claims against.
-/

/-! ## A324861.P3976100221834203788

`A001222(n+1)+A061395(n+1)-A324872(n+1)`
-/

namespace A324861.P3976100221834203788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A061395 (n + 1) - A324872 (n + 1))

end

end A324861.P3976100221834203788

/-! ## A324861.P2389789511978762622

`A252464(A253550(n+1))-A324872(n+1)`
-/

namespace A324861.P2389789511978762622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A253550 (n + 1)).toNat - A324872 (n + 1)

end

end A324861.P2389789511978762622

/-! ## A324861.P6390901659466625456

`ceil(log2(A324876(n+1)+1))`
-/

namespace A324861.P6390901659466625456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A324876 (n + 1) + 1 : ℝ)⌉

end

end A324861.P6390901659466625456

/-! ## A324861.P12045274938295916092

`A324863(2*(n+1))%A324866(2*(n+1))-A324872(n+1)`
-/

namespace A324861.P12045274938295916092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324863 (2 * (n + 1))) (A324866 (2 * (n + 1))) - A324872 (n + 1)

end

end A324861.P12045274938295916092

/-! ## A324861.P2842940175026495370

`A252464(A003961(n+1))-A324872(n+1)`
-/

namespace A324861.P2842940175026495370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A003961 (n + 1)).toNat - A324872 (n + 1)

end

end A324861.P2842940175026495370

/-! ## A324861.P12939720198714611918

`A324863(n+1)-A025439(A257478(n+1))`
-/

namespace A324861.P12939720198714611918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1) - A025439 (A257478 (n + 1)).toNat

end

end A324861.P12939720198714611918

/-! ## A324861.P7407712123468027472

`A324870(n+1)+A061395(A325163(n+1))-A324870(A032742(n+1))`
-/

namespace A324861.P7407712123468027472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1) + A061395 (A325163 (n + 1)).toNat - A324870 (A032742 (n + 1)).toNat

end

end A324861.P7407712123468027472

/-! ## A324861.P7398800157502024458

`A324863(n+1)-A025468(A037166(n+1))`
-/

namespace A324861.P7398800157502024458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1) - A025468 (A037166 (n + 1)).toNat

end

end A324861.P7398800157502024458

/-! ## A324861.P11472775847042042779

`A324863(n+1)-A010052(A307516(n+1))`
-/

namespace A324861.P11472775847042042779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1) - A010052 (A307516 (n + 1)).toNat

end

end A324861.P11472775847042042779

/-!
# A324862: a(n) is the binary length of A324878(n).

The programs for A324862, there is no canonical definition to state claims against.
-/

/-! ## A324862.P14216822684518486378

`A029837(A324878(n+1)+1)`
-/

namespace A324862.P14216822684518486378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A324878 (n + 1) + 1).toNat

end

end A324862.P14216822684518486378

/-! ## A324862.P16925619329696243936

`A238845(2*A324878(n+1))`
-/

namespace A324862.P16925619329696243936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (2 * A324878 (n + 1)).toNat

end

end A324862.P16925619329696243936

/-! ## A324862.P13792192852631491816

`A000523(2*A324878(n+1)+1)`
-/

namespace A324862.P13792192852631491816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A324878 (n + 1) + 1).toNat

end

end A324862.P13792192852631491816

/-! ## A324862.P14152480046586234833

`A070939(2*A324878(n+1))-1`
-/

namespace A324862.P14152480046586234833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A324878 (n + 1)).toNat - 1

end

end A324862.P14152480046586234833

/-! ## A324862.P17632177053797817354

`A001222(A057335(A324878(n+1)))`
-/

namespace A324862.P17632177053797817354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A057335 (A324878 (n + 1)).toNat).toNat

end

end A324862.P17632177053797817354

/-! ## A324862.P8280384893819386204

`A324864(n+1)%A057335(A324878(n+1))`
-/

namespace A324862.P8280384893819386204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324864 (n + 1)) (A057335 (A324878 (n + 1)).toNat)

end

end A324862.P8280384893819386204

/-! ## A324862.P16158252223864967431

`A000523(A324878(n+1)+A324878(n+1)+1)`
-/

namespace A324862.P16158252223864967431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A324878 (n + 1) + (A324878 (n + 1) + 1)).toNat

end

end A324862.P16158252223864967431

/-! ## A324862.P17898713451022290304

`A070939(A324878(n+1)+A324878(n+1))-1`
-/

namespace A324862.P17898713451022290304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A324878 (n + 1) + A324878 (n + 1)).toNat - 1

end

end A324862.P17898713451022290304

/-! ## A324862.P7321182594266632228

`A340251(4*A324878(n+1))`
-/

namespace A324862.P7321182594266632228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (4 * A324878 (n + 1)).toNat

end

end A324862.P7321182594266632228

/-!
# A324863: Binary length of A324866(n), where A324866(n) = A156552(n) OR (A323243(n) - A156552(n)).

The programs for A324863, there is no canonical definition to state claims against.
-/

/-! ## A324863.P5989433308356298435

`A324870(n+1)+A252464(n+1)`
-/

namespace A324863.P5989433308356298435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1) + A252464 (n + 1)

end

end A324863.P5989433308356298435

/-! ## A324863.P16175167748325325002

`A324870(n+1)+A056239(A325351(n+1))`
-/

namespace A324863.P16175167748325325002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1) + A056239 (A325351 (n + 1)).toNat

end

end A324863.P16175167748325325002

/-! ## A324863.P13734597538804338618

`A297113(n+1)+A324870(n+1)+A297155(n+1)`
-/

namespace A324863.P13734597538804338618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) + (A324870 (n + 1) + A297155 (n + 1))

end

end A324863.P13734597538804338618

/-! ## A324863.P16814404155674024731

`A324870(n+1)+A061395(2*(n+1))+A001222(n+1)-1`
-/

namespace A324863.P16814404155674024731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1) + (A061395 (2 * (n + 1)) + (A001222 (n + 1) - 1))

end

end A324863.P16814404155674024731

/-! ## A324863.P1769338363209029205

`char[A324871(n+1)-1]+A347381(n+1)+A347380(n+1)`
-/

namespace A324863.P1769338363209029205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324871 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A347381 (n + 1) + A347380 (n + 1))

end

end A324863.P1769338363209029205

/-! ## A324863.P13586238864277281006

`ceil(log2(A324866(n+1)+1))`
-/

namespace A324863.P13586238864277281006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A324866 (n + 1) + 1 : ℝ)⌉

end

end A324863.P13586238864277281006

/-! ## A324863.P12800420592617197214

`A324870(n+1)+A061395(A332462(n+1))`
-/

namespace A324863.P12800420592617197214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1) + A061395 (A332462 (n + 1)).toNat

end

end A324863.P12800420592617197214

/-! ## A324863.P2547220152054789004

`A324870(n+1)+A061395(A325163(n+1))`
-/

namespace A324863.P2547220152054789004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1) + A061395 (A325163 (n + 1)).toNat

end

end A324863.P2547220152054789004

/-! ## A324863.P11228969524795036382

`A065770(A000010(A065769(n+1))*A325163(n+1))`
-/

namespace A324863.P11228969524795036382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A000010 (A065769 (n + 1)).toNat * A325163 (n + 1)).toNat

end

end A324863.P11228969524795036382

/-! ## A324863.P8393254464220042759

`or(A055641(A034905(n+1)), A324861(n+1))`
-/

namespace A324863.P8393254464220042759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A034905 (n + 1)).toNat) (A324861 (n + 1))

end

end A324863.P8393254464220042759

/-!
# A324864: a(n) is the maximal value that A324862(d) attains among the divisors d of n.

The programs for A324864, there is no canonical definition to state claims against.
-/

/-! ## A324864.P3549434917733478504

`A160094(A219044(n+2))*A324874(n+1)`
-/

namespace A324864.P3549434917733478504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A219044 (n + 2)).toNat * A324874 (n + 1)

end

end A324864.P3549434917733478504

/-! ## A324864.P9892649323383884438

`A324874(n+1)+A292380(A064085(n+1))`
-/

namespace A324864.P9892649323383884438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1) + A292380 (A064085 (n + 1)).toNat

end

end A324864.P9892649323383884438

/-! ## A324864.P18354408973721101105

`A097886(A086629(n))*A324874(n+1)`
-/

namespace A324864.P18354408973721101105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097886 (A086629 n).toNat * A324874 (n + 1)

end

end A324864.P18354408973721101105

/-! ## A324864.P3229067276710223541

`A238845(2*A324398(n+1))*A267401(A267401(n+1))`
-/

namespace A324864.P3229067276710223541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (2 * A324398 (n + 1)).toNat * A267401 (A267401 (n + 1)).toNat

end

end A324864.P3229067276710223541

/-! ## A324864.P9944703637539488809

`A324837(A324876(n+3))*A324874(n+1)`
-/

namespace A324864.P9944703637539488809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324837 (A324876 (n + 3)).toNat * A324874 (n + 1)

end

end A324864.P9944703637539488809

/-!
# A324865: a(n) = A323243(n) - A156552(n).

The programs for A324865, there is no canonical definition to state claims against.
-/

/-! ## A324865.P16985957324051935572

`A323243(n+1)-A156552(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324865.P16985957324051935572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - A156552 (n + 1)

end

end A324865.P16985957324051935572

/-! ## A324865.P3155721633933197791

`A156552(n+1)-A323244(n+1)`
-/

namespace A324865.P3155721633933197791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - A323244 (n + 1)

end

end A324865.P3155721633933197791

/-! ## A324865.P16858266365288739764

`A156552(n+1)+A329639(n+1)-A329638(n+1)`
-/

namespace A324865.P16858266365288739764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A329639 (n + 1) - A329638 (n + 1))

end

end A324865.P16858266365288739764

/-! ## A324865.P43908482955451305

`A156552(n+1)+A329646(n+1)-A329645(n+1)`
-/

namespace A324865.P43908482955451305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A329646 (n + 1) - A329645 (n + 1))

end

end A324865.P43908482955451305

/-! ## A324865.P12428695331863232550

`xor(A156552(n+1), A324867(n+1))`
-/

namespace A324865.P12428695331863232550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A156552 (n + 1)) (A324867 (n + 1))

end

end A324865.P12428695331863232550

/-! ## A324865.P8193555011749036221

`A323243(n+1)+1-A005941(n+1)`
-/

namespace A324865.P8193555011749036221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) + (1 - A005941 (n + 1))

end

end A324865.P8193555011749036221

/-! ## A324865.P967561560945668481

`(A323243(n+1)-A323244(n+1))/2`
-/

namespace A324865.P967561560945668481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323243 (n + 1) - A323244 (n + 1) : ℚ) / 2

end

end A324865.P967561560945668481

/-! ## A324865.P10091934297260721127

`A323243(n+1)-(A323905(n+1)+A048675(n+1))`
-/

namespace A324865.P10091934297260721127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - (A323905 (n + 1) + A048675 (n + 1))

end

end A324865.P10091934297260721127

/-! ## A324865.P6228211986567013084

`A323247(n+1)-(A323248(n+1)+A156552(n+1))`
-/

namespace A324865.P6228211986567013084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323247 (n + 1) - (A323248 (n + 1) + A156552 (n + 1))

end

end A324865.P6228211986567013084

/-! ## A324865.P7005302296301096460

`A324398(n+1)+A324866(n+1)-A156552(n+1)`
-/

namespace A324865.P7005302296301096460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324398 (n + 1) + (A324866 (n + 1) - A156552 (n + 1))

end

end A324865.P7005302296301096460

/-! ## A324865.P17499566925291942292

`A292380(n+1)+A292382(n+1)-A323244(n+1)`
-/

namespace A324865.P17499566925291942292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1) + (A292382 (n + 1) - A323244 (n + 1))

end

end A324865.P17499566925291942292

/-! ## A324865.P5527274140184512790

`A323243(n+1)-(A292382(n+1)+A292380(n+1))`
-/

namespace A324865.P5527274140184512790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - (A292382 (n + 1) + A292380 (n + 1))

end

end A324865.P5527274140184512790

/-! ## A324865.P722878601964704581

`A323243(n+1)-A269388(A302025(n+1))`
-/

namespace A324865.P722878601964704581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - A269388 (A302025 (n + 1)).toNat

end

end A324865.P722878601964704581

/-!
# A324866: a(n) = A156552(n) OR A324865(n), where OR is bitwise-OR, A003986.

The programs for A324866, there is no canonical definition to state claims against.
-/

/-! ## A324866.P3893801539032690512

`A324867(n+1)+A324398(n+1)`
-/

namespace A324866.P3893801539032690512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324867 (n + 1) + A324398 (n + 1)

end

end A324866.P3893801539032690512

/-! ## A324866.P17659522351764551906

`A323243(n+1)-A324398(n+1)`
-/

namespace A324866.P17659522351764551906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - A324398 (n + 1)

end

end A324866.P17659522351764551906

/-! ## A324866.P14845524625362637651

`or(A156552(n+1), A324865(n+1))`
-/

namespace A324866.P14845524625362637651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156552 (n + 1)) (A324865 (n + 1))

end

end A324866.P14845524625362637651

/-! ## A324866.P6662060455018007789

`or(A324865(n+1), A324867(n+1))`
-/

namespace A324866.P6662060455018007789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324865 (n + 1)) (A324867 (n + 1))

end

end A324866.P6662060455018007789

/-! ## A324866.P13106206213950531110

`A156552(n+1)+A324865(n+1)-A324398(n+1)`
-/

namespace A324866.P13106206213950531110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A324865 (n + 1) - A324398 (n + 1))

end

end A324866.P13106206213950531110

/-! ## A324866.P9373468646791355833

`or(A323905(n+1)+A048675(n+1), A324865(n+1))`
-/

namespace A324866.P9373468646791355833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A323905 (n + 1) + A048675 (n + 1)) (A324865 (n + 1))

end

end A324866.P9373468646791355833

/-! ## A324866.P2070751751690641432

`or(A323243(n+1)-A156552(n+1), A156552(n+1))`
-/

namespace A324866.P2070751751690641432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A323243 (n + 1) - A156552 (n + 1)) (A156552 (n + 1))

end

end A324866.P2070751751690641432

/-! ## A324866.P1729602171081352201

`or(A323243(n+1)-A324865(n+1), A324865(n+1))`
-/

namespace A324866.P1729602171081352201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A323243 (n + 1) - A324865 (n + 1)) (A324865 (n + 1))

end

end A324866.P1729602171081352201

/-! ## A324866.P9869760288896892425

`or(A292382(n+1)+A292380(n+1), A324865(n+1))`
-/

namespace A324866.P9869760288896892425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A292382 (n + 1) + A292380 (n + 1)) (A324865 (n + 1))

end

end A324866.P9869760288896892425

/-! ## A324866.P14904833783118739414

`or(A252754(A250245(n+1)), A324865(n+1))`
-/

namespace A324866.P14904833783118739414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A252754 (A250245 (n + 1)).toNat) (A324865 (n + 1))

end

end A324866.P14904833783118739414

/-! ## A324866.P13222378597252447757

`or(A269388(A302025(n+1)), A324865(n+1))`
-/

namespace A324866.P13222378597252447757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A269388 (A302025 (n + 1)).toNat) (A324865 (n + 1))

end

end A324866.P13222378597252447757

/-!
# A324867: a(n) = A156552(n) XOR A324865(n), where XOR is bitwise-xor, A003987.

The programs for A324867, there is no canonical definition to state claims against.
-/

/-! ## A324867.P14871905660198370707

`A323243(n+1)-2*A324398(n+1)`
-/

namespace A324867.P14871905660198370707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - 2 * A324398 (n + 1)

end

end A324867.P14871905660198370707

/-! ## A324867.P9047899740401921948

`A324866(n+1)-A324398(n+1)`
-/

namespace A324867.P9047899740401921948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324866 (n + 1) - A324398 (n + 1)

end

end A324867.P9047899740401921948

/-! ## A324867.P3551723379362012705

`xor(A156552(n+1), A324865(n+1))`
-/

namespace A324867.P3551723379362012705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A156552 (n + 1)) (A324865 (n + 1))

end

end A324867.P3551723379362012705

/-! ## A324867.P8408218579802185743

`A324866(n+1)+A324866(n+1)-A323243(n+1)`
-/

namespace A324867.P8408218579802185743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324866 (n + 1) + (A324866 (n + 1) - A323243 (n + 1))

end

end A324867.P8408218579802185743

/-! ## A324867.P11244089405714252983

`xor(A323905(n+1)+A048675(n+1), A324865(n+1))`
-/

namespace A324867.P11244089405714252983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323905 (n + 1) + A048675 (n + 1)) (A324865 (n + 1))

end

end A324867.P11244089405714252983

/-! ## A324867.P7204146634325718665

`xor(A156552(n+1)-A323244(n+1), A156552(n+1))`
-/

namespace A324867.P7204146634325718665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A156552 (n + 1) - A323244 (n + 1)) (A156552 (n + 1))

end

end A324867.P7204146634325718665

/-! ## A324867.P1406694495987616581

`xor(A323243(n+1)-A156552(n+1), A156552(n+1))`
-/

namespace A324867.P1406694495987616581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323243 (n + 1) - A156552 (n + 1)) (A156552 (n + 1))

end

end A324867.P1406694495987616581

/-! ## A324867.P12323244786993645528

`xor(A323243(n+1)-A324865(n+1), A324865(n+1))`
-/

namespace A324867.P12323244786993645528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323243 (n + 1) - A324865 (n + 1)) (A324865 (n + 1))

end

end A324867.P12323244786993645528

/-! ## A324867.P2761980736948838221

`2*A324866(n+1)-A323243(n+1)`
-/

namespace A324867.P2761980736948838221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324866 (n + 1) - A323243 (n + 1)

end

end A324867.P2761980736948838221

/-! ## A324867.P6801150627332373609

`xor(A292382(n+1)+A292380(n+1), A324865(n+1))`
-/

namespace A324867.P6801150627332373609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292382 (n + 1) + A292380 (n + 1)) (A324865 (n + 1))

end

end A324867.P6801150627332373609

/-! ## A324867.P609055704032188205

`xor(A252754(A250245(n+1)), A324865(n+1))`
-/

namespace A324867.P609055704032188205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A252754 (A250245 (n + 1)).toNat) (A324865 (n + 1))

end

end A324867.P609055704032188205

/-! ## A324867.P2244486663679589515

`xor(A269388(A302025(n+1)), A324865(n+1))`
-/

namespace A324867.P2244486663679589515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A269388 (A302025 (n + 1)).toNat) (A324865 (n + 1))

end

end A324867.P2244486663679589515

/-!
# A324868: Binary weight of A324398(n).

The programs for A324868, there is no canonical definition to state claims against.
-/

/-! ## A324868.P8105552374678283791

`A000120(A324398(n+1))`
-/

namespace A324868.P8105552374678283791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324398 (n + 1)).toNat

end

end A324868.P8105552374678283791

/-! ## A324868.P6155733129349290153

`A324874(n+1)-A324881(n+1)`
-/

namespace A324868.P6155733129349290153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1) - A324881 (n + 1)

end

end A324868.P6155733129349290153

/-! ## A324868.P4212484510456360299

`A324874(n+1)+A153881(n+1)*A324881(n+1)`
-/

namespace A324868.P4212484510456360299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1) + A153881 (n + 1) * A324881 (n + 1)

end

end A324868.P4212484510456360299

/-! ## A324868.P15151967298017938784

`ceil(log2(A324398(n+1)+1))-A324881(n+1)`
-/

namespace A324868.P15151967298017938784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A324398 (n + 1) + 1 : ℝ)⌉ - A324881 (n + 1)

end

end A324868.P15151967298017938784

/-! ## A324868.P2670388272397175463

`A207328(ceil(A324398(n+1)/2))`
-/

namespace A324868.P2670388272397175463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207328 ⌈(A324398 (n + 1) : ℚ) / 2⌉.toNat

end

end A324868.P2670388272397175463

/-! ## A324868.P7803727457565920127

`A207328(ceil(A324398(-xor(n, -1))/2))%4`
-/

namespace A324868.P7803727457565920127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207328 ⌈(A324398 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌉.toNat) 4

end

end A324868.P7803727457565920127

/-! ## A324868.P17269910713635909870

`A131810(A001316(A324398(n+1))²)`
-/

namespace A324868.P17269910713635909870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131810 (A001316 (A324398 (n + 1)).toNat ^ 2).toNat

end

end A324868.P17269910713635909870

/-! ## A324868.P6815750352332481681

`A324816(A001316(A324398(n+1))²)`
-/

namespace A324868.P6815750352332481681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324816 (A001316 (A324398 (n + 1)).toNat ^ 2).toNat

end

end A324868.P6815750352332481681

/-! ## A324868.P3458638905426684345

`A000120(A323243(n+1)-A324866(n+1))`
-/

namespace A324868.P3458638905426684345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A323243 (n + 1) - A324866 (n + 1)).toNat

end

end A324868.P3458638905426684345

/-! ## A324868.P3501294238898611381

`A324874(n+1)-A080791(A324398(n+1))`
-/

namespace A324868.P3501294238898611381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1) - A080791 (A324398 (n + 1)).toNat

end

end A324868.P3501294238898611381

/-! ## A324868.P17308513509354297723

`A000120(and(A156552(n+1), A324865(n+1)))`
-/

namespace A324868.P17308513509354297723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A156552 (n + 1)) (A324865 (n + 1))).toNat

end

end A324868.P17308513509354297723

/-!
# A324869: a(n) is the number of times A324862(d) attains the maximal value it obtains among the divisors d of n.

The programs for A324869, there is no canonical definition to state claims against.
-/

/-! ## A324869.P3989368464897344423

`gcd(A101296(n+1), A161701(A225475(n)))`
-/

namespace A324869.P3989368464897344423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101296 (n + 1)) (A161701 (A225475 n).toNat)

end

end A324869.P3989368464897344423

/-! ## A324869.P16933584163266869465

`gcd(A000005(n+1), A044917(A074824(n+1)))`
-/

namespace A324869.P16933584163266869465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A044917 (A074824 (n + 1)).toNat)

end

end A324869.P16933584163266869465

/-! ## A324869.P11832636980496971151

`gcd(A004526(A106708(n+1)), A181819(n+1))`
-/

namespace A324869.P11832636980496971151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (A106708 (n + 1)).toNat) (A181819 (n + 1))

end

end A324869.P11832636980496971151

/-! ## A324869.P9776655723409921139

`gcd(∏{e}[n+1, #+1], A013662(A271654(n+1)))`
-/

namespace A324869.P9776655723409921139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A013662 ((A271654 (n + 1)).toNat + 1))

end

end A324869.P9776655723409921139

/-! ## A324869.P11694535992164629305

`gcd(A023194(A008480(n+1)), A349160(3*n+4))`
-/

namespace A324869.P11694535992164629305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023194 (A008480 (n + 1)).toNat) (A349160 (3 * n + 4))

end

end A324869.P11694535992164629305

/-!
# A324870: a(n) = A324863(n) - A252464(n).

The programs for A324870, there is no canonical definition to state claims against.
-/

/-! ## A324870.P9811812474605486915

`A324863(n+1)-A252464(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324870.P9811812474605486915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1) - A252464 (n + 1)

end

end A324870.P9811812474605486915

/-! ## A324870.P12726893069176495786

`A000007(A324872(n+1)+A000007(n))`
-/

namespace A324870.P12726893069176495786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A324872 (n + 1) + A000007 n).toNat

end

end A324870.P12726893069176495786

/-! ## A324870.P13916200930343288313

`(A025487(n+1)+A025487(A324872(n+1)+1))%2`
-/

namespace A324870.P13916200930343288313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025487 (n + 1) + A025487 (A324872 (n + 1) + 1).toNat) 2

end

end A324870.P13916200930343288313

/-! ## A324870.P8816861630976684784

`A324872(A001222(n+1)+1)-A324872(A324872(n+1)+1)`
-/

namespace A324870.P8816861630976684784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324872 (A001222 (n + 1) + 1).toNat - A324872 (A324872 (n + 1) + 1).toNat

end

end A324870.P8816861630976684784

/-! ## A324870.P1124596350618094653

`char[A324871(n+1)-1]`
-/

namespace A324870.P1124596350618094653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324871 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324870.P1124596350618094653

/-! ## A324870.P9323350987195141386

`(1-A324872(A324872(n+1)+1))%A000041(n)`
-/

namespace A324870.P9323350987195141386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A324872 (A324872 (n + 1) + 1).toNat) (A000041 n)

end

end A324870.P9323350987195141386

/-! ## A324870.P13199585004203447702

`floor(A324863(n+1)/A324863(2*(n+1)))`
-/

namespace A324870.P13199585004203447702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324863 (n + 1) : ℚ) / (A324863 (2 * (n + 1)) : ℚ)⌋

end

end A324870.P13199585004203447702

/-! ## A324870.P10127874108243969896

`and((n+1)*∑{d}[n+1, #], A316343(2*∑{d}[n+1, #]))`
-/

namespace A324870.P10127874108243969896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) (A316343 (2 * (∑ d ∈ Nat.divisors (f2 n), d)))

end

end A324870.P10127874108243969896

/-! ## A324870.P17500825188552491411

`and((n+1)*∑{d}[n+1, #], A340507((n+1)²-∑{d}[n+1, #]))`
-/

namespace A324870.P17500825188552491411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) (A340507 ((n + 1) ^ 2 - ∑ d ∈ Nat.divisors (f2 n), d))

end

end A324870.P17500825188552491411

/-! ## A324870.P6797457319139381506

`val(Δ[A227369(n)], 12)`
-/

namespace A324870.P6797457319139381506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227369 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 12

end

end A324870.P6797457319139381506

/-! ## A324870.P6851509253176397339

`A038040(n+1)%A049710(A049633(n+4))`
-/

namespace A324870.P6851509253176397339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038040 (n + 1)) (A049710 (A049633 (n + 4)).toNat)

end

end A324870.P6851509253176397339

/-! ## A324870.P9271704672721912674

`and(char[A285163(n+1)], A245965(n))`
-/

namespace A324870.P9271704672721912674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285163 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A245965 n)

end

end A324870.P9271704672721912674

/-! ## A324870.P18059367221972118233

`A210455(A219208(n)²)`
-/

namespace A324870.P18059367221972118233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210455 (A219208 n ^ 2).toNat

end

end A324870.P18059367221972118233

/-!
# A324871: Numbers n where A324863(n) differs from A252464(n).

The programs for A324871, there is no canonical definition to state claims against.
-/

/-! ## A324871.P15061240389222575945

`eq[1, A324870(n+1)]+1`
-/

namespace A324871.P15061240389222575945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324871.P15061240389222575945

/-! ## A324871.P7094951406706605613

`eq[1, A324870(A028310(n))]`
-/

namespace A324871.P7094951406706605613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324871.P7094951406706605613

/-! ## A324871.P13345780915443150559

`A011760(eq[1, A324870(n+1)])`
-/

namespace A324871.P13345780915443150559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324871.P13345780915443150559

/-! ## A324871.P9336984189659108525

`A020725(eq[1, A324870(n+1)])`
-/

namespace A324871.P9336984189659108525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324871.P9336984189659108525

/-! ## A324871.P5426349180303147412

`A065475(eq[1, A324870(n+1)])`
-/

namespace A324871.P5426349180303147412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324871.P5426349180303147412

/-! ## A324871.P12029834853382249334

`filter[A324551(n+1), A324870(#)]`
-/

namespace A324871.P12029834853382249334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324870 (f1 j).toNat = 1) n)

end

end A324871.P12029834853382249334

/-!
# A324872: a(n) = A001222(n) + A061395(n) - A324861(n).

The programs for A324872, there is no canonical definition to state claims against.
-/

/-! ## A324872.P1487599648461305425

`A001222(n+1)+A061395(n+1)-A324861(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324872.P1487599648461305425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A061395 (n + 1) - A324861 (n + 1)

end

end A324872.P1487599648461305425

/-! ## A324872.P11573794946403201315

`(A252464(n+1)+1-A324861(n+1))%A005941(n+1)`
-/

namespace A324872.P11573794946403201315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252464 (n + 1) + 1 - A324861 (n + 1)) (A005941 (n + 1))

end

end A324872.P11573794946403201315

/-! ## A324872.P16005407776653800648

`A324863(2*(n+1))%A324866(2*(n+1))-A324861(n+1)`
-/

namespace A324872.P16005407776653800648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324863 (2 * (n + 1))) (A324866 (2 * (n + 1))) - A324861 (n + 1)

end

end A324872.P16005407776653800648

/-! ## A324872.P18118750237356319883

`A252464(A003961(n+1))-A324861(n+1)`
-/

namespace A324872.P18118750237356319883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A003961 (n + 1)).toNat - A324861 (n + 1)

end

end A324872.P18118750237356319883

/-! ## A324872.P3166103908332033558

`A005361(A082725(n+1))%A211776(A097247(n+1))`
-/

namespace A324872.P3166103908332033558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005361 (A082725 (n + 1)).toNat) (A211776 (A097247 (n + 1)).toNat)

end

end A324872.P3166103908332033558

/-! ## A324872.P2872835248083182391

`A017281(A103517(n))%A000005(A327076(n+1))`
-/

namespace A324872.P2872835248083182391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017281 (A103517 n).toNat) (A000005 (A327076 (n + 1)).toNat)

end

end A324872.P2872835248083182391

/-!
# A324873: a(n) = gcd(n, A060968(n)).

The programs for A324873, the canonical program `A324873.P5103908596752073579` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324873 has offset 1).

The definition of A324873 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324873.P5103908596752073579

`gcd(n+1, A060968(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A324873

/-- `gcd(n+1, A060968(n+1))` -/
def P5103908596752073579.Spec : Prop :=
  ∀ n, (P5103908596752073579.a n : ℤ) = A324873 (n + 1)

theorem P5103908596752073579.correct : P5103908596752073579.Spec := by
  intro n
  simp only [A324873, Nat.add_sub_cancel]

end A324873

/-! ## A324873.P16165005570688775811

`gcd(A060968(n+1), A131738(n))`
-/

namespace A324873.P16165005570688775811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060968 (n + 1)) (A131738 n)

end

end A324873.P16165005570688775811

namespace A324873

/-- `gcd(A060968(n+1), A131738(n))` -/
def P16165005570688775811.Spec : Prop :=
  ∀ n, (P16165005570688775811.a n : ℤ) = A324873 (n + 1)

end A324873

/-! ## A324873.P8297543892869182691

`gcd(A000027(n+1), A182039(n+1))`
-/

namespace A324873.P8297543892869182691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A182039 (n + 1))

end

end A324873.P8297543892869182691

namespace A324873

/-- `gcd(A000027(n+1), A182039(n+1))` -/
def P8297543892869182691.Spec : Prop :=
  ∀ n, (P8297543892869182691.a n : ℤ) = A324873 (n + 1)

end A324873

/-! ## A324873.P5299218008633178607

`gcd(A004277(n+1)/2, A204617(2*(n+1)))`
-/

namespace A324873.P5299218008633178607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A004277 (n + 1) : ℚ) / 2)) (A204617 (2 * (n + 1)))

end

end A324873.P5299218008633178607

namespace A324873

/-- `gcd(A004277(n+1)/2, A204617(2*(n+1)))` -/
def P5299218008633178607.Spec : Prop :=
  ∀ n, (P5299218008633178607.a n : ℤ) = A324873 (n + 1)

end A324873

/-! ## A324873.P3496650120629781313

`gcd(A002618(n+1), A079458(n+1))/A000010(n+1)`
-/

namespace A324873.P3496650120629781313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A002618 (n + 1)) (A079458 (n + 1)) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A324873.P3496650120629781313

namespace A324873

/-- `gcd(A002618(n+1), A079458(n+1))/A000010(n+1)` -/
def P3496650120629781313.Spec : Prop :=
  ∀ n, P3496650120629781313.a n = (A324873 (n + 1) : ℚ)

end A324873

/-! ## A324873.P1337028780515239105

`gcd(A060401(n+1), A395768(n+1))`
-/

namespace A324873.P1337028780515239105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060401 (n + 1)) (A395768 (n + 1))

end

end A324873.P1337028780515239105

namespace A324873

/-- `gcd(A060401(n+1), A395768(n+1))` -/
def P1337028780515239105.Spec : Prop :=
  ∀ n, (P1337028780515239105.a n : ℤ) = A324873 (n + 1)

end A324873

/-! ## A324873.P2101802650900812824

`gcd(n+1, A305191(A133263(n)))`
-/

namespace A324873.P2101802650900812824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A305191 (A133263 n).toNat)

end

end A324873.P2101802650900812824

namespace A324873

/-- `gcd(n+1, A305191(A133263(n)))` -/
def P2101802650900812824.Spec : Prop :=
  ∀ n, (P2101802650900812824.a n : ℤ) = A324873 (n + 1)

end A324873

/-!
# A324874: a(n) is the binary length of A324398(n), where A324398(n) = A156552(n) AND (A323243(n) - A156552(n)).

The programs for A324874, there is no canonical definition to state claims against.
-/

/-! ## A324874.P868999883605238211

`A324868(n+1)+A324881(n+1)`
-/

namespace A324874.P868999883605238211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324868 (n + 1) + A324881 (n + 1)

end

end A324874.P868999883605238211

/-! ## A324874.P6539344496484785479

`ceil(log2(A324398(n+1)+1))`
-/

namespace A324874.P6539344496484785479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A324398 (n + 1) + 1 : ℝ)⌉

end

end A324874.P6539344496484785479

/-! ## A324874.P15442285550212468476

`A324881(n+1)+A207328(ceil(A324398(n+1)/2))`
-/

namespace A324874.P15442285550212468476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324881 (n + 1) + A207328 ⌈(A324398 (n + 1) : ℚ) / 2⌉.toNat

end

end A324874.P15442285550212468476

/-! ## A324874.P16366027849881506232

`A324881(n+1)+A207328(A324398(n+1))`
-/

namespace A324874.P16366027849881506232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324881 (n + 1) + A207328 (A324398 (n + 1)).toNat

end

end A324874.P16366027849881506232

/-! ## A324874.P2883701727407617632

`A324881(n+1)+A000120(ceil(A324398(n+1)/2))`
-/

namespace A324874.P2883701727407617632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324881 (n + 1) + A000120 ⌈(A324398 (n + 1) : ℚ) / 2⌉.toNat

end

end A324874.P2883701727407617632

/-! ## A324874.P9345944896988860782

`A324881(n+1)+A000120(round(A324398(n+1)/2))`
-/

namespace A324874.P9345944896988860782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324881 (n + 1) + A000120 (SequenceMachineLib.roundAway ((A324398 (n + 1) : ℚ) / 2)).toNat

end

end A324874.P9345944896988860782

/-! ## A324874.P9244293385421507847

`A324881(n+1)+A000120(A324398(n+1)%A002061(n))`
-/

namespace A324874.P9244293385421507847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324881 (n + 1) + A000120 (Int.tmod (A324398 (n + 1)) (A002061 n)).toNat

end

end A324874.P9244293385421507847

/-! ## A324874.P12953058180267906194

`A029837(A324398(n+1)+1)`
-/

namespace A324874.P12953058180267906194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A324398 (n + 1) + 1).toNat

end

end A324874.P12953058180267906194

/-! ## A324874.P14437805384644973436

`A238845(2*A324398(n+1))`
-/

namespace A324874.P14437805384644973436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (2 * A324398 (n + 1)).toNat

end

end A324874.P14437805384644973436

/-! ## A324874.P18044964593068750990

`A000523(2*A324398(n+1)+1)`
-/

namespace A324874.P18044964593068750990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A324398 (n + 1) + 1).toNat

end

end A324874.P18044964593068750990

/-! ## A324874.P5049884171981186078

`A000120(A003817(A324398(n+1)))`
-/

namespace A324874.P5049884171981186078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 (A324398 (n + 1)).toNat).toNat

end

end A324874.P5049884171981186078

/-! ## A324874.P16719686049474432897

`A324868(n+1)+A080791(A324398(n+1))`
-/

namespace A324874.P16719686049474432897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324868 (n + 1) + A080791 (A324398 (n + 1)).toNat

end

end A324874.P16719686049474432897

/-! ## A324874.P9280342404993085337

`A000523(A324398(n+1)+A324398(n+1)+1)`
-/

namespace A324874.P9280342404993085337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A324398 (n + 1) + (A324398 (n + 1) + 1)).toNat

end

end A324874.P9280342404993085337

/-! ## A324874.P5425471649612246695

`A061395(A019565(A324398(n+1)))%A008619(n)`
-/

namespace A324874.P5425471649612246695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A019565 (A324398 (n + 1)).toNat).toNat) (A008619 n)

end

end A324874.P5425471649612246695

/-! ## A324874.P10248022778527069290

`A061395(A019565(A324398(n+1)%A017222(n)))`
-/

namespace A324874.P10248022778527069290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A019565 (Int.tmod (A324398 (n + 1)) (A017222 n)).toNat).toNat

end

end A324874.P10248022778527069290

/-!
# A324875: Xor-Moebius transform of A324865, where A324865(n) = A323243(n) - A156552(n).

The programs for A324875, there is no canonical definition to state claims against.
-/

/-! ## A324875.P836235592452478071

`xor(A297106(n+1), A324877(n+1))`
-/

namespace A324875.P836235592452478071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297106 (n + 1)) (A324877 (n + 1))

end

end A324875.P836235592452478071

/-!
# A324876: Xor-Moebius transform of A324866, where A324866(n) = A156552(n) OR (A323243(n) - A156552(n)).

The programs for A324876, there is no canonical definition to state claims against.
-/

/-! ## A324876.P15914341399905362841

`xor(A324877(n+1), A324878(n+1))`
-/

namespace A324876.P15914341399905362841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324877 (n + 1)) (A324878 (n + 1))

end

end A324876.P15914341399905362841

/-! ## A324876.P10354098218769752754

`xor(A324877(n+1), A333529(7^A324862(n+1)))`
-/

namespace A324876.P10354098218769752754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324877 (n + 1)) (A333529 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A324862 (n + 1) : ℤ))).toNat)

end

end A324876.P10354098218769752754

/-!
# A324877: Xor-Moebius transform of A324867, where A324867(n) = A156552(n) XOR (A323243(n) - A156552(n)).

The programs for A324877, there is no canonical definition to state claims against.
-/

/-! ## A324877.P17870118590640541481

`xor(A324876(n+1), A324878(n+1))`
-/

namespace A324877.P17870118590640541481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324876 (n + 1)) (A324878 (n + 1))

end

end A324877.P17870118590640541481

/-! ## A324877.P4042653475513098311

`xor(A297106(n+1), A324875(n+1))`
-/

namespace A324877.P4042653475513098311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297106 (n + 1)) (A324875 (n + 1))

end

end A324877.P4042653475513098311

/-! ## A324877.P9486322539117638074

`xor(A324876(n+1), A333529(7^A324862(n+1)))`
-/

namespace A324877.P9486322539117638074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324876 (n + 1)) (A333529 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A324862 (n + 1) : ℤ))).toNat)

end

end A324877.P9486322539117638074

/-!
# A324878: Xor-Moebius transform of A324398, where A324398(n) = A156552(n) AND (A323243(n) - A156552(n)).

The programs for A324878, there is no canonical definition to state claims against.
-/

/-! ## A324878.P3454032175056268304

`xor(A324876(n+1), A324877(n+1))`
-/

namespace A324878.P3454032175056268304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324876 (n + 1)) (A324877 (n + 1))

end

end A324878.P3454032175056268304

/-! ## A324878.P7528605390510467209

`A333529(7^A324862(n+1))`
-/

namespace A324878.P7528605390510467209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333529 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A324862 (n + 1) : ℤ))).toNat

end

end A324878.P7528605390510467209

/-! ## A324878.P10520448069952616268

`A324811(10^A324862(n+1))`
-/

namespace A324878.P10520448069952616268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324811 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A324862 (n + 1) : ℤ))).toNat

end

end A324878.P10520448069952616268

/-! ## A324878.P15135701654231050042

`A324864(8^A000045(A324862(n+1)))`
-/

namespace A324878.P15135701654231050042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324864 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A000045 (A324862 (n + 1)).toNat : ℤ))).toNat

end

end A324878.P15135701654231050042

/-! ## A324878.P12657001981802140106

`A051468(A324862(n+1))-A266256(A014727(n))`
-/

namespace A324878.P12657001981802140106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 (A324862 (n + 1)).toNat - A266256 (A014727 n).toNat

end

end A324878.P12657001981802140106

/-!
# A324879: Numbers k such that A324863(k) is equal to A324874(k).

The programs for A324879, there is no canonical definition to state claims against.
-/

/-! ## A324879.P13991097145142783142

`eq[A324862(n+1), A324863(n+1)]+1`
-/

namespace A324879.P13991097145142783142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324879.P13991097145142783142

/-! ## A324879.P4527636161986901292

`eq[A324863(n+1), A324864(n+1)]+1`
-/

namespace A324879.P4527636161986901292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324879.P4527636161986901292

/-! ## A324879.P3941956465616866288

`eq[A324863(n+1), A324874(n+1)]+1`
-/

namespace A324879.P3941956465616866288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324879.P3941956465616866288

/-! ## A324879.P2452980736998251747

`lt[A324867(n+1), A004277(A324398(n+1))]+1`
-/

namespace A324879.P2452980736998251747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A324398 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324879.P2452980736998251747

/-!
# A324880: Even numbers k such that A324863(k) = A324874(k).

The programs for A324880, there is no canonical definition to state claims against.
-/

/-! ## A324880.P9941624303773413298

`∩[2*n, A324879(n+1)]`
-/

namespace A324880.P9941624303773413298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324880.P9941624303773413298

/-! ## A324880.P15453947201246693855

`∩[A324879(n+1), A005843(n)]`
-/

namespace A324880.P15453947201246693855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324880.P15453947201246693855

/-! ## A324880.P7536021872218458847

`∩[A324879(n+1), A004277(n+1)]`
-/

namespace A324880.P7536021872218458847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324880.P7536021872218458847

/-! ## A324880.P11053831889679699016

`∩[A324879(n+1), A335223(n+1)]`
-/

namespace A324880.P11053831889679699016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324880.P11053831889679699016

/-! ## A324880.P11823886709105490184

`∩[A324879(n+1), A335224(n+1)]`
-/

namespace A324880.P11823886709105490184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324880.P11823886709105490184

/-!
# A324881: Number of nonleading zeros in binary representation of A324398, where A324398(n) = A156552(n) AND (A323243(n) - A156552(n)).

The programs for A324881, there is no canonical definition to state claims against.
-/

/-! ## A324881.P10986268986597658286

`A324874(n+1)-A324868(n+1)`
-/

namespace A324881.P10986268986597658286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1) - A324868 (n + 1)

end

end A324881.P10986268986597658286

/-! ## A324881.P13677637259976685198

`A080791(A324398(n+1))`
-/

namespace A324881.P13677637259976685198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A324398 (n + 1)).toNat

end

end A324881.P13677637259976685198

/-! ## A324881.P1969916622771280753

`A324874(n+1)+A153881(n+1)*A324868(n+1)`
-/

namespace A324881.P1969916622771280753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1) + A153881 (n + 1) * A324868 (n + 1)

end

end A324881.P1969916622771280753

/-! ## A324881.P5252597095181699816

`ceil(log2(A324398(n+1)+1))-A324868(n+1)`
-/

namespace A324881.P5252597095181699816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A324398 (n + 1) + 1 : ℝ)⌉ - A324868 (n + 1)

end

end A324881.P5252597095181699816

/-! ## A324881.P5974774933082507866

`A324874(n+1)-A207328(ceil(A324398(n+1)/2))`
-/

namespace A324881.P5974774933082507866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1) - A207328 ⌈(A324398 (n + 1) : ℚ) / 2⌉.toNat

end

end A324881.P5974774933082507866

/-! ## A324881.P2437100777732910051

`A324874(n+1)-A207328(A324398(n+1))`
-/

namespace A324881.P2437100777732910051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1) - A207328 (A324398 (n + 1)).toNat

end

end A324881.P2437100777732910051

/-! ## A324881.P4180300437994884765

`A324874(n+1)-A000120(round(A324398(n+1)/2))`
-/

namespace A324881.P4180300437994884765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1) - A000120 (SequenceMachineLib.roundAway ((A324398 (n + 1) : ℚ) / 2)).toNat

end

end A324881.P4180300437994884765

/-! ## A324881.P13053988694015003505

`A324874(n+1)-A000120(A324398(n+1)%A002061(n))`
-/

namespace A324881.P13053988694015003505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (n + 1) - A000120 (Int.tmod (A324398 (n + 1)) (A002061 n)).toNat

end

end A324881.P13053988694015003505

/-! ## A324881.P2938761113468169367

`A080791(A323243(n+1)-A324866(n+1))`
-/

namespace A324881.P2938761113468169367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A323243 (n + 1) - A324866 (n + 1)).toNat

end

end A324881.P2938761113468169367

/-!
# A324882: a(1) = 0; for n > 1, a(n) = A001511(A324866(n)), where A324866(n) = A156552(n) OR (A323243(n) - A156552(n)).

The programs for A324882, there is no canonical definition to state claims against.
-/

/-! ## A324882.P13640970828050474896

`A324884(n+1)-A324883(n+1)`
-/

namespace A324882.P13640970828050474896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324884 (n + 1) - A324883 (n + 1)

end

end A324882.P13640970828050474896

/-! ## A324882.P393814974463071670

`∑{d}[A324396(n+1), A209229(#)]`
-/

namespace A324882.P393814974463071670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A324882.P393814974463071670

/-! ## A324882.P1257435845041043065

`A324287(gcd(A297112(n+1), A324866(n+1)))`
-/

namespace A324882.P1257435845041043065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324287 (Int.gcd (A297112 (n + 1)) (A324866 (n + 1)))

end

end A324882.P1257435845041043065

/-! ## A324882.P15692806855505172710

`A067029(A008458(A324396(n+1)))`
-/

namespace A324882.P15692806855505172710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A008458 (A324396 (n + 1)).toNat).toNat

end

end A324882.P15692806855505172710

/-! ## A324882.P11190711674773251691

`A257990(A074828(n+1)^A324884(n+1))`
-/

namespace A324882.P11190711674773251691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (SequenceMachineLib.roundAway ((A074828 (n + 1) : ℚ) ^ (A324884 (n + 1) : ℤ))).toNat

end

end A324882.P11190711674773251691

/-! ## A324882.P14732564894066793195

`A324904(or(4, A324866(n+1)))`
-/

namespace A324882.P14732564894066793195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (Int.lor 4 (A324866 (n + 1))).toNat

end

end A324882.P14732564894066793195

/-! ## A324882.P10572764480187488789

`∑{d}[A324866(n+1), A209229(#)]`
-/

namespace A324882.P10572764480187488789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A324882.P10572764480187488789

/-! ## A324882.P15179627411897212029

`A123143(A324396(n+1)%A102505(n+1))`
-/

namespace A324882.P15179627411897212029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123143 (Int.tmod (A324396 (n + 1)) (A102505 (n + 1))).toNat

end

end A324882.P15179627411897212029

/-! ## A324882.P12814620683323978625

`A319679(A225004(n+1))`
-/

namespace A324882.P12814620683323978625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319679 (A225004 (n + 1)).toNat

end

end A324882.P12814620683323978625

/-!
# A324883: a(n) = 1 if A055396(n) < A324885(n), otherwise 0.

The programs for A324883, there is no canonical definition to state claims against.
-/

/-! ## A324883.P5583892065472130875

`A324884(n+1)-A324882(n+1)`
-/

namespace A324883.P5583892065472130875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324884 (n + 1) - A324882 (n + 1)

end

end A324883.P5583892065472130875

/-! ## A324883.P9824724073019136874

`char[lt[A324882(n+1), A324885(n+1)]]`
-/

namespace A324883.P9824724073019136874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324885 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A324883.P9824724073019136874

/-! ## A324883.P1215396525674218191

`A084938(C(A324882(n+1), A324884(n+1)))`
-/

namespace A324883.P1215396525674218191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (Nat.choose (A324882 (n + 1)).toNat (A324884 (n + 1)).toNat)

end

end A324883.P1215396525674218191

/-! ## A324883.P14887151676150733048

`A267084(C(A324884(n+1), A324882(n+1)))`
-/

namespace A324883.P14887151676150733048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (Nat.choose (A324884 (n + 1)).toNat (A324882 (n + 1)).toNat)

end

end A324883.P14887151676150733048

/-! ## A324883.P10210699707420493719

`A324872(C(A324884(n+1), A324882(n+1)))`
-/

namespace A324883.P10210699707420493719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324872 (Nat.choose (A324884 (n + 1)).toNat (A324882 (n + 1)).toNat)

end

end A324883.P10210699707420493719

/-! ## A324883.P3467628631840407848

`A055396(xor(A324882(n+1), A324884(n+1))+1)`
-/

namespace A324883.P3467628631840407848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.xor (A324882 (n + 1)) (A324884 (n + 1)) + 1).toNat

end

end A324883.P3467628631840407848

/-! ## A324883.P10298925182343701428

`A324882(xor(A324882(n+1), A324884(n+1))+1)`
-/

namespace A324883.P10298925182343701428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (Int.xor (A324882 (n + 1)) (A324884 (n + 1)) + 1).toNat

end

end A324883.P10298925182343701428

/-! ## A324883.P11189446265398400116

`A324882(A003961(n+1))-A324882(n+1)`
-/

namespace A324883.P11189446265398400116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (A003961 (n + 1)).toNat - A324882 (n + 1)

end

end A324883.P11189446265398400116

/-! ## A324883.P9085837244086210637

`A324882(A253885(n)+1)-A324882(n+1)`
-/

namespace A324883.P9085837244086210637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (A253885 n + 1).toNat - A324882 (n + 1)

end

end A324883.P9085837244086210637

/-! ## A324883.P7123692335496440665

`A324882(A243501(n+1)-1)-A324882(n+1)`
-/

namespace A324883.P7123692335496440665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (A243501 (n + 1) - 1).toNat - A324882 (n + 1)

end

end A324883.P7123692335496440665

/-!
# A324884: a(1) = 0; for n > 1, a(n) = A001511(A324819(n)), where A324819(n) = 2*A156552(n) OR A323243(n).

The programs for A324884, there is no canonical definition to state claims against.
-/

/-! ## A324884.P6992402630720070605

`A324882(n+1)+A324883(n+1)`
-/

namespace A324884.P6992402630720070605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (n + 1) + A324883 (n + 1)

end

end A324884.P6992402630720070605

/-! ## A324884.P7269639041877928879

`A324882(A003961(n+1))`
-/

namespace A324884.P7269639041877928879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (A003961 (n + 1)).toNat

end

end A324884.P7269639041877928879

/-! ## A324884.P9180572164759250828

`A324882(A253885(n)+1)`
-/

namespace A324884.P9180572164759250828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (A253885 n + 1).toNat

end

end A324884.P9180572164759250828

/-! ## A324884.P3161708400581165286

`A324882(or(1, A253885(n)))`
-/

namespace A324884.P3161708400581165286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (Int.lor 1 (A253885 n)).toNat

end

end A324884.P3161708400581165286

/-! ## A324884.P11669598252670070780

`A324882(A243501(n+1)-1)`
-/

namespace A324884.P11669598252670070780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (A243501 (n + 1) - 1).toNat

end

end A324884.P11669598252670070780

/-! ## A324884.P4591205412019742045

`A324882(A045965(n+1))%A145154(n)`
-/

namespace A324884.P4591205412019742045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324882 (A045965 (n + 1)).toNat) (A145154 n)

end

end A324884.P4591205412019742045

/-!
# A324885: a(1) = 0; for n > 1, a(n) = A001511(A323243(n)).

The programs for A324885, there is no canonical definition to state claims against.
-/

/-! ## A324885.P1846836946586361186

`A261300(and(-A323243(n+1), A323243(n+1)))`
-/

namespace A324885.P1846836946586361186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (Int.land (-A323243 (n + 1)) (A323243 (n + 1))).toNat

end

end A324885.P1846836946586361186

/-! ## A324885.P2043525782788651405

`∑{d}[A324118(n+1), A036987(#-1)]`
-/

namespace A324885.P2043525782788651405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A036987 (d - 1)

end

end A324885.P2043525782788651405

/-! ## A324885.P12639433719326502192

`∑{d}[A324118(n+1), A209229(#)]`
-/

namespace A324885.P12639433719326502192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A324885.P12639433719326502192

/-! ## A324885.P17836866511715896213

`val(A236923(A322993(n+1)), 2)`
-/

namespace A324885.P17836866511715896213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A236923 (A322993 (n + 1)).toNat).toNat 2

end

end A324885.P17836866511715896213

/-! ## A324885.P8159846631224386115

`A089263(12*A324118(n+1))`
-/

namespace A324885.P8159846631224386115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (12 * A324118 (n + 1)).toNat

end

end A324885.P8159846631224386115

/-! ## A324885.P12697601948338091031

`∑{d}[A324118(n+1), A332016(A000120(#))]`
-/

namespace A324885.P12697601948338091031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A332016 (A000120 d).toNat

end

end A324885.P12697601948338091031

/-! ## A324885.P5784084840740278314

`A089309(A014681(A324118(n+1)+A324118(n+1)))`
-/

namespace A324885.P5784084840740278314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A014681 (A324118 (n + 1) + A324118 (n + 1)).toNat).toNat

end

end A324885.P5784084840740278314

/-! ## A324885.P11254406705396651549

`A055396(∏{p}[A332223(n+1), #])`
-/

namespace A324885.P11254406705396651549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A324885.P11254406705396651549

/-! ## A324885.P14248660181706381773

`A000720(A020639(A332223(n+1)))`
-/

namespace A324885.P14248660181706381773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020639 (A332223 (n + 1)).toNat).toNat

end

end A324885.P14248660181706381773

/-! ## A324885.P4931317752956720822

`A056811(A020639(A332223(n+1))²)`
-/

namespace A324885.P4931317752956720822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A020639 (A332223 (n + 1)).toNat ^ 2).toNat

end

end A324885.P4931317752956720822

/-!
# A324886: a(n) = A276086(A108951(n)).

The programs for A324886, there is no canonical definition to state claims against.
-/

/-! ## A324886.P13220921606967366380

`A117366(n+1)*A324896(n+1)`
-/

namespace A324886.P13220921606967366380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (n + 1) * A324896 (n + 1)

end

end A324886.P13220921606967366380

/-! ## A324886.P6801533009761593407

`A346091(n+1)*A344592(n+1)`
-/

namespace A324886.P6801533009761593407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (n + 1) * A344592 (n + 1)

end

end A324886.P6801533009761593407

/-! ## A324886.P11040776824438577530

`A346106(n+1)/A346107(n+1)`
-/

namespace A324886.P11040776824438577530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346106 (n + 1) : ℚ) / (A346107 (n + 1) : ℚ)

end

end A324886.P11040776824438577530

/-! ## A324886.P14979396102156351915

`A276086(A108951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324886.P14979396102156351915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A108951 (n + 1)).toNat

end

end A324886.P14979396102156351915

/-! ## A324886.P13972075877963026463

`A346095(n+1)*A346096(n+1)`
-/

namespace A324886.P13972075877963026463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346095 (n + 1) * A346096 (n + 1)

end

end A324886.P13972075877963026463

/-! ## A324886.P10856194599267660933

`A045965(A006530(n+1))*A324896(n+1)`
-/

namespace A324886.P10856194599267660933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A006530 (n + 1)).toNat * A324896 (n + 1)

end

end A324886.P10856194599267660933

/-! ## A324886.P8830361995129470161

`A006530(A285639(n+1))*A324896(n+1)`
-/

namespace A324886.P8830361995129470161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A285639 (n + 1)).toNat * A324896 (n + 1)

end

end A324886.P8830361995129470161

/-! ## A324886.P1178453153211100098

`A329044(n+1)/A346097(n+1)*A346096(n+1)`
-/

namespace A324886.P1178453153211100098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329044 (n + 1) : ℚ) / (A346097 (n + 1) : ℚ) * (A346096 (n + 1) : ℚ)

end

end A324886.P1178453153211100098

/-! ## A324886.P2281122742707129287

`A006530(A119416(n+1))*A324896(n+1)`
-/

namespace A324886.P2281122742707129287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A119416 (n + 1)).toNat * A324896 (n + 1)

end

end A324886.P2281122742707129287

/-! ## A324886.P9693859408266188853

`A324887(n+1)/A108951(n+1)`
-/

namespace A324886.P9693859408266188853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324887 (n + 1) : ℚ) / (A108951 (n + 1) : ℚ)

end

end A324886.P9693859408266188853

/-! ## A324886.P1508636758867638844

`A020639(A346091(n+1))*A324896(n+1)`
-/

namespace A324886.P1508636758867638844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A346091 (n + 1)).toNat * A324896 (n + 1)

end

end A324886.P1508636758867638844

/-! ## A324886.P14867425843503030193

`A324887(n+1)/A331188(A253560(n+1))`
-/

namespace A324886.P14867425843503030193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324887 (n + 1) : ℚ) / (A331188 (A253560 (n + 1)).toNat : ℚ)

end

end A324886.P14867425843503030193

/-! ## A324886.P17807941232012234582

`A324887(n+1)/A331188(A256017(n+1))`
-/

namespace A324886.P17807941232012234582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324887 (n + 1) : ℚ) / (A331188 (A256017 (n + 1)).toNat : ℚ)

end

end A324886.P17807941232012234582

/-!
# A324887: a(n) = A108951(n) * A276086(A108951(n)).

The programs for A324887, there is no canonical definition to state claims against.
-/

/-! ## A324887.P10207785202105760918

`A108951(n+1)*A324886(n+1)`
-/

namespace A324887.P10207785202105760918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) * A324886 (n + 1)

end

end A324887.P10207785202105760918

/-! ## A324887.P10213735384879385884

`A324580(A108951(n+1))`
-/

namespace A324887.P10213735384879385884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324580 (A108951 (n + 1)).toNat

end

end A324887.P10213735384879385884

/-! ## A324887.P11562373267987864686

`A108951(n+1)*A276086(A108951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324887.P11562373267987864686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) * A276086 (A108951 (n + 1)).toNat

end

end A324887.P11562373267987864686

/-! ## A324887.P7156666917041716644

`(n+1)*A181811(n+1)*A324886(n+1)`
-/

namespace A324887.P7156666917041716644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A181811 (n + 1) * A324886 (n + 1)

end

end A324887.P7156666917041716644

/-! ## A324887.P2259215258322142098

`lcm(A108951(A000027(n+1)), A324886(n+1))`
-/

namespace A324887.P2259215258322142098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108951 (A000027 (n + 1)).toNat) (A324886 (n + 1))

end

end A324887.P2259215258322142098

/-! ## A324887.P10133730641570734414

`(A354352(n+1)-A354351(n+1))*A324886(n+1)`
-/

namespace A324887.P10133730641570734414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354352 (n + 1) - A354351 (n + 1)) * A324886 (n + 1)

end

end A324887.P10133730641570734414

/-! ## A324887.P15549737938457413216

`(n+1)*A181812(A003602(n+1))*A324886(n+1)`
-/

namespace A324887.P15549737938457413216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A181812 (A003602 (n + 1)).toNat * A324886 (n + 1)

end

end A324887.P15549737938457413216

/-! ## A324887.P8465879938245002375

`A108951(n+1)*A117366(n+1)*A324896(n+1)`
-/

namespace A324887.P8465879938245002375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) * A117366 (n + 1) * A324896 (n + 1)

end

end A324887.P8465879938245002375

/-! ## A324887.P15597745630342122062

`A108951(n+1)*A344592(n+1)*A346091(n+1)`
-/

namespace A324887.P15597745630342122062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) * A344592 (n + 1) * A346091 (n + 1)

end

end A324887.P15597745630342122062

/-! ## A324887.P13099617178550574671

`A045965(A006530(n+1))*A108951(n+1)*A324896(n+1)`
-/

namespace A324887.P13099617178550574671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A006530 (n + 1)).toNat * A108951 (n + 1) * A324896 (n + 1)

end

end A324887.P13099617178550574671

/-! ## A324887.P12233425636423395226

`A066838(A117366(n+1))*A324886(n+1)*A331188(n+1)`
-/

namespace A324887.P12233425636423395226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (A117366 (n + 1)).toNat * A324886 (n + 1) * A331188 (n + 1)

end

end A324887.P12233425636423395226

/-! ## A324887.P1754679654330264639

`(A354352(n+1)-A354351(n+1))*A117366(n+1)*A324896(n+1)`
-/

namespace A324887.P1754679654330264639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354352 (n + 1) - A354351 (n + 1)) * (A117366 (n + 1) * A324896 (n + 1))

end

end A324887.P1754679654330264639

/-! ## A324887.P17650761906141078352

`(A354352(n+1)-A354351(n+1))*A344592(n+1)*A346091(n+1)`
-/

namespace A324887.P17650761906141078352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354352 (n + 1) - A354351 (n + 1)) * (A344592 (n + 1) * A346091 (n + 1))

end

end A324887.P17650761906141078352

/-! ## A324887.P2310356023191698402

`A324886(n+1)*A331188(A129598(n+1))`
-/

namespace A324887.P2310356023191698402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (n + 1) * A331188 (A129598 (n + 1)).toNat

end

end A324887.P2310356023191698402

/-! ## A324887.P6530436251641699198

`A324886(n+1)*A331188(A253560(n+1))`
-/

namespace A324887.P6530436251641699198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (n + 1) * A331188 (A253560 (n + 1)).toNat

end

end A324887.P6530436251641699198

/-! ## A324887.P12897340987469882488

`A324886(n+1)*A331188(A256017(n+1))`
-/

namespace A324887.P12897340987469882488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (n + 1) * A331188 (A256017 (n + 1)).toNat

end

end A324887.P12897340987469882488

/-! ## A324887.P17865754152587406610

`A324886(n+1)*A331188(A119416(n+1))`
-/

namespace A324887.P17865754152587406610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (n + 1) * A331188 (A119416 (n + 1)).toNat

end

end A324887.P17865754152587406610

/-!
# A324888: Minimal number of primorials (A002110) that add to A108951(n).

The programs for A324888, the canonical program `A324888.P9516220772583118182` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324888 has offset 1).

The definition of A324888 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A276150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324888.P9516220772583118182

`A276150(A108951(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324888

/-- `A276150(A108951(n+1))` -/
def P9516220772583118182.Spec : Prop :=
  ∀ n, P9516220772583118182.a n = A324888 (n + 1)

theorem P9516220772583118182.correct : P9516220772583118182.Spec := by
  intro n
  simp only [A324888, Nat.add_sub_cancel]

end A324888

/-! ## A324888.P9885484942780249375

`A056239(n+1)-A329622(n+1)`
-/

namespace A324888.P9885484942780249375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A329622 (n + 1)

end

end A324888.P9885484942780249375

namespace A324888

/-- `A056239(n+1)-A329622(n+1)` -/
def P9885484942780249375.Spec : Prop :=
  ∀ n, P9885484942780249375.a n = A324888 (n + 1)

theorem P9885484942780249375.correct : P9885484942780249375.Spec := by
  intro n
  simp only [A324888, Nat.add_sub_cancel, A324888.P9885484942780249375.a, A324888.P9516220772583118182.a, A056239, A056239.P11316688788989965672.a, A108951, A108951.P1294613322156543690.a, A276150, A276150.P11723566750596417578.a, A329622, A329622.P7903740635264919835.a, A064989, A064989.P13349672914146769936.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A260188, A260188.P5872051986536960582.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A048896, A048896.P6461019053085857547.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105561, A105561.P9613495167303290584.f1, A105561.P9613495167303290584.f2, A105561.P9613495167303290584.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A048881, A048881.P16567064232951496228.a, A052955, A052955.P5313474801376957548.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324888

/-! ## A324888.P15089001907656800240

`n+1-A178503(n+1)-A329622(n+1)`
-/

namespace A324888.P15089001907656800240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A178503 (n + 1) - A329622 (n + 1)

end

end A324888.P15089001907656800240

namespace A324888

/-- `n+1-A178503(n+1)-A329622(n+1)` -/
def P15089001907656800240.Spec : Prop :=
  ∀ n, P15089001907656800240.a n = A324888 (n + 1)

theorem P15089001907656800240.correct : P15089001907656800240.Spec := by
  intro n
  simp only [A324888, Nat.add_sub_cancel, A324888.P15089001907656800240.a, A324888.P9516220772583118182.a, A108951, A108951.P1294613322156543690.a, A178503, A178503.P4821530667985743072.a, A276150, A276150.P11723566750596417578.a, A329622, A329622.P7903740635264919835.a, A056239, A056239.P11316688788989965672.a, A064989, A064989.P13349672914146769936.a, A260188, A260188.P5872051986536960582.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105561, A105561.P9613495167303290584.f1, A105561.P9613495167303290584.f2, A105561.P9613495167303290584.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A048896, A048896.P6461019053085857547.a, A052955, A052955.P5313474801376957548.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324888

/-! ## A324888.P2791789782483437529

`A304739(A064664(n+1))-A329622(n+1)`
-/

namespace A324888.P2791789782483437529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A064664 (n + 1)).toNat - A329622 (n + 1)

end

end A324888.P2791789782483437529

namespace A324888

/-- `A304739(A064664(n+1))-A329622(n+1)` -/
def P2791789782483437529.Spec : Prop :=
  ∀ n, P2791789782483437529.a n = A324888 (n + 1)

end A324888

/-! ## A324888.P4149005902844892353

`A318994(n+1)-(A329622(n+1)+A001222(n+1))`
-/

namespace A324888.P4149005902844892353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (n + 1) - (A329622 (n + 1) + A001222 (n + 1))

end

end A324888.P4149005902844892353

namespace A324888

/-- `A318994(n+1)-(A329622(n+1)+A001222(n+1))` -/
def P4149005902844892353.Spec : Prop :=
  ∀ n, P4149005902844892353.a n = A324888 (n + 1)

end A324888

/-! ## A324888.P16653968674638582827

`A001414(n+1)-(A331415(n+1)+A329622(n+1))`
-/

namespace A324888.P16653968674638582827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - (A331415 (n + 1) + A329622 (n + 1))

end

end A324888.P16653968674638582827

namespace A324888

/-- `A001414(n+1)-(A331415(n+1)+A329622(n+1))` -/
def P16653968674638582827.Spec : Prop :=
  ∀ n, P16653968674638582827.a n = A324888 (n + 1)

theorem P16653968674638582827.correct : P16653968674638582827.Spec := by
  intro n
  simp only [A324888, Nat.add_sub_cancel, A324888.P16653968674638582827.a, A324888.P9516220772583118182.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A108951, A108951.P1294613322156543690.a, A276150, A276150.P11723566750596417578.a, A329622, A329622.P7903740635264919835.a, A331415, A331415.P4846081659728035053.a, A056239, A056239.P11316688788989965672.a, A064989, A064989.P13349672914146769936.a, A260188, A260188.P5872051986536960582.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105561, A105561.P9613495167303290584.f1, A105561.P9613495167303290584.f2, A105561.P9613495167303290584.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A048896, A048896.P6461019053085857547.a, A052955, A052955.P5313474801376957548.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324888

/-! ## A324888.P17310768875520109636

`A000523(n+1)+A339823(n+1)-A329622(n+1)`
-/

namespace A324888.P17310768875520109636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A339823 (n + 1) - A329622 (n + 1))

end

end A324888.P17310768875520109636

namespace A324888

/-- `A000523(n+1)+A339823(n+1)-A329622(n+1)` -/
def P17310768875520109636.Spec : Prop :=
  ∀ n, P17310768875520109636.a n = A324888 (n + 1)

theorem P17310768875520109636.correct : P17310768875520109636.Spec := by
  intro n
  simp only [A324888, Nat.add_sub_cancel, A324888.P17310768875520109636.a, A324888.P9516220772583118182.a, A000523, A000523.P3314682526375882520.a, A108951, A108951.P1294613322156543690.a, A276150, A276150.P11723566750596417578.a, A329622, A329622.P7903740635264919835.a, A339823, A339823.P7188446837761765173.a, A056239, A056239.P11316688788989965672.a, A064989, A064989.P13349672914146769936.a, A260188, A260188.P5872051986536960582.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105561, A105561.P9613495167303290584.f1, A105561.P9613495167303290584.f2, A105561.P9613495167303290584.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A048896, A048896.P6461019053085857547.a, A052955, A052955.P5313474801376957548.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324888

/-! ## A324888.P15235895820510635907

`A243503(n+1)-(A329622(n+1)+A278520(n+1))`
-/

namespace A324888.P15235895820510635907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - (A329622 (n + 1) + A278520 (n + 1))

end

end A324888.P15235895820510635907

namespace A324888

/-- `A243503(n+1)-(A329622(n+1)+A278520(n+1))` -/
def P15235895820510635907.Spec : Prop :=
  ∀ n, P15235895820510635907.a n = A324888 (n + 1)

end A324888

/-! ## A324888.P13284493236875389454

`A252464(n+1)+A325135(n+1)-A329622(n+1)`
-/

namespace A324888.P13284493236875389454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) + (A325135 (n + 1) - A329622 (n + 1))

end

end A324888.P13284493236875389454

namespace A324888

/-- `A252464(n+1)+A325135(n+1)-A329622(n+1)` -/
def P13284493236875389454.Spec : Prop :=
  ∀ n, P13284493236875389454.a n = A324888 (n + 1)

theorem P13284493236875389454.correct : P13284493236875389454.Spec := by
  intro n
  simp only [A324888, Nat.add_sub_cancel, A324888.P13284493236875389454.a, A324888.P9516220772583118182.a, A108951, A108951.P1294613322156543690.a, A252464, A252464.P11274602121942962009.a, A276150, A276150.P11723566750596417578.a, A325135, A325135.P723858522553438036.a, A329622, A329622.P7903740635264919835.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A064989, A064989.P13349672914146769936.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A260188, A260188.P5872051986536960582.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A052126, A052126.P1944428405920482243.a, A087207, A087207.P12536008426233777954.a, A105561, A105561.P9613495167303290584.f1, A105561.P9613495167303290584.f2, A105561.P9613495167303290584.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A052955, A052955.P5313474801376957548.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324888

/-! ## A324888.P4815760280518813208

`A339894(n+1)+A339896(n+1)-A329622(n+1)`
-/

namespace A324888.P4815760280518813208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) + (A339896 (n + 1) - A329622 (n + 1))

end

end A324888.P4815760280518813208

namespace A324888

/-- `A339894(n+1)+A339896(n+1)-A329622(n+1)` -/
def P4815760280518813208.Spec : Prop :=
  ∀ n, P4815760280518813208.a n = A324888 (n + 1)

end A324888

/-! ## A324888.P11786090514351238344

`log2(A248692(n+1))-A329622(n+1)`
-/

namespace A324888.P11786090514351238344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A248692 (n + 1) : ℝ) - (A329622 (n + 1) : ℝ)

end

end A324888.P11786090514351238344

namespace A324888

/-- `log2(A248692(n+1))-A329622(n+1)` -/
def P11786090514351238344.Spec : Prop :=
  ∀ n, P11786090514351238344.a n = (A324888 (n + 1) : ℝ)

end A324888

/-! ## A324888.P3401558995558148899

`A318995(A003961(n+1))-A329622(n+1)`
-/

namespace A324888.P3401558995558148899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A003961 (n + 1)).toNat - A329622 (n + 1)

end

end A324888.P3401558995558148899

namespace A324888

/-- `A318995(A003961(n+1))-A329622(n+1)` -/
def P3401558995558148899.Spec : Prop :=
  ∀ n, P3401558995558148899.a n = A324888 (n + 1)

end A324888

/-! ## A324888.P864225716793277009

`A318995(A045965(n+1))-A329622(n+1)`
-/

namespace A324888.P864225716793277009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A045965 (n + 1)).toNat - A329622 (n + 1)

end

end A324888.P864225716793277009

namespace A324888

/-- `A318995(A045965(n+1))-A329622(n+1)` -/
def P864225716793277009.Spec : Prop :=
  ∀ n, P864225716793277009.a n = A324888 (n + 1)

end A324888

/-!
# A324889: a(1) = 1, and for n > 1, a(n) = A276086(n) * a(A064989(n)).

The programs for A324889, there is no canonical definition to state claims against.
-/

/-! ## A324889.P5059185506756869597

`A276086(n+1)*a(A064989(n+1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324889.P5059185506756869597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276086 (n + 1) * a (A064989 (n + 1) - 1).toNat

end

end A324889.P5059185506756869597

/-!
# A324890: a(1) = 0, and for n > 1, a(n) = A276150(n) + a(A064989(n)).

The programs for A324890, the canonical program `A324890.P1867497387709588406` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324890 has offset 1).

The definition of A324890 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A276150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324890.P1867497387709588406

`A276150(n+1)+a(A064989(n+1)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324890

/-- `A276150(n+1)+a(A064989(n+1)-1)` -/
def P1867497387709588406.Spec : Prop :=
  ∀ n, P1867497387709588406.a n = A324890 (n + 1)

theorem P1867497387709588406.correct : P1867497387709588406.Spec := by
  intro n
  simp only [A324890, Nat.add_sub_cancel]

end A324890

/-! ## A324890.P14415834885616099459

`∑{e}[A324889(n+1), #]`
-/

namespace A324890.P14415834885616099459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324890.P14415834885616099459

namespace A324890

/-- `∑{e}[A324889(n+1), #]` -/
def P14415834885616099459.Spec : Prop :=
  ∀ n, (P14415834885616099459.a n : ℤ) = A324890 (n + 1)

end A324890

/-!
# A324891: a(n) = sigma(A170818(n)), where A170818(n) is the part of n composed of prime factors of form 4k+1.

The programs for A324891, the canonical program `A324891.P2039204170114104965` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324891 has offset 1).

The definition of A324891 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A170818, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324891.P2039204170114104965

`A000203(A170818(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324891

/-- `A000203(A170818(n+1))` -/
def P2039204170114104965.Spec : Prop :=
  ∀ n, P2039204170114104965.a n = A324891 (n + 1)

theorem P2039204170114104965.correct : P2039204170114104965.Spec := by
  intro n
  simp only [A324891, Nat.add_sub_cancel]

end A324891

/-! ## A324891.P6957181307211921433

`A000593(n+1)/A324893(n+1)`
-/

namespace A324891.P6957181307211921433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) : ℚ) / (A324893 (n + 1) : ℚ)

end

end A324891.P6957181307211921433

namespace A324891

/-- `A000593(n+1)/A324893(n+1)` -/
def P6957181307211921433.Spec : Prop :=
  ∀ n, P6957181307211921433.a n = (A324891 (n + 1) : ℚ)

end A324891

/-! ## A324891.P8783422885322588573

`A000593(A072436(n+1))`
-/

namespace A324891.P8783422885322588573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A072436 (n + 1)).toNat

end

end A324891.P8783422885322588573

namespace A324891

/-- `A000593(A072436(n+1))` -/
def P8783422885322588573.Spec : Prop :=
  ∀ n, P8783422885322588573.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P12029604408620857947

`A000203((n+1)/A072438(n+1))`
-/

namespace A324891.P12029604408620857947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072438 (n + 1) : ℚ))).toNat

end

end A324891.P12029604408620857947

namespace A324891

/-- `A000203((n+1)/A072438(n+1))` -/
def P12029604408620857947.Spec : Prop :=
  ∀ n, P12029604408620857947.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P3661663166995186183

`A000593((n+1)/A072438(n+1))`
-/

namespace A324891.P3661663166995186183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072438 (n + 1) : ℚ))).toNat

end

end A324891.P3661663166995186183

namespace A324891

/-- `A000593((n+1)/A072438(n+1))` -/
def P3661663166995186183.Spec : Prop :=
  ∀ n, P3661663166995186183.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P3713504420275759328

`A000593((n+1)/A097706(n+1))`
-/

namespace A324891.P3713504420275759328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A097706 (n + 1) : ℚ))).toNat

end

end A324891.P3713504420275759328

namespace A324891

/-- `A000593((n+1)/A097706(n+1))` -/
def P3713504420275759328.Spec : Prop :=
  ∀ n, P3713504420275759328.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P16586935334329192011

`A000203(A072436(A000265(n+1)))`
-/

namespace A324891.P16586935334329192011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A072436 (A000265 (n + 1)).toNat).toNat

end

end A324891.P16586935334329192011

namespace A324891

/-- `A000203(A072436(A000265(n+1)))` -/
def P16586935334329192011.Spec : Prop :=
  ∀ n, P16586935334329192011.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P12084028582788869041

`A000203(A072436(A065330(n+1)))`
-/

namespace A324891.P12084028582788869041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A072436 (A065330 (n + 1)).toNat).toNat

end

end A324891.P12084028582788869041

namespace A324891

/-- `A000203(A072436(A065330(n+1)))` -/
def P12084028582788869041.Spec : Prop :=
  ∀ n, P12084028582788869041.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P7041929985034263477

`A002129(A000265(n+1)/A097706(n+1))`
-/

namespace A324891.P7041929985034263477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) / (A097706 (n + 1) : ℚ))).toNat

end

end A324891.P7041929985034263477

namespace A324891

/-- `A002129(A000265(n+1)/A097706(n+1))` -/
def P7041929985034263477.Spec : Prop :=
  ∀ n, P7041929985034263477.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P16857395865070163438

`A002129(2*A170818(n+1)-A170818(n+1))`
-/

namespace A324891.P16857395865070163438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (2 * A170818 (n + 1) - A170818 (n + 1)).toNat

end

end A324891.P16857395865070163438

namespace A324891

/-- `A002129(2*A170818(n+1)-A170818(n+1))` -/
def P16857395865070163438.Spec : Prop :=
  ∀ n, P16857395865070163438.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P17021180093830455072

`A000593(2*A170818(n+1))`
-/

namespace A324891.P17021180093830455072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * A170818 (n + 1)).toNat

end

end A324891.P17021180093830455072

namespace A324891

/-- `A000593(2*A170818(n+1))` -/
def P17021180093830455072.Spec : Prop :=
  ∀ n, P17021180093830455072.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P18331172357313138381

`A000593(A170818(n+1)+A170818(n+1))`
-/

namespace A324891.P18331172357313138381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A170818 (n + 1) + A170818 (n + 1)).toNat

end

end A324891.P18331172357313138381

namespace A324891

/-- `A000593(A170818(n+1)+A170818(n+1))` -/
def P18331172357313138381.Spec : Prop :=
  ∀ n, P18331172357313138381.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P4800135166530127676

`A002129(A170818(2*(n+1)))`
-/

namespace A324891.P4800135166530127676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A170818 (2 * (n + 1))).toNat

end

end A324891.P4800135166530127676

namespace A324891

/-- `A002129(A170818(2*(n+1)))` -/
def P4800135166530127676.Spec : Prop :=
  ∀ n, P4800135166530127676.a n = A324891 (n + 1)

end A324891

/-! ## A324891.P17805399280529746793

`A000593(A170818(n+2+n))`
-/

namespace A324891.P17805399280529746793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A170818 (n + 2 + n)).toNat

end

end A324891.P17805399280529746793

namespace A324891

/-- `A000593(A170818(n+2+n))` -/
def P17805399280529746793.Spec : Prop :=
  ∀ n, P17805399280529746793.a n = A324891 (n + 1)

end A324891

/-!
# A324892: Multiplicative with a(p^e) = p^e if sigma(p^e) is prime, and 1 otherwise.

The programs for A324892, there is no canonical definition to state claims against.
-/

/-! ## A324892.P8798180499874045947

`(n+1)/A324894(n+1)`
-/

namespace A324892.P8798180499874045947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A324894 (n + 1) : ℚ)

end

end A324892.P8798180499874045947

/-! ## A324892.P6304030453874208146

`A277227(A324894(n+1)+∑[n]+1)`
-/

namespace A324892.P6304030453874208146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A324894 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A324892.P6304030453874208146

/-! ## A324892.P3041008990435916474

`A010766(A324894(n+1)+A000217(n))`
-/

namespace A324892.P3041008990435916474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A324894 (n + 1) + A000217 n).toNat

end

end A324892.P3041008990435916474

/-! ## A324892.P10815692964413221029

`A054531(A324894(n+1)+A000217(n))`
-/

namespace A324892.P10815692964413221029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A324894 (n + 1) + A000217 n).toNat

end

end A324892.P10815692964413221029

/-! ## A324892.P13485668842575934166

`gcd(A002620(A375400(2*(n+1))), A270418(n+1))`
-/

namespace A324892.P13485668842575934166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 (A375400 (2 * (n + 1))).toNat) (A270418 (n + 1))

end

end A324892.P13485668842575934166

/-!
# A324893: a(n) = sigma(A097706(n)), where A097706(n) is the part of n composed of prime factors of form 4k+3.

The programs for A324893, the canonical program `A324893.P12587360797117924807` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324893 has offset 1).

The definition of A324893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000593, A324891, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324893.P8245722069875590388

`A000203(A097706(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324893.P8245722069875590388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A097706 (n + 1)).toNat

end

end A324893.P8245722069875590388

namespace A324893

/-- `A000203(A097706(n+1))` -/
def P8245722069875590388.Spec : Prop :=
  ∀ n, P8245722069875590388.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P12587360797117924807

`A000593(n+1)/A324891(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324893

/-- `A000593(n+1)/A324891(n+1)` -/
def P12587360797117924807.Spec : Prop :=
  ∀ n, P12587360797117924807.a n = (A324893 (n + 1) : ℚ)

end A324893

/-! ## A324893.P13863597827848243027

`A000593(A072438(n+1))`
-/

namespace A324893.P13863597827848243027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A072438 (n + 1)).toNat

end

end A324893.P13863597827848243027

namespace A324893

/-- `A000593(A072438(n+1))` -/
def P13863597827848243027.Spec : Prop :=
  ∀ n, P13863597827848243027.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P16005837320735371462

`A000203((n+1)/A072436(n+1))`
-/

namespace A324893.P16005837320735371462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072436 (n + 1) : ℚ))).toNat

end

end A324893.P16005837320735371462

namespace A324893

/-- `A000203((n+1)/A072436(n+1))` -/
def P16005837320735371462.Spec : Prop :=
  ∀ n, P16005837320735371462.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P11253993300028856534

`A000593((n+1)/A072436(n+1))`
-/

namespace A324893.P11253993300028856534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072436 (n + 1) : ℚ))).toNat

end

end A324893.P11253993300028856534

namespace A324893

/-- `A000593((n+1)/A072436(n+1))` -/
def P11253993300028856534.Spec : Prop :=
  ∀ n, P11253993300028856534.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P15861155646485424423

`A000593((n+1)/A170818(n+1))`
-/

namespace A324893.P15861155646485424423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A170818 (n + 1) : ℚ))).toNat

end

end A324893.P15861155646485424423

namespace A324893

/-- `A000593((n+1)/A170818(n+1))` -/
def P15861155646485424423.Spec : Prop :=
  ∀ n, P15861155646485424423.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P7303839000306172319

`A000203(A072438(A000265(n+1)))`
-/

namespace A324893.P7303839000306172319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A072438 (A000265 (n + 1)).toNat).toNat

end

end A324893.P7303839000306172319

namespace A324893

/-- `A000203(A072438(A000265(n+1)))` -/
def P7303839000306172319.Spec : Prop :=
  ∀ n, P7303839000306172319.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P4840835322335697114

`A000203(A000265(n+1)/A170818(n+1))`
-/

namespace A324893.P4840835322335697114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) / (A170818 (n + 1) : ℚ))).toNat

end

end A324893.P4840835322335697114

namespace A324893

/-- `A000203(A000265(n+1)/A170818(n+1))` -/
def P4840835322335697114.Spec : Prop :=
  ∀ n, P4840835322335697114.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P4906139081184270175

`A002129(A000265(n+1)/A170818(n+1))`
-/

namespace A324893.P4906139081184270175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) / (A170818 (n + 1) : ℚ))).toNat

end

end A324893.P4906139081184270175

namespace A324893

/-- `A002129(A000265(n+1)/A170818(n+1))` -/
def P4906139081184270175.Spec : Prop :=
  ∀ n, P4906139081184270175.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P7063475441643387772

`A002129(2*A097706(n+1)-A097706(n+1))`
-/

namespace A324893.P7063475441643387772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (2 * A097706 (n + 1) - A097706 (n + 1)).toNat

end

end A324893.P7063475441643387772

namespace A324893

/-- `A002129(2*A097706(n+1)-A097706(n+1))` -/
def P7063475441643387772.Spec : Prop :=
  ∀ n, P7063475441643387772.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P1228947331056657372

`(A088580(A097706(n+1))-1)%Δ[A051870(n+1)]`
-/

namespace A324893.P1228947331056657372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088580 (A097706 (n + 1)).toNat - 1) (f1 (n + 1) - f1 n)

end

end A324893.P1228947331056657372

namespace A324893

/-- `(A088580(A097706(n+1))-1)%Δ[A051870(n+1)]` -/
def P1228947331056657372.Spec : Prop :=
  ∀ n, P1228947331056657372.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P6614419484072571975

`A000593(A097706(2*(n+1)))`
-/

namespace A324893.P6614419484072571975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A097706 (2 * (n + 1))).toNat

end

end A324893.P6614419484072571975

namespace A324893

/-- `A000593(A097706(2*(n+1)))` -/
def P6614419484072571975.Spec : Prop :=
  ∀ n, P6614419484072571975.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P8601974101552886261

`A002129(A097706(2*n+2))`
-/

namespace A324893.P8601974101552886261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A097706 (2 * n + 2)).toNat

end

end A324893.P8601974101552886261

namespace A324893

/-- `A002129(A097706(2*n+2))` -/
def P8601974101552886261.Spec : Prop :=
  ∀ n, P8601974101552886261.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P4425605280842446667

`A000593(A097706(n+1)+A097706(n+1))`
-/

namespace A324893.P4425605280842446667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A097706 (n + 1) + A097706 (n + 1)).toNat

end

end A324893.P4425605280842446667

namespace A324893

/-- `A000593(A097706(n+1)+A097706(n+1))` -/
def P4425605280842446667.Spec : Prop :=
  ∀ n, P4425605280842446667.a n = A324893 (n + 1)

end A324893

/-! ## A324893.P3915669845915913450

`∑{d}[A170818(A267099(n+1)), A267099(#)]`
-/

namespace A324893.P3915669845915913450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A267099 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A267099 d

end

end A324893.P3915669845915913450

namespace A324893

/-- `∑{d}[A170818(A267099(n+1)), A267099(#)]` -/
def P3915669845915913450.Spec : Prop :=
  ∀ n, P3915669845915913450.a n = A324893 (n + 1)

end A324893

/-!
# A324894: Multiplicative with a(p^e) = p^e if sigma(p^e) is composite, and 1 otherwise.

The programs for A324894, there is no canonical definition to state claims against.
-/

/-! ## A324894.P18162879030356216683

`(n+1)/A324892(n+1)`
-/

namespace A324894.P18162879030356216683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A324892 (n + 1) : ℚ)

end

end A324894.P18162879030356216683

/-! ## A324894.P4606403146857226683

`A010766(A324892(n+1)+A000217(n))`
-/

namespace A324894.P4606403146857226683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A324892 (n + 1) + A000217 n).toNat

end

end A324894.P4606403146857226683

/-! ## A324894.P2033790401973301646

`A054531(A324892(n+1)+A000217(n))`
-/

namespace A324894.P2033790401973301646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A324892 (n + 1) + A000217 n).toNat

end

end A324894.P2033790401973301646

/-! ## A324894.P15226820344026859049

`A126988(A324892(n+1)+A000217(n))`
-/

namespace A324894.P15226820344026859049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A324892 (n + 1) + A000217 n).toNat

end

end A324894.P15226820344026859049

/-! ## A324894.P17946687207378859465

`A277227(A324892(n+1)+A000124(n))`
-/

namespace A324894.P17946687207378859465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A324892 (n + 1) + A000124 n).toNat

end

end A324894.P17946687207378859465

/-!
# A324895: Largest proper divisor of A276086(n); a(0) = 1.

The programs for A324895, there is no canonical definition to state claims against.
-/

/-! ## A324895.P9303604441609195856

`A032742(A276086(n))`
-/

namespace A324895.P9303604441609195856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A276086 n).toNat

end

end A324895.P9303604441609195856

/-! ## A324895.P16487646264310652182

`A276086(n)-A358764(n)`
-/

namespace A324895.P16487646264310652182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A358764 n

end

end A324895.P16487646264310652182

/-! ## A324895.P3914852279739664673

`lcm(A328572(n), A392858(n))`
-/

namespace A324895.P3914852279739664673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A328572 n) (A392858 n)

end

end A324895.P3914852279739664673

/-! ## A324895.P2554240609437937793

`gcd(A276086(abs(1-n)), A276086(n))`
-/

namespace A324895.P2554240609437937793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 |1 - (n : ℤ)|.toNat) (A276086 n)

end

end A324895.P2554240609437937793

/-! ## A324895.P1961743362081547473

`A276086(A276151(n+1-ceil(n/(n+1))))`
-/

namespace A324895.P1961743362081547473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A276151 ((n + 1 : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat).toNat

end

end A324895.P1961743362081547473

/-! ## A324895.P12997513813838788909

`A276086(n)/A020639(A328571(n))`
-/

namespace A324895.P12997513813838788909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A020639 (A328571 n).toNat : ℚ)

end

end A324895.P12997513813838788909

/-! ## A324895.P1266026010125804597

`gcd(A358764(A193356(n+1)), A358764(n))`
-/

namespace A324895.P1266026010125804597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A358764 (A193356 (n + 1)).toNat) (A358764 n)

end

end A324895.P1266026010125804597

/-! ## A324895.P10632810004031415380

`ceil(A276086(n)/A053669(A328613(n)))`
-/

namespace A324895.P10632810004031415380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276086 n : ℚ) / (A053669 (A328613 n).toNat : ℚ)⌉

end

end A324895.P10632810004031415380

/-! ## A324895.P13034217053812005559

`A276086(A324351(2*n²))`
-/

namespace A324895.P13034217053812005559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A324351 (2 * n ^ 2)).toNat

end

end A324895.P13034217053812005559

/-! ## A324895.P10377372701216999802

`A276086(n)/A020639(A276086(A276094(n)))`
-/

namespace A324895.P10377372701216999802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A020639 (A276086 (A276094 n).toNat).toNat : ℚ)

end

end A324895.P10377372701216999802

/-!
# A324896: Largest proper divisor of A324886(n).

The programs for A324896, there is no canonical definition to state claims against.
-/

/-! ## A324896.P11592002064259556116

`A032742(A324886(n+1))`
-/

namespace A324896.P11592002064259556116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A324886 (n + 1)).toNat

end

end A324896.P11592002064259556116

/-! ## A324896.P14452873736106454932

`A324886(n+1)/A117366(n+1)`
-/

namespace A324896.P14452873736106454932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A117366 (n + 1) : ℚ)

end

end A324896.P14452873736106454932

/-! ## A324896.P4288723181942020977

`A324886(n+1)/A324886(A006530(n+1))`
-/

namespace A324896.P4288723181942020977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A324886 (A006530 (n + 1)).toNat : ℚ)

end

end A324896.P4288723181942020977

/-! ## A324896.P11922984950926768753

`A324886(n+1)/gcd(A285639(n+1), A324886(n+1))`
-/

namespace A324896.P11922984950926768753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (Int.gcd (A285639 (n + 1)) (A324886 (n + 1)) : ℚ)

end

end A324896.P11922984950926768753

/-! ## A324896.P17716540430180856762

`A324886(n+1)/A324886(A014963(A345941(n+1)))`
-/

namespace A324896.P17716540430180856762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A324886 (A014963 (A345941 (n + 1)).toNat).toNat : ℚ)

end

end A324896.P17716540430180856762

/-! ## A324896.P3510476051309386528

`A324886(n+1)/A345941(A119416(n+1)/A345941(n+1))`
-/

namespace A324896.P3510476051309386528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A345941 (SequenceMachineLib.roundAway ((A119416 (n + 1) : ℚ) / (A345941 (n + 1) : ℚ))).toNat : ℚ)

end

end A324896.P3510476051309386528

/-! ## A324896.P5367429209072094764

`A324886(n+1)/A020639(A346091(n+1))`
-/

namespace A324896.P5367429209072094764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A020639 (A346091 (n + 1)).toNat : ℚ)

end

end A324896.P5367429209072094764

/-! ## A324896.P461141182256404310

`A324886(n+1)/A345941(A119416(n+1))`
-/

namespace A324896.P461141182256404310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A345941 (A119416 (n + 1)).toNat : ℚ)

end

end A324896.P461141182256404310

/-!
# A324899: Odd numbers k for which sigma(k) == 3 (mod 4).

The programs for A324899, the canonical program `A324899.P2367865667595697050` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324899 has offset 1).

The definition of A324899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324899.P354366981883759298

`A324909(n+1)²`
-/

namespace A324899.P354366981883759298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (n + 1) ^ 2

end

end A324899.P354366981883759298

namespace A324899

/-- `A324909(n+1)²` -/
def P354366981883759298.Spec : Prop :=
  ∀ n, P354366981883759298.a n = A324899 (n + 1)

end A324899

/-! ## A324899.P16530612683654306592

`eq[1, A358773(2*n)]²`
-/

namespace A324899.P16530612683654306592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A324899.P16530612683654306592

namespace A324899

/-- `eq[1, A358773(2*n)]²` -/
def P16530612683654306592.Spec : Prop :=
  ∀ n, (P16530612683654306592.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P12341791006428017635

`A324909(A000027(n+1))*A324909(n+1)`
-/

namespace A324899.P12341791006428017635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (A000027 (n + 1)).toNat * A324909 (n + 1)

end

end A324899.P12341791006428017635

namespace A324899

/-- `A324909(A000027(n+1))*A324909(n+1)` -/
def P12341791006428017635.Spec : Prop :=
  ∀ n, P12341791006428017635.a n = A324899 (n + 1)

end A324899

/-! ## A324899.P12919323426999580632

`A324909(n+1)^A324901(A076567(n+1))`
-/

namespace A324899.P12919323426999580632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324909 (n + 1) : ℚ) ^ (A324901 (A076567 (n + 1)).toNat : ℤ)

end

end A324899.P12919323426999580632

namespace A324899

/-- `A324909(n+1)^A324901(A076567(n+1))` -/
def P12919323426999580632.Spec : Prop :=
  ∀ n, P12919323426999580632.a n = (A324899 (n + 1) : ℚ)

end A324899

/-! ## A324899.P6027771817343854372

`A324909(n+1)^A000005(A000040(n+1))`
-/

namespace A324899.P6027771817343854372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324909 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A324899.P6027771817343854372

namespace A324899

/-- `A324909(n+1)^A000005(A000040(n+1))` -/
def P6027771817343854372.Spec : Prop :=
  ∀ n, P6027771817343854372.a n = (A324899 (n + 1) : ℚ)

end A324899

/-! ## A324899.P2367865667595697050

`lt[1, A353493(2*n)]²`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324899

/-- `lt[1, A353493(2*n)]²` -/
def P2367865667595697050.Spec : Prop :=
  ∀ n, (P2367865667595697050.a n : ℤ) = A324899 (n + 1)

theorem P2367865667595697050.correct : P2367865667595697050.Spec := by
  intro n
  simp only [A324899, Nat.add_sub_cancel]

end A324899

/-! ## A324899.P17610348371080933243

`A324909(A110654(2*n+1))*A324909(n+1)`
-/

namespace A324899.P17610348371080933243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (A110654 (2 * n + 1)).toNat * A324909 (n + 1)

end

end A324899.P17610348371080933243

namespace A324899

/-- `A324909(A110654(2*n+1))*A324909(n+1)` -/
def P17610348371080933243.Spec : Prop :=
  ∀ n, P17610348371080933243.a n = A324899 (n + 1)

end A324899

/-! ## A324899.P16002187543778867104

`∩[A020735(n+1), A209922(n+1)]²`
-/

namespace A324899.P16002187543778867104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P16002187543778867104

namespace A324899

/-- `∩[A020735(n+1), A209922(n+1)]²` -/
def P16002187543778867104.Spec : Prop :=
  ∀ n, (P16002187543778867104.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P10922824809402966860

`∩[A209922(n+1), A062545(n)]²`
-/

namespace A324899.P10922824809402966860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P10922824809402966860

namespace A324899

/-- `∩[A209922(n+1), A062545(n)]²` -/
def P10922824809402966860.Spec : Prop :=
  ∀ n, (P10922824809402966860.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P7755902997176279827

`eq[A040007(n), A353493(2*n)]²`
-/

namespace A324899.P7755902997176279827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A324899.P7755902997176279827

namespace A324899

/-- `eq[A040007(n), A353493(2*n)]²` -/
def P7755902997176279827.Spec : Prop :=
  ∀ n, (P7755902997176279827.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P18376048814040661263

`∩[A209922(n+1), A004273(n)]²`
-/

namespace A324899.P18376048814040661263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P18376048814040661263

namespace A324899

/-- `∩[A209922(n+1), A004273(n)]²` -/
def P18376048814040661263.Spec : Prop :=
  ∀ n, (P18376048814040661263.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P8521939913617906702

`∩[A209922(n+1), A130773(n)]²`
-/

namespace A324899.P8521939913617906702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P8521939913617906702

namespace A324899

/-- `∩[A209922(n+1), A130773(n)]²` -/
def P8521939913617906702.Spec : Prop :=
  ∀ n, (P8521939913617906702.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P11135791128508182818

`∩[A209922(n+1), A223134(n)]²`
-/

namespace A324899.P11135791128508182818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P11135791128508182818

namespace A324899

/-- `∩[A209922(n+1), A223134(n)]²` -/
def P11135791128508182818.Spec : Prop :=
  ∀ n, (P11135791128508182818.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P6911650774014777420

`∩[A209922(n+1), A060747(n)]²`
-/

namespace A324899.P6911650774014777420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P6911650774014777420

namespace A324899

/-- `∩[A209922(n+1), A060747(n)]²` -/
def P6911650774014777420.Spec : Prop :=
  ∀ n, (P6911650774014777420.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P298868631570761751

`∩[A209922(n+1), A163985(n)]²`
-/

namespace A324899.P298868631570761751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P298868631570761751

namespace A324899

/-- `∩[A209922(n+1), A163985(n)]²` -/
def P298868631570761751.Spec : Prop :=
  ∀ n, (P298868631570761751.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P5981076300930840517

`∩[A004280(n+1), A209922(n+1)]²`
-/

namespace A324899.P5981076300930840517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P5981076300930840517

namespace A324899

/-- `∩[A004280(n+1), A209922(n+1)]²` -/
def P5981076300930840517.Spec : Prop :=
  ∀ n, (P5981076300930840517.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P7293934409051361460

`∩[A209922(n+1), A004274(n)]²`
-/

namespace A324899.P7293934409051361460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P7293934409051361460

namespace A324899

/-- `∩[A209922(n+1), A004274(n)]²` -/
def P7293934409051361460.Spec : Prop :=
  ∀ n, (P7293934409051361460.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P9919089153460731611

`∩[A209922(n+1), A004281(n)]²`
-/

namespace A324899.P9919089153460731611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P9919089153460731611

namespace A324899

/-- `∩[A209922(n+1), A004281(n)]²` -/
def P9919089153460731611.Spec : Prop :=
  ∀ n, (P9919089153460731611.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P1382118132704343363

`∩[A209922(n+1), A004276(n)]²`
-/

namespace A324899.P1382118132704343363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P1382118132704343363

namespace A324899

/-- `∩[A209922(n+1), A004276(n)]²` -/
def P1382118132704343363.Spec : Prop :=
  ∀ n, (P1382118132704343363.a n : ℤ) = A324899 (n + 1)

end A324899

/-! ## A324899.P8566202391793326614

`∩[A081354(n+1), A004273(n)]²`
-/

namespace A324899.P8566202391793326614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A324899.P8566202391793326614

namespace A324899

/-- `∩[A081354(n+1), A004273(n)]²` -/
def P8566202391793326614.Spec : Prop :=
  ∀ n, (P8566202391793326614.a n : ℤ) = A324899 (n + 1)

end A324899

