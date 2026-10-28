import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A203100: 

The programs for A203100, there is no canonical definition to state claims against.
-/

/-! ## A203100.P2054401544990268505

`A203101(A052905(n+4)-1)`
-/

namespace A203100.P2054401544990268505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203101 (A052905 (n + 4) - 1).toNat

end

end A203100.P2054401544990268505

/-!
# A203102: Number of n X n binary arrays with every 1 immediately preceded by 0 0 to the left or above.

The programs for A203102, there is no canonical definition to state claims against.
-/

/-! ## A203102.P6316633120189602643

`A203108(∑[4*n]+1)`
-/

namespace A203102.P6316633120189602643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203102.P6316633120189602643

/-! ## A203102.P3962274166406022151

`A203108(A001844(n))^A178334(n)`
-/

namespace A203102.P3962274166406022151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203108 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A203102.P3962274166406022151

/-! ## A203102.P10069774918018133788

`gcd(A000038(n), A203108(A001844(n)))`
-/

namespace A203102.P10069774918018133788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A203108 (A001844 n).toNat)

end

end A203102.P10069774918018133788

/-! ## A203102.P7897172091266289871

`A007318(∑[n])*A203108(A001844(n))`
-/

namespace A203102.P7897172091266289871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A203108 (A001844 n).toNat

end

end A203102.P7897172091266289871

/-! ## A203102.P1803867978829828037

`A203108(A001844(n))/A007318(∑[n+1])`
-/

namespace A203102.P1803867978829828037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203108 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A203102.P1803867978829828037

/-!
# A203103: Number of n X 3 binary arrays with every 1 immediately preceded by 0 0 to the left or above.

The programs for A203103, the canonical program `A203103.P7487723193923127050` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203103 has offset 1).

The definition of A203103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203103.P7487723193923127050

`ogf((2+11x^2+6x^3-6x^4-16x^5-12x^6-10x^7+5x^8)/(1-2x-2x^2-15x^3-8x^4+4x^5+17x^6+12x^7+10x^8-5x^9))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203103

/-- `ogf((2+11x^2+6x^3-6x^4-16x^5-12x^6-10x^7+5x^8)/(1-2x-2x^2-15x^3-8x^4+4x^5+17x^6+12x^7+10x^8-5x^9))` -/
def P7487723193923127050.Spec : Prop :=
  ∀ n, P7487723193923127050.a n = A203103 (n + 1)

theorem P7487723193923127050.correct : P7487723193923127050.Spec := by
  intro n
  simp only [A203103, Nat.add_sub_cancel]

end A203103

/-! ## A203103.P3057837865721313273

`A203108(∑[n+2]+4)`
-/

namespace A203103.P3057837865721313273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203103.P3057837865721313273

namespace A203103

/-- `A203108(∑[n+2]+4)` -/
def P3057837865721313273.Spec : Prop :=
  ∀ n, P3057837865721313273.a n = A203103 (n + 1)

end A203103

/-! ## A203103.P6814992742487927366

`A203108(A055998(n)+6)%Δ[7^n]`
-/

namespace A203103.P6814992742487927366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203108 (A055998 n + 6).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A203103.P6814992742487927366

namespace A203103

/-- `A203108(A055998(n)+6)%Δ[7^n]` -/
def P6814992742487927366.Spec : Prop :=
  ∀ n, P6814992742487927366.a n = A203103 (n + 1)

end A203103

/-! ## A203103.P17338099144562538852

`gcd(2, A000040(n+2))*A203108(A167614(n+1))`
-/

namespace A203103.P17338099144562538852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A203108 (A167614 (n + 1)).toNat

end

end A203103.P17338099144562538852

namespace A203103

/-- `gcd(2, A000040(n+2))*A203108(A167614(n+1))` -/
def P17338099144562538852.Spec : Prop :=
  ∀ n, P17338099144562538852.a n = A203103 (n + 1)

end A203103

/-! ## A203103.P11205260915980343449

`lcm(A014963(2*(n+1)), A203108(A167614(n+1)))`
-/

namespace A203103.P11205260915980343449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (2 * (n + 1))) (A203108 (A167614 (n + 1)).toNat)

end

end A203103.P11205260915980343449

namespace A203103

/-- `lcm(A014963(2*(n+1)), A203108(A167614(n+1)))` -/
def P11205260915980343449.Spec : Prop :=
  ∀ n, (P11205260915980343449.a n : ℤ) = A203103 (n + 1)

end A203103

/-!
# A203104: Number of nX4 binary arrays with every 1 immediately preceded by 0 0 to the left or above.

The programs for A203104, there is no canonical definition to state claims against.
-/

/-! ## A203104.P7190278090416122945

`A203108(A374004(n+1))`
-/

namespace A203104.P7190278090416122945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A374004 (n + 1)).toNat

end

end A203104.P7190278090416122945

/-! ## A203104.P10780685958504805559

`A203108(A052905(n)+9)`
-/

namespace A203104.P10780685958504805559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A052905 n + 9).toNat

end

end A203104.P10780685958504805559

/-! ## A203104.P14445942622016889129

`A203108(A055999(n)+10)`
-/

namespace A203104.P14445942622016889129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A055999 n + 10).toNat

end

end A203104.P14445942622016889129

/-! ## A203104.P6604707775926308340

`A203108(A167614(n+2)+1)`
-/

namespace A203104.P6604707775926308340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A167614 (n + 2) + 1).toNat

end

end A203104.P6604707775926308340

/-! ## A203104.P8972795526359365902

`A203108(A167499(n+2)-1)`
-/

namespace A203104.P8972795526359365902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A167499 (n + 2) - 1).toNat

end

end A203104.P8972795526359365902

/-!
# A203105: Number of n X 5 binary arrays with every 1 immediately preceded by 0 0 to the left or above.

The programs for A203105, there is no canonical definition to state claims against.
-/

/-! ## A203105.P15216522234641224408

`A203108(A374005(n+1))`
-/

namespace A203105.P15216522234641224408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A374005 (n + 1)).toNat

end

end A203105.P15216522234641224408

/-! ## A203105.P2263653647179025951

`A203108(A167499(n+3))`
-/

namespace A203105.P2263653647179025951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A167499 (n + 3)).toNat

end

end A203105.P2263653647179025951

/-! ## A203105.P1622734785797508060

`A203108(A034856(n+3)+7)`
-/

namespace A203105.P1622734785797508060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A034856 (n + 3) + 7).toNat

end

end A203105.P1622734785797508060

/-! ## A203105.P18001952516031552217

`record[A203108(A167499(A028242(n)))]`
-/

namespace A203105.P18001952516031552217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A167499 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203105.P18001952516031552217

/-! ## A203105.P17788271404194137139

`record[A203108(A167499(A110659(n)))]`
-/

namespace A203105.P17788271404194137139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A167499 (A110659 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203105.P17788271404194137139

/-!
# A203106: Number of nX6 binary arrays with every 1 immediately preceded by 0 0 to the left or above.

The programs for A203106, there is no canonical definition to state claims against.
-/

/-! ## A203106.P10885183344646638027

`A203108(A374007(n+1))`
-/

namespace A203106.P10885183344646638027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A374007 (n + 1)).toNat

end

end A203106.P10885183344646638027

/-! ## A203106.P2325404501907947014

`A203108(eq[7, A131818(n+1)])`
-/

namespace A203106.P2325404501907947014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203106.P2325404501907947014

/-! ## A203106.P8649620608500785543

`A203108(eq[3, A219347(n)])`
-/

namespace A203106.P8649620608500785543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203106.P8649620608500785543

/-! ## A203106.P6762975059701028224

`A203108(eq[5, A193592(n)])`
-/

namespace A203106.P6762975059701028224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203106.P6762975059701028224

/-! ## A203106.P12716556548885543472

`A203108(eq[16, A057728(n+1)])`
-/

namespace A203106.P12716556548885543472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203106.P12716556548885543472

/-!
# A203107: Number of n X 7 binary arrays with every 1 immediately preceded by 0 0 to the left or above.

The programs for A203107, there is no canonical definition to state claims against.
-/

/-! ## A203107.P9605388233660181926

`A203108(A374008(n+1))`
-/

namespace A203107.P9605388233660181926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A374008 (n + 1)).toNat

end

end A203107.P9605388233660181926

/-! ## A203107.P9516936931905295763

`A203108(A000217(n+6)+7)`
-/

namespace A203107.P9516936931905295763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (A000217 (n + 6) + 7).toNat

end

end A203107.P9516936931905295763

/-! ## A203107.P4572914034228641077

`A203108(eq[8, A131818(n+1)])`
-/

namespace A203107.P4572914034228641077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203107.P4572914034228641077

/-! ## A203107.P18120000808378441425

`A203108(eq[4, A219347(n)])`
-/

namespace A203107.P18120000808378441425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203107.P18120000808378441425

/-! ## A203107.P6162143381195651185

`A203108(eq[6, A193592(n)])`
-/

namespace A203107.P6162143381195651185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203107.P6162143381195651185

/-!
# A203109: Number of n X n X n 0..6 triangular arrays with each element x equal to the number of its neighbors equal to 6,6,2,0,2,2,1 for x=0,1,2,3,4,5,6.

The programs for A203109, there is no canonical definition to state claims against.
-/

/-! ## A203109.P7124378200739873689

`A005350((n+2)^n+n)`
-/

namespace A203109.P7124378200739873689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 ((n + 2) ^ n + n)

end

end A203109.P7124378200739873689

/-!
# A203110: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,4,0,0,2,2,0 for x=0,1,2,3,4,5,6.

The programs for A203110, there is no canonical definition to state claims against.
-/

/-! ## A203110.P17739925847766131959

`A003415(A048522(n)+A008542(n))`
-/

namespace A203110.P17739925847766131959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A048522 n + A008542 n).toNat

end

end A203110.P17739925847766131959

/-!
# A203111: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,0,0,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A203111, there is no canonical definition to state claims against.
-/

/-! ## A203111.P7821741614319496293

`A236348(A028772(n+1)*A193118(n+1))`
-/

namespace A203111.P7821741614319496293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 (A028772 (n + 1) * A193118 (n + 1)).toNat

end

end A203111.P7821741614319496293

/-!
# A203113: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,1,2,1,2,0,2 for x=0,1,2,3,4,5,6.

The programs for A203113, there is no canonical definition to state claims against.
-/

/-! ## A203113.P5386284855803718111

`A314278(A132612(n)-A330268(n))`
-/

namespace A203113.P5386284855803718111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314278 (A132612 n - A330268 n).toNat

end

end A203113.P5386284855803718111

/-!
# A203114: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,2,1,0,1,2 for x=0,1,2,3,4,5,6.

The programs for A203114, there is no canonical definition to state claims against.
-/

/-! ## A203114.P17404142991137741318

`A311284(A102223(n))+A002717(n)`
-/

namespace A203114.P17404142991137741318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311284 (A102223 n).toNat + A002717 n

end

end A203114.P17404142991137741318

/-!
# A203115: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,2,0,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A203115, there is no canonical definition to state claims against.
-/

/-! ## A203115.P6444233509442377852

`A296233(A214954(n)+A141361(n))`
-/

namespace A203115.P6444233509442377852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296233 (A214954 n + A141361 n).toNat

end

end A203115.P6444233509442377852

/-!
# A203116: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,2,2,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A203116, there is no canonical definition to state claims against.
-/

/-! ## A203116.P10460066610039791390

`A052905(n)+A028242(A068768(n))`
-/

namespace A203116.P10460066610039791390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + A028242 (A068768 n).toNat

end

end A203116.P10460066610039791390

/-!
# A203117: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,0,2,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A203117, there is no canonical definition to state claims against.
-/

/-! ## A203117.P6787271696020310244

`A329333(A056780(2*n+1))`
-/

namespace A203117.P6787271696020310244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329333 (A056780 (2 * n + 1)).toNat

end

end A203117.P6787271696020310244

/-!
# A203119: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,2,0,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A203119, there is no canonical definition to state claims against.
-/

/-! ## A203119.P8268979339412193606

`∑[A168233(A181083(n+1))-n+1]-1`
-/

namespace A203119.P8268979339412193606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (A181083 (n + 1)).toNat - (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A203119.P8268979339412193606

/-!
# A203121: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,5,0,2,0,1,0 for x=0,1,2,3,4,5,6.

The programs for A203121, there is no canonical definition to state claims against.
-/

/-! ## A203121.P15324849975628616990

`∏{p}[∑[∏{p}[A228938(n)², #]], #+n]`
-/

namespace A203121.P15324849975628616990
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228938 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p + n)

end

end A203121.P15324849975628616990

/-!
# A203122: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,2,2,0,0,2 for x=0,1,2,3,4,5,6.

The programs for A203122, there is no canonical definition to state claims against.
-/

/-! ## A203122.P4079830277061462707

`A324749(A008194(n))`
-/

namespace A203122.P4079830277061462707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324749 (A008194 n).toNat

end

end A203122.P4079830277061462707

/-!
# A203123: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,3,2,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A203123, there is no canonical definition to state claims against.
-/

/-! ## A203123.P1641619637612813186

`A062392(n)+A050808(A003019(n+1))`
-/

namespace A203123.P1641619637612813186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n + A050808 (A003019 (n + 1)).toNat

end

end A203123.P1641619637612813186

/-!
# A203124: Smallest integer m such that each sum of m plus the square of an even number up to 2n is an odd composite numbers.

The programs for A203124, there is no canonical definition to state claims against.
-/

/-! ## A203124.P7112456602834709046

`filter[A218121(n+1), A228487(#)]`
-/

namespace A203124.P7112456602834709046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228487 (f1 j).toNat = 1) n)

end

end A203124.P7112456602834709046

/-! ## A203124.P17842240584446731028

`A033205(∑{e}[∑{e}[A138477(2*n+1), #], #]+1)`
-/

namespace A203124.P17842240584446731028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A203124.P17842240584446731028

/-! ## A203124.P16385473188845308652

`A103579(A103586(n)+A076710(2*n))`
-/

namespace A203124.P16385473188845308652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103579 (A103586 n + A076710 (2 * n)).toNat

end

end A203124.P16385473188845308652

/-! ## A203124.P10124869152770835928

`A128006(A098355(n+1))`
-/

namespace A203124.P10124869152770835928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128006 (A098355 (n + 1)).toNat

end

end A203124.P10124869152770835928

/-! ## A203124.P7893657470074461772

`A389785(A232853(n+1))`
-/

namespace A203124.P7893657470074461772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389785 (A232853 (n + 1)).toNat

end

end A203124.P7893657470074461772

/-!
# A203133: G.f. A(x) satisfies: a(n) = [x^(n-1)] A( x/(1-x) )^n / (1-x) for n>0 with a(0)=1 where A(x) = Sum_{n>=0} a(n)*x^n.

The programs for A203133, there is no canonical definition to state claims against.
-/

/-! ## A203133.P12403946886450906902

`A117451(A186925(n)+3)`
-/

namespace A203133.P12403946886450906902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117451 (A186925 n + 3).toNat

end

end A203133.P12403946886450906902

/-! ## A203133.P11795175701988346542

`A117451(or(3, A186925(n)))`
-/

namespace A203133.P11795175701988346542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117451 (Int.lor 3 (A186925 n)).toNat

end

end A203133.P11795175701988346542

/-!
# A203134: Decagonal hexagonal numbers.

The programs for A203134, the canonical program `A203134.P2112964153457863860` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203134 has offset 1).

The definition of A203134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203134.P2112964153457863860

`floor(1/64*(5*sqrt(2)-1)*(sqrt(2)+1)^(8*(n+1)-5))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203134

/-- `floor(1/64*(5*sqrt(2)-1)*(sqrt(2)+1)^(8*(n+1)-5))` -/
def P2112964153457863860.Spec : Prop :=
  ∀ n, P2112964153457863860.a n = A203134 (n + 1)

theorem P2112964153457863860.correct : P2112964153457863860.Spec := by
  intro n
  simp only [A203134, Nat.add_sub_cancel]

end A203134

/-! ## A203134.P4499354399530266973

`A133216(2*(n+1))`
-/

namespace A203134.P4499354399530266973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133216 (2 * (n + 1))

end

end A203134.P4499354399530266973

namespace A203134

/-- `A133216(2*(n+1))` -/
def P4499354399530266973.Spec : Prop :=
  ∀ n, P4499354399530266973.a n = A203134 (n + 1)

end A203134

/-! ## A203134.P4984925293792493105

`A124174(4*n+2)`
-/

namespace A203134.P4984925293792493105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124174 (4 * n + 2)

end

end A203134.P4984925293792493105

namespace A203134

/-- `A124174(4*n+2)` -/
def P4984925293792493105.Spec : Prop :=
  ∀ n, P4984925293792493105.a n = A203134 (n + 1)

end A203134

/-! ## A203134.P17775426290209314447

`A217278(A017089(n))`
-/

namespace A203134.P17775426290209314447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (A017089 n).toNat

end

end A203134.P17775426290209314447

namespace A203134

/-- `A217278(A017089(n))` -/
def P17775426290209314447.Spec : Prop :=
  ∀ n, P17775426290209314447.a n = A203134 (n + 1)

end A203134

/-!
# A203135: Indices of hexagonal numbers that are also decagonal.

The programs for A203135, the canonical program `A203135.P8266159323903627624` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203135 has offset 1).

The definition of A203135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203135.P9055178260811179443

`ogf((1-7x-2x^2)/(1-35x+35x^2-x^3))`
-/

namespace A203135.P9055178260811179443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, -2] [1, -35, 35, -1] n

end

end A203135.P9055178260811179443

namespace A203135

/-- `ogf((1-7x-2x^2)/(1-35x+35x^2-x^3))` -/
def P9055178260811179443.Spec : Prop :=
  ∀ n, P9055178260811179443.a n = A203135 (n + 1)

end A203135

/-! ## A203135.P8266159323903627624

`34*a(n-1)-a(n-2)-8` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203135

/-- `34*a(n-1)-a(n-2)-8` -/
def P8266159323903627624.Spec : Prop :=
  ∀ n, P8266159323903627624.a n = A203135 (n + 1)

theorem P8266159323903627624.correct : P8266159323903627624.Spec := by
  intro n
  simp only [A203135, Nat.add_sub_cancel]

end A203135

/-! ## A203135.P1402154098288787285

`ceil(1/16*(3*sqrt(2)-2)*(1+sqrt(2))^(4*(n+1)-2))`
-/

namespace A203135.P1402154098288787285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 16 : ℝ) * (3 * Real.sqrt (2 : ℝ) - 2) * (1 + Real.sqrt (2 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ)⌉

end

end A203135.P1402154098288787285

namespace A203135

/-- `ceil(1/16*(3*sqrt(2)-2)*(1+sqrt(2))^(4*(n+1)-2))` -/
def P1402154098288787285.Spec : Prop :=
  ∀ n, P1402154098288787285.a n = A203135 (n + 1)

end A203135

/-! ## A203135.P16079510993774785707

`A002315(n)*A038723(n)`
-/

namespace A203135.P16079510993774785707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * A038723 n

end

end A203135.P16079510993774785707

namespace A203135

/-- `A002315(n)*A038723(n)` -/
def P16079510993774785707.Spec : Prop :=
  ∀ n, P16079510993774785707.a n = A203135 (n + 1)

end A203135

/-! ## A203135.P14148412632056531899

`record[∑[A077985(A042948(n))]]`
-/

namespace A203135.P14148412632056531899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 (A042948 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203135.P14148412632056531899

namespace A203135

/-- `record[∑[A077985(A042948(n))]]` -/
def P14148412632056531899.Spec : Prop :=
  ∀ n, P14148412632056531899.a n = A203135 (n + 1)

end A203135

/-! ## A203135.P11587618535975859912

`∑[A048655(A004273(2*n))]`
-/

namespace A203135.P11587618535975859912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 (A004273 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203135.P11587618535975859912

namespace A203135

/-- `∑[A048655(A004273(2*n))]` -/
def P11587618535975859912.Spec : Prop :=
  ∀ n, P11587618535975859912.a n = A203135 (n + 1)

end A203135

/-! ## A203135.P8948905634495648310

`∑[A048655(A014681(4*n))]`
-/

namespace A203135.P8948905634495648310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 (A014681 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203135.P8948905634495648310

namespace A203135

/-- `∑[A048655(A014681(4*n))]` -/
def P8948905634495648310.Spec : Prop :=
  ∀ n, P8948905634495648310.a n = A203135 (n + 1)

end A203135

/-! ## A203135.P12270866577402135607

`Δ[A001108(n)]*A038723(n)`
-/

namespace A203135.P12270866577402135607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038723 n

end

end A203135.P12270866577402135607

namespace A203135

/-- `Δ[A001108(n)]*A038723(n)` -/
def P12270866577402135607.Spec : Prop :=
  ∀ n, P12270866577402135607.a n = A203135 (n + 1)

end A203135

/-! ## A203135.P12693758062901347652

`A001109(n)*A101386(n)+1`
-/

namespace A203135.P12693758062901347652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n * A101386 n + 1

end

end A203135.P12693758062901347652

namespace A203135

/-- `A001109(n)*A101386(n)+1` -/
def P12693758062901347652.Spec : Prop :=
  ∀ n, P12693758062901347652.a n = A203135 (n + 1)

end A203135

/-! ## A203135.P14992531066819306584

`A008844(n)+A082405(n)/2`
-/

namespace A203135.P14992531066819306584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008844 n : ℚ) + (A082405 n : ℚ) / 2

end

end A203135.P14992531066819306584

namespace A203135

/-- `A008844(n)+A082405(n)/2` -/
def P14992531066819306584.Spec : Prop :=
  ∀ n, P14992531066819306584.a n = (A203135 (n + 1) : ℚ)

end A203135

/-!
# A203136: Indices of decagonal numbers that are also hexagonal.

The programs for A203136, the canonical program `A203136.P5316953872060550348` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203136 has offset 1).

The definition of A203136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203136.P2706640090967475543

`ogf((1-15x+2x^2)/(1-35x+35x^2-x^3))`
-/

namespace A203136.P2706640090967475543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -15, 2] [1, -35, 35, -1] n

end

end A203136.P2706640090967475543

namespace A203136

/-- `ogf((1-15x+2x^2)/(1-35x+35x^2-x^3))` -/
def P2706640090967475543.Spec : Prop :=
  ∀ n, P2706640090967475543.a n = A203136 (n + 1)

end A203136

/-! ## A203136.P5316953872060550348

`34*a(n-1)-a(n-2)-12` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203136

/-- `34*a(n-1)-a(n-2)-12` -/
def P5316953872060550348.Spec : Prop :=
  ∀ n, P5316953872060550348.a n = A203136 (n + 1)

theorem P5316953872060550348.correct : P5316953872060550348.Spec := by
  intro n
  simp only [A203136, Nat.add_sub_cancel]

end A203136

/-! ## A203136.P13236187297899829454

`ceil(1/16*(3-sqrt(2))*(1+sqrt(2))^(4*(n+1)-2))`
-/

namespace A203136.P13236187297899829454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 16 : ℝ) * (3 - Real.sqrt (2 : ℝ)) * (1 + Real.sqrt (2 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ)⌉

end

end A203136.P13236187297899829454

namespace A203136

/-- `ceil(1/16*(3-sqrt(2))*(1+sqrt(2))^(4*(n+1)-2))` -/
def P13236187297899829454.Spec : Prop :=
  ∀ n, P13236187297899829454.a n = A203136 (n + 1)

end A203136

/-! ## A203136.P10295297853565239566

`record[2-floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=1`
-/

namespace A203136.P10295297853565239566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 - ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203136.P10295297853565239566

namespace A203136

/-- `record[2-floor(a(n-1)/(3-sqrt(8)))]` -/
def P10295297853565239566.Spec : Prop :=
  ∀ n, P10295297853565239566.a n = A203136 (n + 1)

end A203136

/-! ## A203136.P16650062941668484683

`A133217(2*(n+1))`
-/

namespace A203136.P16650062941668484683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133217 (2 * (n + 1))

end

end A203136.P16650062941668484683

namespace A203136

/-- `A133217(2*(n+1))` -/
def P16650062941668484683.Spec : Prop :=
  ∀ n, P16650062941668484683.a n = A203136 (n + 1)

end A203136

/-! ## A203136.P2281274844412735810

`∑[abs(A078343(A008586(n)))]`
-/

namespace A203136.P2281274844412735810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078343 (A008586 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203136.P2281274844412735810

namespace A203136

/-- `∑[abs(A078343(A008586(n)))]` -/
def P2281274844412735810.Spec : Prop :=
  ∀ n, P2281274844412735810.a n = A203136 (n + 1)

end A203136

/-! ## A203136.P208147177040481247

`∑[A077442(A004273(2*n))]`
-/

namespace A203136.P208147177040481247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 (A004273 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203136.P208147177040481247

namespace A203136

/-- `∑[A077442(A004273(2*n))]` -/
def P208147177040481247.Spec : Prop :=
  ∀ n, P208147177040481247.a n = A203136 (n + 1)

end A203136

/-! ## A203136.P12369804438187027111

`Δ[A001109(n)]*A038723(n)`
-/

namespace A203136.P12369804438187027111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038723 n

end

end A203136.P12369804438187027111

namespace A203136

/-- `Δ[A001109(n)]*A038723(n)` -/
def P12369804438187027111.Spec : Prop :=
  ∀ n, P12369804438187027111.a n = A203136 (n + 1)

end A203136

/-! ## A203136.P2282921623723982197

`record[A215936(n)]*A038723(n)`
-/

namespace A203136.P2282921623723982197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A038723 n

end

end A203136.P2282921623723982197

namespace A203136

/-- `record[A215936(n)]*A038723(n)` -/
def P2282921623723982197.Spec : Prop :=
  ∀ n, P2282921623723982197.a n = A203136 (n + 1)

end A203136

/-! ## A203136.P14440544643113988024

`A107118(n+1)+A001110(n)`
-/

namespace A203136.P14440544643113988024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107118 (n + 1) + A001110 n

end

end A203136.P14440544643113988024

namespace A203136

/-- `A107118(n+1)+A001110(n)` -/
def P14440544643113988024.Spec : Prop :=
  ∀ n, P14440544643113988024.a n = A203136 (n + 1)

end A203136

/-!
# A203147: (n-1)-st elementary symmetric function of {11, 12, 13, 14, ..., 10 + n}.

The programs for A203147, there is no canonical definition to state claims against.
-/

/-! ## A203147.P10666339246781524073

`A067176(eq[11, A048151(n+1)])`
-/

namespace A203147.P10666339246781524073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203147.P10666339246781524073

/-! ## A203147.P13737296518913080384

`A067176(eq[12, A134868(n+2)])`
-/

namespace A203147.P13737296518913080384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203147.P13737296518913080384

/-! ## A203147.P16709408609383010657

`A093905(eq[10, A193592(n)])`
-/

namespace A203147.P16709408609383010657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203147.P16709408609383010657

/-! ## A203147.P6365848935444860264

`A105954(eq[11, A025581(n)])`
-/

namespace A203147.P6365848935444860264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203147.P6365848935444860264

/-! ## A203147.P6158064074069284584

`A105954(eq[12, A004736(n+1)])`
-/

namespace A203147.P6158064074069284584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203147.P6158064074069284584

/-!
# A203148: (n-1)-st elementary symmetric function of {3,9,...,3^n}.

The programs for A203148, the canonical program `A203148.P7404562787251664064` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203148 has offset 1).

The definition of A203148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203148.P7404562787251664064

`1/2*(3^(n+1)-1)*3^C(n+1, 2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203148

/-- `1/2*(3^(n+1)-1)*3^C(n+1, 2)` -/
def P7404562787251664064.Spec : Prop :=
  ∀ n, P7404562787251664064.a n = (A203148 (n + 1) : ℚ)

end A203148

/-! ## A203148.P15560256538975886477

`3^∑[n]*∑[3^n]`
-/

namespace A203148.P15560256538975886477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A203148.P15560256538975886477

namespace A203148

/-- `3^∑[n]*∑[3^n]` -/
def P15560256538975886477.Spec : Prop :=
  ∀ n, (P15560256538975886477.a n : ℤ) = A203148 (n + 1)

end A203148

/-! ## A203148.P2292969657991367599

`Δ[A003462(∑[n])]`
-/

namespace A203148.P2292969657991367599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203148.P2292969657991367599

namespace A203148

/-- `Δ[A003462(∑[n])]` -/
def P2292969657991367599.Spec : Prop :=
  ∀ n, P2292969657991367599.a n = A203148 (n + 1)

end A203148

/-! ## A203148.P8626130412783331643

`Δ[A007051(∑[n])]`
-/

namespace A203148.P8626130412783331643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203148.P8626130412783331643

namespace A203148

/-- `Δ[A007051(∑[n])]` -/
def P8626130412783331643.Spec : Prop :=
  ∀ n, P8626130412783331643.a n = A203148 (n + 1)

end A203148

/-! ## A203148.P2790723823998234699

`Δ[A115098(∑[n])]`
-/

namespace A203148.P2790723823998234699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203148.P2790723823998234699

namespace A203148

/-- `Δ[A115098(∑[n])]` -/
def P2790723823998234699.Spec : Prop :=
  ∀ n, P2790723823998234699.a n = A203148 (n + 1)

end A203148

/-!
# A203150: (n-1)-st elementary symmetric function of the first n terms of (1,2,1,2,1,2,1,2,1,2,...)=A000034.

The programs for A203150, the canonical program `A203150.P12141885695883165690` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203150 has offset 1).

The definition of A203150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203150.P11814305522117746239

`∑[1/A000034(n)]*A060546(n)`
-/

namespace A203150.P11814305522117746239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A060546 n : ℚ)

end

end A203150.P11814305522117746239

namespace A203150

/-- `∑[1/A000034(n)]*A060546(n)` -/
def P11814305522117746239.Spec : Prop :=
  ∀ n, P11814305522117746239.a n = (A203150 (n + 1) : ℚ)

end A203150

/-! ## A203150.P4420902993327359721

`A007494(n+1)/2*A016116(n+1)`
-/

namespace A203150.P4420902993327359721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 (n + 1) : ℚ) / 2 * (A016116 (n + 1) : ℚ)

end

end A203150.P4420902993327359721

namespace A203150

/-- `A007494(n+1)/2*A016116(n+1)` -/
def P4420902993327359721.Spec : Prop :=
  ∀ n, P4420902993327359721.a n = (A203150 (n + 1) : ℚ)

end A203150

/-! ## A203150.P13445577208383400842

`A007494(n+1)/2*A131572(n+1)`
-/

namespace A203150.P13445577208383400842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 (n + 1) : ℚ) / 2 * (A131572 (n + 1) : ℚ)

end

end A203150.P13445577208383400842

namespace A203150

/-- `A007494(n+1)/2*A131572(n+1)` -/
def P13445577208383400842.Spec : Prop :=
  ∀ n, P13445577208383400842.a n = (A203150 (n + 1) : ℚ)

end A203150

/-! ## A203150.P12141885695883165690

`A016116(n)+a(n-1)*A000034(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203150

/-- `A016116(n)+a(n-1)*A000034(n)` -/
def P12141885695883165690.Spec : Prop :=
  ∀ n, P12141885695883165690.a n = A203150 (n + 1)

theorem P12141885695883165690.correct : P12141885695883165690.Spec := by
  intro n
  simp only [A203150, Nat.add_sub_cancel]

end A203150

/-! ## A203150.P2394076596447394068

`2^(A007494(n)-(n+1))*A007494(n+1)`
-/

namespace A203150.P2394076596447394068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007494 n - (n + 1 : ℤ) : ℤ) * (A007494 (n + 1) : ℚ)

end

end A203150.P2394076596447394068

namespace A203150

/-- `2^(A007494(n)-(n+1))*A007494(n+1)` -/
def P2394076596447394068.Spec : Prop :=
  ∀ n, P2394076596447394068.a n = (A203150 (n + 1) : ℚ)

end A203150

/-! ## A203150.P13749214108251592874

`∑[A016116(n)/A016116(n+1)]*A016116(n+1)`
-/

namespace A203150.P13749214108251592874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / (A016116 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A016116 (n + 1) : ℚ)

end

end A203150.P13749214108251592874

namespace A203150

/-- `∑[A016116(n)/A016116(n+1)]*A016116(n+1)` -/
def P13749214108251592874.Spec : Prop :=
  ∀ n, P13749214108251592874.a n = (A203150 (n + 1) : ℚ)

end A203150

/-! ## A203150.P8477036202063041129

`∪[A053220(n+1), A167667(n)]`
-/

namespace A203150.P8477036202063041129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A203150.P8477036202063041129

namespace A203150

/-- `∪[A053220(n+1), A167667(n)]` -/
def P8477036202063041129.Spec : Prop :=
  ∀ n, (P8477036202063041129.a n : ℤ) = A203150 (n + 1)

end A203150

/-! ## A203150.P9237421638503632592

`ogf((1+3x+x^2)/(1-4x^2+4x^4))`
-/

namespace A203150.P9237421638503632592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, 0, -4, 0, 4] n

end

end A203150.P9237421638503632592

namespace A203150

/-- `ogf((1+3x+x^2)/(1-4x^2+4x^4))` -/
def P9237421638503632592.Spec : Prop :=
  ∀ n, P9237421638503632592.a n = A203150 (n + 1)

end A203150

/-! ## A203150.P4329517280280689888

`record[Δ[n*Δ[A029749(n+1)]]]`
-/

namespace A203150.P4329517280280689888
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203150.P4329517280280689888

namespace A203150

/-- `record[Δ[n*Δ[A029749(n+1)]]]` -/
def P4329517280280689888.Spec : Prop :=
  ∀ n, P4329517280280689888.a n = A203150 (n + 1)

end A203150

/-! ## A203150.P4776376105998218177

`A179608(n)/A016116(n)`
-/

namespace A203150.P4776376105998218177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179608 n : ℚ) / (A016116 n : ℚ)

end

end A203150.P4776376105998218177

namespace A203150

/-- `A179608(n)/A016116(n)` -/
def P4776376105998218177.Spec : Prop :=
  ∀ n, P4776376105998218177.a n = (A203150 (n + 1) : ℚ)

end A203150

/-! ## A203150.P3520602451806369289

`A236538(A117142(n+1))`
-/

namespace A203150.P3520602451806369289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236538 (A117142 (n + 1)).toNat

end

end A203150.P3520602451806369289

namespace A203150

/-- `A236538(A117142(n+1))` -/
def P3520602451806369289.Spec : Prop :=
  ∀ n, P3520602451806369289.a n = A203150 (n + 1)

end A203150

/-! ## A203150.P16543612780606362628

`A007494(n+1)/A000079(n+1)*A094015(n)`
-/

namespace A203150.P16543612780606362628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ) * (A094015 n : ℚ)

end

end A203150.P16543612780606362628

namespace A203150

/-- `A007494(n+1)/A000079(n+1)*A094015(n)` -/
def P16543612780606362628.Spec : Prop :=
  ∀ n, P16543612780606362628.a n = (A203150 (n + 1) : ℚ)

end A203150

/-! ## A203150.P17893469641015305662

`A152920(A074148(n+1))`
-/

namespace A203150.P17893469641015305662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 (A074148 (n + 1)).toNat

end

end A203150.P17893469641015305662

namespace A203150

/-- `A152920(A074148(n+1))` -/
def P17893469641015305662.Spec : Prop :=
  ∀ n, P17893469641015305662.a n = A203150 (n + 1)

end A203150

/-! ## A203150.P12421483571905043596

`A053219(A000982(n+1))`
-/

namespace A203150.P12421483571905043596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (A000982 (n + 1)).toNat

end

end A203150.P12421483571905043596

namespace A203150

/-- `A053219(A000982(n+1))` -/
def P12421483571905043596.Spec : Prop :=
  ∀ n, P12421483571905043596.a n = A203150 (n + 1)

end A203150

/-! ## A203150.P15898339329132508547

`A053218(A080827(n+1))`
-/

namespace A203150.P15898339329132508547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A080827 (n + 1)).toNat

end

end A203150.P15898339329132508547

namespace A203150

/-- `A053218(A080827(n+1))` -/
def P15898339329132508547.Spec : Prop :=
  ∀ n, P15898339329132508547.a n = A203150 (n + 1)

end A203150

/-! ## A203150.P9299505415020822126

`A053218(A099392(n+2))`
-/

namespace A203150.P9299505415020822126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A099392 (n + 2)).toNat

end

end A203150.P9299505415020822126

namespace A203150

/-- `A053218(A099392(n+2))` -/
def P9299505415020822126.Spec : Prop :=
  ∀ n, P9299505415020822126.a n = A203150 (n + 1)

end A203150

/-! ## A203150.P11759866540376756755

`A062111(A080476(n+2))`
-/

namespace A203150.P11759866540376756755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 (A080476 (n + 2)).toNat

end

end A203150.P11759866540376756755

namespace A203150

/-- `A062111(A080476(n+2))` -/
def P11759866540376756755.Spec : Prop :=
  ∀ n, P11759866540376756755.a n = A203150 (n + 1)

end A203150

/-!
# A203151: (n-1)-st elementary symmetric function of {1,1,2,2,3,3,4,4,5,5,...,Floor[(n+1)/2]}.

The programs for A203151, there is no canonical definition to state claims against.
-/

/-! ## A203151.P22861354733460231

`record[A246117(∑[n]+3)]`
-/

namespace A203151.P22861354733460231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246117 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203151.P22861354733460231

/-! ## A203151.P14686810528863311913

`A246117(∑[n+2]+4)`
-/

namespace A203151.P14686810528863311913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246117 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203151.P14686810528863311913

/-! ## A203151.P8622218227931122958

`and(-1, A246117(A167614(n+1)))`
-/

namespace A203151.P8622218227931122958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A246117 (A167614 (n + 1)).toNat)

end

end A203151.P8622218227931122958

/-! ## A203151.P3737838146498266762

`record[A246117(n+3)/A089231(n+1)]`
-/

namespace A203151.P3737838146498266762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246117 (n + 3) : ℚ) / (A089231 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203151.P3737838146498266762

/-! ## A203151.P5431832951782002008

`record[gcd(A246117(n+1), A246117(n+3))]`
-/

namespace A203151.P5431832951782002008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246117 (n + 1)) (A246117 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203151.P5431832951782002008

/-!
# A203152: (n-1)-st elementary symmetric function of {1, 2, 2, 3, 3, 4, 4, 5, 5, ..., floor(1+n/2)}.

The programs for A203152, there is no canonical definition to state claims against.
-/

/-! ## A203152.P7485559999960506277

`A203151(n+1)+ceil(n/2)*a(n-1)` with `a(0)=1`
-/

namespace A203152.P7485559999960506277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203151 (n + 1) + ⌈(n : ℚ) / 2⌉ * a (n - 1)

end

end A203152.P7485559999960506277

/-! ## A203152.P6104645240435642352

`A203151(n+2)-A010551(n+2)`
-/

namespace A203152.P6104645240435642352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203151 (n + 2) - A010551 (n + 2)

end

end A203152.P6104645240435642352

/-! ## A203152.P17951946538484219526

`A246117(∑[n+2]+4)+ceil(n/2)*a(n-1)` with `a(0)=1`
-/

namespace A203152.P17951946538484219526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A246117 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + ⌈(n : ℚ) / 2⌉ * a (n - 1)

end

end A203152.P17951946538484219526

/-!
# A203153: (n-1)-st elementary symmetric function of {2, 2, 3, 3, 4, 4, 5, 5, ..., floor((n+3)/2)}.

The programs for A203153, there is no canonical definition to state claims against.
-/

/-! ## A203153.P2391571527131570949

`A203152(n+2)-A010551(n+3)`
-/

namespace A203153.P2391571527131570949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203152 (n + 2) - A010551 (n + 3)

end

end A203153.P2391571527131570949

/-! ## A203153.P9094429651047879263

`A007614(A373302(n+1))`
-/

namespace A203153.P9094429651047879263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (A373302 (n + 1)).toNat

end

end A203153.P9094429651047879263

/-!
# A203154: (n-1)-st elementary symmetric function of {2, 3, 3, 4, 4, 5, 5,...,Floor[(n+4)/2]}.

The programs for A203154, there is no canonical definition to state claims against.
-/

/-! ## A203154.P2408657371464630401

`A007095(A247556(n)+A241023(n))`
-/

namespace A203154.P2408657371464630401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A247556 n + A241023 n).toNat

end

end A203154.P2408657371464630401

/-!
# A203155: (n-1)-st elementary symmetric function of {3, 3, 4, 4, 5, 5,..., Floor[(n+5)/2]}.

The programs for A203155, there is no canonical definition to state claims against.
-/

/-! ## A203155.P10050272896200563491

`A138133(A000431(n))+A081893(n)`
-/

namespace A203155.P10050272896200563491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138133 (A000431 n).toNat + A081893 n

end

end A203155.P10050272896200563491

/-!
# A203156: (n-1)-st elementary symmetric function of {4,9,16,25,..., (n+1)^2}.

The programs for A203156, there is no canonical definition to state claims against.
-/

/-! ## A203156.P3143786281838850288

`A062870(2*(n+1))+a(n-1)*(n+2)²` with `a(0)=1`
-/

namespace A203156.P3143786281838850288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062870 (2 * (n + 1)) + a (n - 1) * ((n + 2) ^ 2 : ℤ)

end

end A203156.P3143786281838850288

/-! ## A203156.P88177426382899857

`record[abs(A001044(n)-A001819(n))]`
-/

namespace A203156.P88177426382899857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001044 n - A001819 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203156.P88177426382899857

/-! ## A203156.P11124865340546107647

`A001819(n+2)-A001044(n+2)`
-/

namespace A203156.P11124865340546107647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001819 (n + 2) - A001044 (n + 2)

end

end A203156.P11124865340546107647

/-!
# A203157: (n-1)-st elementary symmetric function of the first n triangular numbers.

The programs for A203157, there is no canonical definition to state claims against.
-/

/-! ## A203157.P7286190750297612206

`2*∏[∑[n+1]]/ratio[n+1]`
-/

namespace A203157.P7286190750297612206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((f3 (n + 1) : ℚ) / (f3 n : ℚ)))

end

end A203157.P7286190750297612206

/-! ## A203157.P17789410889465612442

`a(n-1)*Δ[∑[n]²]/(2*n)` with `a(0)=1`
-/

namespace A203157.P17789410889465612442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (2 * n : ℚ)

end

end A203157.P17789410889465612442

/-! ## A203157.P7271064445486981284

`(n+1)^3*a(n-1)/(2*n)` with `a(0)=1`
-/

namespace A203157.P7271064445486981284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 3 : ℚ) * a (n - 1) / (2 * n : ℚ)

end

end A203157.P7271064445486981284

/-! ## A203157.P4504750358518841275

`(n+1)*(n+1)²*a(n-1)/(2*n)` with `a(0)=1`
-/

namespace A203157.P4504750358518841275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * (((n + 1) ^ 2 : ℚ) * a (n - 1)) / (2 * n : ℚ)

end

end A203157.P4504750358518841275

/-! ## A203157.P1661339718522409367

`(n+1)*a(n-1)*∑[2*n+1]/(2*n)` with `a(0)=1`
-/

namespace A203157.P1661339718522409367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) / (2 * n : ℚ)

end

end A203157.P1661339718522409367

/-!
# A203158: v(n+1)/v(n), where v=A203012.

The programs for A203158, there is no canonical definition to state claims against.
-/

/-! ## A203158.P11939987243934094829

`A203750(n+2)/(n+2)`
-/

namespace A203158.P11939987243934094829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203750 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A203158.P11939987243934094829

/-! ## A203158.P2096440634006275575

`A203751(n+2)/(n+2)²`
-/

namespace A203158.P2096440634006275575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203751 (n + 2) : ℚ) / ((n + 2) ^ 2 : ℚ)

end

end A203158.P2096440634006275575

/-! ## A203158.P2053220805147664789

`ratio[A203012(n+1)]`
-/

namespace A203158.P2053220805147664789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203012 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203158.P2053220805147664789

/-! ## A203158.P12696790353522609406

`A203012(n+2)/A203012(n+1)`
-/

namespace A203158.P12696790353522609406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203012 (n + 2) : ℚ) / (A203012 (n + 1) : ℚ)

end

end A203158.P12696790353522609406

/-!
# A203159: (n-1)-st elementary symmetric function of {2,4,6,8,...,2n}.

The programs for A203159, there is no canonical definition to state claims against.
-/

/-! ## A203159.P3525748007147915668

`2^n*A000254(n+1)`
-/

namespace A203159.P3525748007147915668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000254 (n + 1)

end

end A203159.P3525748007147915668

/-! ## A203159.P3155572113488268320

`A000254(n+1)*A038208(∑[n])`
-/

namespace A203159.P3155572113488268320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) * A038208 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203159.P3155572113488268320

/-! ## A203159.P16890959395412135201

`A000254(n+1)*A011782(n+1)`
-/

namespace A203159.P16890959395412135201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) * A011782 (n + 1)

end

end A203159.P16890959395412135201

/-! ## A203159.P16872607921434696581

`A000254(n+1)/A000142(n)*A000165(n)`
-/

namespace A203159.P16872607921434696581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (n + 1) : ℚ) / (A000142 n : ℚ) * (A000165 n : ℚ)

end

end A203159.P16872607921434696581

/-! ## A203159.P4985276965062178429

`A000254(n+1)+A000225(n)*A000254(n+1)`
-/

namespace A203159.P4985276965062178429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) + A000225 n * A000254 (n + 1)

end

end A203159.P4985276965062178429

/-! ## A203159.P2664473443665504335

`(A000774(n+1)-A000142(n+1))*A000079(n)`
-/

namespace A203159.P2664473443665504335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000774 (n + 1) - A000142 (n + 1)) * A000079 n

end

end A203159.P2664473443665504335

/-! ## A203159.P10101892200546068241

`A249130(A130883(n+1))`
-/

namespace A203159.P10101892200546068241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249130 (A130883 (n + 1)).toNat

end

end A203159.P10101892200546068241

/-!
# A203160: (n-1)-st elementary symmetric function of the first n terms of (2,3,1,2,3,1,2,3,1,...)=A010882.

The programs for A203160, the canonical program `A203160.P2055713438815263633` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203160 has offset 1).

The definition of A203160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203160.P2055713438815263633

`ogf((1+5x+11x^2+16x^3+36x^4)/(1-12x^3+36x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203160

/-- `ogf((1+5x+11x^2+16x^3+36x^4)/(1-12x^3+36x^6))` -/
def P2055713438815263633.Spec : Prop :=
  ∀ n, P2055713438815263633.a n = A203160 (n + 1)

theorem P2055713438815263633.correct : P2055713438815263633.Spec := by
  intro n
  simp only [A203160, Nat.add_sub_cancel]

end A203160

/-! ## A203160.P14825863557280747946

`A203162(n+2)-∏[A010882(n+1)]`
-/

namespace A203160.P14825863557280747946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203162 (n + 2) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203160.P14825863557280747946

namespace A203160

/-- `A203162(n+2)-∏[A010882(n+1)]` -/
def P14825863557280747946.Spec : Prop :=
  ∀ n, P14825863557280747946.a n = A203160 (n + 1)

end A203160

/-!
# A203161: (n-1)-st elementary symmetric function of the first n terms of (3,1,2,3,1,2,3,1,2,...).

The programs for A203161, the canonical program `A203161.P16265330644768971400` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203161 has offset 1).

The definition of A203161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203161.P16265330644768971400

`ogf((1+4x+11x^2+27x^3+9x^4)/(1-12x^3+36x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203161

/-- `ogf((1+4x+11x^2+27x^3+9x^4)/(1-12x^3+36x^6))` -/
def P16265330644768971400.Spec : Prop :=
  ∀ n, P16265330644768971400.a n = A203161 (n + 1)

theorem P16265330644768971400.correct : P16265330644768971400.Spec := by
  intro n
  simp only [A203161, Nat.add_sub_cancel]

end A203161

/-! ## A203161.P11325792186532178584

`A089969(3*n+2)-A143898(A089935(2*(n+2)))`
-/

namespace A203161.P11325792186532178584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089969 (3 * n + 2) - A143898 (A089935 (2 * (n + 2))).toNat

end

end A203161.P11325792186532178584

namespace A203161

/-- `A089969(3*n+2)-A143898(A089935(2*(n+2)))` -/
def P11325792186532178584.Spec : Prop :=
  ∀ n, P11325792186532178584.a n = A203161 (n + 1)

end A203161

/-!
# A203162: (n-1)-st elementary symmetric function of the first n terms of (1,2,3,1,2,3,1,2,3,...).

The programs for A203162, the canonical program `A203162.P1277598514068247850` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203162 has offset 1).

The definition of A203162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203162.P1277598514068247850

`12*a(n-3)-36*a(n-6)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=17, a(4)=40, a(5)=132`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203162

/-- `12*a(n-3)-36*a(n-6)` -/
def P1277598514068247850.Spec : Prop :=
  ∀ n, P1277598514068247850.a n = A203162 (n + 1)

theorem P1277598514068247850.correct : P1277598514068247850.Spec := by
  intro n
  simp only [A203162, Nat.add_sub_cancel]

end A203162

/-! ## A203162.P4877743924237855207

`ogf((1+3x+11x^2+5x^3+4x^4)/(1-12x^3+36x^6))`
-/

namespace A203162.P4877743924237855207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 11, 5, 4] [1, 0, 0, -12, 0, 0, 36] n

end

end A203162.P4877743924237855207

namespace A203162

/-- `ogf((1+3x+11x^2+5x^3+4x^4)/(1-12x^3+36x^6))` -/
def P4877743924237855207.Spec : Prop :=
  ∀ n, P4877743924237855207.a n = A203162 (n + 1)

end A203162

/-!
# A203163: (n-1)-st elementary symmetric function of the first n terms of (1,2,3,4,1,2,3,4,1,2,3,4,...) = A010883.

The programs for A203163, the canonical program `A203163.P15645363744035719955` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203163 has offset 1).

The definition of A203163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203163.P15645363744035719955

`ogf((1+3x+11x^2+50x^3+26x^4+28x^5+36x^6)/(1-48x^4+576x^8))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203163

/-- `ogf((1+3x+11x^2+50x^3+26x^4+28x^5+36x^6)/(1-48x^4+576x^8))` -/
def P15645363744035719955.Spec : Prop :=
  ∀ n, P15645363744035719955.a n = A203163 (n + 1)

theorem P15645363744035719955.correct : P15645363744035719955.Spec := by
  intro n
  simp only [A203163, Nat.add_sub_cancel]

end A203163

/-!
# A203164: (n-1)-st elementary symmetric function of the first n terms of the periodic sequence (4,1,2,3,4,1,2,3,...).

The programs for A203164, there is no canonical definition to state claims against.
-/

/-! ## A203164.P18017411842065094638

`∑[A098983(∑[A001579(n)])]`
-/

namespace A203164.P18017411842065094638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203164.P18017411842065094638

/-!
# A203165: (n-1)-st elementary symmetric function of the first n terms of the periodic sequence (3,4,1,2,3,4,1,2,...).

The programs for A203165, there is no canonical definition to state claims against.
-/

/-! ## A203165.P14146937646695571512

`A066115(A318010(n+1))`
-/

namespace A203165.P14146937646695571512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066115 (A318010 (n + 1)).toNat

end

end A203165.P14146937646695571512

/-!
# A203166: (n-1)-st elementary symmetric function of the first n terms of (1,2,3,4,5,1,2,3,4,5,...)=A010884.

The programs for A203166, there is no canonical definition to state claims against.
-/

/-! ## A203166.P13955594386947934397

`A126682(∑[(n+1)²])`
-/

namespace A203166.P13955594386947934397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126682 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203166.P13955594386947934397

/-!
# A203167: (n-1)-st elementary symmetric function of the first n terms of (2,2,1,2,2,1,2,2,1,...)=(A130196 for n>0).

The programs for A203167, the canonical program `A203167.P17485948460614624916` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203167 has offset 1).

The definition of A203167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203167.P17485948460614624916

`record[abs((n+1)*A138380(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203167

/-- `record[abs((n+1)*A138380(n))]` -/
def P17485948460614624916.Spec : Prop :=
  ∀ n, P17485948460614624916.a n = A203167 (n + 1)

theorem P17485948460614624916.correct : P17485948460614624916.Spec := by
  intro n
  simp only [A203167, Nat.add_sub_cancel]

end A203167

/-! ## A203167.P14382706291912734289

`record[(n+1)*A016116(A080412(n))]`
-/

namespace A203167.P14382706291912734289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016116 (A080412 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203167.P14382706291912734289

namespace A203167

/-- `record[(n+1)*A016116(A080412(n))]` -/
def P14382706291912734289.Spec : Prop :=
  ∀ n, P14382706291912734289.a n = A203167 (n + 1)

end A203167

/-! ## A203167.P5389966842988313595

`(A004396(2*n)+1)*A173862(2*(n+1))`
-/

namespace A203167.P5389966842988313595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004396 (2 * n) + 1) * A173862 (2 * (n + 1))

end

end A203167.P5389966842988313595

namespace A203167

/-- `(A004396(2*n)+1)*A173862(2*(n+1))` -/
def P5389966842988313595.Spec : Prop :=
  ∀ n, P5389966842988313595.a n = A203167 (n + 1)

end A203167

/-! ## A203167.P15334169982008092140

`A000079(A004396(n))*A004773(n+1)`
-/

namespace A203167.P15334169982008092140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004396 n).toNat * A004773 (n + 1)

end

end A203167.P15334169982008092140

namespace A203167

/-- `A000079(A004396(n))*A004773(n+1)` -/
def P15334169982008092140.Spec : Prop :=
  ∀ n, P15334169982008092140.a n = A203167 (n + 1)

end A203167

/-! ## A203167.P11739756491896522085

`A000079(A004396(n))*A004523(2*(n+1))`
-/

namespace A203167.P11739756491896522085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004396 n).toNat * A004523 (2 * (n + 1))

end

end A203167.P11739756491896522085

namespace A203167

/-- `A000079(A004396(n))*A004523(2*(n+1))` -/
def P11739756491896522085.Spec : Prop :=
  ∀ n, P11739756491896522085.a n = A203167 (n + 1)

end A203167

/-! ## A203167.P17805224159157529582

`A000079(A004396(n))*A008620(4*n+1)`
-/

namespace A203167.P17805224159157529582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004396 n).toNat * A008620 (4 * n + 1)

end

end A203167.P17805224159157529582

namespace A203167

/-- `A000079(A004396(n))*A008620(4*n+1)` -/
def P17805224159157529582.Spec : Prop :=
  ∀ n, P17805224159157529582.a n = A203167 (n + 1)

end A203167

/-! ## A203167.P3948500117175252427

`8*a(n-3)-16*a(n-6)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=20, a(4)=48, a(5)=64`
-/

namespace A203167.P3948500117175252427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 8, 20, 48, 64] fun n a =>
  8 * a (n - 3) - 16 * a (n - 6)

end

end A203167.P3948500117175252427

namespace A203167

/-- `8*a(n-3)-16*a(n-6)` -/
def P3948500117175252427.Spec : Prop :=
  ∀ n, P3948500117175252427.a n = A203167 (n + 1)

end A203167

/-! ## A203167.P7496226915269398022

`ogf((1+4x+8x^2+12x^3+16x^4)/(1-8x^3+16x^6))`
-/

namespace A203167.P7496226915269398022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 8, 12, 16] [1, 0, 0, -8, 0, 0, 16] n

end

end A203167.P7496226915269398022

namespace A203167

/-- `ogf((1+4x+8x^2+12x^3+16x^4)/(1-8x^3+16x^6))` -/
def P7496226915269398022.Spec : Prop :=
  ∀ n, P7496226915269398022.a n = A203167 (n + 1)

end A203167

/-! ## A203167.P3839022071079282810

`A291778(2*n+1)/A291778(n+1)*A004773(n+1)`
-/

namespace A203167.P3839022071079282810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291778 (2 * n + 1) : ℚ) / (A291778 (n + 1) : ℚ) * (A004773 (n + 1) : ℚ)

end

end A203167.P3839022071079282810

namespace A203167

/-- `A291778(2*n+1)/A291778(n+1)*A004773(n+1)` -/
def P3839022071079282810.Spec : Prop :=
  ∀ n, P3839022071079282810.a n = (A203167 (n + 1) : ℚ)

end A203167

/-! ## A203167.P17236055319956595577

`A152920(A027916(n+2))`
-/

namespace A203167.P17236055319956595577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 (A027916 (n + 2)).toNat

end

end A203167.P17236055319956595577

namespace A203167

/-- `A152920(A027916(n+2))` -/
def P17236055319956595577.Spec : Prop :=
  ∀ n, P17236055319956595577.a n = A203167 (n + 1)

end A203167

/-! ## A203167.P8552321767892651344

`A152920(A111097(n+2))`
-/

namespace A203167.P8552321767892651344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 (A111097 (n + 2)).toNat

end

end A203167.P8552321767892651344

namespace A203167

/-- `A152920(A111097(n+2))` -/
def P8552321767892651344.Spec : Prop :=
  ∀ n, P8552321767892651344.a n = A203167 (n + 1)

end A203167

/-! ## A203167.P6286687820859378471

`A327916(A171452(n+1))`
-/

namespace A203167.P6286687820859378471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327916 (A171452 (n + 1)).toNat

end

end A203167.P6286687820859378471

namespace A203167

/-- `A327916(A171452(n+1))` -/
def P6286687820859378471.Spec : Prop :=
  ∀ n, P6286687820859378471.a n = A203167 (n + 1)

end A203167

/-!
# A203168: Positions of 1 in the continued fraction expansion of Pi.

The programs for A203168, there is no canonical definition to state claims against.
-/

/-! ## A203168.P8965956526984858342

`eq[1, A001203(n)]+1`
-/

namespace A203168.P8965956526984858342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A203168.P8965956526984858342

/-! ## A203168.P15639635657389186558

`eq[1, A001203(abs(1-n))]`
-/

namespace A203168.P15639635657389186558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A203168.P15639635657389186558

/-! ## A203168.P5539373611957878861

`A008619(2*eq[1, A001203(n)])`
-/

namespace A203168.P5539373611957878861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203168.P5539373611957878861

/-! ## A203168.P106338268792667969

`A008619(A005843(eq[1, A001203(n)]))`
-/

namespace A203168.P106338268792667969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A203168.P106338268792667969

/-! ## A203168.P13047659268051701495

`A008611(A008585(eq[1, A001203(n)]))`
-/

namespace A203168.P13047659268051701495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A203168.P13047659268051701495

/-! ## A203168.P10238085982584667614

`A065033(A005408(eq[1, A001203(n)]))`
-/

namespace A203168.P10238085982584667614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A203168.P10238085982584667614

/-! ## A203168.P538473788301055860

`A000720(p?[A000040(n+1)*A001203(n)])`
-/

namespace A203168.P538473788301055860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A203168.P538473788301055860

/-!
# A203169: Sum of the fourth powers of the first n even-indexed Fibonacci numbers.

The programs for A203169, the canonical program `A203169.P8907157528623876506` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203169 has offset 0).

The definition of A203169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203169.P8907157528623876506

`1/75*(A000045(8*n+4)-12*A000045(4*n+2)+9*(2*n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203169

/-- `1/75*(A000045(8*n+4)-12*A000045(4*n+2)+9*(2*n+1))` -/
def P8907157528623876506.Spec : Prop :=
  ∀ n, P8907157528623876506.a n = (A203169 n : ℚ)

end A203169

/-! ## A203169.P14131847396752310196

`∑[A049684(n)²]`
-/

namespace A203169.P14131847396752310196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049684 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203169.P14131847396752310196

namespace A203169

/-- `∑[A049684(n)²]` -/
def P14131847396752310196.Spec : Prop :=
  ∀ n, P14131847396752310196.a n = A203169 n

end A203169

/-! ## A203169.P12419382487128781379

`∑[A056571(2*n)]`
-/

namespace A203169.P12419382487128781379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056571 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203169.P12419382487128781379

namespace A203169

/-- `∑[A056571(2*n)]` -/
def P12419382487128781379.Spec : Prop :=
  ∀ n, P12419382487128781379.a n = A203169 n

end A203169

/-! ## A203169.P5187327416758637222

`∑[A001906(n)^4]`
-/

namespace A203169.P5187327416758637222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203169.P5187327416758637222

namespace A203169

/-- `∑[A001906(n)^4]` -/
def P5187327416758637222.Spec : Prop :=
  ∀ n, P5187327416758637222.a n = A203169 n

end A203169

/-! ## A203169.P14133833133019588064

`∑[A007598(2*n)²]`
-/

namespace A203169.P14133833133019588064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203169.P14133833133019588064

namespace A203169

/-- `∑[A007598(2*n)²]` -/
def P14133833133019588064.Spec : Prop :=
  ∀ n, P14133833133019588064.a n = A203169 n

end A203169

/-! ## A203169.P4379729129642282950

`∑[Δ[A001519(n)]²²]`
-/

namespace A203169.P4379729129642282950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203169.P4379729129642282950

namespace A203169

/-- `∑[Δ[A001519(n)]²²]` -/
def P4379729129642282950.Spec : Prop :=
  ∀ n, P4379729129642282950.a n = A203169 n

end A203169

/-! ## A203169.P12925770866577152409

`∑[Δ[A032908(n)]²²]`
-/

namespace A203169.P12925770866577152409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203169.P12925770866577152409

namespace A203169

/-- `∑[Δ[A032908(n)]²²]` -/
def P12925770866577152409.Spec : Prop :=
  ∀ n, P12925770866577152409.a n = A203169 n

end A203169

/-! ## A203169.P8021135909391843190

`∑[A000045(2*n)^4]`
-/

namespace A203169.P8021135909391843190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203169.P8021135909391843190

namespace A203169

/-- `∑[A000045(2*n)^4]` -/
def P8021135909391843190.Spec : Prop :=
  ∀ n, P8021135909391843190.a n = A203169 n

end A203169

/-! ## A203169.P3316230931970996030

`∑[A005013(2*n)²²]`
-/

namespace A203169.P3316230931970996030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005013 (2 * n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203169.P3316230931970996030

namespace A203169

/-- `∑[A005013(2*n)²²]` -/
def P3316230931970996030.Spec : Prop :=
  ∀ n, P3316230931970996030.a n = A203169 n

end A203169

/-! ## A203169.P5995789040849282799

`∑[A094966(2*n)²²]`
-/

namespace A203169.P5995789040849282799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094966 (2 * n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203169.P5995789040849282799

namespace A203169

/-- `∑[A094966(2*n)²²]` -/
def P5995789040849282799.Spec : Prop :=
  ∀ n, P5995789040849282799.a n = A203169 n

end A203169

/-!
# A203170: Sum of the fourth powers of the first n odd-indexed Fibonacci numbers.

The programs for A203170, the canonical program `A203170.P10477282998790796732` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203170 has offset 0).

The definition of A203170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203170.P10477282998790796732

`1/75*(A000045(8*n)+12*A000045(4*n)+18*n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203170

/-- `1/75*(A000045(8*n)+12*A000045(4*n)+18*n)` -/
def P10477282998790796732.Spec : Prop :=
  ∀ n, P10477282998790796732.a n = (A203170 n : ℚ)

end A203170

/-! ## A203170.P6723585984179477865

`∑[A001519(n)²²]-1`
-/

namespace A203170.P6723585984179477865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001519 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A203170.P6723585984179477865

namespace A203170

/-- `∑[A001519(n)²²]-1` -/
def P6723585984179477865.Spec : Prop :=
  ∀ n, P6723585984179477865.a n = A203170 n

end A203170

/-! ## A203170.P9445888364409512536

`∑[(1-A186025(n))²²]`
-/

namespace A203170.P9445888364409512536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A186025 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203170.P9445888364409512536

namespace A203170

/-- `∑[(1-A186025(n))²²]` -/
def P9445888364409512536.Spec : Prop :=
  ∀ n, P9445888364409512536.a n = A203170 n

end A203170

/-! ## A203170.P11964314054070224018

`∑[(A052995(n)/2)²²]`
-/

namespace A203170.P11964314054070224018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A052995 n : ℚ) / 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203170.P11964314054070224018

namespace A203170

/-- `∑[(A052995(n)/2)²²]` -/
def P11964314054070224018.Spec : Prop :=
  ∀ n, P11964314054070224018.a n = (A203170 n : ℚ)

end A203170

/-! ## A203170.P3753320225746949029

`∑[A000045(comp[2*(n+1)])²²]`
-/

namespace A203170.P3753320225746949029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203170.P3753320225746949029

namespace A203170

/-- `∑[A000045(comp[2*(n+1)])²²]` -/
def P3753320225746949029.Spec : Prop :=
  ∀ n, P3753320225746949029.a n = A203170 n

end A203170

/-! ## A203170.P9611346497451133065

`a(n-1)+A000045(2*n-1)²²` with `a(0)=0`
-/

namespace A203170.P9611346497451133065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A000045 (2 * n - 1) ^ 2) ^ 2

end

end A203170.P9611346497451133065

namespace A203170

/-- `a(n-1)+A000045(2*n-1)²²` -/
def P9611346497451133065.Spec : Prop :=
  ∀ n, P9611346497451133065.a n = A203170 n

end A203170

/-! ## A203170.P17427554067533886747

`∑[A007598(A004273(n))²]`
-/

namespace A203170.P17427554067533886747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (A004273 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203170.P17427554067533886747

namespace A203170

/-- `∑[A007598(A004273(n))²]` -/
def P17427554067533886747.Spec : Prop :=
  ∀ n, P17427554067533886747.a n = A203170 n

end A203170

/-! ## A203170.P11055677091757543181

`∑[A212804(A004277(n))²²]`
-/

namespace A203170.P11055677091757543181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 (A004277 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203170.P11055677091757543181

namespace A203170

/-- `∑[A212804(A004277(n))²²]` -/
def P11055677091757543181.Spec : Prop :=
  ∀ n, P11055677091757543181.a n = A203170 n

end A203170

/-! ## A203170.P18389738715227804364

`∑[∑[A001906(A004275(n))]²]`
-/

namespace A203170.P18389738715227804364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A004275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203170.P18389738715227804364

namespace A203170

/-- `∑[∑[A001906(A004275(n))]²]` -/
def P18389738715227804364.Spec : Prop :=
  ∀ n, P18389738715227804364.a n = A203170 n

end A203170

/-!
# A203171: Alternating sum of the fourth powers of the first n even-indexed Fibonacci numbers.

The programs for A203171, the canonical program `A203171.P10376019041267160348` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203171 has offset 0).

The definition of A203171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203171.P15793325949934132421

`ogf((-x+25x^2-x^3)/(1+55x+385x^2+385x^3+55x^4+x^5))`
-/

namespace A203171.P15793325949934132421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 25, -1] [1, 55, 385, 385, 55, 1] n

end

end A203171.P15793325949934132421

namespace A203171

/-- `ogf((-x+25x^2-x^3)/(1+55x+385x^2+385x^3+55x^4+x^5))` -/
def P15793325949934132421.Spec : Prop :=
  ∀ n, P15793325949934132421.a n = A203171 n

end A203171

/-! ## A203171.P10376019041267160348

`(-1)^n*1/21*A000045(2*n)*A000045(2*n+2)*(3*A000045(2*n+1)²-5)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203171

/-- `(-1)^n*1/21*A000045(2*n)*A000045(2*n+2)*(3*A000045(2*n+1)²-5)` -/
def P10376019041267160348.Spec : Prop :=
  ∀ n, P10376019041267160348.a n = (A203171 n : ℚ)

end A203171

/-! ## A203171.P16725862236801947915

`(-1)^n*1/525*(3*A000032(8*n+4)-28*A000032(4*n+2)+63)`
-/

namespace A203171.P16725862236801947915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) * ((1 : ℚ) / 525) * (3 * A000032 (8 * n + 4) - 28 * A000032 (4 * n + 2) + 63 : ℚ)

end

end A203171.P16725862236801947915

namespace A203171

/-- `(-1)^n*1/525*(3*A000032(8*n+4)-28*A000032(4*n+2)+63)` -/
def P16725862236801947915.Spec : Prop :=
  ∀ n, P16725862236801947915.a n = (A203171 n : ℚ)

end A203171

/-! ## A203171.P3373059100104047591

`∑[A000045(2*n)²²*(-1)^n]`
-/

namespace A203171.P3373059100104047591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) ^ 2) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203171.P3373059100104047591

namespace A203171

/-- `∑[A000045(2*n)²²*(-1)^n]` -/
def P3373059100104047591.Spec : Prop :=
  ∀ n, P3373059100104047591.a n = A203171 n

end A203171

/-! ## A203171.P17099652945791706798

`∑[A049684(n)²*A033999(n)]`
-/

namespace A203171.P17099652945791706798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049684 n ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203171.P17099652945791706798

namespace A203171

/-- `∑[A049684(n)²*A033999(n)]` -/
def P17099652945791706798.Spec : Prop :=
  ∀ n, P17099652945791706798.a n = A203171 n

end A203171

/-! ## A203171.P2577998606860758368

`∑[A033999(n)*A056571(2*n)]`
-/

namespace A203171.P2577998606860758368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A056571 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203171.P2577998606860758368

namespace A203171

/-- `∑[A033999(n)*A056571(2*n)]` -/
def P2577998606860758368.Spec : Prop :=
  ∀ n, P2577998606860758368.a n = A203171 n

end A203171

/-! ## A203171.P2075644307522471346

`∑[A007598(2*n)²*A056594(2*n)]`
-/

namespace A203171.P2075644307522471346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * n) ^ 2 * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203171.P2075644307522471346

namespace A203171

/-- `∑[A007598(2*n)²*A056594(2*n)]` -/
def P2075644307522471346.Spec : Prop :=
  ∀ n, P2075644307522471346.a n = A203171 n

end A203171

/-! ## A203171.P4197513002678610105

`∑[A000045(2*n)^4*A062157(n+1)]`
-/

namespace A203171.P4197513002678610105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 4 * A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203171.P4197513002678610105

namespace A203171

/-- `∑[A000045(2*n)^4*A062157(n+1)]` -/
def P4197513002678610105.Spec : Prop :=
  ∀ n, P4197513002678610105.a n = A203171 n

end A203171

/-! ## A203171.P10330425939934109817

`∑[(A004442(n)-n)*A000045(2*n)^4]`
-/

namespace A203171.P10330425939934109817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A000045 (2 * n) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203171.P10330425939934109817

namespace A203171

/-- `∑[(A004442(n)-n)*A000045(2*n)^4]` -/
def P10330425939934109817.Spec : Prop :=
  ∀ n, P10330425939934109817.a n = A203171 n

end A203171

/-!
# A203172: Alternating sum of the fourth powers of the first n odd-indexed Fibonacci numbers.

The programs for A203172, there is no canonical definition to state claims against.
-/

/-! ## A203172.P5286123234372859529

`∑[(1-A186025(n))²²*A033999(n)]`
-/

namespace A203172.P5286123234372859529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A186025 n) ^ 2) ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203172.P5286123234372859529

/-! ## A203172.P828686978992317839

`∑[(A052995(n)/2)²²*A033999(n)]`
-/

namespace A203172.P828686978992317839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A052995 n : ℚ) / 2) ^ 2) ^ 2 * (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203172.P828686978992317839

/-! ## A203172.P18059054175545794465

`∑[(A052995(n)/2)²²*A112347(n²+5)]`
-/

namespace A203172.P18059054175545794465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A052995 n : ℚ) / 2) ^ 2) ^ 2 * (A112347 (n ^ 2 + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203172.P18059054175545794465

/-! ## A203172.P7249805455712503227

`∑[A007598(A004273(n))²*A033999(n)]`
-/

namespace A203172.P7249805455712503227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (A004273 n).toNat ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203172.P7249805455712503227

/-!
# A203174: Number of n X n 0..2 arrays with every 1 immediately preceded by 0 to the left or above, no 0 immediately preceded by a 0, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203174, there is no canonical definition to state claims against.
-/

/-! ## A203174.P5501093412274370431

`A203181(∑[4*n]+1)`
-/

namespace A203174.P5501093412274370431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203174.P5501093412274370431

/-! ## A203174.P1499888957674189868

`A079341(n)*A203181(A001844(n))`
-/

namespace A203174.P1499888957674189868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079341 n * A203181 (A001844 n).toNat

end

end A203174.P1499888957674189868

/-! ## A203174.P7261728016600745330

`A203181(A001844(n))%A332113(n)`
-/

namespace A203174.P7261728016600745330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203181 (A001844 n).toNat) (A332113 n)

end

end A203174.P7261728016600745330

/-! ## A203174.P5884973989652494176

`or(A000007(n), A203181(A001844(n)))`
-/

namespace A203174.P5884973989652494176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203181 (A001844 n).toNat)

end

end A203174.P5884973989652494176

/-! ## A203174.P12651357856806202416

`or(A203181(A001844(n)), A316867(n))`
-/

namespace A203174.P12651357856806202416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A203181 (A001844 n).toNat) (A316867 n)

end

end A203174.P12651357856806202416

/-!
# A203175: Number of nX2 0..2 arrays with every 1 immediately preceded by 0 to the left or above, no 0 immediately preceded by a 0, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203175, the canonical program `A203175.P12426518356669791391` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203175 has offset 1).

The definition of A203175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203175.P7939555074624790896

`ogf((1+x^2)/(1-x-2x^3))`
-/

namespace A203175.P7939555074624790896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -1, 0, -2] n

end

end A203175.P7939555074624790896

namespace A203175

/-- `ogf((1+x^2)/(1-x-2x^3))` -/
def P7939555074624790896.Spec : Prop :=
  ∀ n, P7939555074624790896.a n = A203175 (n + 1)

end A203175

/-! ## A203175.P12426518356669791391

`a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203175

/-- `a(n-1)+2*a(n-3)` -/
def P12426518356669791391.Spec : Prop :=
  ∀ n, (P12426518356669791391.a n : ℤ) = A203175 (n + 1)

theorem P12426518356669791391.correct : P12426518356669791391.Spec := by
  intro n
  simp only [A203175, Nat.add_sub_cancel]

end A203175

/-! ## A203175.P1091724580065955807

`a(n-1)+a(n-3)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A203175.P1091724580065955807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 3) + a (n - 3))

end

end A203175.P1091724580065955807

namespace A203175

/-- `a(n-1)+a(n-3)+a(n-3)` -/
def P1091724580065955807.Spec : Prop :=
  ∀ n, (P1091724580065955807.a n : ℤ) = A203175 (n + 1)

theorem P1091724580065955807.correct : P1091724580065955807.Spec := by
  intro n
  simp only [A203175, Nat.add_sub_cancel, A203175.P1091724580065955807.a, A203175.P12426518356669791391.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A203175

/-! ## A203175.P6627559836153761620

`3*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A203175.P6627559836153761620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A203175.P6627559836153761620

namespace A203175

/-- `3*a(n-3)-(a(n-3)-a(n-1))` -/
def P6627559836153761620.Spec : Prop :=
  ∀ n, P6627559836153761620.a n = A203175 (n + 1)

end A203175

/-! ## A203175.P9057435764013180860

`A077949(n)+Δ[A077949(n)/2]`
-/

namespace A203175.P9057435764013180860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077949 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077949 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A203175.P9057435764013180860

namespace A203175

/-- `A077949(n)+Δ[A077949(n)/2]` -/
def P9057435764013180860.Spec : Prop :=
  ∀ n, P9057435764013180860.a n = (A203175 (n + 1) : ℚ)

end A203175

/-! ## A203175.P6361878664794149380

`A077949(n+1)-A052537(n+1)/2`
-/

namespace A203175.P6361878664794149380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077949 (n + 1) : ℚ) - (A052537 (n + 1) : ℚ) / 2

end

end A203175.P6361878664794149380

namespace A203175

/-- `A077949(n+1)-A052537(n+1)/2` -/
def P6361878664794149380.Spec : Prop :=
  ∀ n, P6361878664794149380.a n = (A203175 (n + 1) : ℚ)

end A203175

/-! ## A203175.P3584020651268883413

`abs(A078044(n+1)/2)`
-/

namespace A203175.P3584020651268883413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A078044 (n + 1) : ℚ) / 2|

end

end A203175.P3584020651268883413

namespace A203175

/-- `abs(A078044(n+1)/2)` -/
def P3584020651268883413.Spec : Prop :=
  ∀ n, P3584020651268883413.a n = (A203175 (n + 1) : ℚ)

end A203175

/-! ## A203175.P16326507630227343432

`(A077949(n)+A003229(n))/2`
-/

namespace A203175.P16326507630227343432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077949 n + A003229 n : ℚ) / 2

end

end A203175.P16326507630227343432

namespace A203175

/-- `(A077949(n)+A003229(n))/2` -/
def P16326507630227343432.Spec : Prop :=
  ∀ n, P16326507630227343432.a n = (A203175 (n + 1) : ℚ)

end A203175

/-! ## A203175.P16092650729023688651

`A003476(n+1)+A052537(n)-∑[A052537(n)]`
-/

namespace A203175.P16092650729023688651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 1) + (A052537 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203175.P16092650729023688651

namespace A203175

/-- `A003476(n+1)+A052537(n)-∑[A052537(n)]` -/
def P16092650729023688651.Spec : Prop :=
  ∀ n, P16092650729023688651.a n = A203175 (n + 1)

end A203175

/-! ## A203175.P2838882630582481868

`Δ[A003476(n+1)]`
-/

namespace A203175.P2838882630582481868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203175.P2838882630582481868

namespace A203175

/-- `Δ[A003476(n+1)]` -/
def P2838882630582481868.Spec : Prop :=
  ∀ n, P2838882630582481868.a n = A203175 (n + 1)

end A203175

/-! ## A203175.P6122104216556877398

`abs(Δ[A003476(2*n-(n-1))])`
-/

namespace A203175.P6122104216556877398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A203175.P6122104216556877398

namespace A203175

/-- `abs(Δ[A003476(2*n-(n-1))])` -/
def P6122104216556877398.Spec : Prop :=
  ∀ n, P6122104216556877398.a n = A203175 (n + 1)

end A203175

/-! ## A203175.P18296152827710868663

`A003476(n+2)-A003476(n+1)`
-/

namespace A203175.P18296152827710868663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 2) - A003476 (n + 1)

end

end A203175.P18296152827710868663

namespace A203175

/-- `A003476(n+2)-A003476(n+1)` -/
def P18296152827710868663.Spec : Prop :=
  ∀ n, P18296152827710868663.a n = A203175 (n + 1)

end A203175

/-! ## A203175.P17684779789002724488

`A003479(n+1)-A164395(n+1)/2`
-/

namespace A203175.P17684779789002724488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003479 (n + 1) : ℚ) - (A164395 (n + 1) : ℚ) / 2

end

end A203175.P17684779789002724488

namespace A203175

/-- `A003479(n+1)-A164395(n+1)/2` -/
def P17684779789002724488.Spec : Prop :=
  ∀ n, P17684779789002724488.a n = (A203175 (n + 1) : ℚ)

end A203175

/-! ## A203175.P16666766609290542091

`Δ[Δ[A164395(n+1)/2]]`
-/

namespace A203175.P16666766609290542091
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164395 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203175.P16666766609290542091

namespace A203175

/-- `Δ[Δ[A164395(n+1)/2]]` -/
def P16666766609290542091.Spec : Prop :=
  ∀ n, P16666766609290542091.a n = (A203175 (n + 1) : ℚ)

end A203175

/-! ## A203175.P2034611470502668779

`A289260(n+3)-A227036(n+2)`
-/

namespace A203175.P2034611470502668779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289260 (n + 3) - A227036 (n + 2)

end

end A203175.P2034611470502668779

namespace A203175

/-- `A289260(n+3)-A227036(n+2)` -/
def P2034611470502668779.Spec : Prop :=
  ∀ n, P2034611470502668779.a n = A203175 (n + 1)

end A203175

/-!
# A203176: Number of n X 3 0..2 arrays with every 1 immediately preceded by 0 to the left or above, no 0 immediately preceded by a 0, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203176, there is no canonical definition to state claims against.
-/

/-! ## A203176.P5363105227269574909

`A203181(∑[n+2]+4)`
-/

namespace A203176.P5363105227269574909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203176.P5363105227269574909

/-! ## A203176.P7513322513528894645

`lcm((-1)^n, A203181(A167614(n+1)))`
-/

namespace A203176.P7513322513528894645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A203181 (A167614 (n + 1)).toNat)

end

end A203176.P7513322513528894645

/-! ## A203176.P18121563074001490732

`A203181(A167614(n+1))+A011742(n)`
-/

namespace A203176.P18121563074001490732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A167614 (n + 1)).toNat + A011742 n

end

end A203176.P18121563074001490732

/-! ## A203176.P14942879925514201513

`A203181(A167614(n+1))%A243514(n+1)`
-/

namespace A203176.P14942879925514201513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203181 (A167614 (n + 1)).toNat) (A243514 (n + 1))

end

end A203176.P14942879925514201513

/-! ## A203176.P10810961819626057404

`A203181(A034856(n+2))%A309003(n+1)`
-/

namespace A203176.P10810961819626057404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203181 (A034856 (n + 2)).toNat) (A309003 (n + 1))

end

end A203176.P10810961819626057404

/-!
# A203177: Number of nX4 0..2 arrays with every 1 immediately preceded by 0 to the left or above, no 0 immediately preceded by a 0, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203177, there is no canonical definition to state claims against.
-/

/-! ## A203177.P1728077611397506171

`A203181(A374004(n+1))`
-/

namespace A203177.P1728077611397506171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A374004 (n + 1)).toNat

end

end A203177.P1728077611397506171

/-! ## A203177.P15526619298252024421

`A203181(A141214(n)+7)`
-/

namespace A203177.P15526619298252024421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A141214 n + 7).toNat

end

end A203177.P15526619298252024421

/-! ## A203177.P16664905422377393967

`A203181(A052905(n)+9)`
-/

namespace A203177.P16664905422377393967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A052905 n + 9).toNat

end

end A203177.P16664905422377393967

/-! ## A203177.P9784302921208194080

`A203181(A055999(n)+10)`
-/

namespace A203177.P9784302921208194080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A055999 n + 10).toNat

end

end A203177.P9784302921208194080

/-! ## A203177.P4016575584144975815

`record[A203181(A000124(n)+3)]`
-/

namespace A203177.P4016575584144975815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203177.P4016575584144975815

/-!
# A203178: Number of n X 5 0..2 arrays with every 1 immediately preceded by 0 to the left or above, no 0 immediately preceded by a 0, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203178, there is no canonical definition to state claims against.
-/

/-! ## A203178.P2864486466786074962

`A203181(A374005(n+1))`
-/

namespace A203178.P2864486466786074962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A374005 (n + 1)).toNat

end

end A203178.P2864486466786074962

/-! ## A203178.P7463456981762183968

`A203181(A167499(n+3))`
-/

namespace A203178.P7463456981762183968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A167499 (n + 3)).toNat

end

end A203178.P7463456981762183968

/-! ## A203178.P10953902390080728820

`A203181(A000217(n+4)+5)`
-/

namespace A203178.P10953902390080728820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A000217 (n + 4) + 5).toNat

end

end A203178.P10953902390080728820

/-! ## A203178.P17107791892087811961

`A203181(A000124(n+5)-(n+1))`
-/

namespace A203178.P17107791892087811961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A203178.P17107791892087811961

/-! ## A203178.P2062079732295379334

`A203181(A046691(n+3))`
-/

namespace A203178.P2062079732295379334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A046691 (n + 3)).toNat

end

end A203178.P2062079732295379334

/-!
# A203179: Number of nX6 0..2 arrays with every 1 immediately preceded by 0 to the left or above, no 0 immediately preceded by a 0, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203179, there is no canonical definition to state claims against.
-/

/-! ## A203179.P6214147772869751051

`A203181(A374007(n+1))`
-/

namespace A203179.P6214147772869751051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A374007 (n + 1)).toNat

end

end A203179.P6214147772869751051

/-! ## A203179.P2097246668337737001

`A203181(A000124(n+5)+5)`
-/

namespace A203179.P2097246668337737001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A000124 (n + 5) + 5).toNat

end

end A203179.P2097246668337737001

/-! ## A203179.P12408362156873682582

`A203181(A000217(n+5)+6)`
-/

namespace A203179.P12408362156873682582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A000217 (n + 5) + 6).toNat

end

end A203179.P12408362156873682582

/-! ## A203179.P2765266734483755434

`A203181(A161680(n+6)+6)`
-/

namespace A203179.P2765266734483755434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A161680 (n + 6) + 6).toNat

end

end A203179.P2765266734483755434

/-! ## A203179.P11953061283473866888

`A203181(A052905(n+3))`
-/

namespace A203179.P11953061283473866888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A052905 (n + 3)).toNat

end

end A203179.P11953061283473866888

/-!
# A203180: Number of nX7 0..2 arrays with every 1 immediately preceded by 0 to the left or above, no 0 immediately preceded by a 0, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203180, there is no canonical definition to state claims against.
-/

/-! ## A203180.P14164910705006427507

`A203181(A374008(n+1))`
-/

namespace A203180.P14164910705006427507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A374008 (n + 1)).toNat

end

end A203180.P14164910705006427507

/-! ## A203180.P3922554935254546653

`A203181(A167499(n+5)+2)`
-/

namespace A203180.P3922554935254546653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A167499 (n + 5) + 2).toNat

end

end A203180.P3922554935254546653

/-! ## A203180.P1929886097466586380

`A203181(A167614(n+5)+4)`
-/

namespace A203180.P1929886097466586380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A167614 (n + 5) + 4).toNat

end

end A203180.P1929886097466586380

/-! ## A203180.P2953075304511949198

`A203181(A000124(n+6)+6)`
-/

namespace A203180.P2953075304511949198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A000124 (n + 6) + 6).toNat

end

end A203180.P2953075304511949198

/-! ## A203180.P11326081798203745566

`A203181(A000217(n+6)+7)`
-/

namespace A203180.P11326081798203745566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203181 (A000217 (n + 6) + 7).toNat

end

end A203180.P11326081798203745566

/-!
# A203181: T(n,k) is the number of n X k 0..2 arrays with every 1 immediately preceded by 0 to the left or above, no 0 immediately preceded by a 0, and every 2 immediately preceded by 0 1 to the left or above.

The programs for A203181, there is no canonical definition to state claims against.
-/

/-! ## A203181.P5718683909096255462

`A058318(A220977(n+1))`
-/

namespace A203181.P5718683909096255462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (A220977 (n + 1)).toNat

end

end A203181.P5718683909096255462

/-! ## A203181.P10635635646066873129

`A257212(A257212(A220977(n+1)²))`
-/

namespace A203181.P10635635646066873129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A257212 (A220977 (n + 1) ^ 2).toNat).toNat

end

end A203181.P10635635646066873129

/-! ## A203181.P16798872011260707166

`A120254(A117401(n))+A110102(n+1)`
-/

namespace A203181.P16798872011260707166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120254 (A117401 n).toNat + A110102 (n + 1)

end

end A203181.P16798872011260707166

/-! ## A203181.P17008974513548918864

`A126302(or(A066657(n), A283494(n+1)))`
-/

namespace A203181.P17008974513548918864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (Int.lor (A066657 n) (A283494 (n + 1))).toNat

end

end A203181.P17008974513548918864

/-! ## A203181.P3955058410541249562

`A101080(A233230(n+1))`
-/

namespace A203181.P3955058410541249562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101080 (A233230 (n + 1)).toNat

end

end A203181.P3955058410541249562

/-!
# A203182: Primes p such that A008472(p-1) = A008472(p+1), where A008472 = sum of distinct primes dividing n.

The programs for A203182, there is no canonical definition to state claims against.
-/

/-! ## A203182.P1729633242039158831

`p?[A076533(n+1)]`
-/

namespace A203182.P1729633242039158831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A203182.P1729633242039158831

/-! ## A203182.P5317187753783297051

`p?[A063968(n+1)+1]`
-/

namespace A203182.P5317187753783297051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063968 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A203182.P5317187753783297051

/-! ## A203182.P1490156856762658602

`filter[A076533(n+1), A010051(#)]`
-/

namespace A203182.P1490156856762658602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A203182.P1490156856762658602

/-! ## A203182.P8269312592024536431

`filter[A076533(n+1), A257531(#)]`
-/

namespace A203182.P8269312592024536431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A203182.P8269312592024536431

/-! ## A203182.P1619898450876914898

`filter[A076533(n+1), A302777(#)]`
-/

namespace A203182.P1619898450876914898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A203182.P1619898450876914898

/-!
# A203183: Number of n X n 0..4 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203183, there is no canonical definition to state claims against.
-/

/-! ## A203183.P18289068823470562814

`A203191((n+1)²+n²)`
-/

namespace A203183.P18289068823470562814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 ((n + 1) ^ 2 + n ^ 2)

end

end A203183.P18289068823470562814

/-!
# A203184: Number of n X 1 0..4 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203184, the canonical program `A203184.P9510390787299626415` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203184 has offset 1).

The definition of A203184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203184.P9510390787299626415

`ogf((1+10x^2+15x^4+7x^6+x^8)/(1-5x+10x^2-20x^3+15x^4-21x^5+7x^6-8x^7+x^8-x^9))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203184

/-- `ogf((1+10x^2+15x^4+7x^6+x^8)/(1-5x+10x^2-20x^3+15x^4-21x^5+7x^6-8x^7+x^8-x^9))` -/
def P9510390787299626415.Spec : Prop :=
  ∀ n, P9510390787299626415.a n = A203184 (n + 1)

theorem P9510390787299626415.correct : P9510390787299626415.Spec := by
  intro n
  simp only [A203184, Nat.add_sub_cancel]

end A203184

/-! ## A203184.P1752160082708609738

`A203191(∑[n]+1)`
-/

namespace A203184.P1752160082708609738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203184.P1752160082708609738

namespace A203184

/-- `A203191(∑[n]+1)` -/
def P1752160082708609738.Spec : Prop :=
  ∀ n, P1752160082708609738.a n = A203184 (n + 1)

end A203184

/-! ## A203184.P1717618005835879177

`record[A010054(n)*A203191(n+1)]`
-/

namespace A203184.P1717618005835879177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203184.P1717618005835879177

namespace A203184

/-- `record[A010054(n)*A203191(n+1)]` -/
def P1717618005835879177.Spec : Prop :=
  ∀ n, P1717618005835879177.a n = A203184 (n + 1)

end A203184

/-! ## A203184.P3821863792647037757

`record[root(A203191(n+1), A156584(n))]`
-/

namespace A203184.P3821863792647037757
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203191 (n + 1) : ℝ) ^ (1 / (A156584 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203184.P3821863792647037757

namespace A203184

/-- `record[root(A203191(n+1), A156584(n))]` -/
def P3821863792647037757.Spec : Prop :=
  ∀ n, P3821863792647037757.a n = (A203184 (n + 1) : ℝ)

end A203184

/-! ## A203184.P2259315612422234631

`record[root(A203191(n+1), A293985(n))]`
-/

namespace A203184.P2259315612422234631
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203191 (n + 1) : ℝ) ^ (1 / (A293985 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203184.P2259315612422234631

namespace A203184

/-- `record[root(A203191(n+1), A293985(n))]` -/
def P2259315612422234631.Spec : Prop :=
  ∀ n, P2259315612422234631.a n = (A203184 (n + 1) : ℝ)

end A203184

/-!
# A203185: Number of n X 2 0..4 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203185, there is no canonical definition to state claims against.
-/

/-! ## A203185.P1112321092887001590

`A203191(∑[n+1]+2)`
-/

namespace A203185.P1112321092887001590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203185.P1112321092887001590

/-! ## A203185.P12734829042236204816

`or(1, A203191(A133263(n+1)))`
-/

namespace A203185.P12734829042236204816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203191 (A133263 (n + 1)).toNat)

end

end A203185.P12734829042236204816

/-! ## A203185.P17020171919776764955

`record[A010054(n)*A203191(n+2)]`
-/

namespace A203185.P17020171919776764955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203185.P17020171919776764955

/-! ## A203185.P17212925859129899690

`record[gcd(A002262(n), A203191(n+2))]`
-/

namespace A203185.P17212925859129899690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203191 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203185.P17212925859129899690

/-! ## A203185.P13618832012645293490

`record[A203191(abs(A201163(n)))]`
-/

namespace A203185.P13618832012645293490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203185.P13618832012645293490

/-!
# A203186: Number of n X 3 0..4 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203186, there is no canonical definition to state claims against.
-/

/-! ## A203186.P17661764346259037724

`A203191(∑[n+2]+4)`
-/

namespace A203186.P17661764346259037724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203186.P17661764346259037724

/-! ## A203186.P4493180827806117460

`or(1, A203191(A167614(n+1)))`
-/

namespace A203186.P4493180827806117460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203191 (A167614 (n + 1)).toNat)

end

end A203186.P4493180827806117460

/-! ## A203186.P11394780895986940710

`A203191(A167614(n+1))+A178798(n)`
-/

namespace A203186.P11394780895986940710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (A167614 (n + 1)).toNat + A178798 n

end

end A203186.P11394780895986940710

/-! ## A203186.P3852218996148389181

`A203191(A167614(n+1))+A185284(n)`
-/

namespace A203186.P3852218996148389181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (A167614 (n + 1)).toNat + A185284 n

end

end A203186.P3852218996148389181

/-! ## A203186.P16333691803748269035

`A203191(A167614(n+1))*A254730(n)`
-/

namespace A203186.P16333691803748269035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (A167614 (n + 1)).toNat * A254730 n

end

end A203186.P16333691803748269035

/-!
# A203187: Number of nX4 0..4 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203187, there is no canonical definition to state claims against.
-/

/-! ## A203187.P864912941954517040

`A203191(A167614(n+2)+1)`
-/

namespace A203187.P864912941954517040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (A167614 (n + 2) + 1).toNat

end

end A203187.P864912941954517040

/-! ## A203187.P4223419374658215271

`A203191(eq[3, A193592(n)])`
-/

namespace A203187.P4223419374658215271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203187.P4223419374658215271

/-! ## A203187.P6059725019862463077

`A203191(A155212(n+1)-n)`
-/

namespace A203187.P6059725019862463077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (A155212 (n + 1) - (n : ℤ)).toNat

end

end A203187.P6059725019862463077

/-!
# A203188: Number of nX5 0..4 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203188, there is no canonical definition to state claims against.
-/

/-! ## A203188.P5567489069846920876

`A203191(A374005(n+1))`
-/

namespace A203188.P5567489069846920876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (A374005 (n + 1)).toNat

end

end A203188.P5567489069846920876

/-! ## A203188.P12391130152969075226

`A203191(A155212(n)+13)`
-/

namespace A203188.P12391130152969075226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (A155212 n + 13).toNat

end

end A203188.P12391130152969075226

/-! ## A203188.P2581598879460178215

`A203191(eq[4, A193592(n)])`
-/

namespace A203188.P2581598879460178215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203188.P2581598879460178215

/-!
# A203189: 

The programs for A203189, there is no canonical definition to state claims against.
-/

/-! ## A203189.P10753609534696481531

`A203191(eq[5, A193592(n)])`
-/

namespace A203189.P10753609534696481531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203189.P10753609534696481531

/-!
# A203190: 

The programs for A203190, there is no canonical definition to state claims against.
-/

/-! ## A203190.P7195410157237387719

`A203191(eq[6, A193592(n)])`
-/

namespace A203190.P7195410157237387719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203190.P7195410157237387719

/-!
# A203191: T(n,k)=Number of nXk 0..4 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A203191, there is no canonical definition to state claims against.
-/

/-! ## A203191.P301660109922774495

`A139557(a(n-1))` with `a(0)=1, a(1)=5, a(2)=5`
-/

namespace A203191.P301660109922774495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 5] fun n a =>
  A139557 (a (n - 1)).toNat

end

end A203191.P301660109922774495

/-!
# A203192: (n-1)-st elementary symmetric function of the first n terms of (1,2,1,4,1,6,1,8,...)=(A124625 for n>1).

The programs for A203192, there is no canonical definition to state claims against.
-/

/-! ## A203192.P6142223471334523829

`A130997(2^A105133(n+1))`
-/

namespace A203192.P6142223471334523829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130997 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A105133 (n + 1) : ℤ))).toNat

end

end A203192.P6142223471334523829

/-! ## A203192.P8677224249337757863

`A164297(A199241(n+1))+Δ[n²]`
-/

namespace A203192.P8677224249337757863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164297 (A199241 (n + 1)).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A203192.P8677224249337757863

/-!
# A203193: (n-1)-st elementary symmetric function of the first n terms of (1,2,1,3,1,4,1,5,...)=A133622.

The programs for A203193, there is no canonical definition to state claims against.
-/

/-! ## A203193.P3646721425377357725

`A336746(∑[or(1, n+1)])`
-/

namespace A203193.P3646721425377357725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203193.P3646721425377357725

/-! ## A203193.P15287844136262536747

`A336746(ceil(n²/2)+1+n+n)`
-/

namespace A203193.P15287844136262536747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336746 (⌈(n ^ 2 : ℚ) / 2⌉ + 1 + (n : ℤ) + (n : ℤ)).toNat

end

end A203193.P15287844136262536747

/-!
# A203195: (n-1)-st elementary symmetric function of the first n Catalan numbers (A000108).

The programs for A203195, there is no canonical definition to state claims against.
-/

/-! ## A203195.P9482300893004115867

`A004396(n!²)+n`
-/

namespace A203195.P9482300893004115867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Nat.factorial n ^ 2) + (n : ℤ)

end

end A203195.P9482300893004115867

/-!
# A203196: (n-1)-st elementary symmetric function of the first n terms of (2,1,4,3,6,5,8,7,...)=A103889.

The programs for A203196, there is no canonical definition to state claims against.
-/

/-! ## A203196.P10311171259081709391

`A098557(n+1)+(xor(1, n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A203196.P10311171259081709391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098557 (n + 1) + (Nat.xor 1 n + 1 : ℤ) * a (n - 1)

end

end A203196.P10311171259081709391

/-! ## A203196.P3102910967755928447

`record[Δ[A081048(A048151(n+1))]]`
-/

namespace A203196.P3102910967755928447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 (A048151 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203196.P3102910967755928447

/-! ## A203196.P5734598726791573860

`record[Δ[A081048(A144217(n+1))]]`
-/

namespace A203196.P5734598726791573860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 (A144217 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203196.P5734598726791573860

/-! ## A203196.P7123048765588459684

`A000254(n%or(1, n))+A000254(n+1)`
-/

namespace A203196.P7123048765588459684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n % Nat.lor 1 n) + A000254 (n + 1)

end

end A203196.P7123048765588459684

/-! ## A203196.P2887804147509478909

`Δ[A000254(n)]+A000254(n)*A040001(n)`
-/

namespace A203196.P2887804147509478909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000254 n * A040001 n

end

end A203196.P2887804147509478909

/-! ## A203196.P12021197655646267308

`A000254(n+1)+A000254(n*A059841(n))`
-/

namespace A203196.P12021197655646267308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) + A000254 ((n : ℤ) * A059841 n).toNat

end

end A203196.P12021197655646267308

/-!
# A203197: (n-1)-st elementary symmetric function of the first n terms of (1,3,9,27,...)=A000244.

The programs for A203197, the canonical program `A203197.P14711909221595781061` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203197 has offset 1).

The definition of A203197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203197.P14711909221595781061

`1/2*(3-1/3^n)*3^C(n+1, 2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A203197

/-- `1/2*(3-1/3^n)*3^C(n+1, 2)` -/
def P14711909221595781061.Spec : Prop :=
  ∀ n, P14711909221595781061.a n = (A203197 (n + 1) : ℚ)

end A203197

/-! ## A203197.P16790988834536349305

`3^C(n, 2)*∑[3^n]`
-/

namespace A203197.P16790988834536349305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203197.P16790988834536349305

namespace A203197

/-- `3^C(n, 2)*∑[3^n]` -/
def P16790988834536349305.Spec : Prop :=
  ∀ n, (P16790988834536349305.a n : ℤ) = A203197 (n + 1)

end A203197

/-! ## A203197.P1525269936247169768

`3^∑[n]*∑[1/3^n]`
-/

namespace A203197.P1525269936247169768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (3 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A203197.P1525269936247169768

namespace A203197

/-- `3^∑[n]*∑[1/3^n]` -/
def P1525269936247169768.Spec : Prop :=
  ∀ n, P1525269936247169768.a n = (A203197 (n + 1) : ℚ)

end A203197

/-! ## A203197.P5779391941166171562

`record[-A157783(n+2)]`
-/

namespace A203197.P5779391941166171562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A157783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203197.P5779391941166171562

namespace A203197

/-- `record[-A157783(n+2)]` -/
def P5779391941166171562.Spec : Prop :=
  ∀ n, P5779391941166171562.a n = A203197 (n + 1)

end A203197

/-! ## A203197.P14743261619034836854

`lcm(∑[3^n], A047656(n))`
-/

namespace A203197.P14743261619034836854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A047656 n)

end

end A203197.P14743261619034836854

namespace A203197

/-- `lcm(∑[3^n], A047656(n))` -/
def P14743261619034836854.Spec : Prop :=
  ∀ n, (P14743261619034836854.a n : ℤ) = A203197 (n + 1)

end A203197

/-!
# A203199: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,2,1,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A203199, there is no canonical definition to state claims against.
-/

/-! ## A203199.P11789063503677727002

`A128657(∑[or(1, n)])`
-/

namespace A203199.P11789063503677727002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128657 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203199.P11789063503677727002

