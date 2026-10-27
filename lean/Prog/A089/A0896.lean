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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B001.C012
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A089600: Another lazy binary representation of n: similar to A089591 except that the single carry is performed before the increment instead of after.

The programs for A089600, there is no canonical definition to state claims against.
-/

/-! ## A089600.P1756107203216582957

`5*(2*a(floor(n/2))-(-1)^n+1)-n%2-8` with `a(0)=0`
-/

namespace A089600.P1756107203216582957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1) - ((n % 2 : ℕ) : ℤ) - 8

end

end A089600.P1756107203216582957

/-! ## A089600.P9579129590786915481

`log2(gcd(2, n))+5*(2*a(floor(n/2))-(-1)^n+1)-9` with `a(0)=0`
-/

namespace A089600.P9579129590786915481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + (5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - ((-1) ^ n : ℝ) + 1) - 9)

end

end A089600.P9579129590786915481

/-! ## A089600.P1720519947150876944

`A089591(2*n)/10`
-/

namespace A089600.P1720519947150876944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089591 (2 * n) : ℚ) / 10

end

end A089600.P1720519947150876944

/-! ## A089600.P14716201954805019564

`A000035(3*n+1)+5*(2*a(floor(n/2))-(-1)^n+1)-9` with `a(0)=0`
-/

namespace A089600.P14716201954805019564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000035 (3 * n + 1) + (5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1) - 9)

end

end A089600.P14716201954805019564

/-!
# A089601: Interleaving of A089591 and A089600.

The programs for A089601, there is no canonical definition to state claims against.
-/

/-! ## A089601.P766326695365438057

`floor(A089591(n)/10)`
-/

namespace A089601.P766326695365438057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089591 n : ℚ) / 10⌋

end

end A089601.P766326695365438057

/-! ## A089601.P3965639442229391912

`A089600(∑[n%2])-and(1, n)`
-/

namespace A089601.P3965639442229391912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089600 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.land 1 n : ℤ)

end

end A089601.P3965639442229391912

/-! ## A089601.P3574604970273094042

`A007089(floor(A137951(n)/3))`
-/

namespace A089601.P3574604970273094042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ⌊(A137951 n : ℚ) / 3⌋.toNat

end

end A089601.P3574604970273094042

/-! ## A089601.P8398573091710620599

`A007089(round(A137951(n)/3))`
-/

namespace A089601.P8398573091710620599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway ((A137951 n : ℚ) / 3)).toNat

end

end A089601.P8398573091710620599

/-! ## A089601.P5609131708585003842

`round(A089591(n)/10)%A000045(n+3)`
-/

namespace A089601.P5609131708585003842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A089591 n : ℚ) / 10)) (A000045 (n + 3))

end

end A089601.P5609131708585003842

/-!
# A089602: Expansion of L(x)^(1/4), where L(x) = o.g.f. for A053175.

The programs for A089602, there is no canonical definition to state claims against.
-/

/-! ## A089602.P15537746596647898377

`A076434(A285293(n))+A048990(n)`
-/

namespace A089602.P15537746596647898377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076434 (A285293 n).toNat + A048990 n

end

end A089602.P15537746596647898377

/-!
# A089603: G.f.: sqrt(1/agm(1, 1-8*x)) = sqrt(o.g.f. for A081085).

The programs for A089603, there is no canonical definition to state claims against.
-/

/-! ## A089603.P2266573417822837598

`A002264(2*A032133(n+1))`
-/

namespace A089603.P2266573417822837598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A032133 (n + 1)).toNat

end

end A089603.P2266573417822837598

/-! ## A089603.P347958862936917233

`A004396(A032133(n+1)+1)-1`
-/

namespace A089603.P347958862936917233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A032133 (n + 1) + 1).toNat - 1

end

end A089603.P347958862936917233

/-!
# A089604: "3-lazy binary" representation of n: to increment, add one to the last digit, then "carry" the rightmost 3 (replace 03->11, 13->21, or 23->31).

The programs for A089604, there is no canonical definition to state claims against.
-/

/-! ## A089604.P15328131167160617280

`∑[A163575(A130279(n+1))]`
-/

namespace A089604.P15328131167160617280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (A130279 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089604.P15328131167160617280

/-! ## A089604.P563995987214694177

`∑[A163575(A005179(n+1)²)]`
-/

namespace A089604.P563995987214694177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (A005179 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089604.P563995987214694177

/-! ## A089604.P11291183666536126242

`∑[A000265(A130279(n+1))%A000420(n)]`
-/

namespace A089604.P11291183666536126242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A130279 (n + 1)).toNat) (A000420 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089604.P11291183666536126242

/-! ## A089604.P14211198934271420020

`A085184(A032555(n+1))+A037954(n)`
-/

namespace A089604.P14211198934271420020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085184 (A032555 (n + 1)).toNat + A037954 n

end

end A089604.P14211198934271420020

/-! ## A089604.P10639627138728156211

`A184963(A308953(n))+A085184(n+1)`
-/

namespace A089604.P10639627138728156211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184963 (A308953 n).toNat + A085184 (n + 1)

end

end A089604.P10639627138728156211

/-!
# A089605: Let P(m) = m/2 if m is even, m + rev(m) if m is odd, where rev(m) is m's base 10 representation reversed. It is conjectured that any number k eventually cycles when P is repeatedly applied to it. Sequence gives number of steps before the cycle is reached.

The programs for A089605, there is no canonical definition to state claims against.
-/

/-! ## A089605.P15427630687567134635

`A352541(n)-A020639(A068911(n))`
-/

namespace A089605.P15427630687567134635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 n - A020639 (A068911 n).toNat

end

end A089605.P15427630687567134635

/-! ## A089605.P1667694547579114075

`A352541(n)-A040001(A004394(n+1))`
-/

namespace A089605.P1667694547579114075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 n - A040001 (A004394 (n + 1)).toNat

end

end A089605.P1667694547579114075

/-! ## A089605.P5859601492853161510

`A352541(n)-A036453(A191702(n+1))`
-/

namespace A089605.P5859601492853161510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 n - A036453 (A191702 (n + 1)).toNat

end

end A089605.P5859601492853161510

/-! ## A089605.P7371368215346868436

`A352541(n)-A020639(A280015(n+1))`
-/

namespace A089605.P7371368215346868436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 n - A020639 (A280015 (n + 1)).toNat

end

end A089605.P7371368215346868436

/-! ## A089605.P13727968500521133117

`A352541(n)-A137921(A256472(n+1))`
-/

namespace A089605.P13727968500521133117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 n - A137921 (A256472 (n + 1)).toNat

end

end A089605.P13727968500521133117

/-!
# A089606: Table T(n,k), n>=1 and k>=1; the k-th row is defined by :partial sums of the sequence 1, a(1), .., a(1), a(2), .., a(2), a(3), ..,a(3), a(4), ... each term repeated k times (with a(i)= T(i,k)).

The programs for A089606, there is no canonical definition to state claims against.
-/

/-! ## A089606.P16927857858853625933

`or(A000035(A324660(n)), A348533(n+1))`
-/

namespace A089606.P16927857858853625933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A324660 n).toNat) (A348533 (n + 1))

end

end A089606.P16927857858853625933

/-! ## A089606.P1431897137007989980

`A192015(A060628(n))+A068009(n)`
-/

namespace A089606.P1431897137007989980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (A060628 n).toNat + A068009 n

end

end A089606.P1431897137007989980

/-! ## A089606.P9070938138002513967

`A081396(A257619(n))+A068009(n)`
-/

namespace A089606.P9070938138002513967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081396 (A257619 n).toNat + A068009 n

end

end A089606.P9070938138002513967

/-! ## A089606.P12789875307054801306

`A130321(n)-A186743(A110180(n))`
-/

namespace A089606.P12789875307054801306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n - A186743 (A110180 n).toNat

end

end A089606.P12789875307054801306

/-! ## A089606.P17320914630051119915

`A354322(A388717(n+1))`
-/

namespace A089606.P17320914630051119915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354322 (A388717 (n + 1)).toNat

end

end A089606.P17320914630051119915

/-!
# A089607: a(n)=((-1)^(n+1)*A002425(n)) modulo 4.

The programs for A089607, the canonical program `A089607.P15571549371010904188` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089607 has offset 1).

The definition of A089607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089607.P15571549371010904188

`a(A014709(n))` with `a(0)=1, a(1)=3, a(2)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A089607

/-- `a(A014709(n))` -/
def P15571549371010904188.Spec : Prop :=
  ∀ n, (P15571549371010904188.a n : ℤ) = A089607 (n + 1)

theorem P15571549371010904188.correct : P15571549371010904188.Spec := by
  intro n
  simp only [A089607, Nat.add_sub_cancel]

end A089607

/-! ## A089607.P12218229503866300178

`a(1-A014707(n))` with `a(0)=1, a(1)=3`
-/

namespace A089607.P12218229503866300178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (1 - A014707 n).toNat

end

end A089607.P12218229503866300178

namespace A089607

/-- `a(1-A014707(n))` -/
def P12218229503866300178.Spec : Prop :=
  ∀ n, (P12218229503866300178.a n : ℤ) = A089607 (n + 1)

end A089607

/-! ## A089607.P8755619819993020902

`A336962(2*n+1)%4`
-/

namespace A089607.P8755619819993020902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336962 (2 * n + 1)) 4

end

end A089607.P8755619819993020902

namespace A089607

/-- `A336962(2*n+1)%4` -/
def P8755619819993020902.Spec : Prop :=
  ∀ n, P8755619819993020902.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P14921942107753021622

`A341746(2*n+1)%4`
-/

namespace A089607.P14921942107753021622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341746 (2 * n + 1)) 4

end

end A089607.P14921942107753021622

namespace A089607

/-- `A341746(2*n+1)%4` -/
def P14921942107753021622.Spec : Prop :=
  ∀ n, P14921942107753021622.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P6923758560536843386

`A171435(3*(n+1))%4`
-/

namespace A089607.P6923758560536843386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171435 (3 * (n + 1))) 4

end

end A089607.P6923758560536843386

namespace A089607

/-- `A171435(3*(n+1))%4` -/
def P6923758560536843386.Spec : Prop :=
  ∀ n, P6923758560536843386.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P10248252975589226927

`or(1, gcd(2, A269365(n+1)))`
-/

namespace A089607.P10248252975589226927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Int.gcd 2 (A269365 (n + 1)))

end

end A089607.P10248252975589226927

namespace A089607

/-- `or(1, gcd(2, A269365(n+1)))` -/
def P10248252975589226927.Spec : Prop :=
  ∀ n, (P10248252975589226927.a n : ℤ) = A089607 (n + 1)

end A089607

/-! ## A089607.P214973092280432655

`Δ[abs(1-A005811(n))]+2`
-/

namespace A089607.P214973092280432655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A005811 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A089607.P214973092280432655

namespace A089607

/-- `Δ[abs(1-A005811(n))]+2` -/
def P214973092280432655.Spec : Prop :=
  ∀ n, P214973092280432655.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P4656737667097235561

`A034947(n+1)+2%(n+2)`
-/

namespace A089607.P4656737667097235561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) + ((2 % (n + 2) : ℕ) : ℤ)

end

end A089607.P4656737667097235561

namespace A089607

/-- `A034947(n+1)+2%(n+2)` -/
def P4656737667097235561.Spec : Prop :=
  ∀ n, P4656737667097235561.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P805998207292724553

`Δ[A037834(abs(1-n)+1)]+2`
-/

namespace A089607.P805998207292724553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A089607.P805998207292724553

namespace A089607

/-- `Δ[A037834(abs(1-n)+1)]+2` -/
def P805998207292724553.Spec : Prop :=
  ∀ n, P805998207292724553.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P1616601357437294582

`3^and(a(n-1), A014577(n))` with `a(0)=1`
-/

namespace A089607.P1616601357437294582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ (Int.land (SequenceMachineLib.roundAway (a (n - 1))) (A014577 n) : ℤ)

end

end A089607.P1616601357437294582

namespace A089607

/-- `3^and(a(n-1), A014577(n))` -/
def P1616601357437294582.Spec : Prop :=
  ∀ n, P1616601357437294582.a n = (A089607 (n + 1) : ℚ)

end A089607

/-! ## A089607.P7005787979401650283

`abs(4*n-A099545(n+1))%4`
-/

namespace A089607.P7005787979401650283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |(4 * n : ℤ) - A099545 (n + 1)| 4

end

end A089607.P7005787979401650283

namespace A089607

/-- `abs(4*n-A099545(n+1))%4` -/
def P7005787979401650283.Spec : Prop :=
  ∀ n, P7005787979401650283.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P4723472729252707648

`a(and(a(n-2), A003602(n+1)))` with `a(0)=1, a(1)=3`
-/

namespace A089607.P4723472729252707648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (Int.land (a (n - 2) : ℤ) (A003602 (n + 1))).toNat

end

end A089607.P4723472729252707648

namespace A089607

/-- `a(and(a(n-2), A003602(n+1)))` -/
def P4723472729252707648.Spec : Prop :=
  ∀ n, (P4723472729252707648.a n : ℤ) = A089607 (n + 1)

end A089607

/-! ## A089607.P7365960185460259398

`gcd(3*a(n-1), A004200(4*(n+1)))` with `a(0)=1`
-/

namespace A089607.P7365960185460259398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (3 * a (n - 1) : ℤ) (A004200 (4 * (n + 1)))

end

end A089607.P7365960185460259398

namespace A089607

/-- `gcd(3*a(n-1), A004200(4*(n+1)))` -/
def P7365960185460259398.Spec : Prop :=
  ∀ n, (P7365960185460259398.a n : ℤ) = A089607 (n + 1)

end A089607

/-! ## A089607.P9864211504761517719

`and(-((n+1)/and(n+1, -(n+1))), A290858(n+3))`
-/

namespace A089607.P9864211504761517719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))) (A290858 (n + 3))

end

end A089607.P9864211504761517719

namespace A089607

/-- `and(-((n+1)/and(n+1, -(n+1))), A290858(n+3))` -/
def P9864211504761517719.Spec : Prop :=
  ∀ n, P9864211504761517719.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P11248811168047808131

`A010684(A295041(n))`
-/

namespace A089607.P11248811168047808131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A295041 n).toNat

end

end A089607.P11248811168047808131

namespace A089607

/-- `A010684(A295041(n))` -/
def P11248811168047808131.Spec : Prop :=
  ∀ n, P11248811168047808131.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P15557434117272987081

`A099545(A168102(n+1))`
-/

namespace A089607.P15557434117272987081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (A168102 (n + 1)).toNat

end

end A089607.P15557434117272987081

namespace A089607

/-- `A099545(A168102(n+1))` -/
def P15557434117272987081.Spec : Prop :=
  ∀ n, P15557434117272987081.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P8298513262023675262

`A176040(A139706(n+1))`
-/

namespace A089607.P8298513262023675262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A139706 (n + 1)).toNat

end

end A089607.P8298513262023675262

namespace A089607

/-- `A176040(A139706(n+1))` -/
def P8298513262023675262.Spec : Prop :=
  ∀ n, P8298513262023675262.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P3481652233406624193

`A099545(A230628(n+1))`
-/

namespace A089607.P3481652233406624193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (A230628 (n + 1)).toNat

end

end A089607.P3481652233406624193

namespace A089607

/-- `A099545(A230628(n+1))` -/
def P3481652233406624193.Spec : Prop :=
  ∀ n, P3481652233406624193.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P6719979895640687668

`A122553(A322016(n+1))`
-/

namespace A089607.P6719979895640687668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A322016 (n + 1)).toNat

end

end A089607.P6719979895640687668

namespace A089607

/-- `A122553(A322016(n+1))` -/
def P6719979895640687668.Spec : Prop :=
  ∀ n, P6719979895640687668.a n = A089607 (n + 1)

end A089607

/-! ## A089607.P3269711097456370075

`A176040(A269365(n+1))`
-/

namespace A089607.P3269711097456370075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A269365 (n + 1)).toNat

end

end A089607.P3269711097456370075

namespace A089607

/-- `A176040(A269365(n+1))` -/
def P3269711097456370075.Spec : Prop :=
  ∀ n, P3269711097456370075.a n = A089607 (n + 1)

end A089607

/-!
# A089608: a(n) = ((-1)^(n+1)*A002425(n)) modulo 6.

The programs for A089608, the canonical program `A089608.P1685059396836438671` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089608 has offset 1).

The definition of A089608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089608.P2370933866984881667

`val(n+1, 2)%2*4+1`
-/

namespace A089608.P2370933866984881667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2 * 4 + 1

end

end A089608.P2370933866984881667

namespace A089608

/-- `val(n+1, 2)%2*4+1` -/
def P2370933866984881667.Spec : Prop :=
  ∀ n, (P2370933866984881667.a n : ℤ) = A089608 (n + 1)

end A089608

/-! ## A089608.P1685059396836438671

`5-4*A035263(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A089608

/-- `5-4*A035263(n+1)` -/
def P1685059396836438671.Spec : Prop :=
  ∀ n, P1685059396836438671.a n = A089608 (n + 1)

theorem P1685059396836438671.correct : P1685059396836438671.Spec := by
  intro n
  simp only [A089608, Nat.add_sub_cancel]

end A089608

/-! ## A089608.P10294172696423881333

`5^(val(n+1, 2)%2)`
-/

namespace A089608.P10294172696423881333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (SequenceMachineLib.valuation (n + 1) 2 % 2)

end

end A089608.P10294172696423881333

namespace A089608

/-- `5^(val(n+1, 2)%2)` -/
def P10294172696423881333.Spec : Prop :=
  ∀ n, (P10294172696423881333.a n : ℤ) = A089608 (n + 1)

end A089608

/-! ## A089608.P419735598116568608

`5^and(1, val(n+1, 2))`
-/

namespace A089608.P419735598116568608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2)

end

end A089608.P419735598116568608

namespace A089608

/-- `5^and(1, val(n+1, 2))` -/
def P419735598116568608.Spec : Prop :=
  ∀ n, (P419735598116568608.a n : ℤ) = A089608 (n + 1)

end A089608

/-! ## A089608.P2864121055010972125

`gcd(5, xor(n, n+1)%3)`
-/

namespace A089608.P2864121055010972125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (Nat.xor n (n + 1) % 3)

end

end A089608.P2864121055010972125

namespace A089608

/-- `gcd(5, xor(n, n+1)%3)` -/
def P2864121055010972125.Spec : Prop :=
  ∀ n, (P2864121055010972125.a n : ℤ) = A089608 (n + 1)

end A089608

/-! ## A089608.P12855066850092356171

`5^(and(n, -(n+2))%3)`
-/

namespace A089608.P12855066850092356171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (Int.tmod (Int.land (n : ℤ) (-(n + 2 : ℤ))) 3 : ℤ)

end

end A089608.P12855066850092356171

namespace A089608

/-- `5^(and(n, -(n+2))%3)` -/
def P12855066850092356171.Spec : Prop :=
  ∀ n, P12855066850092356171.a n = (A089608 (n + 1) : ℚ)

end A089608

/-! ## A089608.P7034831887388628883

`(or(n, n+1)+2*n)%6`
-/

namespace A089608.P7034831887388628883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) + 2 * n) % 6

end

end A089608.P7034831887388628883

namespace A089608

/-- `(or(n, n+1)+2*n)%6` -/
def P7034831887388628883.Spec : Prop :=
  ∀ n, (P7034831887388628883.a n : ℤ) = A089608 (n + 1)

end A089608

/-! ## A089608.P2975445417132102822

`3-2*(-1)^val(n+1, 2)`
-/

namespace A089608.P2975445417132102822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * (-1) ^ SequenceMachineLib.valuation (n + 1) 2

end

end A089608.P2975445417132102822

namespace A089608

/-- `3-2*(-1)^val(n+1, 2)` -/
def P2975445417132102822.Spec : Prop :=
  ∀ n, P2975445417132102822.a n = A089608 (n + 1)

end A089608

/-! ## A089608.P10009411097278444457

`7-(a(floor((n-1)/2))+a(n-1))` with `a(0)=1`
-/

namespace A089608.P10009411097278444457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 - (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1))

end

end A089608.P10009411097278444457

namespace A089608

/-- `7-(a(floor((n-1)/2))+a(n-1))` -/
def P10009411097278444457.Spec : Prop :=
  ∀ n, P10009411097278444457.a n = A089608 (n + 1)

end A089608

/-! ## A089608.P16691596247599091381

`gcd(5, A036578(n))`
-/

namespace A089608.P16691596247599091381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A036578 n)

end

end A089608.P16691596247599091381

namespace A089608

/-- `gcd(5, A036578(n))` -/
def P16691596247599091381.Spec : Prop :=
  ∀ n, (P16691596247599091381.a n : ℤ) = A089608 (n + 1)

end A089608

/-! ## A089608.P473286801467419124

`or(1, A036579(n)²)`
-/

namespace A089608.P473286801467419124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A036579 n ^ 2)

end

end A089608.P473286801467419124

namespace A089608

/-- `or(1, A036579(n)²)` -/
def P473286801467419124.Spec : Prop :=
  ∀ n, P473286801467419124.a n = A089608 (n + 1)

end A089608

/-! ## A089608.P13978153197762586546

`or(1, A036581(n)²)`
-/

namespace A089608.P13978153197762586546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A036581 n ^ 2)

end

end A089608.P13978153197762586546

namespace A089608

/-- `or(1, A036581(n)²)` -/
def P13978153197762586546.Spec : Prop :=
  ∀ n, P13978153197762586546.a n = A089608 (n + 1)

end A089608

/-! ## A089608.P17238744093838779937

`5^Δ[A123087(n)]`
-/

namespace A089608.P17238744093838779937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A089608.P17238744093838779937

namespace A089608

/-- `5^Δ[A123087(n)]` -/
def P17238744093838779937.Spec : Prop :=
  ∀ n, P17238744093838779937.a n = (A089608 (n + 1) : ℚ)

end A089608

/-! ## A089608.P10875058476812173253

`4*A096268(n)+1`
-/

namespace A089608.P10875058476812173253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A096268 n + 1

end

end A089608.P10875058476812173253

namespace A089608

/-- `4*A096268(n)+1` -/
def P10875058476812173253.Spec : Prop :=
  ∀ n, P10875058476812173253.a n = A089608 (n + 1)

theorem P10875058476812173253.correct : P10875058476812173253.Spec := by
  intro n
  simp only [A089608, Nat.add_sub_cancel, A089608.P10875058476812173253.a, A089608.P1685059396836438671.a, A035263, A035263.P6825362395192920526.a, A096268, A096268.P10327595005272142114.a, A000035, A000035.P2023072528413494694.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089608

/-! ## A089608.P8091321982363623670

`A010686(val(n+1, 2))`
-/

namespace A089608.P8091321982363623670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (SequenceMachineLib.valuation (n + 1) 2)

end

end A089608.P8091321982363623670

namespace A089608

/-- `A010686(val(n+1, 2))` -/
def P8091321982363623670.Spec : Prop :=
  ∀ n, P8091321982363623670.a n = A089608 (n + 1)

end A089608

/-! ## A089608.P11687956772420685947

`lcm(2, A036582(n))-1`
-/

namespace A089608.P11687956772420685947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A036582 n) : ℤ) - 1

end

end A089608.P11687956772420685947

namespace A089608

/-- `lcm(2, A036582(n))-1` -/
def P11687956772420685947.Spec : Prop :=
  ∀ n, P11687956772420685947.a n = A089608 (n + 1)

end A089608

/-! ## A089608.P17643898565290319934

`A393210(n+1)%6`
-/

namespace A089608.P17643898565290319934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393210 (n + 1)) 6

end

end A089608.P17643898565290319934

namespace A089608

/-- `A393210(n+1)%6` -/
def P17643898565290319934.Spec : Prop :=
  ∀ n, P17643898565290319934.a n = A089608 (n + 1)

end A089608

/-! ## A089608.P9872204307417604153

`and(5, A166653(n+1))`
-/

namespace A089608.P9872204307417604153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A166653 (n + 1))

end

end A089608.P9872204307417604153

namespace A089608

/-- `and(5, A166653(n+1))` -/
def P9872204307417604153.Spec : Prop :=
  ∀ n, P9872204307417604153.a n = A089608 (n + 1)

end A089608

/-! ## A089608.P15225654324487113874

`and(5, A309873(n+1))`
-/

namespace A089608.P15225654324487113874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A309873 (n + 1))

end

end A089608.P15225654324487113874

namespace A089608

/-- `and(5, A309873(n+1))` -/
def P15225654324487113874.Spec : Prop :=
  ∀ n, P15225654324487113874.a n = A089608 (n + 1)

end A089608

/-! ## A089608.P11373352315543234945

`and(5, A346912(n+1))`
-/

namespace A089608.P11373352315543234945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A346912 (n + 1))

end

end A089608.P11373352315543234945

namespace A089608

/-- `and(5, A346912(n+1))` -/
def P11373352315543234945.Spec : Prop :=
  ∀ n, P11373352315543234945.a n = A089608 (n + 1)

end A089608

/-!
# A089609: Prime number of primes between squares of consecutive primes; or, primes occurring in A050216.

The programs for A089609, the canonical program `A089609.P11712678957692010116` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089609 has offset 0).

The definition of A089609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089609.P11712678957692010116

`p?[A050216(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A089609

/-- `p?[A050216(n+1)]` -/
def P11712678957692010116.Spec : Prop :=
  ∀ n, P11712678957692010116.a n = A089609 n

theorem P11712678957692010116.correct : P11712678957692010116.Spec := by
  intro n
  simp only [A089609]

end A089609

/-! ## A089609.P7544253730461086143

`p?[Δ[A000879(n+1)]]`
-/

namespace A089609.P7544253730461086143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089609.P7544253730461086143

namespace A089609

/-- `p?[Δ[A000879(n+1)]]` -/
def P7544253730461086143.Spec : Prop :=
  ∀ n, P7544253730461086143.a n = A089609 n

end A089609

/-! ## A089609.P11874056278369638425

`p?[A050216(n)-C(3, n)]`
-/

namespace A089609.P11874056278369638425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n - (Nat.choose 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089609.P11874056278369638425

namespace A089609

/-- `p?[A050216(n)-C(3, n)]` -/
def P11874056278369638425.Spec : Prop :=
  ∀ n, P11874056278369638425.a n = A089609 n

end A089609

/-! ## A089609.P2278625762078420403

`p?[A256469(n+1)+A256468(n+1)]`
-/

namespace A089609.P2278625762078420403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256469 (n + 1) + A256468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089609.P2278625762078420403

namespace A089609

/-- `p?[A256469(n+1)+A256468(n+1)]` -/
def P2278625762078420403.Spec : Prop :=
  ∀ n, P2278625762078420403.a n = A089609 n

end A089609

/-! ## A089609.P13431972716352587533

`p?[A251723(n+1)+1]`
-/

namespace A089609.P13431972716352587533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089609.P13431972716352587533

namespace A089609

/-- `p?[A251723(n+1)+1]` -/
def P13431972716352587533.Spec : Prop :=
  ∀ n, P13431972716352587533.a n = A089609 n

end A089609

/-! ## A089609.P6633049077589937835

`p?[Δ[A062773(n+1)]]`
-/

namespace A089609.P6633049077589937835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089609.P6633049077589937835

namespace A089609

/-- `p?[Δ[A062773(n+1)]]` -/
def P6633049077589937835.Spec : Prop :=
  ∀ n, P6633049077589937835.a n = A089609 n

end A089609

/-! ## A089609.P11281931899590066973

`filter[A050216(n+1), A010051(#)]`
-/

namespace A089609.P11281931899590066973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A089609.P11281931899590066973

namespace A089609

/-- `filter[A050216(n+1), A010051(#)]` -/
def P11281931899590066973.Spec : Prop :=
  ∀ n, P11281931899590066973.a n = A089609 n

end A089609

/-! ## A089609.P2180060528848546152

`filter[A050216(n+1), A080339(#)]`
-/

namespace A089609.P2180060528848546152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A089609.P2180060528848546152

namespace A089609

/-- `filter[A050216(n+1), A080339(#)]` -/
def P2180060528848546152.Spec : Prop :=
  ∀ n, P2180060528848546152.a n = A089609 n

end A089609

/-!
# A089610: Number of primes between n^2 and (n+1/2)^2.

The programs for A089610, the canonical program `A089610.P11330597877549216514` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089610 has offset 1).

The definition of A089610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089610.P11330597877549216514

`A000720((n+1)²+n+1)-A000720((n+1)²)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089610

/-- `A000720((n+1)²+n+1)-A000720((n+1)²)` -/
def P11330597877549216514.Spec : Prop :=
  ∀ n, P11330597877549216514.a n = A089610 (n + 1)

theorem P11330597877549216514.correct : P11330597877549216514.Spec := by
  intro n
  simp only [A089610, Nat.add_sub_cancel]

end A089610

/-! ## A089610.P8686314740038385890

`∑[A108309(n+1)-A014085(n)]+1`
-/

namespace A089610.P8686314740038385890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108309 (n + 1) - A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A089610.P8686314740038385890

namespace A089610

/-- `∑[A108309(n+1)-A014085(n)]+1` -/
def P8686314740038385890.Spec : Prop :=
  ∀ n, P8686314740038385890.a n = A089610 (n + 1)

end A089610

/-! ## A089610.P6869127134813559876

`A028310(A108309(n+1)-A094189(n+1))`
-/

namespace A089610.P6869127134813559876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A108309 (n + 1) - A094189 (n + 1)).toNat

end

end A089610.P6869127134813559876

namespace A089610

/-- `A028310(A108309(n+1)-A094189(n+1))` -/
def P6869127134813559876.Spec : Prop :=
  ∀ n, P6869127134813559876.a n = A089610 (n + 1)

end A089610

/-! ## A089610.P10893404605521287920

`A220492(2*(n+1))`
-/

namespace A089610.P10893404605521287920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220492 (2 * (n + 1))

end

end A089610.P10893404605521287920

namespace A089610

/-- `A220492(2*(n+1))` -/
def P10893404605521287920.Spec : Prop :=
  ∀ n, P10893404605521287920.a n = A089610 (n + 1)

end A089610

/-! ## A089610.P7076998580539939558

`A000720((n+1)*(n+2))-A038107(n+1)`
-/

namespace A089610.P7076998580539939558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) * (n + 2)) - A038107 (n + 1)

end

end A089610.P7076998580539939558

namespace A089610

/-- `A000720((n+1)*(n+2))-A038107(n+1)` -/
def P7076998580539939558.Spec : Prop :=
  ∀ n, P7076998580539939558.a n = A089610 (n + 1)

end A089610

/-! ## A089610.P3283126092040969378

`A099802(∑[n+1])-∑[A014085(n)]`
-/

namespace A089610.P3283126092040969378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A089610.P3283126092040969378

namespace A089610

/-- `A099802(∑[n+1])-∑[A014085(n)]` -/
def P3283126092040969378.Spec : Prop :=
  ∀ n, P3283126092040969378.a n = A089610 (n + 1)

end A089610

/-! ## A089610.P6135751701411048930

`A083415(∑[n+2])`
-/

namespace A089610.P6135751701411048930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089610.P6135751701411048930

namespace A089610

/-- `A083415(∑[n+2])` -/
def P6135751701411048930.Spec : Prop :=
  ∀ n, P6135751701411048930.a n = A089610 (n + 1)

end A089610

/-! ## A089610.P11930928371943866802

`A189024(∑[2*(n+1)])`
-/

namespace A089610.P11930928371943866802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089610.P11930928371943866802

namespace A089610

/-- `A189024(∑[2*(n+1)])` -/
def P11930928371943866802.Spec : Prop :=
  ∀ n, P11930928371943866802.a n = A089610 (n + 1)

end A089610

/-! ## A089610.P3975655620784830684

`A189025(A189027(A189024((n+1)*(n+2))))`
-/

namespace A089610.P3975655620784830684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189025 (A189027 (A189024 ((n + 1) * (n + 2))).toNat).toNat

end

end A089610.P3975655620784830684

namespace A089610

/-- `A189025(A189027(A189024((n+1)*(n+2))))` -/
def P3975655620784830684.Spec : Prop :=
  ∀ n, P3975655620784830684.a n = A089610 (n + 1)

end A089610

/-!
# A089611: Number of primes between n^2 and (n+1/3)^2.

The programs for A089611, there is no canonical definition to state claims against.
-/

/-! ## A089611.P14607029038718600228

`A273136(A025177(3*n))%A193562(n)`
-/

namespace A089611.P14607029038718600228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273136 (A025177 (3 * n)).toNat) (A193562 n)

end

end A089611.P14607029038718600228

/-! ## A089611.P6209487677913999093

`A357722(∑[A007318(n+2)*A014695(n)])`
-/

namespace A089611.P6209487677913999093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 2) * A014695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357722 ((∑ j ∈ Finset.range (n + 1), f1 j).toNat + 11)

end

end A089611.P6209487677913999093

/-! ## A089611.P13065744418592614021

`A349410(n+1)-A010054(A265059(2*n+1))`
-/

namespace A089611.P13065744418592614021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349410 (n + 1) - A010054 (A265059 (2 * n + 1)).toNat

end

end A089611.P13065744418592614021

/-! ## A089611.P7640207418675580045

`A334028(A067538(n+1)-A323719(2*(n+2)))`
-/

namespace A089611.P7640207418675580045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A067538 (n + 1) - A323719 (2 * (n + 2))).toNat

end

end A089611.P7640207418675580045

/-!
# A089612: a(n) = ((-1)^(n+1)*A002425(n)) modulo 5.

The programs for A089612, the canonical program `A089612.P18446740052930697388` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089612 has offset 1).

The definition of A089612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089612.P18446740052930697388

`(xor(n+1, or(1, n))+1)%5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089612

/-- `(xor(n+1, or(1, n))+1)%5` -/
def P18446740052930697388.Spec : Prop :=
  ∀ n, (P18446740052930697388.a n : ℤ) = A089612 (n + 1)

theorem P18446740052930697388.correct : P18446740052930697388.Spec := by
  intro n
  simp only [A089612, Nat.add_sub_cancel]

end A089612

/-! ## A089612.P2596082972619803002

`A297402(n+1)%5`
-/

namespace A089612.P2596082972619803002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297402 (n + 1)) 5

end

end A089612.P2596082972619803002

namespace A089612

/-- `A297402(n+1)%5` -/
def P2596082972619803002.Spec : Prop :=
  ∀ n, P2596082972619803002.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P10430836061692375142

`A080578(2^val(n+1, 2))%5`
-/

namespace A089612.P10430836061692375142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080578 (2 ^ SequenceMachineLib.valuation (n + 1) 2)) 5

end

end A089612.P10430836061692375142

namespace A089612

/-- `A080578(2^val(n+1, 2))%5` -/
def P10430836061692375142.Spec : Prop :=
  ∀ n, P10430836061692375142.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P3993640064575195422

`A085787(2^val(n+1, 2))%5`
-/

namespace A089612.P3993640064575195422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085787 (2 ^ SequenceMachineLib.valuation (n + 1) 2)) 5

end

end A089612.P3993640064575195422

namespace A089612

/-- `A085787(2^val(n+1, 2))%5` -/
def P3993640064575195422.Spec : Prop :=
  ∀ n, P3993640064575195422.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P17057102420528936663

`A010874(A297402(n+1))`
-/

namespace A089612.P17057102420528936663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A297402 (n + 1)).toNat

end

end A089612.P17057102420528936663

namespace A089612

/-- `A010874(A297402(n+1))` -/
def P17057102420528936663.Spec : Prop :=
  ∀ n, P17057102420528936663.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P1889820881833433474

`A159059(A171977(n+1))`
-/

namespace A089612.P1889820881833433474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159059 (A171977 (n + 1)).toNat

end

end A089612.P1889820881833433474

namespace A089612

/-- `A159059(A171977(n+1))` -/
def P1889820881833433474.Spec : Prop :=
  ∀ n, P1889820881833433474.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P996100584918168363

`A261872(A074723(n+1))`
-/

namespace A089612.P996100584918168363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261872 (A074723 (n + 1)).toNat

end

end A089612.P996100584918168363

namespace A089612

/-- `A261872(A074723(n+1))` -/
def P996100584918168363.Spec : Prop :=
  ∀ n, P996100584918168363.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P11800116519956581987

`A080578(A006519(n+1))%5`
-/

namespace A089612.P11800116519956581987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080578 (A006519 (n + 1)).toNat) 5

end

end A089612.P11800116519956581987

namespace A089612

/-- `A080578(A006519(n+1))%5` -/
def P11800116519956581987.Spec : Prop :=
  ∀ n, P11800116519956581987.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P1099531673076586414

`A064549(gcd(n+1, A017298(n)))%5`
-/

namespace A089612.P1099531673076586414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064549 (Int.gcd (n + 1 : ℤ) (A017298 n))) 5

end

end A089612.P1099531673076586414

namespace A089612

/-- `A064549(gcd(n+1, A017298(n)))%5` -/
def P1099531673076586414.Spec : Prop :=
  ∀ n, P1099531673076586414.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P3070300163977565228

`A305427(and(val(n+1, 2)+1, A059100(n)))`
-/

namespace A089612.P3070300163977565228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305427 (Int.land (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) (A059100 n)).toNat

end

end A089612.P3070300163977565228

namespace A089612

/-- `A305427(and(val(n+1, 2)+1, A059100(n)))` -/
def P3070300163977565228.Spec : Prop :=
  ∀ n, P3070300163977565228.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P2444074271591853733

`and(A088837(n+1), A338062(n+1))%5`
-/

namespace A089612.P2444074271591853733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A088837 (n + 1)) (A338062 (n + 1))) 5

end

end A089612.P2444074271591853733

namespace A089612

/-- `and(A088837(n+1), A338062(n+1))%5` -/
def P2444074271591853733.Spec : Prop :=
  ∀ n, P2444074271591853733.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P14131833840597196073

`A305427(and(val(3*n-(n-2), 2), A059100(n)))`
-/

namespace A089612.P14131833840597196073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305427 (Int.land (SequenceMachineLib.valuation ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat 2 : ℤ) (A059100 n)).toNat

end

end A089612.P14131833840597196073

namespace A089612

/-- `A305427(and(val(3*n-(n-2), 2), A059100(n)))` -/
def P14131833840597196073.Spec : Prop :=
  ∀ n, P14131833840597196073.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P12875571472298444048

`A305427(and(A007814(n+1)+1, A059100(n)))`
-/

namespace A089612.P12875571472298444048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305427 (Int.land (A007814 (n + 1) + 1) (A059100 n)).toNat

end

end A089612.P12875571472298444048

namespace A089612

/-- `A305427(and(A007814(n+1)+1, A059100(n)))` -/
def P12875571472298444048.Spec : Prop :=
  ∀ n, P12875571472298444048.a n = A089612 (n + 1)

end A089612

/-! ## A089612.P9523023983680666964

`(2^val(∑[3^n], 2))%5`
-/

namespace A089612.P9523023983680666964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 % 5

end

end A089612.P9523023983680666964

namespace A089612

/-- `(2^val(∑[3^n], 2))%5` -/
def P9523023983680666964.Spec : Prop :=
  ∀ n, (P9523023983680666964.a n : ℤ) = A089612 (n + 1)

end A089612

/-! ## A089612.P825680712383670119

`gcd(2^(n+1), ∑[3^n])%5`
-/

namespace A089612.P825680712383670119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) % 5

end

end A089612.P825680712383670119

namespace A089612

/-- `gcd(2^(n+1), ∑[3^n])%5` -/
def P825680712383670119.Spec : Prop :=
  ∀ n, (P825680712383670119.a n : ℤ) = A089612 (n + 1)

end A089612

/-!
# A089613: "The partial sums of the positions where T occurs in this sentence are one, eight, twentyfive, fortynine, eightythree, onehundredtwentysix, ..." (Variation of Aronson's sequence).

The programs for A089613, there is no canonical definition to state claims against.
-/

/-! ## A089613.P16886481126880882953

`xor(A064225(n), A084888(A000142(n)))`
-/

namespace A089613.P16886481126880882953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064225 n) (A084888 (A000142 n).toNat)

end

end A089613.P16886481126880882953

/-! ## A089613.P16266610684934503771

`xor(A001842(A108851(n)), A064225(n))`
-/

namespace A089613.P16266610684934503771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001842 (A108851 n).toNat) (A064225 n)

end

end A089613.P16266610684934503771

/-!
# A089614: Number of primes between n^2 and (n+1/4)^2.

The programs for A089614, the canonical program `A089614.P1682478564131423360` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089614 has offset 1).

The definition of A089614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089614.P681457796249237615

`A000720(A074148(n+1)+∑[n])-A038107(n+1)`
-/

namespace A089614.P681457796249237615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A074148 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat - A038107 (n + 1)

end

end A089614.P681457796249237615

namespace A089614

/-- `A000720(A074148(n+1)+∑[n])-A038107(n+1)` -/
def P681457796249237615.Spec : Prop :=
  ∀ n, P681457796249237615.a n = A089614 (n + 1)

end A089614

/-! ## A089614.P1682478564131423360

`A000720(A004526(n+1)+(n+1)²)-A000720((n+1)²)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089614

/-- `A000720(A004526(n+1)+(n+1)²)-A000720((n+1)²)` -/
def P1682478564131423360.Spec : Prop :=
  ∀ n, P1682478564131423360.a n = A089614 (n + 1)

theorem P1682478564131423360.correct : P1682478564131423360.Spec := by
  intro n
  simp only [A089614, Nat.add_sub_cancel]

end A089614

/-! ## A089614.P12643758360405372156

`A037805(A187224(2*(n+1))+record[A046742(n+1)])`
-/

namespace A089614.P12643758360405372156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (A187224 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089614.P12643758360405372156

namespace A089614

/-- `A037805(A187224(2*(n+1))+record[A046742(n+1)])` -/
def P12643758360405372156.Spec : Prop :=
  ∀ n, P12643758360405372156.a n = A089614 (n + 1)

end A089614

/-! ## A089614.P13889144078721924989

`A288633(A014217(n+1))+A001222(A060775(n+1))`
-/

namespace A089614.P13889144078721924989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288633 (A014217 (n + 1)).toNat + A001222 (A060775 (n + 1)).toNat

end

end A089614.P13889144078721924989

namespace A089614

/-- `A288633(A014217(n+1))+A001222(A060775(n+1))` -/
def P13889144078721924989.Spec : Prop :=
  ∀ n, P13889144078721924989.a n = A089614 (n + 1)

end A089614

/-! ## A089614.P8016411437754035300

`A333382(A373007(n+1)%A060648(2*(n+2)))`
-/

namespace A089614.P8016411437754035300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (Int.tmod (A373007 (n + 1)) (A060648 (2 * (n + 2)))).toNat

end

end A089614.P8016411437754035300

namespace A089614

/-- `A333382(A373007(n+1)%A060648(2*(n+2)))` -/
def P8016411437754035300.Spec : Prop :=
  ∀ n, P8016411437754035300.a n = A089614 (n + 1)

end A089614

/-!
# A089615: Number of primes between n^2 and (n+1/5)^2.

The programs for A089615, there is no canonical definition to state claims against.
-/

/-! ## A089615.P9567264230108044401

`A195061(A195081(3*n+4))-A369253(n+1)`
-/

namespace A089615.P9567264230108044401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195061 (A195081 (3 * n + 4)).toNat - A369253 (n + 1)

end

end A089615.P9567264230108044401

/-! ## A089615.P3930664168688010554

`or(A079978(A000292(2*(n+1))), A089616(n+1))`
-/

namespace A089615.P3930664168688010554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079978 (A000292 (2 * (n + 1))).toNat) (A089616 (n + 1))

end

end A089615.P3930664168688010554

/-! ## A089615.P10935375460777811228

`A342845(A333840(3*n+4)%∑{d}[n+1, lcm(#, n+1)])`
-/

namespace A089615.P10935375460777811228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 (Int.tmod (A333840 (3 * n + 4)) ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℤ)).toNat

end

end A089615.P10935375460777811228

/-! ## A089615.P2468004766121541371

`A284256(A064216(2*n+3)+A060058(n))`
-/

namespace A089615.P2468004766121541371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A064216 (2 * n + 3) + A060058 n).toNat

end

end A089615.P2468004766121541371

/-! ## A089615.P966966619100751556

`A267417(2*n+3)+A267417(A265044(n+4))`
-/

namespace A089615.P966966619100751556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (2 * n + 3) + A267417 (A265044 (n + 4)).toNat

end

end A089615.P966966619100751556

/-!
# A089616: Number of primes between n^2 and (n+1/6)^2.

The programs for A089616, there is no canonical definition to state claims against.
-/

/-! ## A089616.P8505780552656820657

`A069160(n+1)%A169917(A054238(n+1))`
-/

namespace A089616.P8505780552656820657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069160 (n + 1)) (A169917 (A054238 (n + 1)).toNat)

end

end A089616.P8505780552656820657

/-! ## A089616.P3562655351382127354

`A069160(n+1)+A010815(A069127(n+5))`
-/

namespace A089616.P3562655351382127354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069160 (n + 1) + A010815 (A069127 (n + 5)).toNat

end

end A089616.P3562655351382127354

/-! ## A089616.P8007518394587351559

`and(A069160(n+1), A071846(n+1))`
-/

namespace A089616.P8007518394587351559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069160 (n + 1)) (A071846 (n + 1))

end

end A089616.P8007518394587351559

/-! ## A089616.P11243422823906167224

`and(A069160(n+1), A107084(n+1))`
-/

namespace A089616.P11243422823906167224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069160 (n + 1)) (A107084 (n + 1))

end

end A089616.P11243422823906167224

/-! ## A089616.P11979961208976045578

`A285716(A278742(n+2))`
-/

namespace A089616.P11979961208976045578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (A278742 (n + 2)).toNat

end

end A089616.P11979961208976045578

/-!
# A089617: Number of primes between n^2 and (n+1/7)^2.

The programs for A089617, there is no canonical definition to state claims against.
-/

/-! ## A089617.P6974131539938569177

`A086886(A086885(n+1))%A196059(n+2)`
-/

namespace A089617.P6974131539938569177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086886 (A086885 (n + 1)).toNat) (A196059 (n + 2))

end

end A089617.P6974131539938569177

/-! ## A089617.P15780996130776160657

`A268643(∑[A279073(n+1)]+1)`
-/

namespace A089617.P15780996130776160657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A089617.P15780996130776160657

/-! ## A089617.P1533203748645797843

`gcd(val(A233344(n+1), 4), A236109(n+1))`
-/

namespace A089617.P1533203748645797843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (A233344 (n + 1)).toNat 4 : ℤ) (A236109 (n + 1))

end

end A089617.P1533203748645797843

/-! ## A089617.P12344299627098690559

`A084645(A326175(n+1))%A000119(n)`
-/

namespace A089617.P12344299627098690559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084645 (A326175 (n + 1)).toNat) (A000119 n)

end

end A089617.P12344299627098690559

/-! ## A089617.P17634720775820160746

`A124763(A050096(n+2)%A387382(n+3))`
-/

namespace A089617.P17634720775820160746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (Int.tmod (A050096 (n + 2)) (A387382 (n + 3))).toNat

end

end A089617.P17634720775820160746

/-!
# A089618: Continued fraction elements constructed out of the van der Corput discrepancy sequence.

The programs for A089618, the canonical program `A089618.P2029056665069521973` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089618 has offset 1).

The definition of A089618 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089618.P2029056665069521973

`floor(1/(2^(A030101(n+1)/A062383(n+1))-1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089618

/-- `floor(1/(2^(A030101(n+1)/A062383(n+1))-1))` -/
def P2029056665069521973.Spec : Prop :=
  ∀ n, P2029056665069521973.a n = A089618 (n + 1)

theorem P2029056665069521973.correct : P2029056665069521973.Spec := by
  intro n
  simp only [A089618, Nat.add_sub_cancel]

end A089618

/-!
# A089619: a(n) = greatest prime factor of n^2 + (n+1)^2 for n >= 1.

The programs for A089619, the canonical program `A089619.P11278826099276717813` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089619 has offset 1).

The definition of A089619 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089619.P11278826099276717813

`A006530(A001844(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A089619

/-- `A006530(A001844(n+1))` -/
def P11278826099276717813.Spec : Prop :=
  ∀ n, P11278826099276717813.a n = A089619 (n + 1)

theorem P11278826099276717813.correct : P11278826099276717813.Spec := by
  intro n
  simp only [A089619, Nat.add_sub_cancel]

end A089619

/-! ## A089619.P17649668691599271813

`A014442(2*n+3)`
-/

namespace A089619.P17649668691599271813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (2 * n + 3)

end

end A089619.P17649668691599271813

namespace A089619

/-- `A014442(2*n+3)` -/
def P17649668691599271813.Spec : Prop :=
  ∀ n, P17649668691599271813.a n = A089619 (n + 1)

end A089619

/-! ## A089619.P14993376526634040059

`A250069(2*n+3)+1`
-/

namespace A089619.P14993376526634040059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (2 * n + 3) + 1

end

end A089619.P14993376526634040059

namespace A089619

/-- `A250069(2*n+3)+1` -/
def P14993376526634040059.Spec : Prop :=
  ∀ n, P14993376526634040059.a n = A089619 (n + 1)

end A089619

/-! ## A089619.P3664017497896918191

`A252096(2*n+3)+2`
-/

namespace A089619.P3664017497896918191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252096 (2 * n + 3) + 2

end

end A089619.P3664017497896918191

namespace A089619

/-- `A252096(2*n+3)+2` -/
def P3664017497896918191.Spec : Prop :=
  ∀ n, P3664017497896918191.a n = A089619 (n + 1)

end A089619

/-! ## A089619.P17065521744740927770

`A000027(A014442(Δ[(n+1)²]))`
-/

namespace A089619.P17065521744740927770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A014442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A089619.P17065521744740927770

namespace A089619

/-- `A000027(A014442(Δ[(n+1)²]))` -/
def P17065521744740927770.Spec : Prop :=
  ∀ n, P17065521744740927770.a n = A089619 (n + 1)

end A089619

/-! ## A089619.P15889764540473772396

`or(1, A006530(∑[4*(n+1)]+1))`
-/

namespace A089619.P15889764540473772396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A089619.P15889764540473772396

namespace A089619

/-- `or(1, A006530(∑[4*(n+1)]+1))` -/
def P15889764540473772396.Spec : Prop :=
  ∀ n, P15889764540473772396.a n = A089619 (n + 1)

end A089619

/-! ## A089619.P11330140512135878987

`A006530(A099776(n+1))`
-/

namespace A089619.P11330140512135878987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A099776 (n + 1)).toNat

end

end A089619.P11330140512135878987

namespace A089619

/-- `A006530(A099776(n+1))` -/
def P11330140512135878987.Spec : Prop :=
  ∀ n, P11330140512135878987.a n = A089619 (n + 1)

theorem P11330140512135878987.correct : P11330140512135878987.Spec := by
  intro n
  simp only [A089619, Nat.add_sub_cancel, A089619.P11330140512135878987.a, A089619.P11278826099276717813.a, A001844, A001844.P5037395199076350534.a, A006530, A006530.P13372528560459906635.a, A099776, A099776.P2051460282799887681.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089619

/-! ## A089619.P14167152777013902442

`A006530(A046092(n+1)+1)`
-/

namespace A089619.P14167152777013902442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046092 (n + 1) + 1).toNat

end

end A089619.P14167152777013902442

namespace A089619

/-- `A006530(A046092(n+1)+1)` -/
def P14167152777013902442.Spec : Prop :=
  ∀ n, P14167152777013902442.a n = A089619 (n + 1)

theorem P14167152777013902442.correct : P14167152777013902442.Spec := by
  intro n
  simp only [A089619, Nat.add_sub_cancel, A089619.P14167152777013902442.a, A089619.P11278826099276717813.a, A001844, A001844.P5037395199076350534.a, A006530, A006530.P13372528560459906635.a, A046092, A046092.P16411658895297056450.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089619

/-! ## A089619.P5293703893483510999

`A006530(A106232(n+2)+1)`
-/

namespace A089619.P5293703893483510999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A106232 (n + 2) + 1).toNat

end

end A089619.P5293703893483510999

namespace A089619

/-- `A006530(A106232(n+2)+1)` -/
def P5293703893483510999.Spec : Prop :=
  ∀ n, P5293703893483510999.a n = A089619 (n + 1)

end A089619

/-! ## A089619.P13304971677728768142

`A006530(A014105(n+1)+n+2)`
-/

namespace A089619.P13304971677728768142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014105 (n + 1) + (n + 2 : ℤ)).toNat

end

end A089619.P13304971677728768142

namespace A089619

/-- `A006530(A014105(n+1)+n+2)` -/
def P13304971677728768142.Spec : Prop :=
  ∀ n, P13304971677728768142.a n = A089619 (n + 1)

theorem P13304971677728768142.correct : P13304971677728768142.Spec := by
  intro n
  simp only [A089619, Nat.add_sub_cancel, A089619.P13304971677728768142.a, A089619.P11278826099276717813.a, A001844, A001844.P5037395199076350534.a, A006530, A006530.P13372528560459906635.a, A014105, A014105.P182524374866796289.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089619

/-! ## A089619.P2964562896669554919

`A006530(A000384(n+2)-(n+1))`
-/

namespace A089619.P2964562896669554919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000384 (n + 2) - (n + 1 : ℤ)).toNat

end

end A089619.P2964562896669554919

namespace A089619

/-- `A006530(A000384(n+2)-(n+1))` -/
def P2964562896669554919.Spec : Prop :=
  ∀ n, P2964562896669554919.a n = A089619 (n + 1)

theorem P2964562896669554919.correct : P2964562896669554919.Spec := by
  intro n
  simp only [A089619, Nat.add_sub_cancel, A089619.P2964562896669554919.a, A089619.P11278826099276717813.a, A000384, A000384.P5392390561999168282.a, A001844, A001844.P5037395199076350534.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089619

/-! ## A089619.P12551886456852259009

`A006530(A059722(n+2)/(n+2))`
-/

namespace A089619.P12551886456852259009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A059722 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A089619.P12551886456852259009

namespace A089619

/-- `A006530(A059722(n+2)/(n+2))` -/
def P12551886456852259009.Spec : Prop :=
  ∀ n, P12551886456852259009.a n = A089619 (n + 1)

end A089619

/-! ## A089619.P3679503707244796468

`A006530((2*n+3)²+1)`
-/

namespace A089619.P3679503707244796468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * n + 3) ^ 2 + 1)

end

end A089619.P3679503707244796468

namespace A089619

/-- `A006530((2*n+3)²+1)` -/
def P3679503707244796468.Spec : Prop :=
  ∀ n, P3679503707244796468.a n = A089619 (n + 1)

end A089619

/-! ## A089619.P17681814131949061439

`A358440(∑[n+1])`
-/

namespace A089619.P17681814131949061439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358440 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089619.P17681814131949061439

namespace A089619

/-- `A358440(∑[n+1])` -/
def P17681814131949061439.Spec : Prop :=
  ∀ n, P17681814131949061439.a n = A089619 (n + 1)

end A089619

/-!
# A089620: a(n) = n^3 + prime(n).

The programs for A089620, the canonical program `A089620.P15981085094087567740` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089620 has offset 1).

The definition of A089620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3+A000040(n+1)` (program `A089620.P15981085094087567740`, by `A089620.P15981085094087567740.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089620.P15981085094087567740

`(n+1)^3+A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089620

/-- `(n+1)^3+A000040(n+1)` -/
def P15981085094087567740.Spec : Prop :=
  ∀ n, P15981085094087567740.a n = A089620 (n + 1)

theorem P15981085094087567740.correct : P15981085094087567740.Spec := by
  intro n
  simp only [A089620, Nat.add_sub_cancel]

end A089620

/-! ## A089620.P17487663589123796267

`∑[A054541(n+1)]+(n+1)^3`
-/

namespace A089620.P17487663589123796267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 3 : ℤ)

end

end A089620.P17487663589123796267

namespace A089620

/-- `∑[A054541(n+1)]+(n+1)^3` -/
def P17487663589123796267.Spec : Prop :=
  ∀ n, P17487663589123796267.a n = A089620 (n + 1)

end A089620

/-! ## A089620.P7687200780955537488

`(n+1)^3+A006093(n+1)+1`
-/

namespace A089620.P7687200780955537488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) + (A006093 (n + 1) + 1)

end

end A089620.P7687200780955537488

namespace A089620

/-- `(n+1)^3+A006093(n+1)+1` -/
def P7687200780955537488.Spec : Prop :=
  ∀ n, P7687200780955537488.a n = A089620 (n + 1)

theorem P7687200780955537488.correct : P7687200780955537488.Spec := by
  intro n
  simp only [A089620, Nat.add_sub_cancel, A089620.P7687200780955537488.a, A089620.P15981085094087567740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089620

/-! ## A089620.P10863418304864855058

`(n+1)^3+A001749(n+1)/4`
-/

namespace A089620.P10863418304864855058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) + (A001749 (n + 1) : ℚ) / 4

end

end A089620.P10863418304864855058

namespace A089620

/-- `(n+1)^3+A001749(n+1)/4` -/
def P10863418304864855058.Spec : Prop :=
  ∀ n, P10863418304864855058.a n = (A089620 (n + 1) : ℚ)

theorem P10863418304864855058.correct : P10863418304864855058.Spec := by
  intro n
  simp only [A089620, Nat.add_sub_cancel, A089620.P10863418304864855058.a, A089620.P15981085094087567740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089620

/-! ## A089620.P4735684173969278913

`round(sqrt(A054270(n+1)))+(n+1)^3`
-/

namespace A089620.P4735684173969278913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A054270 (n + 1) : ℝ)) + ((n + 1) ^ 3 : ℤ)

end

end A089620.P4735684173969278913

namespace A089620

/-- `round(sqrt(A054270(n+1)))+(n+1)^3` -/
def P4735684173969278913.Spec : Prop :=
  ∀ n, P4735684173969278913.a n = A089620 (n + 1)

end A089620

/-! ## A089620.P5963198174867152132

`A131733(n+1)+A094792(n)`
-/

namespace A089620.P5963198174867152132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + A094792 n

end

end A089620.P5963198174867152132

namespace A089620

/-- `A131733(n+1)+A094792(n)` -/
def P5963198174867152132.Spec : Prop :=
  ∀ n, P5963198174867152132.a n = A089620 (n + 1)

theorem P5963198174867152132.correct : P5963198174867152132.Spec := by
  intro n
  simp only [A089620, Nat.add_sub_cancel, A089620.P5963198174867152132.a, A089620.P15981085094087567740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A094792, A094792.P13284551861407983223.a, A131733, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089620

/-! ## A089620.P9533919409635828622

`A089621(n+1)-A085540(n)`
-/

namespace A089620.P9533919409635828622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089621 (n + 1) - A085540 n

end

end A089620.P9533919409635828622

namespace A089620

/-- `A089621(n+1)-A085540(n)` -/
def P9533919409635828622.Spec : Prop :=
  ∀ n, P9533919409635828622.a n = A089620 (n + 1)

theorem P9533919409635828622.correct : P9533919409635828622.Spec := by
  intro n
  simp only [A089620, Nat.add_sub_cancel, A089620.P9533919409635828622.a, A089620.P15981085094087567740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A085540, A085540.P1594090999451982572.a, A089621, A089621.P17387096833590570273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089620

/-! ## A089620.P5392124819344510521

`Δ[A007504(n)+A000217(n)²]`
-/

namespace A089620.P5392124819344510521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089620.P5392124819344510521

namespace A089620

/-- `Δ[A007504(n)+A000217(n)²]` -/
def P5392124819344510521.Spec : Prop :=
  ∀ n, P5392124819344510521.a n = A089620 (n + 1)

end A089620

/-! ## A089620.P9466934759944484807

`A000578(n+1)+Δ[A007504(n)]`
-/

namespace A089620.P9466934759944484807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (f1 (n + 1) - f1 n)

end

end A089620.P9466934759944484807

namespace A089620

/-- `A000578(n+1)+Δ[A007504(n)]` -/
def P9466934759944484807.Spec : Prop :=
  ∀ n, P9466934759944484807.a n = A089620 (n + 1)

end A089620

/-! ## A089620.P15853263585543668081

`A068601(n+1)+A008864(n+1)`
-/

namespace A089620.P15853263585543668081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) + A008864 (n + 1)

end

end A089620.P15853263585543668081

namespace A089620

/-- `A068601(n+1)+A008864(n+1)` -/
def P15853263585543668081.Spec : Prop :=
  ∀ n, P15853263585543668081.a n = A089620 (n + 1)

theorem P15853263585543668081.correct : P15853263585543668081.Spec := by
  intro n
  simp only [A089620, Nat.add_sub_cancel, A089620.P15853263585543668081.a, A089620.P15981085094087567740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A068601, A068601.P18163521696996894258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089620

/-! ## A089620.P6669641437844624591

`A184628(n+1)+A006005(n+1)`
-/

namespace A089620.P6669641437844624591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1) + A006005 (n + 1)

end

end A089620.P6669641437844624591

namespace A089620

/-- `A184628(n+1)+A006005(n+1)` -/
def P6669641437844624591.Spec : Prop :=
  ∀ n, P6669641437844624591.a n = A089620 (n + 1)

end A089620

/-! ## A089620.P10314188950813792965

`A350171(n+1)+A301647(n+1)`
-/

namespace A089620.P10314188950813792965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (n + 1) + A301647 (n + 1)

end

end A089620.P10314188950813792965

namespace A089620

/-- `A350171(n+1)+A301647(n+1)` -/
def P10314188950813792965.Spec : Prop :=
  ∀ n, P10314188950813792965.a n = A089620 (n + 1)

theorem P10314188950813792965.correct : P10314188950813792965.Spec := by
  intro n
  simp only [A089620, Nat.add_sub_cancel, A089620.P10314188950813792965.a, A089620.P15981085094087567740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A301647, A301647.P13721159424983545998.a, A350171, A350171.P13869261041356617048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089620

/-! ## A089620.P2496482206175610770

`A000578(n+1)+A007504(n+1)-A007504(n)`
-/

namespace A089620.P2496482206175610770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (A007504 (n + 1) - A007504 n)

end

end A089620.P2496482206175610770

namespace A089620

/-- `A000578(n+1)+A007504(n+1)-A007504(n)` -/
def P2496482206175610770.Spec : Prop :=
  ∀ n, P2496482206175610770.a n = A089620 (n + 1)

end A089620

/-! ## A089620.P3958570473255813214

`A000578(n+1)+A030078(n+1)-A127917(n+1)`
-/

namespace A089620.P3958570473255813214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (A030078 (n + 1) - A127917 (n + 1))

end

end A089620.P3958570473255813214

namespace A089620

/-- `A000578(n+1)+A030078(n+1)-A127917(n+1)` -/
def P3958570473255813214.Spec : Prop :=
  ∀ n, P3958570473255813214.a n = A089620 (n + 1)

theorem P3958570473255813214.correct : P3958570473255813214.Spec := by
  intro n
  simp only [A089620, Nat.add_sub_cancel, A089620.P3958570473255813214.a, A089620.P15981085094087567740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000578, A000578.P12162961755414704816.a, A030078, A030078.P13819432151207990454.a, A127917, A127917.P3075272387178552324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089620

/-! ## A089620.P327688875843284763

`A000578(n+1)+A181149(n+1)-A135178(n+1)`
-/

namespace A089620.P327688875843284763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (A181149 (n + 1) - A135178 (n + 1))

end

end A089620.P327688875843284763

namespace A089620

/-- `A000578(n+1)+A181149(n+1)-A135178(n+1)` -/
def P327688875843284763.Spec : Prop :=
  ∀ n, P327688875843284763.a n = A089620 (n + 1)

theorem P327688875843284763.correct : P327688875843284763.Spec := by
  intro n
  simp only [A089620, Nat.add_sub_cancel, A089620.P327688875843284763.a, A089620.P15981085094087567740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000578, A000578.P12162961755414704816.a, A135178, A135178.P2117100385622879640.a, A181149, A181149.P13811606423061194343.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089620

/-! ## A089620.P12882285577205729315

`A000578(n+1)+A030078(n+1)/A001248(n+1)`
-/

namespace A089620.P12882285577205729315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) : ℚ) + (A030078 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A089620.P12882285577205729315

namespace A089620

/-- `A000578(n+1)+A030078(n+1)/A001248(n+1)` -/
def P12882285577205729315.Spec : Prop :=
  ∀ n, P12882285577205729315.a n = (A089620 (n + 1) : ℚ)

end A089620

/-! ## A089620.P15412739646758630324

`Δ[A014284(n+1)+∑[n]²]`
-/

namespace A089620.P15412739646758630324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089620.P15412739646758630324

namespace A089620

/-- `Δ[A014284(n+1)+∑[n]²]` -/
def P15412739646758630324.Spec : Prop :=
  ∀ n, P15412739646758630324.a n = A089620 (n + 1)

end A089620

/-! ## A089620.P14101671438581610971

`A008578(n+2)+A000578(n+1)`
-/

namespace A089620.P14101671438581610971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A000578 (n + 1)

end

end A089620.P14101671438581610971

namespace A089620

/-- `A008578(n+2)+A000578(n+1)` -/
def P14101671438581610971.Spec : Prop :=
  ∀ n, P14101671438581610971.a n = A089620 (n + 1)

end A089620

/-!
# A089621: n^4 + n-th prime.

The programs for A089621, the canonical program `A089621.P17387096833590570273` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089621 has offset 1).

The definition of A089621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089621.P17387096833590570273

`(n+1)^4+A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089621

/-- `(n+1)^4+A000040(n+1)` -/
def P17387096833590570273.Spec : Prop :=
  ∀ n, P17387096833590570273.a n = A089621 (n + 1)

theorem P17387096833590570273.correct : P17387096833590570273.Spec := by
  intro n
  simp only [A089621, Nat.add_sub_cancel]

end A089621

/-! ## A089621.P535934208073856335

`A089620(n+1)+A085540(n)`
-/

namespace A089621.P535934208073856335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089620 (n + 1) + A085540 n

end

end A089621.P535934208073856335

namespace A089621

/-- `A089620(n+1)+A085540(n)` -/
def P535934208073856335.Spec : Prop :=
  ∀ n, P535934208073856335.a n = A089621 (n + 1)

theorem P535934208073856335.correct : P535934208073856335.Spec := by
  intro n
  simp only [A089621, Nat.add_sub_cancel, A089621.P535934208073856335.a, A089621.P17387096833590570273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A085540, A085540.P1594090999451982572.a, A089620, A089620.P15981085094087567740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089621

/-! ## A089621.P5725126357450324647

`A269657(n)+A095116(n+1)`
-/

namespace A089621.P5725126357450324647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269657 n + A095116 (n + 1)

end

end A089621.P5725126357450324647

namespace A089621

/-- `A269657(n)+A095116(n+1)` -/
def P5725126357450324647.Spec : Prop :=
  ∀ n, P5725126357450324647.a n = A089621 (n + 1)

theorem P5725126357450324647.correct : P5725126357450324647.Spec := by
  intro n
  simp only [A089621, Nat.add_sub_cancel, A089621.P5725126357450324647.a, A089621.P17387096833590570273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A095116, A095116.P2789422422958858773.a, A269657, A269657.P9434583702918928993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089621

/-! ## A089621.P3843536372954558031

`A123865(n+1)+A008864(n+1)`
-/

namespace A089621.P3843536372954558031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123865 (n + 1) + A008864 (n + 1)

end

end A089621.P3843536372954558031

namespace A089621

/-- `A123865(n+1)+A008864(n+1)` -/
def P3843536372954558031.Spec : Prop :=
  ∀ n, P3843536372954558031.a n = A089621 (n + 1)

theorem P3843536372954558031.correct : P3843536372954558031.Spec := by
  intro n
  simp only [A089621, Nat.add_sub_cancel, A089621.P3843536372954558031.a, A089621.P17387096833590570273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A123865, A123865.P509384507853173445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089621

/-! ## A089621.P12297562324984571186

`A047928(n+2)+A004232(n+1)`
-/

namespace A089621.P12297562324984571186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047928 (n + 2) + A004232 (n + 1)

end

end A089621.P12297562324984571186

namespace A089621

/-- `A047928(n+2)+A004232(n+1)` -/
def P12297562324984571186.Spec : Prop :=
  ∀ n, P12297562324984571186.a n = A089621 (n + 1)

theorem P12297562324984571186.correct : P12297562324984571186.Spec := by
  intro n
  simp only [A089621, Nat.add_sub_cancel, A089621.P12297562324984571186.a, A089621.P17387096833590570273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004232, A004232.P3456609317362794228.a, A047928, A047928.P2133462667812654379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089621

/-! ## A089621.P6159612403610186558

`A008578(n+2)+(n+1)²²`
-/

namespace A089621.P6159612403610186558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A089621.P6159612403610186558

namespace A089621

/-- `A008578(n+2)+(n+1)²²` -/
def P6159612403610186558.Spec : Prop :=
  ∀ n, P6159612403610186558.a n = A089621 (n + 1)

end A089621

/-! ## A089621.P17657816606418280788

`A006093(n+1)+A002523(n+1)`
-/

namespace A089621.P17657816606418280788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A002523 (n + 1)

end

end A089621.P17657816606418280788

namespace A089621

/-- `A006093(n+1)+A002523(n+1)` -/
def P17657816606418280788.Spec : Prop :=
  ∀ n, P17657816606418280788.a n = A089621 (n + 1)

theorem P17657816606418280788.correct : P17657816606418280788.Spec := by
  intro n
  simp only [A089621, Nat.add_sub_cancel, A089621.P17657816606418280788.a, A089621.P17387096833590570273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002523, A002523.P178649398705969946.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089621

/-! ## A089621.P12546530174551336524

`A040976(n+1)+Δ[A000538(n)]+2`
-/

namespace A089621.P12546530174551336524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (f1 (n + 1) - f1 n + 2)

end

end A089621.P12546530174551336524

namespace A089621

/-- `A040976(n+1)+Δ[A000538(n)]+2` -/
def P12546530174551336524.Spec : Prop :=
  ∀ n, P12546530174551336524.a n = A089621 (n + 1)

end A089621

/-! ## A089621.P10686543676759125651

`A014689(n+1)+Δ[A000538(n)]+n+1`
-/

namespace A089621.P10686543676759125651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (f1 (n + 1) - f1 n) + (n + 1 : ℤ)

end

end A089621.P10686543676759125651

namespace A089621

/-- `A014689(n+1)+Δ[A000538(n)]+n+1` -/
def P10686543676759125651.Spec : Prop :=
  ∀ n, P10686543676759125651.a n = A089621 (n + 1)

end A089621

/-! ## A089621.P17466248186332377836

`A000583(n+1)+A030514(n+1)/A030078(n+1)`
-/

namespace A089621.P17466248186332377836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 (n + 1) : ℚ) + (A030514 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ)

end

end A089621.P17466248186332377836

namespace A089621

/-- `A000583(n+1)+A030514(n+1)/A030078(n+1)` -/
def P17466248186332377836.Spec : Prop :=
  ∀ n, P17466248186332377836.a n = (A089621 (n + 1) : ℚ)

end A089621

/-! ## A089621.P10080837158428399225

`A158611(n+3)+(n+1)²²`
-/

namespace A089621.P10080837158428399225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A089621.P10080837158428399225

namespace A089621

/-- `A158611(n+3)+(n+1)²²` -/
def P10080837158428399225.Spec : Prop :=
  ∀ n, P10080837158428399225.a n = A089621 (n + 1)

end A089621

/-! ## A089621.P1445250058450418998

`record[A006530(n+2)]+(n+1)^4`
-/

namespace A089621.P1445250058450418998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 4 : ℤ)

end

end A089621.P1445250058450418998

namespace A089621

/-- `record[A006530(n+2)]+(n+1)^4` -/
def P1445250058450418998.Spec : Prop :=
  ∀ n, P1445250058450418998.a n = A089621 (n + 1)

end A089621

/-! ## A089621.P4325986857462335894

`record[A020639(n+2)]+(n+1)^4`
-/

namespace A089621.P4325986857462335894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 4 : ℤ)

end

end A089621.P4325986857462335894

namespace A089621

/-- `record[A020639(n+2)]+(n+1)^4` -/
def P4325986857462335894.Spec : Prop :=
  ∀ n, P4325986857462335894.a n = A089621 (n + 1)

end A089621

/-! ## A089621.P17654562228333014093

`A000583(n+1)+record[A006530(n+2)]`
-/

namespace A089621.P17654562228333014093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089621.P17654562228333014093

namespace A089621

/-- `A000583(n+1)+record[A006530(n+2)]` -/
def P17654562228333014093.Spec : Prop :=
  ∀ n, P17654562228333014093.a n = A089621 (n + 1)

end A089621

/-! ## A089621.P8069489372340960454

`A006530(2*A000040(n+1))+(n+1)²²`
-/

namespace A089621.P8069489372340960454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A000040 (n + 1)).toNat + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A089621.P8069489372340960454

namespace A089621

/-- `A006530(2*A000040(n+1))+(n+1)²²` -/
def P8069489372340960454.Spec : Prop :=
  ∀ n, P8069489372340960454.a n = A089621 (n + 1)

end A089621

/-! ## A089621.P9520530911655411582

`A006530(lcm(2, A000040(n+1)))+(n+1)²²`
-/

namespace A089621.P9520530911655411582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A000040 (n + 1))) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A089621.P9520530911655411582

namespace A089621

/-- `A006530(lcm(2, A000040(n+1)))+(n+1)²²` -/
def P9520530911655411582.Spec : Prop :=
  ∀ n, P9520530911655411582.a n = A089621 (n + 1)

end A089621

/-! ## A089621.P7729961327521186125

`A082500(2*(n+1))+(n+1)²²`
-/

namespace A089621.P7729961327521186125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * (n + 1)) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A089621.P7729961327521186125

namespace A089621

/-- `A082500(2*(n+1))+(n+1)²²` -/
def P7729961327521186125.Spec : Prop :=
  ∀ n, P7729961327521186125.a n = A089621 (n + 1)

end A089621

/-! ## A089621.P11801187078343619563

`p?[comp[n²]]+(n+1)²²`
-/

namespace A089621.P11801187078343619563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + ((n + 1) ^ 2) ^ 2

end

end A089621.P11801187078343619563

namespace A089621

/-- `p?[comp[n²]]+(n+1)²²` -/
def P11801187078343619563.Spec : Prop :=
  ∀ n, (P11801187078343619563.a n : ℤ) = A089621 (n + 1)

end A089621

/-!
# A089622: a(n) = n^n + n-th prime.

The programs for A089622, the canonical program `A089622.P1045066474853624940` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089622 has offset 1).

The definition of A089622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089622.P1045066474853624940

`(n+1)^(n+1)+A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089622

/-- `(n+1)^(n+1)+A000040(n+1)` -/
def P1045066474853624940.Spec : Prop :=
  ∀ n, P1045066474853624940.a n = A089622 (n + 1)

theorem P1045066474853624940.correct : P1045066474853624940.Spec := by
  intro n
  simp only [A089622, Nat.add_sub_cancel]

end A089622

/-! ## A089622.P4808427283378170424

`p?[comp[n²]]+(n+1)^(n+1)`
-/

namespace A089622.P4808427283378170424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + (n + 1) ^ (n + 1)

end

end A089622.P4808427283378170424

namespace A089622

/-- `p?[comp[n²]]+(n+1)^(n+1)` -/
def P4808427283378170424.Spec : Prop :=
  ∀ n, (P4808427283378170424.a n : ℤ) = A089622 (n + 1)

end A089622

/-! ## A089622.P5196245305817827401

`record[∑{p}[n+2, #]]+(n+1)^(n+1)`
-/

namespace A089622.P5196245305817827401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1) ^ (n + 1)

end

end A089622.P5196245305817827401

namespace A089622

/-- `record[∑{p}[n+2, #]]+(n+1)^(n+1)` -/
def P5196245305817827401.Spec : Prop :=
  ∀ n, (P5196245305817827401.a n : ℤ) = A089622 (n + 1)

end A089622

/-! ## A089622.P5650626622778743289

`record[A006530(n+2)]+(n+1)^(n+1)`
-/

namespace A089622.P5650626622778743289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ (n + 1) : ℤ)

end

end A089622.P5650626622778743289

namespace A089622

/-- `record[A006530(n+2)]+(n+1)^(n+1)` -/
def P5650626622778743289.Spec : Prop :=
  ∀ n, P5650626622778743289.a n = A089622 (n + 1)

end A089622

/-! ## A089622.P5753556786281219525

`record[A020639(n+2)]+(n+1)^(n+1)`
-/

namespace A089622.P5753556786281219525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ (n + 1) : ℤ)

end

end A089622.P5753556786281219525

namespace A089622

/-- `record[A020639(n+2)]+(n+1)^(n+1)` -/
def P5753556786281219525.Spec : Prop :=
  ∀ n, P5753556786281219525.a n = A089622 (n + 1)

end A089622

/-! ## A089622.P5026936592258957630

`A008578(n+2)+A000312(n+1)`
-/

namespace A089622.P5026936592258957630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A000312 (n + 1)

end

end A089622.P5026936592258957630

namespace A089622

/-- `A008578(n+2)+A000312(n+1)` -/
def P5026936592258957630.Spec : Prop :=
  ∀ n, P5026936592258957630.a n = A089622 (n + 1)

end A089622

/-! ## A089622.P2599536946136640723

`A182986(n+2)+A000312(n+1)`
-/

namespace A089622.P2599536946136640723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A000312 (n + 1)

end

end A089622.P2599536946136640723

namespace A089622

/-- `A182986(n+2)+A000312(n+1)` -/
def P2599536946136640723.Spec : Prop :=
  ∀ n, P2599536946136640723.a n = A089622 (n + 1)

end A089622

/-! ## A089622.P9152049960063054051

`A000312(n+1)+A007504(n+1)-A007504(n)`
-/

namespace A089622.P9152049960063054051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) + (A007504 (n + 1) - A007504 n)

end

end A089622.P9152049960063054051

namespace A089622

/-- `A000312(n+1)+A007504(n+1)-A007504(n)` -/
def P9152049960063054051.Spec : Prop :=
  ∀ n, P9152049960063054051.a n = A089622 (n + 1)

end A089622

/-!
# A089623: Numbers n such that n^2 + 2n - 1 is prime.

The programs for A089623, there is no canonical definition to state claims against.
-/

/-! ## A089623.P17492777200906060827

`A028870(n+1)-1`
-/

namespace A089623.P17492777200906060827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1) - 1

end

end A089623.P17492777200906060827

/-! ## A089623.P6579508693498777571

`floor(sqrt(A028871(n+1)))`
-/

namespace A089623.P6579508693498777571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028871 (n + 1))

end

end A089623.P6579508693498777571

/-! ## A089623.P16558157104495738434

`floor(A028871(n+1)/A028870(n+1))`
-/

namespace A089623.P16558157104495738434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028871 (n + 1) : ℚ) / (A028870 (n + 1) : ℚ)⌋

end

end A089623.P16558157104495738434

/-! ## A089623.P4628591051018569668

`A001478(n+1)+A028870(n+1)+n`
-/

namespace A089623.P4628591051018569668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A028870 (n + 1) + (n : ℤ))

end

end A089623.P4628591051018569668

/-! ## A089623.P5178576509362029144

`A057428(A001316(n))+A028870(n+1)`
-/

namespace A089623.P5178576509362029144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A001316 n).toNat + A028870 (n + 1)

end

end A089623.P5178576509362029144

/-! ## A089623.P2444929876812618098

`A076479(A006530(n+3))+A028870(n+1)`
-/

namespace A089623.P2444929876812618098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A006530 (n + 3)).toNat + A028870 (n + 1)

end

end A089623.P2444929876812618098

/-! ## A089623.P2979144965406388376

`A076479(A196437(3*n+4))+A028870(n+1)`
-/

namespace A089623.P2979144965406388376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A196437 (3 * n + 4)).toNat + A028870 (n + 1)

end

end A089623.P2979144965406388376

/-! ## A089623.P5875168521503939709

`A033999(A006530(2*n+3))+A028870(n+1)`
-/

namespace A089623.P5875168521503939709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A006530 (2 * n + 3)).toNat + A028870 (n + 1)

end

end A089623.P5875168521503939709

/-! ## A089623.P17341868288365626699

`xor(A003961(A208645(2*n)), A028870(n+1))`
-/

namespace A089623.P17341868288365626699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003961 (A208645 (2 * n)).toNat) (A028870 (n + 1))

end

end A089623.P17341868288365626699

/-! ## A089623.P2720180703962642393

`A033999(A195817(2*n+3))+A028870(n+1)`
-/

namespace A089623.P2720180703962642393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A195817 (2 * n + 3)).toNat + A028870 (n + 1)

end

end A089623.P2720180703962642393

/-! ## A089623.P1935992029949460019

`record[A308085(n+1)+n]`
-/

namespace A089623.P1935992029949460019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089623.P1935992029949460019

/-! ## A089623.P11657962369695200276

`record[floor(sqrt(A164314(n+2)))]`
-/

namespace A089623.P11657962369695200276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A164314 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089623.P11657962369695200276

/-! ## A089623.P1622325777670210908

`A023443(A028870(n+1))`
-/

namespace A089623.P1622325777670210908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A028870 (n + 1)).toNat

end

end A089623.P1622325777670210908

/-! ## A089623.P16279452100017115848

`eq[A035464(n+1), A106544(n+1)]`
-/

namespace A089623.P16279452100017115848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089623.P16279452100017115848

/-! ## A089623.P1488021207589448825

`eq[A106404(n+1), A106544(n+1)]`
-/

namespace A089623.P1488021207589448825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089623.P1488021207589448825

/-! ## A089623.P17086737048142695786

`eq[(n+1)², A106545(A029579(n+1))]`
-/

namespace A089623.P17086737048142695786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (A029579 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089623.P17086737048142695786

/-! ## A089623.P3911173169044019793

`xor(A014963(A028882(n+1)), A028870(n+1))`
-/

namespace A089623.P3911173169044019793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A028882 (n + 1)).toNat) (A028870 (n + 1))

end

end A089623.P3911173169044019793

/-! ## A089623.P379126976544828961

`floor(sqrt(p?[n²-2]))`
-/

namespace A089623.P379126976544828961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A089623.P379126976544828961

/-! ## A089623.P13559440835399246749

`ceil(sqrt(p?[n²-2]))-1`
-/

namespace A089623.P13559440835399246749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉ - 1

end

end A089623.P13559440835399246749

/-! ## A089623.P3937734121322597481

`sqrt(p?[n²-2]+2)-1`
-/

namespace A089623.P3937734121322597481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 : ℝ) - 1

end

end A089623.P3937734121322597481

/-!
# A089624: Expansion of sqrt(2/Pi*EllipticK(4*sqrt(x))).

The programs for A089624, there is no canonical definition to state claims against.
-/

/-! ## A089624.P14445838855344095991

`∑[A334207((n+3)^n)]`
-/

namespace A089624.P14445838855344095991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334207 ((n + 3) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089624.P14445838855344095991

/-!
# A089625: Replace 2^k in binary expansion of n with (k+1)-st prime.

The programs for A089625, there is no canonical definition to state claims against.
-/

/-! ## A089625.P9062829046657511311

`A001414(A019565(n+1))`
-/

namespace A089625.P9062829046657511311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A019565 (n + 1)).toNat

end

end A089625.P9062829046657511311

/-! ## A089625.P16949649260983659192

`A178344(n+1)-A023416(n+1)`
-/

namespace A089625.P16949649260983659192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178344 (n + 1) - A023416 (n + 1)

end

end A089625.P16949649260983659192

/-! ## A089625.P8518200854144996244

`A178344(n+1)-A080791(n+1)`
-/

namespace A089625.P8518200854144996244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178344 (n + 1) - A080791 (n + 1)

end

end A089625.P8518200854144996244

/-! ## A089625.P3582401533831831014

`A302054(A006068(n+1))`
-/

namespace A089625.P3582401533831831014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302054 (A006068 (n + 1)).toNat

end

end A089625.P3582401533831831014

/-! ## A089625.P3059214292978067108

`A331835(2*(n+1))`
-/

namespace A089625.P3059214292978067108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (2 * (n + 1))

end

end A089625.P3059214292978067108

/-! ## A089625.P6437453505223335574

`A331835(n+3+n)-1`
-/

namespace A089625.P6437453505223335574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (n + 3 + n) - 1

end

end A089625.P6437453505223335574

/-! ## A089625.P10409872350707019249

`A262478(A005836(n+2))`
-/

namespace A089625.P10409872350707019249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262478 (A005836 (n + 2)).toNat

end

end A089625.P10409872350707019249

/-! ## A089625.P18121435343549154506

`∑{p}[A284003(A003188(n+1)), #]`
-/

namespace A089625.P18121435343549154506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089625.P18121435343549154506

/-! ## A089625.P13331724160635895738

`∑{p}[A277330(A277711(n+1)), #]`
-/

namespace A089625.P13331724160635895738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (A277711 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089625.P13331724160635895738

/-! ## A089625.P1263086596810906780

`A178344(n+1)-A037861(A124108(n+1))`
-/

namespace A089625.P1263086596810906780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178344 (n + 1) - A037861 (A124108 (n + 1)).toNat

end

end A089625.P1263086596810906780

/-! ## A089625.P17108411203090069855

`A008472(A019565(2*n+1-n))`
-/

namespace A089625.P17108411203090069855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A019565 (2 * n + 1 - n)).toNat

end

end A089625.P17108411203090069855

/-!
# A089626: 

The programs for A089626, there is no canonical definition to state claims against.
-/

/-! ## A089626.P9366930936360440192

`record[-∏[-∏[2*n+1]]]`
-/

namespace A089626.P9366930936360440192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089626.P9366930936360440192

/-! ## A089626.P7057245188297081710

`A057863(Δ[n²])`
-/

namespace A089626.P7057245188297081710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057863 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A089626.P7057245188297081710

/-! ## A089626.P12607176568845984315

`∏[A079484(2*n)]`
-/

namespace A089626.P12607176568845984315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079484 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089626.P12607176568845984315

/-!
# A089627: T(n,k) = binomial(n,2*k)*binomial(2*k,k) for 0 <= k <= n, triangle read by rows.

The programs for A089627, the canonical program `A089627.P9777895427098058840` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089627 has offset 0).

The definition of A089627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), 2*col(n))*C(2*col(n), col(n))` (program `A089627.P9777895427098058840`, by `A089627.P9777895427098058840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089627.P9777895427098058840

`C(row(n), 2*col(n))*C(2*col(n), col(n))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089627

/-- `C(row(n), 2*col(n))*C(2*col(n), col(n))` -/
def P9777895427098058840.Spec : Prop :=
  ∀ n, (P9777895427098058840.a n : ℤ) = A089627 n

theorem P9777895427098058840.correct : P9777895427098058840.Spec := by
  intro n
  simp only [A089627]

end A089627

/-! ## A089627.P5867080541548831809

`A007318(n)*A052553(n)`
-/

namespace A089627.P5867080541548831809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052553 n

end

end A089627.P5867080541548831809

namespace A089627

/-- `A007318(n)*A052553(n)` -/
def P5867080541548831809.Spec : Prop :=
  ∀ n, P5867080541548831809.a n = A089627 n

end A089627

/-! ## A089627.P14420093943764019301

`A080159(n)*A128227(n)`
-/

namespace A089627.P14420093943764019301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n * A128227 n

end

end A089627.P14420093943764019301

namespace A089627

/-- `A080159(n)*A128227(n)` -/
def P14420093943764019301.Spec : Prop :=
  ∀ n, P14420093943764019301.a n = A089627 n

end A089627

/-! ## A089627.P5659529236534021208

`A080159(n)*A141539(n)`
-/

namespace A089627.P5659529236534021208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n * A141539 n

end

end A089627.P5659529236534021208

namespace A089627

/-- `A080159(n)*A141539(n)` -/
def P5659529236534021208.Spec : Prop :=
  ∀ n, P5659529236534021208.a n = A089627 n

end A089627

/-! ## A089627.P4142318129905048145

`A080233(n)*A169803(n)`
-/

namespace A089627.P4142318129905048145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n * A169803 n

end

end A089627.P4142318129905048145

namespace A089627

/-- `A080233(n)*A169803(n)` -/
def P4142318129905048145.Spec : Prop :=
  ∀ n, P4142318129905048145.a n = A089627 n

end A089627

/-! ## A089627.P5711680155359134756

`A080159(n)*A193738(n)`
-/

namespace A089627.P5711680155359134756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n * A193738 n

end

end A089627.P5711680155359134756

namespace A089627

/-- `A080159(n)*A193738(n)` -/
def P5711680155359134756.Spec : Prop :=
  ∀ n, P5711680155359134756.a n = A089627 n

end A089627

/-! ## A089627.P9844892947525568194

`A002260(n+1)*A080159(n)`
-/

namespace A089627.P9844892947525568194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A080159 n

end

end A089627.P9844892947525568194

namespace A089627

/-- `A002260(n+1)*A080159(n)` -/
def P9844892947525568194.Spec : Prop :=
  ∀ n, P9844892947525568194.a n = A089627 n

end A089627

/-! ## A089627.P1096610436430777454

`(A002262(n)+1)*A080159(n)`
-/

namespace A089627.P1096610436430777454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A080159 n

end

end A089627.P1096610436430777454

namespace A089627

/-- `(A002262(n)+1)*A080159(n)` -/
def P1096610436430777454.Spec : Prop :=
  ∀ n, P1096610436430777454.a n = A089627 n

end A089627

/-! ## A089627.P9715067592547780881

`A003983(n+1)*A080159(n)`
-/

namespace A089627.P9715067592547780881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) * A080159 n

end

end A089627.P9715067592547780881

namespace A089627

/-- `A003983(n+1)*A080159(n)` -/
def P9715067592547780881.Spec : Prop :=
  ∀ n, P9715067592547780881.a n = A089627 n

end A089627

/-! ## A089627.P7269310467520448301

`A080159(n)*A125704(n+1)`
-/

namespace A089627.P7269310467520448301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n * A125704 (n + 1)

end

end A089627.P7269310467520448301

namespace A089627

/-- `A080159(n)*A125704(n+1)` -/
def P7269310467520448301.Spec : Prop :=
  ∀ n, P7269310467520448301.a n = A089627 n

end A089627

/-! ## A089627.P14756060988999337241

`A051778(n+3)*A080159(n)`
-/

namespace A089627.P14756060988999337241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051778 (n + 3) * A080159 n

end

end A089627.P14756060988999337241

namespace A089627

/-- `A051778(n+3)*A080159(n)` -/
def P14756060988999337241.Spec : Prop :=
  ∀ n, P14756060988999337241.a n = A089627 n

end A089627

/-! ## A089627.P16821500866143506076

`A028326(n)/2*A052553(n)`
-/

namespace A089627.P16821500866143506076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A052553 n : ℚ)

end

end A089627.P16821500866143506076

namespace A089627

/-- `A028326(n)/2*A052553(n)` -/
def P16821500866143506076.Spec : Prop :=
  ∀ n, P16821500866143506076.a n = (A089627 n : ℚ)

end A089627

/-! ## A089627.P10526315006640302103

`A052553(n)*A306914(n)`
-/

namespace A089627.P10526315006640302103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n * A306914 n

end

end A089627.P10526315006640302103

namespace A089627

/-- `A052553(n)*A306914(n)` -/
def P10526315006640302103.Spec : Prop :=
  ∀ n, P10526315006640302103.a n = A089627 n

end A089627

/-! ## A089627.P3562251552232528093

`A052553(n)*A306915(n)`
-/

namespace A089627.P3562251552232528093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n * A306915 n

end

end A089627.P3562251552232528093

namespace A089627

/-- `A052553(n)*A306915(n)` -/
def P3562251552232528093.Spec : Prop :=
  ∀ n, P3562251552232528093.a n = A089627 n

end A089627

/-! ## A089627.P5007077947105952101

`A080159(n)*A292477(n)`
-/

namespace A089627.P5007077947105952101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n * A292477 n

end

end A089627.P5007077947105952101

namespace A089627

/-- `A080159(n)*A292477(n)` -/
def P5007077947105952101.Spec : Prop :=
  ∀ n, P5007077947105952101.a n = A089627 n

end A089627

/-! ## A089627.P8027415998623520811

`A080159(n)*A307078(n)`
-/

namespace A089627.P8027415998623520811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n * A307078 n

end

end A089627.P8027415998623520811

namespace A089627

/-- `A080159(n)*A307078(n)` -/
def P8027415998623520811.Spec : Prop :=
  ∀ n, P8027415998623520811.a n = A089627 n

end A089627

/-! ## A089627.P7017916670528955716

`A080159(n)*A307079(n)`
-/

namespace A089627.P7017916670528955716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n * A307079 n

end

end A089627.P7017916670528955716

namespace A089627

/-- `A080159(n)*A307079(n)` -/
def P7017916670528955716.Spec : Prop :=
  ∀ n, P7017916670528955716.a n = A089627 n

end A089627

/-! ## A089627.P953787640635973020

`A007318(n)*A026729(A061579(n))`
-/

namespace A089627.P953787640635973020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026729 (A061579 n).toNat

end

end A089627.P953787640635973020

namespace A089627

/-- `A007318(n)*A026729(A061579(n))` -/
def P953787640635973020.Spec : Prop :=
  ∀ n, P953787640635973020.a n = A089627 n

end A089627

/-! ## A089627.P14841474891174221423

`A080159(n)*A141803(n+1)`
-/

namespace A089627.P14841474891174221423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n * A141803 (n + 1)

end

end A089627.P14841474891174221423

namespace A089627

/-- `A080159(n)*A141803(n+1)` -/
def P14841474891174221423.Spec : Prop :=
  ∀ n, P14841474891174221423.a n = A089627 n

end A089627

/-! ## A089627.P21024297474612988

`A080159(n)*A131100(n+1)`
-/

namespace A089627.P21024297474612988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n * A131100 (n + 1)

end

end A089627.P21024297474612988

namespace A089627

/-- `A080159(n)*A131100(n+1)` -/
def P21024297474612988.Spec : Prop :=
  ∀ n, P21024297474612988.a n = A089627 n

end A089627

/-!
# A089628: Smallest member of a pair of consecutive twin prime pairs that have no primes between them.

The programs for A089628, the canonical program `A089628.P1786819195133070352` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089628 has offset 3).

The definition of A089628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089628.P6850461367262855917

`∪[A053778(n+1), A090953(n)]`
-/

namespace A089628.P6850461367262855917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090953 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089628.P6850461367262855917

namespace A089628

/-- `∪[A053778(n+1), A090953(n)]` -/
def P6850461367262855917.Spec : Prop :=
  ∀ n, (P6850461367262855917.a n : ℤ) = A089628 (n + 3)

end A089628

/-! ## A089628.P4393411713913750653

`∪[A053778(n+1), A069457(n+1)]`
-/

namespace A089628.P4393411713913750653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089628.P4393411713913750653

namespace A089628

/-- `∪[A053778(n+1), A069457(n+1)]` -/
def P4393411713913750653.Spec : Prop :=
  ∀ n, (P4393411713913750653.a n : ℤ) = A089628 (n + 3)

end A089628

/-! ## A089628.P1786819195133070352

`A053778(A065033(2*n))-A296065(2*(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A089628

/-- `A053778(A065033(2*n))-A296065(2*(n+1))` -/
def P1786819195133070352.Spec : Prop :=
  ∀ n, P1786819195133070352.a n = A089628 (n + 3)

theorem P1786819195133070352.correct : P1786819195133070352.Spec := by
  intro n
  simp only [A089628, Nat.add_sub_cancel]

end A089628

/-! ## A089628.P9398955531784334519

`record[gcd(A001359(n+1), A048614(n+1))]`
-/

namespace A089628.P9398955531784334519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001359 (n + 1)) (A048614 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089628.P9398955531784334519

namespace A089628

/-- `record[gcd(A001359(n+1), A048614(n+1))]` -/
def P9398955531784334519.Spec : Prop :=
  ∀ n, (P9398955531784334519.a n : ℤ) = A089628 (n + 3)

end A089628

/-! ## A089628.P8267201579480593040

`A001359(record[(n+1)^(1-A048614(n+1))])`
-/

namespace A089628.P8267201579480593040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A048614 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A089628.P8267201579480593040

namespace A089628

/-- `A001359(record[(n+1)^(1-A048614(n+1))])` -/
def P8267201579480593040.Spec : Prop :=
  ∀ n, P8267201579480593040.a n = A089628 (n + 3)

end A089628

/-! ## A089628.P6900230129517615880

`A001359(eq[3, A001359(A048614(n+1)+1)]+1)`
-/

namespace A089628.P6900230129517615880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A048614 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A089628.P6900230129517615880

namespace A089628

/-- `A001359(eq[3, A001359(A048614(n+1)+1)]+1)` -/
def P6900230129517615880.Spec : Prop :=
  ∀ n, P6900230129517615880.a n = A089628 (n + 3)

end A089628

/-! ## A089628.P7468437657921424559

`p?[A014574(n+1)-A000010(A027833(n+1))]`
-/

namespace A089628.P7468437657921424559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A000010 (A027833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089628.P7468437657921424559

namespace A089628

/-- `p?[A014574(n+1)-A000010(A027833(n+1))]` -/
def P7468437657921424559.Spec : Prop :=
  ∀ n, P7468437657921424559.a n = A089628 (n + 3)

end A089628

/-! ## A089628.P16890015812539284896

`p?[A014574(n+1)-A000007(A048614(n+1))]`
-/

namespace A089628.P16890015812539284896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A000007 (A048614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089628.P16890015812539284896

namespace A089628

/-- `p?[A014574(n+1)-A000007(A048614(n+1))]` -/
def P16890015812539284896.Spec : Prop :=
  ∀ n, P16890015812539284896.a n = A089628 (n + 3)

end A089628

/-! ## A089628.P13771527084564995904

`p?[A088175(n+1)-A107393(A084291(n+1))]`
-/

namespace A089628.P13771527084564995904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1) - A107393 (A084291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089628.P13771527084564995904

namespace A089628

/-- `p?[A088175(n+1)-A107393(A084291(n+1))]` -/
def P13771527084564995904.Spec : Prop :=
  ∀ n, P13771527084564995904.a n = A089628 (n + 3)

end A089628

/-! ## A089628.P676097212154963693

`p?[A306653(A008578(n+1))+A088175(n+1)]`
-/

namespace A089628.P676097212154963693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (A008578 (n + 1)).toNat + A088175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089628.P676097212154963693

namespace A089628

/-- `p?[A306653(A008578(n+1))+A088175(n+1)]` -/
def P676097212154963693.Spec : Prop :=
  ∀ n, P676097212154963693.a n = A089628 (n + 3)

end A089628

/-! ## A089628.P18329860184761903415

`p?[A178412(A171821(n+1))+A088175(n+1)]`
-/

namespace A089628.P18329860184761903415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178412 (A171821 (n + 1)).toNat + A088175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089628.P18329860184761903415

namespace A089628

/-- `p?[A178412(A171821(n+1))+A088175(n+1)]` -/
def P18329860184761903415.Spec : Prop :=
  ∀ n, P18329860184761903415.a n = A089628 (n + 3)

end A089628

/-! ## A089628.P7094329442148640516

`p?[A078444(A048614(n+1)+A029707(n+1))]`
-/

namespace A089628.P7094329442148640516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (A048614 (n + 1) + A029707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089628.P7094329442148640516

namespace A089628

/-- `p?[A078444(A048614(n+1)+A029707(n+1))]` -/
def P7094329442148640516.Spec : Prop :=
  ∀ n, P7094329442148640516.a n = A089628 (n + 3)

end A089628

/-!
# A089629: Smallest member of a pair of consecutive twin prime pairs that have one prime between them.

The programs for A089629, the canonical program `A089629.P8328034033556612641` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089629 has offset 1).

The definition of A089629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089629.P15435204169164390544

`A105411(n+2)`
-/

namespace A089629.P15435204169164390544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105411 (n + 2)

end

end A089629.P15435204169164390544

namespace A089629

/-- `A105411(n+2)` -/
def P15435204169164390544.Spec : Prop :=
  ∀ n, P15435204169164390544.a n = A089629 (n + 1)

end A089629

/-! ## A089629.P8328034033556612641

`A001359(A242913(n+1)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A089629

/-- `A001359(A242913(n+1)-1)` -/
def P8328034033556612641.Spec : Prop :=
  ∀ n, P8328034033556612641.a n = A089629 (n + 1)

theorem P8328034033556612641.correct : P8328034033556612641.Spec := by
  intro n
  simp only [A089629, Nat.add_sub_cancel]

end A089629

/-! ## A089629.P16345144919799248260

`∩[A001359(n+1), A022887(n+2)]`
-/

namespace A089629.P16345144919799248260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P16345144919799248260

namespace A089629

/-- `∩[A001359(n+1), A022887(n+2)]` -/
def P16345144919799248260.Spec : Prop :=
  ∀ n, (P16345144919799248260.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P5061630931159429144

`∩[A022887(n+2), A378983(n+2)]`
-/

namespace A089629.P5061630931159429144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P5061630931159429144

namespace A089629

/-- `∩[A022887(n+2), A378983(n+2)]` -/
def P5061630931159429144.Spec : Prop :=
  ∀ n, (P5061630931159429144.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P16764710366474960623

`A124588(A242913(n+1))`
-/

namespace A089629.P16764710366474960623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (A242913 (n + 1)).toNat

end

end A089629.P16764710366474960623

namespace A089629

/-- `A124588(A242913(n+1))` -/
def P16764710366474960623.Spec : Prop :=
  ∀ n, P16764710366474960623.a n = A089629 (n + 1)

end A089629

/-! ## A089629.P17205217580926486825

`A111166(A242913(n+1)-1)`
-/

namespace A089629.P17205217580926486825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (A242913 (n + 1) - 1).toNat

end

end A089629.P17205217580926486825

namespace A089629

/-- `A111166(A242913(n+1)-1)` -/
def P17205217580926486825.Spec : Prop :=
  ∀ n, P17205217580926486825.a n = A089629 (n + 1)

end A089629

/-! ## A089629.P15041371712356219925

`A001359(eq[3, A242767(n+2)])`
-/

namespace A089629.P15041371712356219925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089629.P15041371712356219925

namespace A089629

/-- `A001359(eq[3, A242767(n+2)])` -/
def P15041371712356219925.Spec : Prop :=
  ∀ n, P15041371712356219925.a n = A089629 (n + 1)

end A089629

/-! ## A089629.P12135070669556930796

`A014574(A242913(n+1)-1)-1`
-/

namespace A089629.P12135070669556930796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A242913 (n + 1) - 1).toNat - 1

end

end A089629.P12135070669556930796

namespace A089629

/-- `A014574(A242913(n+1)-1)-1` -/
def P12135070669556930796.Spec : Prop :=
  ∀ n, P12135070669556930796.a n = A089629 (n + 1)

end A089629

/-! ## A089629.P9950369021631218051

`A001359(eq[1, A048614(n+1)]+1)`
-/

namespace A089629.P9950369021631218051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A089629.P9950369021631218051

namespace A089629

/-- `A001359(eq[1, A048614(n+1)]+1)` -/
def P9950369021631218051.Spec : Prop :=
  ∀ n, P9950369021631218051.a n = A089629 (n + 1)

end A089629

/-! ## A089629.P10816976188484796697

`A111166(eq[1, A242767(n+2)-2])`
-/

namespace A089629.P10816976188484796697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089629.P10816976188484796697

namespace A089629

/-- `A111166(eq[1, A242767(n+2)-2])` -/
def P10816976188484796697.Spec : Prop :=
  ∀ n, P10816976188484796697.a n = A089629 (n + 1)

end A089629

/-! ## A089629.P7728914044560647772

`∩[A022887(n+1), A111166(n+1)]`
-/

namespace A089629.P7728914044560647772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P7728914044560647772

namespace A089629

/-- `∩[A022887(n+1), A111166(n+1)]` -/
def P7728914044560647772.Spec : Prop :=
  ∀ n, (P7728914044560647772.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P14171767526782449864

`∩[A022887(n+1), A054799(n+2)]`
-/

namespace A089629.P14171767526782449864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P14171767526782449864

namespace A089629

/-- `∩[A022887(n+1), A054799(n+2)]` -/
def P14171767526782449864.Spec : Prop :=
  ∀ n, (P14171767526782449864.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P2393885200580503039

`∩[A022887(n+1), A063700(n+2)]`
-/

namespace A089629.P2393885200580503039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P2393885200580503039

namespace A089629

/-- `∩[A022887(n+1), A063700(n+2)]` -/
def P2393885200580503039.Spec : Prop :=
  ∀ n, (P2393885200580503039.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P14851114051954695954

`∩[A238528(n+1), A022887(n+2)]`
-/

namespace A089629.P14851114051954695954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P14851114051954695954

namespace A089629

/-- `∩[A238528(n+1), A022887(n+2)]` -/
def P14851114051954695954.Spec : Prop :=
  ∀ n, (P14851114051954695954.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P17096960395121784530

`∩[A022887(n+2), A124588(n+2)]`
-/

namespace A089629.P17096960395121784530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P17096960395121784530

namespace A089629

/-- `∩[A022887(n+2), A124588(n+2)]` -/
def P17096960395121784530.Spec : Prop :=
  ∀ n, (P17096960395121784530.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P6897526323067617785

`∩[A022887(n+2), A181747(n+2)]`
-/

namespace A089629.P6897526323067617785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P6897526323067617785

namespace A089629

/-- `∩[A022887(n+2), A181747(n+2)]` -/
def P6897526323067617785.Spec : Prop :=
  ∀ n, (P6897526323067617785.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P14561006706764901020

`∩[A022887(n+2), A280255(n+2)]`
-/

namespace A089629.P14561006706764901020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P14561006706764901020

namespace A089629

/-- `∩[A022887(n+2), A280255(n+2)]` -/
def P14561006706764901020.Spec : Prop :=
  ∀ n, (P14561006706764901020.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P7756445132632621881

`∩[A022887(n+1), A063693(n+2)]`
-/

namespace A089629.P7756445132632621881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P7756445132632621881

namespace A089629

/-- `∩[A022887(n+1), A063693(n+2)]` -/
def P7756445132632621881.Spec : Prop :=
  ∀ n, (P7756445132632621881.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P13534133726915337101

`∩[A073534(n+1), A022887(n+2)]`
-/

namespace A089629.P13534133726915337101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P13534133726915337101

namespace A089629

/-- `∩[A073534(n+1), A022887(n+2)]` -/
def P13534133726915337101.Spec : Prop :=
  ∀ n, (P13534133726915337101.a n : ℤ) = A089629 (n + 1)

end A089629

/-! ## A089629.P7517769484246064707

`∩[A280590(n+1), A022887(n+2)]`
-/

namespace A089629.P7517769484246064707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089629.P7517769484246064707

namespace A089629

/-- `∩[A280590(n+1), A022887(n+2)]` -/
def P7517769484246064707.Spec : Prop :=
  ∀ n, (P7517769484246064707.a n : ℤ) = A089629 (n + 1)

end A089629

/-!
# A089630: Size of the smallest n-cluster.

The programs for A089630, there is no canonical definition to state claims against.
-/

/-! ## A089630.P909936162853262262

`A144065(A246694(n!))`
-/

namespace A089630.P909936162853262262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 (A246694 (Nat.factorial n)).toNat

end

end A089630.P909936162853262262

/-!
# A089631: a(n) = (Product_{p is a prime factor of n} p) mod (Product_{p is a prime factor of n} p-1).

The programs for A089631, the canonical program `A089631.P9146961677256787666` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089631 has offset 1).

The definition of A089631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089631.P9146961677256787666

`A007947(n+1)%A173557(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089631

/-- `A007947(n+1)%A173557(n+1)` -/
def P9146961677256787666.Spec : Prop :=
  ∀ n, P9146961677256787666.a n = A089631 (n + 1)

theorem P9146961677256787666.correct : P9146961677256787666.Spec := by
  intro n
  simp only [A089631, Nat.add_sub_cancel]

end A089631

/-! ## A089631.P7470806328162077653

`abs(∏{p}[n+1, -#]%∏{p}[n+1, #-1])`
-/

namespace A089631.P7470806328162077653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))|

end

end A089631.P7470806328162077653

namespace A089631

/-- `abs(∏{p}[n+1, -#]%∏{p}[n+1, #-1])` -/
def P7470806328162077653.Spec : Prop :=
  ∀ n, P7470806328162077653.a n = A089631 (n + 1)

end A089631

/-! ## A089631.P2884815182611015752

`A068494(∏{p}[n+1, #])`
-/

namespace A089631.P2884815182611015752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068494 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A089631.P2884815182611015752

namespace A089631

/-- `A068494(∏{p}[n+1, #])` -/
def P2884815182611015752.Spec : Prop :=
  ∀ n, P2884815182611015752.a n = A089631 (n + 1)

end A089631

/-! ## A089631.P16656943590808004116

`∏{p}[n+1, #]%A000010(∏{p}[n+1, #])`
-/

namespace A089631.P16656943590808004116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A000010 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A089631.P16656943590808004116

namespace A089631

/-- `∏{p}[n+1, #]%A000010(∏{p}[n+1, #])` -/
def P16656943590808004116.Spec : Prop :=
  ∀ n, P16656943590808004116.a n = A089631 (n + 1)

end A089631

/-! ## A089631.P12193380760703943274

`A068494(A007947(n+1))`
-/

namespace A089631.P12193380760703943274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068494 (A007947 (n + 1)).toNat

end

end A089631.P12193380760703943274

namespace A089631

/-- `A068494(A007947(n+1))` -/
def P12193380760703943274.Spec : Prop :=
  ∀ n, P12193380760703943274.a n = A089631 (n + 1)

end A089631

/-! ## A089631.P10571225654097114595

`A068494((n+1)/A003557(n+1))`
-/

namespace A089631.P10571225654097114595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A089631.P10571225654097114595

namespace A089631

/-- `A068494((n+1)/A003557(n+1))` -/
def P10571225654097114595.Spec : Prop :=
  ∀ n, P10571225654097114595.a n = A089631 (n + 1)

end A089631

/-! ## A089631.P15061015269722241256

`A318305(n+1)%A023900(n+1)`
-/

namespace A089631.P15061015269722241256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318305 (n + 1)) (A023900 (n + 1))

end

end A089631.P15061015269722241256

namespace A089631

/-- `A318305(n+1)%A023900(n+1)` -/
def P15061015269722241256.Spec : Prop :=
  ∀ n, P15061015269722241256.a n = A089631 (n + 1)

end A089631

/-! ## A089631.P3264221762669743758

`A334085(n+1)%A023900(n+1)`
-/

namespace A089631.P3264221762669743758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334085 (n + 1)) (A023900 (n + 1))

end

end A089631.P3264221762669743758

namespace A089631

/-- `A334085(n+1)%A023900(n+1)` -/
def P3264221762669743758.Spec : Prop :=
  ∀ n, P3264221762669743758.a n = A089631 (n + 1)

end A089631

/-! ## A089631.P7332895183978192365

`A340679(n+1)%A023900(n+1)`
-/

namespace A089631.P7332895183978192365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340679 (n + 1)) (A023900 (n + 1))

end

end A089631.P7332895183978192365

namespace A089631

/-- `A340679(n+1)%A023900(n+1)` -/
def P7332895183978192365.Spec : Prop :=
  ∀ n, P7332895183978192365.a n = A089631 (n + 1)

end A089631

/-! ## A089631.P905395420195906699

`A068494(A015052(n+1)²)/A015052(n+1)`
-/

namespace A089631.P905395420195906699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068494 (A015052 (n + 1) ^ 2).toNat : ℚ) / (A015052 (n + 1) : ℚ)

end

end A089631.P905395420195906699

namespace A089631

/-- `A068494(A015052(n+1)²)/A015052(n+1)` -/
def P905395420195906699.Spec : Prop :=
  ∀ n, P905395420195906699.a n = (A089631 (n + 1) : ℚ)

end A089631

/-! ## A089631.P1322649629627234925

`A068494(A015053(n+1)²)/A015053(n+1)`
-/

namespace A089631.P1322649629627234925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068494 (A015053 (n + 1) ^ 2).toNat : ℚ) / (A015053 (n + 1) : ℚ)

end

end A089631.P1322649629627234925

namespace A089631

/-- `A068494(A015053(n+1)²)/A015053(n+1)` -/
def P1322649629627234925.Spec : Prop :=
  ∀ n, P1322649629627234925.a n = (A089631 (n + 1) : ℚ)

end A089631

/-! ## A089631.P2544353082343099328

`A068494(A053166(n+1)²)/A053166(n+1)`
-/

namespace A089631.P2544353082343099328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068494 (A053166 (n + 1) ^ 2).toNat : ℚ) / (A053166 (n + 1) : ℚ)

end

end A089631.P2544353082343099328

namespace A089631

/-- `A068494(A053166(n+1)²)/A053166(n+1)` -/
def P2544353082343099328.Spec : Prop :=
  ∀ n, P2544353082343099328.a n = (A089631 (n + 1) : ℚ)

end A089631

/-!
# A089632: 1 + product of prime factors of n is a perfect square.

The programs for A089632, the canonical program `A089632.P9401451600053536138` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089632 has offset 1).

The definition of A089632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089632.P9401451600053536138

`eq[0, val(A000005(A007947(n+1)+1), 2)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089632

/-- `eq[0, val(A000005(A007947(n+1)+1), 2)]+1` -/
def P9401451600053536138.Spec : Prop :=
  ∀ n, (P9401451600053536138.a n : ℤ) = A089632 (n + 1)

theorem P9401451600053536138.correct : P9401451600053536138.Spec := by
  intro n
  simp only [A089632, Nat.add_sub_cancel]

end A089632

/-! ## A089632.P4981371319235754818

`1+eq[2, A056737(A007947(n+1))]`
-/

namespace A089632.P4981371319235754818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089632.P4981371319235754818

namespace A089632

/-- `1+eq[2, A056737(A007947(n+1))]` -/
def P4981371319235754818.Spec : Prop :=
  ∀ n, (P4981371319235754818.a n : ℤ) = A089632 (n + 1)

end A089632

/-! ## A089632.P371067579998439080

`eq[0, A003285(A007947(n+1)+1)]+1`
-/

namespace A089632.P371067579998439080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A007947 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089632.P371067579998439080

namespace A089632

/-- `eq[0, A003285(A007947(n+1)+1)]+1` -/
def P371067579998439080.Spec : Prop :=
  ∀ n, (P371067579998439080.a n : ℤ) = A089632 (n + 1)

end A089632

/-! ## A089632.P15698532009972438352

`eq[1, A067280(A007947(n+1)+1)]+1`
-/

namespace A089632.P15698532009972438352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (A007947 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089632.P15698532009972438352

namespace A089632

/-- `eq[1, A067280(A007947(n+1)+1)]+1` -/
def P15698532009972438352.Spec : Prop :=
  ∀ n, (P15698532009972438352.a n : ℤ) = A089632 (n + 1)

end A089632

/-! ## A089632.P10867623734080980836

`A004442(eq[2, A056737(A007947(n+1))])`
-/

namespace A089632.P10867623734080980836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089632.P10867623734080980836

namespace A089632

/-- `A004442(eq[2, A056737(A007947(n+1))])` -/
def P10867623734080980836.Spec : Prop :=
  ∀ n, P10867623734080980836.a n = A089632 (n + 1)

end A089632

/-!
# A089633: Numbers having no more than one 0 in their binary representation.

The programs for A089633, the canonical program `A089633.P17564526881393068107` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089633 has offset 0).

The definition of A089633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089633.P4742434906485611226

`2^(row(n)+1)-2^(row(n)-col(n))-1`
-/

namespace A089633.P4742434906485611226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.triRow n + 1) : ℚ) - (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) - 1

end

end A089633.P4742434906485611226

namespace A089633

/-- `2^(row(n)+1)-2^(row(n)-col(n))-1` -/
def P4742434906485611226.Spec : Prop :=
  ∀ n, P4742434906485611226.a n = (A089633 n : ℚ)

end A089633

/-! ## A089633.P17564526881393068107

`floor(A030130(n+1)/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A089633

/-- `floor(A030130(n+1)/2)` -/
def P17564526881393068107.Spec : Prop :=
  ∀ n, P17564526881393068107.a n = A089633 n

theorem P17564526881393068107.correct : P17564526881393068107.Spec := by
  intro n
  simp only [A089633]

end A089633

/-! ## A089633.P6087076134795215309

`floor(A081118(n+1)/2)`
-/

namespace A089633.P6087076134795215309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081118 (n + 1) : ℚ) / 2⌋

end

end A089633.P6087076134795215309

namespace A089633

/-- `floor(A081118(n+1)/2)` -/
def P6087076134795215309.Spec : Prop :=
  ∀ n, P6087076134795215309.a n = A089633 n

end A089633

/-! ## A089633.P1539516531180478211

`floor(A207063(n+1)/2)`
-/

namespace A089633.P1539516531180478211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A207063 (n + 1) : ℚ) / 2⌋

end

end A089633.P1539516531180478211

namespace A089633

/-- `floor(A207063(n+1)/2)` -/
def P1539516531180478211.Spec : Prop :=
  ∀ n, P1539516531180478211.a n = A089633 n

end A089633

/-! ## A089633.P2850333933994922252

`∑[A057728(n+1)]-1`
-/

namespace A089633.P2850333933994922252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089633.P2850333933994922252

namespace A089633

/-- `∑[A057728(n+1)]-1` -/
def P2850333933994922252.Spec : Prop :=
  ∀ n, P2850333933994922252.a n = A089633 n

end A089633

/-! ## A089633.P9057516096313588821

`A043569(n+1)/2-1`
-/

namespace A089633.P9057516096313588821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043569 (n + 1) : ℚ) / 2 - 1

end

end A089633.P9057516096313588821

namespace A089633

/-- `A043569(n+1)/2-1` -/
def P9057516096313588821.Spec : Prop :=
  ∀ n, P9057516096313588821.a n = (A089633 n : ℚ)

end A089633

/-! ## A089633.P16806649355514764509

`(A224195(n+1)-3)/2`
-/

namespace A089633.P16806649355514764509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224195 (n + 1) - 3 : ℚ) / 2

end

end A089633.P16806649355514764509

namespace A089633

/-- `(A224195(n+1)-3)/2` -/
def P16806649355514764509.Spec : Prop :=
  ∀ n, P16806649355514764509.a n = (A089633 n : ℚ)

end A089633

/-! ## A089633.P910953734939261506

`A099627(n)-A176224(n)`
-/

namespace A089633.P910953734939261506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n - A176224 n

end

end A089633.P910953734939261506

namespace A089633

/-- `A099627(n)-A176224(n)` -/
def P910953734939261506.Spec : Prop :=
  ∀ n, P910953734939261506.a n = A089633 n

theorem P910953734939261506.correct : P910953734939261506.Spec := by
  intro n
  simp only [A089633, Nat.add_sub_cancel, A089633.P910953734939261506.a, A089633.P17564526881393068107.a, A030130, A030130.P14159575509811306268.a, A099627, A099627.P2788997961149202424.a, A176224, A176224.P7399068725741792420.a, A010054, A010054.P18347828677204923252.a, A048645, A048645.P10151414295702732837.a, A081118, A081118.P6487108056144640916.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A005369, A005369.P10796159359873341658.a, A018900, A018900.P2868698677378612256.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A089633

/-! ## A089633.P12926333739668193211

`∑[A059268(A056943(n))]-1`
-/

namespace A089633.P12926333739668193211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A056943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089633.P12926333739668193211

namespace A089633

/-- `∑[A059268(A056943(n))]-1` -/
def P12926333739668193211.Spec : Prop :=
  ∀ n, P12926333739668193211.a n = A089633 n

end A089633

/-! ## A089633.P2616718262264093913

`A140513(n)-(A130321(n)+1)`
-/

namespace A089633.P2616718262264093913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - (A130321 n + 1)

end

end A089633.P2616718262264093913

namespace A089633

/-- `A140513(n)-(A130321(n)+1)` -/
def P2616718262264093913.Spec : Prop :=
  ∀ n, P2616718262264093913.a n = A089633 n

end A089633

/-! ## A089633.P7245017668809361243

`A099628(n+1)-A271709(n)`
-/

namespace A089633.P7245017668809361243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1) - A271709 n

end

end A089633.P7245017668809361243

namespace A089633

/-- `A099628(n+1)-A271709(n)` -/
def P7245017668809361243.Spec : Prop :=
  ∀ n, P7245017668809361243.a n = A089633 n

end A089633

/-! ## A089633.P9775879640609489409

`∪[A000225(n), A030130(n+1)]`
-/

namespace A089633.P9775879640609489409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089633.P9775879640609489409

namespace A089633

/-- `∪[A000225(n), A030130(n+1)]` -/
def P9775879640609489409.Spec : Prop :=
  ∀ n, (P9775879640609489409.a n : ℤ) = A089633 n

end A089633

/-! ## A089633.P9340172760660275309

`∪[A030130(n+1), A052955(n)]`
-/

namespace A089633.P9340172760660275309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089633.P9340172760660275309

namespace A089633

/-- `∪[A030130(n+1), A052955(n)]` -/
def P9340172760660275309.Spec : Prop :=
  ∀ n, (P9340172760660275309.a n : ℤ) = A089633 n

end A089633

/-! ## A089633.P12047358814080556330

`∪[A030130(n+1), A075427(n)]`
-/

namespace A089633.P12047358814080556330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089633.P12047358814080556330

namespace A089633

/-- `∪[A030130(n+1), A075427(n)]` -/
def P12047358814080556330.Spec : Prop :=
  ∀ n, (P12047358814080556330.a n : ℤ) = A089633 n

end A089633

/-! ## A089633.P16686958242068791753

`∪[A030130(n+1), A126646(n)]`
-/

namespace A089633.P16686958242068791753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089633.P16686958242068791753

namespace A089633

/-- `∪[A030130(n+1), A126646(n)]` -/
def P16686958242068791753.Spec : Prop :=
  ∀ n, (P16686958242068791753.a n : ℤ) = A089633 n

end A089633

/-! ## A089633.P14259252957717852491

`∪[A081118(n+1), A296965(n)]`
-/

namespace A089633.P14259252957717852491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089633.P14259252957717852491

namespace A089633

/-- `∪[A081118(n+1), A296965(n)]` -/
def P14259252957717852491.Spec : Prop :=
  ∀ n, (P14259252957717852491.a n : ℤ) = A089633 n

end A089633

/-! ## A089633.P360631252799394491

`∑[A057427(n)*A057728(n+1)]`
-/

namespace A089633.P360631252799394491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089633.P360631252799394491

namespace A089633

/-- `∑[A057427(n)*A057728(n+1)]` -/
def P360631252799394491.Spec : Prop :=
  ∀ n, P360631252799394491.a n = A089633 n

end A089633

/-! ## A089633.P18269444444193902063

`A018900(n+1)-(A271709(n)+1)`
-/

namespace A089633.P18269444444193902063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - (A271709 n + 1)

end

end A089633.P18269444444193902063

namespace A089633

/-- `A018900(n+1)-(A271709(n)+1)` -/
def P18269444444193902063.Spec : Prop :=
  ∀ n, P18269444444193902063.a n = A089633 n

end A089633

/-! ## A089633.P17446690311775886325

`∪[A030130(n+1), A081118(n+1)]`
-/

namespace A089633.P17446690311775886325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089633.P17446690311775886325

namespace A089633

/-- `∪[A030130(n+1), A081118(n+1)]` -/
def P17446690311775886325.Spec : Prop :=
  ∀ n, (P17446690311775886325.a n : ℤ) = A089633 n

end A089633

/-! ## A089633.P3010017128944975846

`∪[A030130(n+1), A180516(n+1)]`
-/

namespace A089633.P3010017128944975846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089633.P3010017128944975846

namespace A089633

/-- `∪[A030130(n+1), A180516(n+1)]` -/
def P3010017128944975846.Spec : Prop :=
  ∀ n, (P3010017128944975846.a n : ℤ) = A089633 n

end A089633

/-!
# A089634: Smallest member of a pair of consecutive twin prime pairs that have two primes between them.

The programs for A089634, the canonical program `A089634.P10500263270838368057` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089634 has offset 1).

The definition of A089634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089634.P10500263270838368057

`A001359(A242917(n+1)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A089634

/-- `A001359(A242917(n+1)-1)` -/
def P10500263270838368057.Spec : Prop :=
  ∀ n, P10500263270838368057.a n = A089634 (n + 1)

theorem P10500263270838368057.correct : P10500263270838368057.Spec := by
  intro n
  simp only [A089634, Nat.add_sub_cancel]

end A089634

/-! ## A089634.P13637991207125196413

`A111166(A242917(n+1)-1)`
-/

namespace A089634.P13637991207125196413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (A242917 (n + 1) - 1).toNat

end

end A089634.P13637991207125196413

namespace A089634

/-- `A111166(A242917(n+1)-1)` -/
def P13637991207125196413.Spec : Prop :=
  ∀ n, P13637991207125196413.a n = A089634 (n + 1)

end A089634

/-! ## A089634.P10046699945127379626

`A001359(eq[2, A048614(n+1)]+1)`
-/

namespace A089634.P10046699945127379626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A089634.P10046699945127379626

namespace A089634

/-- `A001359(eq[2, A048614(n+1)]+1)` -/
def P10046699945127379626.Spec : Prop :=
  ∀ n, P10046699945127379626.a n = A089634 (n + 1)

end A089634

/-! ## A089634.P6286917312775831456

`A124588(A242917(n+1))`
-/

namespace A089634.P6286917312775831456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (A242917 (n + 1)).toNat

end

end A089634.P6286917312775831456

namespace A089634

/-- `A124588(A242917(n+1))` -/
def P6286917312775831456.Spec : Prop :=
  ∀ n, P6286917312775831456.a n = A089634 (n + 1)

end A089634

/-! ## A089634.P6513989651595117504

`A001359(eq[2, A242767(n+2)-2])`
-/

namespace A089634.P6513989651595117504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089634.P6513989651595117504

namespace A089634

/-- `A001359(eq[2, A242767(n+2)-2])` -/
def P6513989651595117504.Spec : Prop :=
  ∀ n, P6513989651595117504.a n = A089634 (n + 1)

end A089634

/-! ## A089634.P17484089113731409099

`A111166(eq[2, A242767(n+2)-2])`
-/

namespace A089634.P17484089113731409099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089634.P17484089113731409099

namespace A089634

/-- `A111166(eq[2, A242767(n+2)-2])` -/
def P17484089113731409099.Spec : Prop :=
  ∀ n, P17484089113731409099.a n = A089634 (n + 1)

end A089634

/-! ## A089634.P2254217822864524746

`A001359(eq[2, A242767(n+2)/2])`
-/

namespace A089634.P2254217822864524746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242767 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A089634.P2254217822864524746

namespace A089634

/-- `A001359(eq[2, A242767(n+2)/2])` -/
def P2254217822864524746.Spec : Prop :=
  ∀ n, P2254217822864524746.a n = A089634 (n + 1)

end A089634

/-! ## A089634.P13382169065855661977

`A111166(eq[2, A242767(n+2)/2])`
-/

namespace A089634.P13382169065855661977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242767 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A089634.P13382169065855661977

namespace A089634

/-- `A111166(eq[2, A242767(n+2)/2])` -/
def P13382169065855661977.Spec : Prop :=
  ∀ n, P13382169065855661977.a n = A089634 (n + 1)

end A089634

/-! ## A089634.P7200864220132806101

`p?[(A048614(n+1)-1)*A001359(n+1)]`
-/

namespace A089634.P7200864220132806101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048614 (n + 1) - 1) * A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089634.P7200864220132806101

namespace A089634

/-- `p?[(A048614(n+1)-1)*A001359(n+1)]` -/
def P7200864220132806101.Spec : Prop :=
  ∀ n, P7200864220132806101.a n = A089634 (n + 1)

end A089634

/-! ## A089634.P1368282606767242738

`p?[(A048614(n+1)-1)*A111166(n+1)]`
-/

namespace A089634.P1368282606767242738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048614 (n + 1) - 1) * A111166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089634.P1368282606767242738

namespace A089634

/-- `p?[(A048614(n+1)-1)*A111166(n+1)]` -/
def P1368282606767242738.Spec : Prop :=
  ∀ n, P1368282606767242738.a n = A089634 (n + 1)

end A089634

/-!
# A089635: Smallest member of a pair of consecutive twin prime pairs that have three primes between them.

The programs for A089635, the canonical program `A089635.P2208062812139481851` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089635 has offset 3).

The definition of A089635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089635.P2208062812139481851

`A001359(A242918(n+1)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A089635

/-- `A001359(A242918(n+1)-1)` -/
def P2208062812139481851.Spec : Prop :=
  ∀ n, P2208062812139481851.a n = A089635 (n + 3)

theorem P2208062812139481851.correct : P2208062812139481851.Spec := by
  intro n
  simp only [A089635, Nat.add_sub_cancel]

end A089635

/-! ## A089635.P13556413567686874311

`A124588(A242918(n+1))`
-/

namespace A089635.P13556413567686874311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (A242918 (n + 1)).toNat

end

end A089635.P13556413567686874311

namespace A089635

/-- `A124588(A242918(n+1))` -/
def P13556413567686874311.Spec : Prop :=
  ∀ n, P13556413567686874311.a n = A089635 (n + 3)

end A089635

/-! ## A089635.P1509805296457724471

`A111166(A242918(n+1)-1)`
-/

namespace A089635.P1509805296457724471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (A242918 (n + 1) - 1).toNat

end

end A089635.P1509805296457724471

namespace A089635

/-- `A111166(A242918(n+1)-1)` -/
def P1509805296457724471.Spec : Prop :=
  ∀ n, P1509805296457724471.a n = A089635 (n + 3)

end A089635

/-! ## A089635.P12864687254386882792

`A001359(eq[5, A242767(n+2)])`
-/

namespace A089635.P12864687254386882792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089635.P12864687254386882792

namespace A089635

/-- `A001359(eq[5, A242767(n+2)])` -/
def P12864687254386882792.Spec : Prop :=
  ∀ n, P12864687254386882792.a n = A089635 (n + 3)

end A089635

/-! ## A089635.P14007408005798267006

`A111166(eq[5, A242767(n+2)])`
-/

namespace A089635.P14007408005798267006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089635.P14007408005798267006

namespace A089635

/-- `A111166(eq[5, A242767(n+2)])` -/
def P14007408005798267006.Spec : Prop :=
  ∀ n, P14007408005798267006.a n = A089635 (n + 3)

end A089635

/-! ## A089635.P13335660765864013137

`A001359(eq[5, A027833((2*n)%(n+1)+1)])`
-/

namespace A089635.P13335660765864013137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (2 * n % (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089635.P13335660765864013137

namespace A089635

/-- `A001359(eq[5, A027833((2*n)%(n+1)+1)])` -/
def P13335660765864013137.Spec : Prop :=
  ∀ n, P13335660765864013137.a n = A089635 (n + 3)

end A089635

/-! ## A089635.P13228025920589121942

`A094743(A242918(n+1))-A020639(2*(n+1))`
-/

namespace A089635.P13228025920589121942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094743 (A242918 (n + 1)).toNat - A020639 (2 * (n + 1))

end

end A089635.P13228025920589121942

namespace A089635

/-- `A094743(A242918(n+1))-A020639(2*(n+1))` -/
def P13228025920589121942.Spec : Prop :=
  ∀ n, P13228025920589121942.a n = A089635 (n + 3)

end A089635

/-! ## A089635.P3058041313242661298

`A094743(A242918(n+1))-A074828(A242758(n+2))`
-/

namespace A089635.P3058041313242661298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094743 (A242918 (n + 1)).toNat - A074828 (A242758 (n + 2)).toNat

end

end A089635.P3058041313242661298

namespace A089635

/-- `A094743(A242918(n+1))-A074828(A242758(n+2))` -/
def P3058041313242661298.Spec : Prop :=
  ∀ n, P3058041313242661298.a n = A089635 (n + 3)

end A089635

/-! ## A089635.P3969118631732463918

`p?[(A048614(n+1)-2)*A001359(n+1)]`
-/

namespace A089635.P3969118631732463918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048614 (n + 1) - 2) * A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089635.P3969118631732463918

namespace A089635

/-- `p?[(A048614(n+1)-2)*A001359(n+1)]` -/
def P3969118631732463918.Spec : Prop :=
  ∀ n, P3969118631732463918.a n = A089635 (n + 3)

end A089635

/-! ## A089635.P15482751038177325581

`p?[(A048614(n+1)-2)*A111166(n+1)]`
-/

namespace A089635.P15482751038177325581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048614 (n + 1) - 2) * A111166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089635.P15482751038177325581

namespace A089635

/-- `p?[(A048614(n+1)-2)*A111166(n+1)]` -/
def P15482751038177325581.Spec : Prop :=
  ∀ n, P15482751038177325581.a n = A089635 (n + 3)

end A089635

/-!
# A089636: Least k, 1 <= k <= 2^n, such that the continued fraction for 2^n/k contains the maximum number of elements.

The programs for A089636, there is no canonical definition to state claims against.
-/

/-! ## A089636.P8618700655174776908

`A084242(2^(n+1))`
-/

namespace A089636.P8618700655174776908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084242 (2 ^ (n + 1))

end

end A089636.P8618700655174776908

/-! ## A089636.P7087257263049802771

`record[A084242(A061142(n+1))]`
-/

namespace A089636.P7087257263049802771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084242 (A061142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089636.P7087257263049802771

/-! ## A089636.P900651271362069391

`record[A084242(A243065(n+1))]`
-/

namespace A089636.P900651271362069391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084242 (A243065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089636.P900651271362069391

/-! ## A089636.P6303707489044838611

`record[A084242(n+1)/A292270(n)]`
-/

namespace A089636.P6303707489044838611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084242 (n + 1) : ℚ) / (A292270 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089636.P6303707489044838611

/-! ## A089636.P16316036290168586286

`record[A084242(n+1)/A204217(n+1)]`
-/

namespace A089636.P16316036290168586286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084242 (n + 1) : ℚ) / (A204217 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089636.P16316036290168586286

/-!
# A089638: Numerator of (5/2)*Sum_{i=1..n} (-1)^(i-1)/(i^3*C(2*i,i)).

The programs for A089638, there is no canonical definition to state claims against.
-/

/-! ## A089638.P2022034199138613745

`A303988(∑[n]+n)`
-/

namespace A089638.P2022034199138613745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303988 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A089638.P2022034199138613745

/-! ## A089638.P119461779239844958

`record[char[∑[n-1]]*A303988(n)]`
-/

namespace A089638.P119461779239844958
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A303988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089638.P119461779239844958

/-! ## A089638.P10254149628869908255

`record[A303988(n)/A049460(n)]`
-/

namespace A089638.P10254149628869908255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303988 n : ℚ) / (A049460 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089638.P10254149628869908255

/-! ## A089638.P8606882288108908892

`record[A303988(n)/A248829(n)]`
-/

namespace A089638.P8606882288108908892
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303988 n : ℚ) / (A248829 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089638.P8606882288108908892

/-! ## A089638.P14183822864177355694

`ceil(acot(n))*A303988(A000096(n))`
-/

namespace A089638.P14183822864177355694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A303988 (A000096 n).toNat

end

end A089638.P14183822864177355694

/-!
# A089639: Denominator of (5/2)*Sum_{i=1..n} (-1)^(i-1)/(i^3*C(2*i,i)).

The programs for A089639, there is no canonical definition to state claims against.
-/

/-! ## A089639.P14248595202927647835

`A303989(∑[n]+n)`
-/

namespace A089639.P14248595202927647835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303989 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A089639.P14248595202927647835

/-! ## A089639.P14193392792094608660

`record[char[∑[n-1]]*A303989(n)]`
-/

namespace A089639.P14193392792094608660
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A303989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089639.P14193392792094608660

/-! ## A089639.P15928777201248000564

`and(-3, A303989(A000096(n)))`
-/

namespace A089639.P15928777201248000564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A303989 (A000096 n).toNat)

end

end A089639.P15928777201248000564

/-! ## A089639.P15792222702791131511

`record[A303989(n)/A049460(n)]`
-/

namespace A089639.P15792222702791131511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303989 n : ℚ) / (A049460 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089639.P15792222702791131511

/-! ## A089639.P4056895218143097624

`record[A303989(n)/A248829(n)]`
-/

namespace A089639.P4056895218143097624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303989 n : ℚ) / (A248829 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089639.P4056895218143097624

/-!
# A089640: Enumeration of partial sums of 1 + [1,2] + [2,3] + [1,2] + [2,3] + ...

The programs for A089640, the canonical program `A089640.P13984172268637378675` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089640 has offset 1).

The definition of A089640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089640.P13984172268637378675

`a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089640

/-- `a(n-3)+2*a(n-4)+a(n-5)` -/
def P13984172268637378675.Spec : Prop :=
  ∀ n, (P13984172268637378675.a n : ℤ) = A089640 (n + 1)

theorem P13984172268637378675.correct : P13984172268637378675.Spec := by
  intro n
  simp only [A089640, Nat.add_sub_cancel]

end A089640

/-! ## A089640.P80333713136162929

`A052920(2*n+1)+A052920(2*n)`
-/

namespace A089640.P80333713136162929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (2 * n + 1) + A052920 (2 * n)

end

end A089640.P80333713136162929

namespace A089640

/-- `A052920(2*n+1)+A052920(2*n)` -/
def P80333713136162929.Spec : Prop :=
  ∀ n, P80333713136162929.a n = A089640 (n + 1)

end A089640

/-! ## A089640.P6223769063358840420

`Δ[A226503(2*n+5)]`
-/

namespace A089640.P6223769063358840420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089640.P6223769063358840420

namespace A089640

/-- `Δ[A226503(2*n+5)]` -/
def P6223769063358840420.Spec : Prop :=
  ∀ n, P6223769063358840420.a n = A089640 (n + 1)

end A089640

/-! ## A089640.P13838179072699280069

`Δ[record[A226503((n+1)/2^val(n+1, 2))]]`
-/

namespace A089640.P13838179072699280069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089640.P13838179072699280069

namespace A089640

/-- `Δ[record[A226503((n+1)/2^val(n+1, 2))]]` -/
def P13838179072699280069.Spec : Prop :=
  ∀ n, P13838179072699280069.a n = A089640 (n + 1)

end A089640

/-! ## A089640.P13388369585648448127

`Δ[record[A226503(A029579(n))]]`
-/

namespace A089640.P13388369585648448127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (A029579 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089640.P13388369585648448127

namespace A089640

/-- `Δ[record[A226503(A029579(n))]]` -/
def P13388369585648448127.Spec : Prop :=
  ∀ n, P13388369585648448127.a n = A089640 (n + 1)

end A089640

/-! ## A089640.P12637876251298977670

`Δ[record[A226503(A093178(n))]]`
-/

namespace A089640.P12637876251298977670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (A093178 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089640.P12637876251298977670

namespace A089640

/-- `Δ[record[A226503(A093178(n))]]` -/
def P12637876251298977670.Spec : Prop :=
  ∀ n, P12637876251298977670.a n = A089640 (n + 1)

end A089640

/-! ## A089640.P15674123569395460063

`Δ[record[A226503(A141310(n))]]`
-/

namespace A089640.P15674123569395460063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (A141310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089640.P15674123569395460063

namespace A089640

/-- `Δ[record[A226503(A141310(n))]]` -/
def P15674123569395460063.Spec : Prop :=
  ∀ n, P15674123569395460063.a n = A089640 (n + 1)

end A089640

/-!
# A089641: Number of k, 1<=k<=n, such that the number of elements in the continued fraction for n/k is maximum.

The programs for A089641, there is no canonical definition to state claims against.
-/

/-! ## A089641.P12980858724359834912

`A353835(A039928(n+1)+A016813(3*(n+1)))`
-/

namespace A089641.P12980858724359834912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (A039928 (n + 1) + A016813 (3 * (n + 1))).toNat

end

end A089641.P12980858724359834912

/-! ## A089641.P1923716241479517239

`A001221(xor(A070939(3*n+1), A191877(3*n+4)))`
-/

namespace A089641.P1923716241479517239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A070939 (3 * n + 1)) (A191877 (3 * n + 4))).toNat

end

end A089641.P1923716241479517239

/-! ## A089641.P5437811596416608593

`A067357(A103344(p?[A161539(n+1)]))`
-/

namespace A089641.P5437811596416608593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067357 (A103344 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A089641.P5437811596416608593

/-! ## A089641.P15647046417637270511

`gcd(A002150(A188473(n+1)), A131562(n))`
-/

namespace A089641.P15647046417637270511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002150 (A188473 (n + 1)).toNat) (A131562 n)

end

end A089641.P15647046417637270511

/-! ## A089641.P8081221702113530790

`A001221(A332337(n+3)+A286340(n+1))`
-/

namespace A089641.P8081221702113530790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A332337 (n + 3) + A286340 (n + 1)).toNat

end

end A089641.P8081221702113530790

/-!
# A089642: Numbers m such that there is a single k, 1 <= k <= m, such that the number of elements in the continued fraction for m/k is maximum.

The programs for A089642, there is no canonical definition to state claims against.
-/

/-! ## A089642.P4182100962110546988

`A122700(n+1)-floor(acot(n))`
-/

namespace A089642.P4182100962110546988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122700 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A089642.P4182100962110546988

/-! ## A089642.P16039194680706416165

`A122700(n%a(n-1)+1)` with `a(0)=1, a(1)=3`
-/

namespace A089642.P16039194680706416165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A122700 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A089642.P16039194680706416165

/-! ## A089642.P16874143266188829123

`A122700(n+1)-A000007(n)`
-/

namespace A089642.P16874143266188829123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122700 (n + 1) - A000007 n

end

end A089642.P16874143266188829123

/-! ## A089642.P12079971027140265629

`A122700(n+1)/A054977(n)`
-/

namespace A089642.P12079971027140265629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122700 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A089642.P12079971027140265629

/-! ## A089642.P17991142780803661438

`C(A122700(n+1), A141044(n))`
-/

namespace A089642.P17991142780803661438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122700 (n + 1)).toNat (A141044 n).toNat

end

end A089642.P17991142780803661438

/-! ## A089642.P11867471022768967852

`A122700(n+1)-A008683((n+1)²)`
-/

namespace A089642.P11867471022768967852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122700 (n + 1) - A008683 ((n + 1) ^ 2)

end

end A089642.P11867471022768967852

/-! ## A089642.P13182782643267160080

`A122700(n+1)/A014963(4*n+2)`
-/

namespace A089642.P13182782643267160080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122700 (n + 1) : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A089642.P13182782643267160080

/-! ## A089642.P12498016084015904198

`A122700(n+1)-val(A000040(n+1), 2)`
-/

namespace A089642.P12498016084015904198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122700 (n + 1) - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A089642.P12498016084015904198

/-! ## A089642.P11769615427134094248

`A122700(n+1)-A000045(C(2, n+2))`
-/

namespace A089642.P11769615427134094248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122700 (n + 1) - A000045 (Nat.choose 2 (n + 2))

end

end A089642.P11769615427134094248

/-! ## A089642.P15416862639960575121

`A000032(floor(1/(n+1)))^log2(A122700(n+1))`
-/

namespace A089642.P15416862639960575121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℝ) ^ (Real.logb 2 (A122700 (n + 1) : ℝ))

end

end A089642.P15416862639960575121

/-! ## A089642.P16264469678680408396

`A122700(n+1)-A237053(A008578(n+1))`
-/

namespace A089642.P16264469678680408396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122700 (n + 1) - A237053 (A008578 (n + 1)).toNat

end

end A089642.P16264469678680408396

/-! ## A089642.P15647157253490053580

`A122700(n+1)^A001221(record[A014963(n+1)])`
-/

namespace A089642.P15647157253490053580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122700 (n + 1) : ℚ) ^ (A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A089642.P15647157253490053580

/-! ## A089642.P4400089683974293773

`A122700(n+1)^A001222(record[A014963(n+1)])`
-/

namespace A089642.P4400089683974293773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122700 (n + 1) : ℚ) ^ (A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A089642.P4400089683974293773

/-! ## A089642.P16888985550916215641

`A181440(A122700(n+1))`
-/

namespace A089642.P16888985550916215641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A122700 (n + 1)).toNat

end

end A089642.P16888985550916215641

/-!
# A089643: 3^a(n) divides C(3n,n); 3-adic valuation of A005809.

The programs for A089643, the canonical program `A089643.P7852096906189222102` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089643 has offset 0).

The definition of A089643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089643.P5538887357140459088

`A053735(2*n)/2`
-/

namespace A089643.P5538887357140459088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 (2 * n) : ℚ) / 2

end

end A089643.P5538887357140459088

namespace A089643

/-- `A053735(2*n)/2` -/
def P5538887357140459088.Spec : Prop :=
  ∀ n, P5538887357140459088.a n = (A089643 n : ℚ)

end A089643

/-! ## A089643.P7852096906189222102

`A054861(3*n)-A054861(2*n)-A054861(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089643

/-- `A054861(3*n)-A054861(2*n)-A054861(n)` -/
def P7852096906189222102.Spec : Prop :=
  ∀ n, P7852096906189222102.a n = A089643 n

theorem P7852096906189222102.correct : P7852096906189222102.Spec := by
  intro n
  simp only [A089643]

end A089643

/-! ## A089643.P3201369757682925577

`val(C(3*n, n), 3)`
-/

namespace A089643.P3201369757682925577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose (3 * n) n) 3

end

end A089643.P3201369757682925577

namespace A089643

/-- `val(C(3*n, n), 3)` -/
def P3201369757682925577.Spec : Prop :=
  ∀ n, (P3201369757682925577.a n : ℤ) = A089643 n

end A089643

/-! ## A089643.P15657141095300278911

`a(floor(n/3))+n%3-val(abs(1-2*n), 3)` with `a(0)=0`
-/

namespace A089643.P15657141095300278911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + ((n % 3 : ℕ) : ℤ) - (SequenceMachineLib.valuation |1 - (2 * n : ℤ)|.toNat 3 : ℤ)

end

end A089643.P15657141095300278911

namespace A089643

/-- `a(floor(n/3))+n%3-val(abs(1-2*n), 3)` -/
def P15657141095300278911.Spec : Prop :=
  ∀ n, P15657141095300278911.a n = A089643 n

end A089643

/-! ## A089643.P8896684334334919567

`a(n-1)+1-val(n, 3)-val(abs(1-2*n), 3)` with `a(0)=0`
-/

namespace A089643.P8896684334334919567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - (SequenceMachineLib.valuation n 3 : ℤ)) - (SequenceMachineLib.valuation |1 - (2 * n : ℤ)|.toNat 3 : ℤ)

end

end A089643.P8896684334334919567

namespace A089643

/-- `a(n-1)+1-val(n, 3)-val(abs(1-2*n), 3)` -/
def P8896684334334919567.Spec : Prop :=
  ∀ n, P8896684334334919567.a n = A089643 n

end A089643

/-! ## A089643.P17565366275158164817

`A000120(A065361(n))`
-/

namespace A089643.P17565366275158164817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A065361 n).toNat

end

end A089643.P17565366275158164817

namespace A089643

/-- `A000120(A065361(n))` -/
def P17565366275158164817.Spec : Prop :=
  ∀ n, P17565366275158164817.a n = A089643 n

end A089643

/-! ## A089643.P1751995272488194473

`A065363(n)+A000989(n)`
-/

namespace A089643.P1751995272488194473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n + A000989 n

end

end A089643.P1751995272488194473

namespace A089643

/-- `A065363(n)+A000989(n)` -/
def P1751995272488194473.Spec : Prop :=
  ∀ n, P1751995272488194473.a n = A089643 n

end A089643

/-! ## A089643.P7391645567803419122

`A053735(n)-A000989(n)`
-/

namespace A089643.P7391645567803419122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A000989 n

end

end A089643.P7391645567803419122

namespace A089643

/-- `A053735(n)-A000989(n)` -/
def P7391645567803419122.Spec : Prop :=
  ∀ n, P7391645567803419122.a n = A089643 n

end A089643

/-! ## A089643.P8889655578173743155

`A365722(n)-A067397(n)`
-/

namespace A089643.P8889655578173743155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 n - A067397 n

end

end A089643.P8889655578173743155

namespace A089643

/-- `A365722(n)-A067397(n)` -/
def P8889655578173743155.Spec : Prop :=
  ∀ n, P8889655578173743155.a n = A089643 n

end A089643

/-! ## A089643.P15901608696793717945

`A000120(A289831(n)+A289814(n))`
-/

namespace A089643.P15901608696793717945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289831 n + A289814 n).toNat

end

end A089643.P15901608696793717945

namespace A089643

/-- `A000120(A289831(n)+A289814(n))` -/
def P15901608696793717945.Spec : Prop :=
  ∀ n, P15901608696793717945.a n = A089643 n

end A089643

/-! ## A089643.P3638454820326101948

`A003313(A006047(2*n))/2`
-/

namespace A089643.P3638454820326101948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003313 (A006047 (2 * n)).toNat : ℚ) / 2

end

end A089643.P3638454820326101948

namespace A089643

/-- `A003313(A006047(2*n))/2` -/
def P3638454820326101948.Spec : Prop :=
  ∀ n, P3638454820326101948.a n = (A089643 n : ℚ)

end A089643

/-! ## A089643.P16728328974772285634

`A056239(A331279(2*n))/2`
-/

namespace A089643.P16728328974772285634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (A331279 (2 * n)).toNat : ℚ) / 2

end

end A089643.P16728328974772285634

namespace A089643

/-- `A056239(A331279(2*n))/2` -/
def P16728328974772285634.Spec : Prop :=
  ∀ n, P16728328974772285634.a n = (A089643 n : ℚ)

end A089643

/-! ## A089643.P17915985901726738342

`A001222(A125562(3*n))`
-/

namespace A089643.P17915985901726738342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A125562 (3 * n)).toNat

end

end A089643.P17915985901726738342

namespace A089643

/-- `A001222(A125562(3*n))` -/
def P17915985901726738342.Spec : Prop :=
  ∀ n, P17915985901726738342.a n = A089643 n

end A089643

/-! ## A089643.P7724892346660897083

`n-A054861(2*n)`
-/

namespace A089643.P7724892346660897083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054861 (2 * n)

end

end A089643.P7724892346660897083

namespace A089643

/-- `n-A054861(2*n)` -/
def P7724892346660897083.Spec : Prop :=
  ∀ n, P7724892346660897083.a n = A089643 n

end A089643

/-! ## A089643.P17436037276697414016

`dr(5*A007089(2*n))`
-/

namespace A089643.P17436037276697414016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (5 * A007089 (2 * n))

end

end A089643.P17436037276697414016

namespace A089643

/-- `dr(5*A007089(2*n))` -/
def P17436037276697414016.Spec : Prop :=
  ∀ n, (P17436037276697414016.a n : ℤ) = A089643 n

end A089643

/-! ## A089643.P12579118077834651166

`A230641(2*n)/2-n`
-/

namespace A089643.P12579118077834651166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230641 (2 * n) : ℚ) / 2 - (n : ℚ)

end

end A089643.P12579118077834651166

namespace A089643

/-- `A230641(2*n)/2-n` -/
def P12579118077834651166.Spec : Prop :=
  ∀ n, P12579118077834651166.a n = (A089643 n : ℚ)

end A089643

/-! ## A089643.P17800126334303372778

`n-A344853(2*n)/2`
-/

namespace A089643.P17800126334303372778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A344853 (2 * n) : ℚ) / 2

end

end A089643.P17800126334303372778

namespace A089643

/-- `n-A344853(2*n)/2` -/
def P17800126334303372778.Spec : Prop :=
  ∀ n, P17800126334303372778.a n = (A089643 n : ℚ)

end A089643

/-! ## A089643.P18236641875755189033

`A107408(A053735(2*n))`
-/

namespace A089643.P18236641875755189033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107408 (A053735 (2 * n)).toNat

end

end A089643.P18236641875755189033

namespace A089643

/-- `A107408(A053735(2*n))` -/
def P18236641875755189033.Spec : Prop :=
  ∀ n, P18236641875755189033.a n = A089643 n

end A089643

/-! ## A089643.P5553735250892190561

`A123108(A053735(2*n)+1)`
-/

namespace A089643.P5553735250892190561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A053735 (2 * n) + 1).toNat

end

end A089643.P5553735250892190561

namespace A089643

/-- `A123108(A053735(2*n)+1)` -/
def P5553735250892190561.Spec : Prop :=
  ∀ n, P5553735250892190561.a n = A089643 n

end A089643

/-! ## A089643.P13561912195249410972

`A002265(2*A053735(2*n))`
-/

namespace A089643.P13561912195249410972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A053735 (2 * n)).toNat

end

end A089643.P13561912195249410972

namespace A089643

/-- `A002265(2*A053735(2*n))` -/
def P13561912195249410972.Spec : Prop :=
  ∀ n, P13561912195249410972.a n = A089643 n

end A089643

/-!
# A089644: Numbers k such that 7 divides the numerator of B(2*k) where B(k) = the k-th Bernoulli number.

The programs for A089644, the canonical program `A089644.P16561712018792086140` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089644 has offset 1).

The definition of A089644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089644.P9356571700846028173

`21*n-a(n-1)` with `a(0)=7`
-/

namespace A089644.P9356571700846028173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (21 * n : ℤ) - a (n - 1)

end

end A089644.P9356571700846028173

namespace A089644

/-- `21*n-a(n-1)` -/
def P9356571700846028173.Spec : Prop :=
  ∀ n, P9356571700846028173.a n = A089644 (n + 1)

end A089644

/-! ## A089644.P16561712018792086140

`7*A001651(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089644

/-- `7*A001651(n+1)` -/
def P16561712018792086140.Spec : Prop :=
  ∀ n, P16561712018792086140.a n = A089644 (n + 1)

theorem P16561712018792086140.correct : P16561712018792086140.Spec := by
  intro n
  simp only [A089644, Nat.add_sub_cancel]

end A089644

/-! ## A089644.P7871954283645663705

`7*comp[3*n]`
-/

namespace A089644.P7871954283645663705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A089644.P7871954283645663705

namespace A089644

/-- `7*comp[3*n]` -/
def P7871954283645663705.Spec : Prop :=
  ∀ n, (P7871954283645663705.a n : ℤ) = A089644 (n + 1)

end A089644

/-! ## A089644.P7057363812337464919

`a(n-2)+21` with `a(0)=7, a(1)=14`
-/

namespace A089644.P7057363812337464919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 14] fun n a =>
  a (n - 2) + 21

end

end A089644.P7057363812337464919

namespace A089644

/-- `a(n-2)+21` -/
def P7057363812337464919.Spec : Prop :=
  ∀ n, (P7057363812337464919.a n : ℤ) = A089644 (n + 1)

end A089644

/-! ## A089644.P1712878646370599029

`∑[7*gcd(2, ∏{p}[n, #])]`
-/

namespace A089644.P1712878646370599029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P1712878646370599029

namespace A089644

/-- `∑[7*gcd(2, ∏{p}[n, #])]` -/
def P1712878646370599029.Spec : Prop :=
  ∀ n, (P1712878646370599029.a n : ℤ) = A089644 (n + 1)

end A089644

/-! ## A089644.P16401713358807432387

`∑[abs(a(n-2))]` with `a(0)=7, a(1)=7, a(2)=14`
-/

namespace A089644.P16401713358807432387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 7, 14] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P16401713358807432387

namespace A089644

/-- `∑[abs(a(n-2))]` -/
def P16401713358807432387.Spec : Prop :=
  ∀ n, (P16401713358807432387.a n : ℤ) = A089644 (n + 1)

end A089644

/-! ## A089644.P1398590686366477610

`∑[21-a(n-1)]` with `a(0)=7, a(1)=7`
-/

namespace A089644.P1398590686366477610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 7] fun n f1 =>
  21 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P1398590686366477610

namespace A089644

/-- `∑[21-a(n-1)]` -/
def P1398590686366477610.Spec : Prop :=
  ∀ n, P1398590686366477610.a n = A089644 (n + 1)

end A089644

/-! ## A089644.P5599044797405730808

`∑[∑[ogf((7+7x+7x^2)/(1+x))]]`
-/

namespace A089644.P5599044797405730808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 7, 7] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P5599044797405730808

namespace A089644

/-- `∑[∑[ogf((7+7x+7x^2)/(1+x))]]` -/
def P5599044797405730808.Spec : Prop :=
  ∀ n, P5599044797405730808.a n = A089644 (n + 1)

end A089644

/-! ## A089644.P5880236905035208754

`ogf((7+7x+7x^2)/(1-x-x^2+x^3))`
-/

namespace A089644.P5880236905035208754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 7, 7] [1, -1, -1, 1] n

end

end A089644.P5880236905035208754

namespace A089644

/-- `ogf((7+7x+7x^2)/(1-x-x^2+x^3))` -/
def P5880236905035208754.Spec : Prop :=
  ∀ n, P5880236905035208754.a n = A089644 (n + 1)

end A089644

/-! ## A089644.P12229941876425887641

`record[2*lcm(3, n+1)+n+1]`
-/

namespace A089644.P12229941876425887641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 3 (n + 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089644.P12229941876425887641

namespace A089644

/-- `record[2*lcm(3, n+1)+n+1]` -/
def P12229941876425887641.Spec : Prop :=
  ∀ n, (P12229941876425887641.a n : ℤ) = A089644 (n + 1)

end A089644

/-! ## A089644.P9941061243306864334

`∑[A040043(n)]`
-/

namespace A089644.P9941061243306864334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P9941061243306864334

namespace A089644

/-- `∑[A040043(n)]` -/
def P9941061243306864334.Spec : Prop :=
  ∀ n, P9941061243306864334.a n = A089644 (n + 1)

end A089644

/-! ## A089644.P12342517462048954205

`∑[A040183(n)/2]`
-/

namespace A089644.P12342517462048954205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040183 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P12342517462048954205

namespace A089644

/-- `∑[A040183(n)/2]` -/
def P12342517462048954205.Spec : Prop :=
  ∀ n, P12342517462048954205.a n = (A089644 (n + 1) : ℚ)

end A089644

/-! ## A089644.P7944303872408850542

`∑[A040421(n)/3]`
-/

namespace A089644.P7944303872408850542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040421 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P7944303872408850542

namespace A089644

/-- `∑[A040421(n)/3]` -/
def P7944303872408850542.Spec : Prop :=
  ∀ n, P7944303872408850542.a n = (A089644 (n + 1) : ℚ)

end A089644

/-! ## A089644.P10863079848144970745

`∑[A040757(n)/4]`
-/

namespace A089644.P10863079848144970745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040757 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P10863079848144970745

namespace A089644

/-- `∑[A040757(n)/4]` -/
def P10863079848144970745.Spec : Prop :=
  ∀ n, P10863079848144970745.a n = (A089644 (n + 1) : ℚ)

end A089644

/-! ## A089644.P17103225093139246734

`∑[lcm(7, A280193(n))]`
-/

namespace A089644.P17103225093139246734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A280193 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P17103225093139246734

namespace A089644

/-- `∑[lcm(7, A280193(n))]` -/
def P17103225093139246734.Spec : Prop :=
  ∀ n, (P17103225093139246734.a n : ℤ) = A089644 (n + 1)

end A089644

/-! ## A089644.P5984488141883319257

`∑[or(6, A040021(n))]`
-/

namespace A089644.P5984488141883319257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A040021 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P5984488141883319257

namespace A089644

/-- `∑[or(6, A040021(n))]` -/
def P5984488141883319257.Spec : Prop :=
  ∀ n, P5984488141883319257.a n = A089644 (n + 1)

end A089644

/-! ## A089644.P6170009789990108260

`∑[7/8*A040057(n)]`
-/

namespace A089644.P6170009789990108260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 8 * (A040057 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P6170009789990108260

namespace A089644

/-- `∑[7/8*A040057(n)]` -/
def P6170009789990108260.Spec : Prop :=
  ∀ n, P6170009789990108260.a n = (A089644 (n + 1) : ℚ)

end A089644

/-! ## A089644.P2058475584540871671

`∑[7/12*A040133(n)]`
-/

namespace A089644.P2058475584540871671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 12 * (A040133 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089644.P2058475584540871671

namespace A089644

/-- `∑[7/12*A040133(n)]` -/
def P2058475584540871671.Spec : Prop :=
  ∀ n, P2058475584540871671.a n = (A089644 (n + 1) : ℚ)

end A089644

/-! ## A089644.P6538291934638375465

`A155449(n+1)+Δ[n²]`
-/

namespace A089644.P6538291934638375465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155449 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A089644.P6538291934638375465

namespace A089644

/-- `A155449(n+1)+Δ[n²]` -/
def P6538291934638375465.Spec : Prop :=
  ∀ n, P6538291934638375465.a n = A089644 (n + 1)

end A089644

/-! ## A089644.P4820418726814314504

`A106387(n+1)+A016885(n)`
-/

namespace A089644.P4820418726814314504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106387 (n + 1) + A016885 n

end

end A089644.P4820418726814314504

namespace A089644

/-- `A106387(n+1)+A016885(n)` -/
def P4820418726814314504.Spec : Prop :=
  ∀ n, P4820418726814314504.a n = A089644 (n + 1)

end A089644

/-!
# A089646: a(n) = Sum(a(floor(n/p)): p prime and p<=n); a(1) = 1.

The programs for A089646, there is no canonical definition to state claims against.
-/

/-! ## A089646.P5532224116776418014

`∑[A325392(n+1)]`
-/

namespace A089646.P5532224116776418014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089646.P5532224116776418014

/-! ## A089646.P5487725212856125991

`A325392(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A089646.P5487725212856125991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325392 (n + 1) + a (A023443 n).toNat

end

end A089646.P5487725212856125991

/-! ## A089646.P17158420616122793479

`A325392(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A089646.P17158420616122793479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325392 (n + 1) + a (A028310 n - 1).toNat

end

end A089646.P17158420616122793479

/-! ## A089646.P7604456047870567805

`a(n-1)+A325392(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A089646.P7604456047870567805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A325392 (n + 1) + A000038 n)

end

end A089646.P7604456047870567805

/-! ## A089646.P14176231886240049182

`a(n-1)+A325392(n+1)%A008486(n)` with `a(0)=1`
-/

namespace A089646.P14176231886240049182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A325392 (n + 1)) (A008486 n)

end

end A089646.P14176231886240049182

/-! ## A089646.P7652842463387302250

`∑[∑{d}[n+1, A092673(#)*A244098((n+1)/#)]]`
-/

namespace A089646.P7652842463387302250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A092673 d * A244098 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089646.P7652842463387302250

/-! ## A089646.P13297496360450566721

`a(n-1)+A325392(n+1)+A000045(C(2, n+2))` with `a(0)=1`
-/

namespace A089646.P13297496360450566721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A325392 (n + 1) + A000045 (Nat.choose 2 (n + 2)))

end

end A089646.P13297496360450566721

/-!
# A089647: Number of triangular partitions of n.

The programs for A089647, there is no canonical definition to state claims against.
-/

/-! ## A089647.P10182266978552241076

`A111651(A351644(n))`
-/

namespace A089647.P10182266978552241076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A351644 n).toNat

end

end A089647.P10182266978552241076

/-! ## A089647.P12949983770968517835

`A135660((n+1)*A003242(n)+1)`
-/

namespace A089647.P12949983770968517835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 ((n + 1 : ℤ) * A003242 n + 1).toNat

end

end A089647.P12949983770968517835

/-! ## A089647.P1075491235908368349

`A135660(A011782(n)+A001970(n))`
-/

namespace A089647.P1075491235908368349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A011782 n + A001970 n).toNat

end

end A089647.P1075491235908368349

/-! ## A089647.P15063886843487598101

`A000196(A000009(n)*A005708(2*n))`
-/

namespace A089647.P15063886843487598101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000009 n * A005708 (2 * n)).toNat

end

end A089647.P15063886843487598101

/-! ## A089647.P9736978076295401777

`floor(sqrt(A007614(floor(18^(n/4)))))`
-/

namespace A089647.P9736978076295401777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007614 ⌊(18 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat)

end

end A089647.P9736978076295401777

/-!
# A089648: Numbers whose numbers of zeros and ones in binary representation differ at most by 1.

The programs for A089648, the canonical program `A089648.P4732096365320624093` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089648 has offset 1).

The definition of A089648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089648.P4732096365320624093

`lt[abs(A145037(n)), 2]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089648

/-- `lt[abs(A145037(n)), 2]` -/
def P4732096365320624093.Spec : Prop :=
  ∀ n, (P4732096365320624093.a n : ℤ) = A089648 (n + 1)

theorem P4732096365320624093.correct : P4732096365320624093.Spec := by
  intro n
  simp only [A089648, Nat.add_sub_cancel]

end A089648

/-! ## A089648.P1337162524053374904

`eq[1, A028310(A145037(n)²)]`
-/

namespace A089648.P1337162524053374904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A145037 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P1337162524053374904

namespace A089648

/-- `eq[1, A028310(A145037(n)²)]` -/
def P1337162524053374904.Spec : Prop :=
  ∀ n, (P1337162524053374904.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P16670356943752854929

`lt[A006068(A145037(n)²), 2]`
-/

namespace A089648.P16670356943752854929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A145037 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089648.P16670356943752854929

namespace A089648

/-- `lt[A006068(A145037(n)²), 2]` -/
def P16670356943752854929.Spec : Prop :=
  ∀ n, (P16670356943752854929.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P10097961698933239503

`eq[1, A105523(A145037(n)²)²]`
-/

namespace A089648.P10097961698933239503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (A145037 n ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P10097961698933239503

namespace A089648

/-- `eq[1, A105523(A145037(n)²)²]` -/
def P10097961698933239503.Spec : Prop :=
  ∀ n, (P10097961698933239503.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P1968653669275499424

`eq[A145037(n)², A145037(A145037(n)²)]`
-/

namespace A089648.P1968653669275499424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A145037 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089648.P1968653669275499424

namespace A089648

/-- `eq[A145037(n)², A145037(A145037(n)²)]` -/
def P1968653669275499424.Spec : Prop :=
  ∀ n, (P1968653669275499424.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P11179589334353218061

`lt[abs(A037861(n)), 2]`
-/

namespace A089648.P11179589334353218061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089648.P11179589334353218061

namespace A089648

/-- `lt[abs(A037861(n)), 2]` -/
def P11179589334353218061.Spec : Prop :=
  ∀ n, (P11179589334353218061.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P15046221676421884695

`eq[0, A004524(A037861(n)²)]`
-/

namespace A089648.P15046221676421884695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A037861 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P15046221676421884695

namespace A089648

/-- `eq[0, A004524(A037861(n)²)]` -/
def P15046221676421884695.Spec : Prop :=
  ∀ n, (P15046221676421884695.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P11749478470583432893

`eq[1, A028310(A037861(n)²)]`
-/

namespace A089648.P11749478470583432893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A037861 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P11749478470583432893

namespace A089648

/-- `eq[1, A028310(A037861(n)²)]` -/
def P11749478470583432893.Spec : Prop :=
  ∀ n, (P11749478470583432893.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P12917812242400455465

`eq[1, A070939(A037861(n)²)]`
-/

namespace A089648.P12917812242400455465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A037861 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P12917812242400455465

namespace A089648

/-- `eq[1, A070939(A037861(n)²)]` -/
def P12917812242400455465.Spec : Prop :=
  ∀ n, (P12917812242400455465.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P12080333223556434366

`eq[1, A085491(A037861(n)²)]`
-/

namespace A089648.P12080333223556434366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (A037861 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P12080333223556434366

namespace A089648

/-- `eq[1, A085491(A037861(n)²)]` -/
def P12080333223556434366.Spec : Prop :=
  ∀ n, (P12080333223556434366.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P3500090351121297970

`eq[1, A266447(A037861(n)²)]`
-/

namespace A089648.P3500090351121297970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 (A037861 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P3500090351121297970

namespace A089648

/-- `eq[1, A266447(A037861(n)²)]` -/
def P3500090351121297970.Spec : Prop :=
  ∀ n, (P3500090351121297970.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P2241517350287466487

`eq[2, A141044(A037861(n)²)]`
-/

namespace A089648.P2241517350287466487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A037861 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P2241517350287466487

namespace A089648

/-- `eq[2, A141044(A037861(n)²)]` -/
def P2241517350287466487.Spec : Prop :=
  ∀ n, (P2241517350287466487.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P17563418084784963177

`eq[1, A048816(A037861(n)²+1)]`
-/

namespace A089648.P17563418084784963177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048816 (A037861 n ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P17563418084784963177

namespace A089648

/-- `eq[1, A048816(A037861(n)²+1)]` -/
def P17563418084784963177.Spec : Prop :=
  ∀ n, (P17563418084784963177.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P9094379943077385359

`eq[1, A212571(A037861(n)²)+1]`
-/

namespace A089648.P9094379943077385359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212571 (A037861 n ^ 2).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P9094379943077385359

namespace A089648

/-- `eq[1, A212571(A037861(n)²)+1]` -/
def P9094379943077385359.Spec : Prop :=
  ∀ n, (P9094379943077385359.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P13413075064649651325

`lt[(A000120(n)-A023416(n))², 2]`
-/

namespace A089648.P13413075064649651325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 n - A023416 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089648.P13413075064649651325

namespace A089648

/-- `lt[(A000120(n)-A023416(n))², 2]` -/
def P13413075064649651325.Spec : Prop :=
  ∀ n, (P13413075064649651325.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P1991447102773990456

`lt[(A000120(n)-A080791(n))², 2]`
-/

namespace A089648.P1991447102773990456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 n - A080791 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089648.P1991447102773990456

namespace A089648

/-- `lt[(A000120(n)-A080791(n))², 2]` -/
def P1991447102773990456.Spec : Prop :=
  ∀ n, (P1991447102773990456.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P5780436724513734491

`eq[2, A053645(A037861(n)²+1)+2]`
-/

namespace A089648.P5780436724513734491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A037861 n ^ 2 + 1).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P5780436724513734491

namespace A089648

/-- `eq[2, A053645(A037861(n)²+1)+2]` -/
def P5780436724513734491.Spec : Prop :=
  ∀ n, (P5780436724513734491.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P3600268084066607148

`eq[0, A004524(A037861(n)*A037861(n))]`
-/

namespace A089648.P3600268084066607148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A037861 n * A037861 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089648.P3600268084066607148

namespace A089648

/-- `eq[0, A004524(A037861(n)*A037861(n))]` -/
def P3600268084066607148.Spec : Prop :=
  ∀ n, (P3600268084066607148.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P17210549568007275447

`eq[A037861(n)², A000120(A037861(n)²)]`
-/

namespace A089648.P17210549568007275447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A037861 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089648.P17210549568007275447

namespace A089648

/-- `eq[A037861(n)², A000120(A037861(n)²)]` -/
def P17210549568007275447.Spec : Prop :=
  ∀ n, (P17210549568007275447.a n : ℤ) = A089648 (n + 1)

end A089648

/-! ## A089648.P2800617439040112660

`eq[A037861(n)², A006068(A037861(n)²)]`
-/

namespace A089648.P2800617439040112660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A037861 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089648.P2800617439040112660

namespace A089648

/-- `eq[A037861(n)², A006068(A037861(n)²)]` -/
def P2800617439040112660.Spec : Prop :=
  ∀ n, (P2800617439040112660.a n : ℤ) = A089648 (n + 1)

end A089648

/-!
# A089649: a(1)=1, a(2)=2, a(n) = a(n-1) + a(floor((n+1)/3)).

The programs for A089649, the canonical program `A089649.P4056918874364938918` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089649 has offset 1).

The definition of A089649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor((n+2)/3)-1)` (program `A089649.P4056918874364938918`, by `A089649.P4056918874364938918.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089649.P4056918874364938918

`a(n-1)+a(floor((n+2)/3)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089649

/-- `a(n-1)+a(floor((n+2)/3)-1)` -/
def P4056918874364938918.Spec : Prop :=
  ∀ n, (P4056918874364938918.a n : ℤ) = A089649 (n + 1)

theorem P4056918874364938918.correct : P4056918874364938918.Spec := by
  intro n
  simp only [A089649, Nat.add_sub_cancel]

end A089649

/-! ## A089649.P14403241209653187065

`a(floor((n-1)/3))-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A089649.P14403241209653187065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 3⌋.toNat - (-a (n - 1))

end

end A089649.P14403241209653187065

namespace A089649

/-- `a(floor((n-1)/3))-floor(-a(n-1))` -/
def P14403241209653187065.Spec : Prop :=
  ∀ n, P14403241209653187065.a n = A089649 (n + 1)

end A089649

/-! ## A089649.P1202335093448088335

`a(n-1)-ceil(-a(A002264(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A089649.P1202335093448088335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (-a (A002264 (n - 1)).toNat)

end

end A089649.P1202335093448088335

namespace A089649

/-- `a(n-1)-ceil(-a(A002264(n-1)))` -/
def P1202335093448088335.Spec : Prop :=
  ∀ n, P1202335093448088335.a n = A089649 (n + 1)

end A089649

/-! ## A089649.P2861108359575148408

`a(A042968(n)-n)-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A089649.P2861108359575148408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A042968 n - (n : ℤ)).toNat - (-a (n - 1))

end

end A089649.P2861108359575148408

namespace A089649

/-- `a(A042968(n)-n)-ceil(-a(n-1))` -/
def P2861108359575148408.Spec : Prop :=
  ∀ n, P2861108359575148408.a n = A089649 (n + 1)

end A089649

/-! ## A089649.P10217948474608573634

`A089606(A167614(n+1))`
-/

namespace A089649.P10217948474608573634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089606 (A167614 (n + 1)).toNat

end

end A089649.P10217948474608573634

namespace A089649

/-- `A089606(A167614(n+1))` -/
def P10217948474608573634.Spec : Prop :=
  ∀ n, P10217948474608573634.a n = A089649 (n + 1)

end A089649

/-!
# A089650: a(n) = A089649(n) mod 3.

The programs for A089650, the canonical program `A089650.P3525635140593796255` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089650 has offset 1).

The definition of A089650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A089649(n+1)%3` (program `A089650.P3525635140593796255`, by `A089650.P3525635140593796255.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089650.P5745677708026296054

`(a(n-1)+a(floor((n+2)/3)-1))%3` with `a(0)=1, a(1)=2, a(2)=0, a(3)=1, a(4)=0, a(5)=2, a(6)=1`
-/

namespace A089650.P5745677708026296054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 1, 0, 2, 1] fun n a =>
  (a (n - 1) + a (⌊(n + 2 : ℚ) / 3⌋ - 1).toNat) % 3

end

end A089650.P5745677708026296054

namespace A089650

/-- `(a(n-1)+a(floor((n+2)/3)-1))%3` -/
def P5745677708026296054.Spec : Prop :=
  ∀ n, (P5745677708026296054.a n : ℤ) = A089650 (n + 1)

end A089650

/-! ## A089650.P3525635140593796255

`A089649(n+1)%3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089650

/-- `A089649(n+1)%3` -/
def P3525635140593796255.Spec : Prop :=
  ∀ n, P3525635140593796255.a n = A089650 (n + 1)

theorem P3525635140593796255.correct : P3525635140593796255.Spec := by
  intro n
  simp only [A089650, Nat.add_sub_cancel]

end A089650

/-! ## A089650.P4948108662237074667

`(n*a(floor(n/3))+1)%3` with `a(0)=1`
-/

namespace A089650.P4948108662237074667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * a ⌊(n : ℚ) / 3⌋.toNat + 1) % 3

end

end A089650.P4948108662237074667

namespace A089650

/-- `(n*a(floor(n/3))+1)%3` -/
def P4948108662237074667.Spec : Prop :=
  ∀ n, (P4948108662237074667.a n : ℤ) = A089650 (n + 1)

end A089650

/-! ## A089650.P1359520566588262336

`(a(floor((n-1)/3))-floor(-a(n-1)))%3` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A089650.P1359520566588262336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a ⌊((n : ℤ) - 1 : ℚ) / 3⌋.toNat - (-a (n - 1))) 3

end

end A089650.P1359520566588262336

namespace A089650

/-- `(a(floor((n-1)/3))-floor(-a(n-1)))%3` -/
def P1359520566588262336.Spec : Prop :=
  ∀ n, P1359520566588262336.a n = A089650 (n + 1)

end A089650

/-! ## A089650.P12689407555374961679

`(A127905(n)+1)%3`
-/

namespace A089650.P12689407555374961679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127905 n + 1) 3

end

end A089650.P12689407555374961679

namespace A089650

/-- `(A127905(n)+1)%3` -/
def P12689407555374961679.Spec : Prop :=
  ∀ n, P12689407555374961679.a n = A089650 (n + 1)

end A089650

/-! ## A089650.P12800253848100876885

`A188687(n)%3`
-/

namespace A089650.P12800253848100876885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188687 n) 3

end

end A089650.P12800253848100876885

namespace A089650

/-- `A188687(n)%3` -/
def P12800253848100876885.Spec : Prop :=
  ∀ n, P12800253848100876885.a n = A089650 (n + 1)

end A089650

/-! ## A089650.P18407405276588543902

`∑[A307678(n)]%3`
-/

namespace A089650.P18407405276588543902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A089650.P18407405276588543902

namespace A089650

/-- `∑[A307678(n)]%3` -/
def P18407405276588543902.Spec : Prop :=
  ∀ n, P18407405276588543902.a n = A089650 (n + 1)

end A089650

/-! ## A089650.P15952718052570171819

`A010872(A089649(n+1))`
-/

namespace A089650.P15952718052570171819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A089649 (n + 1)).toNat

end

end A089650.P15952718052570171819

namespace A089650

/-- `A010872(A089649(n+1))` -/
def P15952718052570171819.Spec : Prop :=
  ∀ n, P15952718052570171819.a n = A089650 (n + 1)

end A089650

/-! ## A089650.P17788147600619903674

`A071879(3*n+1)%3`
-/

namespace A089650.P17788147600619903674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071879 (3 * n + 1)) 3

end

end A089650.P17788147600619903674

namespace A089650

/-- `A071879(3*n+1)%3` -/
def P17788147600619903674.Spec : Prop :=
  ∀ n, P17788147600619903674.a n = A089650 (n + 1)

end A089650

/-!
# A089651: Partial sums of the sequence : a(1)=1, a(1), a(1), a(1), a(1), a(2), a(2), a(2), a(2), a(3), a(3), a(3), a(3), a(4), ... each term (not a(1)) repeated 4 times.

The programs for A089651, the canonical program `A089651.P1666444196010728631` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089651 has offset 1).

The definition of A089651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089651.P1666444196010728631

`a(n-1)+a(floor((n+3)/4)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089651

/-- `a(n-1)+a(floor((n+3)/4)-1)` -/
def P1666444196010728631.Spec : Prop :=
  ∀ n, (P1666444196010728631.a n : ℤ) = A089651 (n + 1)

theorem P1666444196010728631.correct : P1666444196010728631.Spec := by
  intro n
  simp only [A089651, Nat.add_sub_cancel]

end A089651

/-! ## A089651.P11997693736912047521

`a(floor((n-1)/4))-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A089651.P11997693736912047521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 4⌋.toNat - (-a (n - 1))

end

end A089651.P11997693736912047521

namespace A089651

/-- `a(floor((n-1)/4))-floor(-a(n-1))` -/
def P11997693736912047521.Spec : Prop :=
  ∀ n, P11997693736912047521.a n = A089651 (n + 1)

end A089651

/-! ## A089651.P2802140476257307632

`a(n-1)+ceil(a(A110655(n)-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A089651.P2802140476257307632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A110655 n - 1).toNat

end

end A089651.P2802140476257307632

namespace A089651

/-- `a(n-1)+ceil(a(A110655(n)-1))` -/
def P2802140476257307632.Spec : Prop :=
  ∀ n, (P2802140476257307632.a n : ℤ) = A089651 (n + 1)

end A089651

/-! ## A089651.P4408257374226531293

`A089606(A167614(n+2)+1)`
-/

namespace A089651.P4408257374226531293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089606 (A167614 (n + 2) + 1).toNat

end

end A089651.P4408257374226531293

namespace A089651

/-- `A089606(A167614(n+2)+1)` -/
def P4408257374226531293.Spec : Prop :=
  ∀ n, P4408257374226531293.a n = A089651 (n + 1)

end A089651

/-! ## A089651.P17127847658775525423

`A089606(A000217(n+3)+4)`
-/

namespace A089651.P17127847658775525423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089606 (A000217 (n + 3) + 4).toNat

end

end A089651.P17127847658775525423

namespace A089651

/-- `A089606(A000217(n+3)+4)` -/
def P17127847658775525423.Spec : Prop :=
  ∀ n, P17127847658775525423.a n = A089651 (n + 1)

end A089651

/-!
# A089652: Partial sums, modulo 4, of the sequence: a(1)=1, a(1), a(1), a(1), a(1), a(2), a(2), a(2), a(2), a(3), a(3), a(3), a(3), a(4), ... each term (not a(1)) repeated 4 times.

The programs for A089652, the canonical program `A089652.P5525873070258300728` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089652 has offset 1).

The definition of A089652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089652.P5525873070258300728

`(n*a(floor(n/4))+1)%4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089652

/-- `(n*a(floor(n/4))+1)%4` -/
def P5525873070258300728.Spec : Prop :=
  ∀ n, (P5525873070258300728.a n : ℤ) = A089652 (n + 1)

theorem P5525873070258300728.correct : P5525873070258300728.Spec := by
  intro n
  simp only [A089652, Nat.add_sub_cancel]

end A089652

/-! ## A089652.P6526461014191388025

`and(3, n*a(floor(n/4))+1)` with `a(0)=1`
-/

namespace A089652.P6526461014191388025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (n * a ⌊(n : ℚ) / 4⌋.toNat + 1)

end

end A089652.P6526461014191388025

namespace A089652

/-- `and(3, n*a(floor(n/4))+1)` -/
def P6526461014191388025.Spec : Prop :=
  ∀ n, (P6526461014191388025.a n : ℤ) = A089652 (n + 1)

end A089652

/-! ## A089652.P17559987885440380686

`(a(n-1)+a(floor(n/log(55))))%4` with `a(0)=1`
-/

namespace A089652.P17559987885440380686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + a ⌊(n : ℝ) / Real.log (55 : ℝ)⌋.toNat) % 4

end

end A089652.P17559987885440380686

namespace A089652

/-- `(a(n-1)+a(floor(n/log(55))))%4` -/
def P17559987885440380686.Spec : Prop :=
  ∀ n, (P17559987885440380686.a n : ℤ) = A089652 (n + 1)

end A089652

/-! ## A089652.P2150989261974223247

`and(3, a(floor((n-1)/4))+a(n-1))` with `a(0)=1`
-/

namespace A089652.P2150989261974223247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (a ⌊((n : ℤ) - 1 : ℚ) / 4⌋.toNat + a (n - 1))

end

end A089652.P2150989261974223247

namespace A089652

/-- `and(3, a(floor((n-1)/4))+a(n-1))` -/
def P2150989261974223247.Spec : Prop :=
  ∀ n, (P2150989261974223247.a n : ℤ) = A089652 (n + 1)

end A089652

/-! ## A089652.P6784059877592099190

`abs(a(floor((n-1)/4))+a(n-1))%4` with `a(0)=1`
-/

namespace A089652.P6784059877592099190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a ⌊((n : ℤ) - 1 : ℚ) / 4⌋.toNat + a (n - 1)) % 4

end

end A089652.P6784059877592099190

namespace A089652

/-- `abs(a(floor((n-1)/4))+a(n-1))%4` -/
def P6784059877592099190.Spec : Prop :=
  ∀ n, (P6784059877592099190.a n : ℤ) = A089652 (n + 1)

end A089652

/-! ## A089652.P14336554717343852570

`(a(floor((n-1)/4))+floor(a(n-1)))%4` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A089652.P14336554717343852570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a ⌊((n : ℤ) - 1 : ℚ) / 4⌋.toNat + a (n - 1)) % 4

end

end A089652.P14336554717343852570

namespace A089652

/-- `(a(floor((n-1)/4))+floor(a(n-1)))%4` -/
def P14336554717343852570.Spec : Prop :=
  ∀ n, (P14336554717343852570.a n : ℤ) = A089652 (n + 1)

end A089652

/-! ## A089652.P12019668114927993779

`A089651(n+1)%4`
-/

namespace A089652.P12019668114927993779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089651 (n + 1)) 4

end

end A089652.P12019668114927993779

namespace A089652

/-- `A089651(n+1)%4` -/
def P12019668114927993779.Spec : Prop :=
  ∀ n, P12019668114927993779.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P6518371255923255727

`and(3, A089651(1-(n-2*n)))`
-/

namespace A089652.P6518371255923255727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A089651 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A089652.P6518371255923255727

namespace A089652

/-- `and(3, A089651(1-(n-2*n)))` -/
def P6518371255923255727.Spec : Prop :=
  ∀ n, P6518371255923255727.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P16405096924172903856

`A010873(A089651(n+1))`
-/

namespace A089652.P16405096924172903856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A089651 (n + 1)).toNat

end

end A089652.P16405096924172903856

namespace A089652

/-- `A010873(A089651(n+1))` -/
def P16405096924172903856.Spec : Prop :=
  ∀ n, P16405096924172903856.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P13570060162880978428

`and(A089651(n+1), A092841(n))`
-/

namespace A089652.P13570060162880978428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089651 (n + 1)) (A092841 n)

end

end A089652.P13570060162880978428

namespace A089652

/-- `and(A089651(n+1), A092841(n))` -/
def P13570060162880978428.Spec : Prop :=
  ∀ n, P13570060162880978428.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P5518234134993522561

`and(A089651(n+1), A122553(n))`
-/

namespace A089652.P5518234134993522561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089651 (n + 1)) (A122553 n)

end

end A089652.P5518234134993522561

namespace A089652

/-- `and(A089651(n+1), A122553(n))` -/
def P5518234134993522561.Spec : Prop :=
  ∀ n, P5518234134993522561.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P2289647889764383071

`and(A089651(n+1), A158799(n))`
-/

namespace A089652.P2289647889764383071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089651 (n + 1)) (A158799 n)

end

end A089652.P2289647889764383071

namespace A089652

/-- `and(A089651(n+1), A158799(n))` -/
def P2289647889764383071.Spec : Prop :=
  ∀ n, P2289647889764383071.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P248276307377717174

`and(A089651(n+1), A167817(n))`
-/

namespace A089652.P248276307377717174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089651 (n + 1)) (A167817 n)

end

end A089652.P248276307377717174

namespace A089652

/-- `and(A089651(n+1), A167817(n))` -/
def P248276307377717174.Spec : Prop :=
  ∀ n, P248276307377717174.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P16609710733382968666

`and(A089651(n+1), A188161(n))`
-/

namespace A089652.P16609710733382968666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089651 (n + 1)) (A188161 n)

end

end A089652.P16609710733382968666

namespace A089652

/-- `and(A089651(n+1), A188161(n))` -/
def P16609710733382968666.Spec : Prop :=
  ∀ n, P16609710733382968666.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P14444279984932999345

`and(A089651(n+1), A339771(n))`
-/

namespace A089652.P14444279984932999345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089651 (n + 1)) (A339771 n)

end

end A089652.P14444279984932999345

namespace A089652

/-- `and(A089651(n+1), A339771(n))` -/
def P14444279984932999345.Spec : Prop :=
  ∀ n, P14444279984932999345.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P15089173947680687552

`and(A089651(n+1), A127509(n+1))`
-/

namespace A089652.P15089173947680687552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089651 (n + 1)) (A127509 (n + 1))

end

end A089652.P15089173947680687552

namespace A089652

/-- `and(A089651(n+1), A127509(n+1))` -/
def P15089173947680687552.Spec : Prop :=
  ∀ n, P15089173947680687552.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P12728626444321953597

`and(A089651(n+1), A171369(n+1))`
-/

namespace A089652.P12728626444321953597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089651 (n + 1)) (A171369 (n + 1))

end

end A089652.P12728626444321953597

namespace A089652

/-- `and(A089651(n+1), A171369(n+1))` -/
def P12728626444321953597.Spec : Prop :=
  ∀ n, P12728626444321953597.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P13047737476515144563

`and(A089651(n+1), A191341(n+1))`
-/

namespace A089652.P13047737476515144563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089651 (n + 1)) (A191341 (n + 1))

end

end A089652.P13047737476515144563

namespace A089652

/-- `and(A089651(n+1), A191341(n+1))` -/
def P13047737476515144563.Spec : Prop :=
  ∀ n, P13047737476515144563.a n = A089652 (n + 1)

end A089652

/-! ## A089652.P13385175791956153661

`A010873(n*a(A002265(n))+1)` with `a(0)=1`
-/

namespace A089652.P13385175791956153661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010873 ((n : ℤ) * a (A002265 n).toNat + 1).toNat

end

end A089652.P13385175791956153661

namespace A089652

/-- `A010873(n*a(A002265(n))+1)` -/
def P13385175791956153661.Spec : Prop :=
  ∀ n, P13385175791956153661.a n = A089652 (n + 1)

end A089652

/-!
# A089653: Numbers k > 1 such that (product of prime factors of k) - 1 is a perfect square.

The programs for A089653, there is no canonical definition to state claims against.
-/

/-! ## A089653.P14014389286158950014

`eq[1, A003285(∏{p}[n+1, #])]+1`
-/

namespace A089653.P14014389286158950014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089653.P14014389286158950014

/-! ## A089653.P14378396409383131207

`eq[4, A179939(A053186(∏{p}[n+1, #])+1)]+1`
-/

namespace A089653.P14378396409383131207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179939 (A053186 (∏ p ∈ Nat.primeFactors (f3 n), p) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089653.P14378396409383131207

/-! ## A089653.P10487585106888377623

`eq[1, A003285(∏{p}[n, #])]`
-/

namespace A089653.P10487585106888377623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089653.P10487585106888377623

/-! ## A089653.P6339579107401774707

`eq[1, A262678(∏{p}[n, #])]`
-/

namespace A089653.P6339579107401774707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089653.P6339579107401774707

/-! ## A089653.P928160744511518452

`eq[A002350(A007947(n+1)+1), A007947(n+1)]+1`
-/

namespace A089653.P928160744511518452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A007947 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089653.P928160744511518452

/-!
# A089654: Table T(n,k), read by rows, related to a conjecture of P. Erdos (see A039669).

The programs for A089654, there is no canonical definition to state claims against.
-/

/-! ## A089654.P2061172538005019694

`val(record[A099884(n)²], 2)+1`
-/

namespace A089654.P2061172538005019694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 + 1

end

end A089654.P2061172538005019694

/-! ## A089654.P15757189395086824157

`A000265(A386386(n)+1)`
-/

namespace A089654.P15757189395086824157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A386386 n + 1).toNat

end

end A089654.P15757189395086824157

/-! ## A089654.P11599618184123843283

`A005408(val(record[A099884(n)], 2))`
-/

namespace A089654.P11599618184123843283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2)

end

end A089654.P11599618184123843283

/-! ## A089654.P14744592220532200305

`A000265(A387016(n+1)-1)`
-/

namespace A089654.P14744592220532200305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A387016 (n + 1) - 1).toNat

end

end A089654.P14744592220532200305

/-! ## A089654.P7550057832719230366

`A139391(A387016(n+1)-1)`
-/

namespace A089654.P7550057832719230366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (A387016 (n + 1) - 1).toNat

end

end A089654.P7550057832719230366

/-! ## A089654.P12043464914149364872

`A099375(eq[1, A285425(n+1)])`
-/

namespace A089654.P12043464914149364872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089654.P12043464914149364872

/-! ## A089654.P6772330810642229937

`A193592(eq[2, A342255(n+1)])`
-/

namespace A089654.P6772330810642229937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089654.P6772330810642229937

/-! ## A089654.P4246145603474181473

`A099375(lt[A285425(n+1), 2])`
-/

namespace A089654.P4246145603474181473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285425 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A089654.P4246145603474181473

/-! ## A089654.P6423173380285495292

`A004442(val(record[A099884(n)²], 2))`
-/

namespace A089654.P6423173380285495292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2)

end

end A089654.P6423173380285495292

/-! ## A089654.P6752290491493136681

`A005843(val(record[A099884(n)], 2))+1`
-/

namespace A089654.P6752290491493136681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2) + 1

end

end A089654.P6752290491493136681

/-!
# A089655: a(1)=1 and for n>=2 a(n) is the denominator of A(n) (see comment for A(n) definition).

The programs for A089655, the canonical program `A089655.P604208623789449129` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089655 has offset 1).

The definition of A089655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089655.P604208623789449129

`A003557(n+2)*A003557(A004277(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089655

/-- `A003557(n+2)*A003557(A004277(n))` -/
def P604208623789449129.Spec : Prop :=
  ∀ n, P604208623789449129.a n = A089655 (n + 1)

theorem P604208623789449129.correct : P604208623789449129.Spec := by
  intro n
  simp only [A089655, Nat.add_sub_cancel]

end A089655

/-! ## A089655.P2099238957369216151

`A003557(A028310(2*n))*A003557(n+2)`
-/

namespace A089655.P2099238957369216151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A028310 (2 * n)).toNat * A003557 (n + 2)

end

end A089655.P2099238957369216151

namespace A089655

/-- `A003557(A028310(2*n))*A003557(n+2)` -/
def P2099238957369216151.Spec : Prop :=
  ∀ n, P2099238957369216151.a n = A089655 (n + 1)

end A089655

/-! ## A089655.P12484147171397182495

`floor((n+1)²/∏{p}[n*(n+2), #])`
-/

namespace A089655.P12484147171397182495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A089655.P12484147171397182495

namespace A089655

/-- `floor((n+1)²/∏{p}[n*(n+2), #])` -/
def P12484147171397182495.Spec : Prop :=
  ∀ n, P12484147171397182495.a n = A089655 (n + 1)

end A089655

/-! ## A089655.P11440679440016014206

`A003557(A233583(2*n+1))*A003557(n+2)`
-/

namespace A089655.P11440679440016014206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A233583 (2 * n + 1)).toNat * A003557 (n + 2)

end

end A089655.P11440679440016014206

namespace A089655

/-- `A003557(A233583(2*n+1))*A003557(n+2)` -/
def P11440679440016014206.Spec : Prop :=
  ∀ n, P11440679440016014206.a n = A089655 (n + 1)

end A089655

/-! ## A089655.P12246175938078216982

`A035106(2*n+1)/A007947(A035106(2*n+1))`
-/

namespace A089655.P12246175938078216982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035106 (2 * n + 1) : ℚ) / (A007947 (A035106 (2 * n + 1)).toNat : ℚ)

end

end A089655.P12246175938078216982

namespace A089655

/-- `A035106(2*n+1)/A007947(A035106(2*n+1))` -/
def P12246175938078216982.Spec : Prop :=
  ∀ n, P12246175938078216982.a n = (A089655 (n + 1) : ℚ)

end A089655

/-! ## A089655.P13040213724982523574

`A336551(record[abs(1-n²)])+1`
-/

namespace A089655.P13040213724982523574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A089655.P13040213724982523574

namespace A089655

/-- `A336551(record[abs(1-n²)])+1` -/
def P13040213724982523574.Spec : Prop :=
  ∀ n, P13040213724982523574.a n = A089655 (n + 1)

end A089655

/-! ## A089655.P11437637384435894544

`A336551(abs(1-n)+n²+1+n)+1`
-/

namespace A089655.P11437637384435894544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (|1 - (n : ℤ)| + (n ^ 2 + 1 + n : ℤ)).toNat + 1

end

end A089655.P11437637384435894544

namespace A089655

/-- `A336551(abs(1-n)+n²+1+n)+1` -/
def P11437637384435894544.Spec : Prop :=
  ∀ n, P11437637384435894544.a n = A089655 (n + 1)

end A089655

/-! ## A089655.P9467541165208052667

`A003557(record[abs(1-n²)])`
-/

namespace A089655.P9467541165208052667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089655.P9467541165208052667

namespace A089655

/-- `A003557(record[abs(1-n²)])` -/
def P9467541165208052667.Spec : Prop :=
  ∀ n, P9467541165208052667.a n = A089655 (n + 1)

end A089655

/-! ## A089655.P6460811820173990086

`A003557(floor((n+2)/acot(n)))`
-/

namespace A089655.P6460811820173990086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ⌊(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A089655.P6460811820173990086

namespace A089655

/-- `A003557(floor((n+2)/acot(n)))` -/
def P6460811820173990086.Spec : Prop :=
  ∀ n, P6460811820173990086.a n = A089655 (n + 1)

end A089655

/-! ## A089655.P8659800305971041960

`A003557(∑[Δ[n²]-char[1]])`
-/

namespace A089655.P8659800305971041960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089655.P8659800305971041960

namespace A089655

/-- `A003557(∑[Δ[n²]-char[1]])` -/
def P8659800305971041960.Spec : Prop :=
  ∀ n, P8659800305971041960.a n = A089655 (n + 1)

end A089655

/-! ## A089655.P10923242341894928057

`A003557(A082562(n+1))-char[1]`
-/

namespace A089655.P10923242341894928057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A082562 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089655.P10923242341894928057

namespace A089655

/-- `A003557(A082562(n+1))-char[1]` -/
def P10923242341894928057.Spec : Prop :=
  ∀ n, P10923242341894928057.a n = A089655 (n + 1)

end A089655

/-! ## A089655.P17279646190520243909

`A300719(A087560(floor((n+2)/acot(n))))`
-/

namespace A089655.P17279646190520243909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300719 (A087560 ⌊(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A089655.P17279646190520243909

namespace A089655

/-- `A300719(A087560(floor((n+2)/acot(n))))` -/
def P17279646190520243909.Spec : Prop :=
  ∀ n, P17279646190520243909.a n = A089655 (n + 1)

end A089655

/-! ## A089655.P10302552173000868305

`∏{d}[1-(n+1)², A014963(#/A014963(#))]`
-/

namespace A089655.P10302552173000868305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 (SequenceMachineLib.roundAway ((d : ℚ) / (A014963 d : ℚ))).toNat

end

end A089655.P10302552173000868305

namespace A089655

/-- `∏{d}[1-(n+1)², A014963(#/A014963(#))]` -/
def P10302552173000868305.Spec : Prop :=
  ∀ n, P10302552173000868305.a n = A089655 (n + 1)

end A089655

/-!
# A089656: Given a distribution of n balls, labeled 1,...,n, among n unlabeled contents-ordered urns, arrange the nonempty urns in increasing order of their initial elements: U_1,...U_k and sum the quantities (i-1)(card U_i - 1) for i=1,...,k to get the "weight" of this distribution. These numbers represent the number of distributions of even weight minus the number with odd weight.

The programs for A089656, there is no canonical definition to state claims against.
-/

/-! ## A089656.P1764224268647927643

`A302439(ceil(∑[3^(n-2)])²)`
-/

namespace A089656.P1764224268647927643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302439 (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2).toNat

end

end A089656.P1764224268647927643

/-! ## A089656.P4926395623353804813

`A172308(A006452(n))`
-/

namespace A089656.P4926395623353804813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172308 (A006452 n).toNat

end

end A089656.P4926395623353804813

/-!
# A089657: Let g[n]=Floor[Prime[n]-n)/((n-PrimePi[n])], then a(n) = Floor[(Prime[n]+g[n]*PrimePi[n])/(1+g[n]).

The programs for A089657, there is no canonical definition to state claims against.
-/

/-! ## A089657.P15050475808884365960

`A033761(A306889(n+1))+n`
-/

namespace A089657.P15050475808884365960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (A306889 (n + 1)).toNat + (n : ℤ)

end

end A089657.P15050475808884365960

/-! ## A089657.P3081103507253287002

`A143331(A319692(n+1))+n`
-/

namespace A089657.P3081103507253287002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143331 (A319692 (n + 1)).toNat + (n : ℤ)

end

end A089657.P3081103507253287002

/-! ## A089657.P10214483522210254190

`A323023(A145983(n+1))+n`
-/

namespace A089657.P10214483522210254190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A145983 (n + 1)).toNat + (n : ℤ)

end

end A089657.P10214483522210254190

/-! ## A089657.P1241232169185987475

`A104248(A050780(n+3))+n`
-/

namespace A089657.P1241232169185987475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104248 (A050780 (n + 3)).toNat + (n : ℤ)

end

end A089657.P1241232169185987475

/-! ## A089657.P2598494134510749556

`A022303(A113139(2*n+3))+n`
-/

namespace A089657.P2598494134510749556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A113139 (2 * n + 3)).toNat + (n : ℤ)

end

end A089657.P2598494134510749556

/-!
# A089658: a(n) = S1(n,1), where S1(n, t) = Sum_{k=0..n} (k^t * Sum_{j=0..k} binomial(n,j)).

The programs for A089658, the canonical program `A089658.P17917921771060639903` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089658 has offset 0).

The definition of A089658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089658.P13933904890035311923

`n*(5+3*n)*2^(n-3)`
-/

namespace A089658.P13933904890035311923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (5 + 3 * n) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A089658.P13933904890035311923

namespace A089658

/-- `n*(5+3*n)*2^(n-3)` -/
def P13933904890035311923.Spec : Prop :=
  ∀ n, P13933904890035311923.a n = (A089658 n : ℚ)

theorem P13933904890035311923.correct : P13933904890035311923.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A089658, Nat.add_sub_cancel, A089658.P13933904890035311923.a, A089658.P17917921771060639903.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A089658, Nat.add_sub_cancel, A089658.P13933904890035311923.a, A089658.P17917921771060639903.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A089658

/-! ## A089658.P17917921771060639903

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=2, a(2)=11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089658

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P17917921771060639903.Spec : Prop :=
  ∀ n, P17917921771060639903.a n = A089658 n

theorem P17917921771060639903.correct : P17917921771060639903.Spec := by
  intro n
  simp only [A089658]

end A089658

/-! ## A089658.P16088016784374635253

`A276289(n)+A001787(n)`
-/

namespace A089658.P16088016784374635253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276289 n + A001787 n

end

end A089658.P16088016784374635253

namespace A089658

/-- `A276289(n)+A001787(n)` -/
def P16088016784374635253.Spec : Prop :=
  ∀ n, P16088016784374635253.a n = A089658 n

end A089658

/-! ## A089658.P15503206748280582077

`A084850(n)-A072863(n)`
-/

namespace A089658.P15503206748280582077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084850 n - A072863 n

end

end A089658.P15503206748280582077

namespace A089658

/-- `A084850(n)-A072863(n)` -/
def P15503206748280582077.Spec : Prop :=
  ∀ n, P15503206748280582077.a n = A089658 n

end A089658

/-! ## A089658.P6314926252469810507

`A072863(n)-A127276(n)`
-/

namespace A089658.P6314926252469810507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n - A127276 n

end

end A089658.P6314926252469810507

namespace A089658

/-- `A072863(n)-A127276(n)` -/
def P6314926252469810507.Spec : Prop :=
  ∀ n, P6314926252469810507.a n = A089658 n

end A089658

/-! ## A089658.P3282577430138291897

`A084899(n)-A178987(n)`
-/

namespace A089658.P3282577430138291897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084899 n - A178987 n

end

end A089658.P3282577430138291897

namespace A089658

/-- `A084899(n)-A178987(n)` -/
def P3282577430138291897.Spec : Prop :=
  ∀ n, P3282577430138291897.a n = A089658 n

end A089658

/-! ## A089658.P10551676834193555416

`A295288(n)-A001792(n)`
-/

namespace A089658.P10551676834193555416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295288 n - A001792 n

end

end A089658.P10551676834193555416

namespace A089658

/-- `A295288(n)-A001792(n)` -/
def P10551676834193555416.Spec : Prop :=
  ∀ n, P10551676834193555416.a n = A089658 n

end A089658

/-! ## A089658.P9293958034721526490

`A340257(n)-A081908(n)`
-/

namespace A089658.P9293958034721526490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340257 n - A081908 n

end

end A089658.P9293958034721526490

namespace A089658

/-- `A340257(n)-A081908(n)` -/
def P9293958034721526490.Spec : Prop :=
  ∀ n, P9293958034721526490.a n = A089658 n

end A089658

/-! ## A089658.P12292793945258619335

`A300451(n)-A159964(n)`
-/

namespace A089658.P12292793945258619335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300451 n - A159964 n

end

end A089658.P12292793945258619335

namespace A089658

/-- `A300451(n)-A159964(n)` -/
def P12292793945258619335.Spec : Prop :=
  ∀ n, P12292793945258619335.a n = A089658 n

end A089658

/-! ## A089658.P8283354992659355977

`A001788(n+1)-A084851(n)`
-/

namespace A089658.P8283354992659355977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) - A084851 n

end

end A089658.P8283354992659355977

namespace A089658

/-- `A001788(n+1)-A084851(n)` -/
def P8283354992659355977.Spec : Prop :=
  ∀ n, P8283354992659355977.a n = A089658 n

end A089658

/-! ## A089658.P4314267537313821926

`A136530(n)-A001787(n+1)`
-/

namespace A089658.P4314267537313821926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136530 n - A001787 (n + 1)

end

end A089658.P4314267537313821926

namespace A089658

/-- `A136530(n)-A001787(n+1)` -/
def P4314267537313821926.Spec : Prop :=
  ∀ n, P4314267537313821926.a n = A089658 n

end A089658

/-! ## A089658.P12065204300492096637

`∑[A049611(n)+∑[A049611(n)]]`
-/

namespace A089658.P12065204300492096637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089658.P12065204300492096637

namespace A089658

/-- `∑[A049611(n)+∑[A049611(n)]]` -/
def P12065204300492096637.Spec : Prop :=
  ∀ n, P12065204300492096637.a n = A089658 n

end A089658

/-! ## A089658.P17895996668149512386

`∑[A001793(n+1)-A058396(n)]`
-/

namespace A089658.P17895996668149512386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) - A058396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089658.P17895996668149512386

namespace A089658

/-- `∑[A001793(n+1)-A058396(n)]` -/
def P17895996668149512386.Spec : Prop :=
  ∀ n, P17895996668149512386.a n = A089658 n

end A089658

/-! ## A089658.P5923676875962702686

`A001788(n)+Δ[A001815(n)/2]`
-/

namespace A089658.P5923676875962702686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001815 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001788 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A089658.P5923676875962702686

namespace A089658

/-- `A001788(n)+Δ[A001815(n)/2]` -/
def P5923676875962702686.Spec : Prop :=
  ∀ n, P5923676875962702686.a n = (A089658 n : ℚ)

end A089658

/-! ## A089658.P28841328418271247

`A001788(n+1)-A049611(n+1)`
-/

namespace A089658.P28841328418271247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) - A049611 (n + 1)

end

end A089658.P28841328418271247

namespace A089658

/-- `A001788(n+1)-A049611(n+1)` -/
def P28841328418271247.Spec : Prop :=
  ∀ n, P28841328418271247.a n = A089658 n

end A089658

/-! ## A089658.P9977361074776478101

`A001815(n+1)-A001815(n)/2`
-/

namespace A089658.P9977361074776478101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001815 (n + 1) : ℚ) - (A001815 n : ℚ) / 2

end

end A089658.P9977361074776478101

namespace A089658

/-- `A001815(n+1)-A001815(n)/2` -/
def P9977361074776478101.Spec : Prop :=
  ∀ n, P9977361074776478101.a n = (A089658 n : ℚ)

end A089658

/-! ## A089658.P3324675337704838340

`A295288(n)-(A001787(n)+A000079(n))`
-/

namespace A089658.P3324675337704838340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295288 n - (A001787 n + A000079 n)

end

end A089658.P3324675337704838340

namespace A089658

/-- `A295288(n)-(A001787(n)+A000079(n))` -/
def P3324675337704838340.Spec : Prop :=
  ∀ n, P3324675337704838340.a n = A089658 n

end A089658

/-! ## A089658.P18283999889771949706

`A001788(n)+A072863(n)-A011782(n+1)`
-/

namespace A089658.P18283999889771949706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (A072863 n - A011782 (n + 1))

end

end A089658.P18283999889771949706

namespace A089658

/-- `A001788(n)+A072863(n)-A011782(n+1)` -/
def P18283999889771949706.Spec : Prop :=
  ∀ n, P18283999889771949706.a n = A089658 n

end A089658

/-! ## A089658.P18210917838357829538

`A104270(n+1)+A001788(n)-A081908(n)`
-/

namespace A089658.P18210917838357829538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) + (A001788 n - A081908 n)

end

end A089658.P18210917838357829538

namespace A089658

/-- `A104270(n+1)+A001788(n)-A081908(n)` -/
def P18210917838357829538.Spec : Prop :=
  ∀ n, P18210917838357829538.a n = A089658 n

end A089658

/-! ## A089658.P10082444368649594260

`A001787(n)+A295288(n)-A001787(n+1)`
-/

namespace A089658.P10082444368649594260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A295288 n - A001787 (n + 1))

end

end A089658.P10082444368649594260

namespace A089658

/-- `A001787(n)+A295288(n)-A001787(n+1)` -/
def P10082444368649594260.Spec : Prop :=
  ∀ n, P10082444368649594260.a n = A089658 n

end A089658

/-!
# A089659: a(n) = S1(n,2), where S1(n, t) = Sum_{k=0..n} (k^t * Sum_{j=0..k} binomial(n,j)).

The programs for A089659, the canonical program `A089659.P15319882171378632666` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089659 has offset 0).

The definition of A089659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089659.P11205969295986600036

`2^(n-3)*n*(7*n²+12*n+5)/3`
-/

namespace A089659.P11205969295986600036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n : ℚ) * (7 * n ^ 2 + 12 * n + 5 : ℚ) / 3

end

end A089659.P11205969295986600036

namespace A089659

/-- `2^(n-3)*n*(7*n²+12*n+5)/3` -/
def P11205969295986600036.Spec : Prop :=
  ∀ n, P11205969295986600036.a n = (A089659 n : ℚ)

theorem P11205969295986600036.correct : P11205969295986600036.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A089659, Nat.add_sub_cancel, A089659.P11205969295986600036.a, A089659.P15319882171378632666.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A089659, Nat.add_sub_cancel, A089659.P11205969295986600036.a, A089659.P15319882171378632666.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A089659

/-! ## A089659.P15319882171378632666

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=2, a(2)=19, a(3)=104`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089659

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P15319882171378632666.Spec : Prop :=
  ∀ n, P15319882171378632666.a n = A089659 n

theorem P15319882171378632666.correct : P15319882171378632666.Spec := by
  intro n
  simp only [A089659]

end A089659

/-! ## A089659.P13862748579398003346

`A014682(A011782(n)*A304993(n))`
-/

namespace A089659.P13862748579398003346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A011782 n * A304993 n).toNat

end

end A089659.P13862748579398003346

namespace A089659

/-- `A014682(A011782(n)*A304993(n))` -/
def P13862748579398003346.Spec : Prop :=
  ∀ n, P13862748579398003346.a n = A089659 n

end A089659

/-!
# A089660: a(n) = S1(n,3), where S1(n, t) = Sum_{k=0..n} (k^t * Sum_{j=0..k} binomial(n,j)).

The programs for A089660, the canonical program `A089660.P6238343819122839044` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089660 has offset 0).

The definition of A089660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089660.P6238343819122839044

`2^(n-6)*n*(3*n*(7+10*n+5*n²)-2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089660

/-- `2^(n-6)*n*(3*n*(7+10*n+5*n²)-2)` -/
def P6238343819122839044.Spec : Prop :=
  ∀ n, P6238343819122839044.a n = (A089660 n : ℚ)

end A089660

/-!
# A089661: a(n) = S1(n,4), where S1(n,t) = Sum_{k=0..n} k^t * Sum_{j=0..k} binomial(n,j).

The programs for A089661, the canonical program `A089661.P8111099776919354424` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089661 has offset 0).

The definition of A089661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089661.P8111099776919354424

`1/15*n*(n+1)*(93*n^3+132*n²+53*n-38)*2^(n-5)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089661

/-- `1/15*n*(n+1)*(93*n^3+132*n²+53*n-38)*2^(n-5)` -/
def P8111099776919354424.Spec : Prop :=
  ∀ n, P8111099776919354424.a n = (A089661 n : ℚ)

end A089661

/-!
# A089664: a(n) = S2(n,1), where S2(n, t) = Sum_{k=0..n} k^t *(Sum_{j=0..k} binomial(n,j))^2.

The programs for A089664, the canonical program `A089664.P9450444366901078491` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089664 has offset 0).

The definition of A089664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089664.P11605075687376450016

`1/2*(n*(3*n+5)*4^(n-1)-3*C(n+1, 3)*A000108(n))`
-/

namespace A089664.P11605075687376450016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((n * (3 * n + 5) : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((3 * Nat.choose (n + 1) 3 : ℤ) * A000108 n : ℚ))

end

end A089664.P11605075687376450016

namespace A089664

/-- `1/2*(n*(3*n+5)*4^(n-1)-3*C(n+1, 3)*A000108(n))` -/
def P11605075687376450016.Spec : Prop :=
  ∀ n, P11605075687376450016.a n = (A089664 n : ℚ)

end A089664

/-! ## A089664.P9450444366901078491

`(n*(3*n+5)*4^n-2*n*(n-1)*C(2*n, n))/8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089664

/-- `(n*(3*n+5)*4^n-2*n*(n-1)*C(2*n, n))/8` -/
def P9450444366901078491.Spec : Prop :=
  ∀ n, P9450444366901078491.a n = (A089664 n : ℚ)

end A089664

/-!
# A089675: Numbers k such that 10^k - 3 is prime.

The programs for A089675, there is no canonical definition to state claims against.
-/

/-! ## A089675.P4743958057128857421

`A056662(n+1)+1`
-/

namespace A089675.P4743958057128857421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056662 (n + 1) + 1

end

end A089675.P4743958057128857421

/-! ## A089675.P18000514145518796567

`eq[3, A033874(n+1)]+1`
-/

namespace A089675.P18000514145518796567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089675.P18000514145518796567

/-! ## A089675.P12813685207739734051

`lt[A033874(n+1), A340220(n)]+1`
-/

namespace A089675.P12813685207739734051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A089675.P12813685207739734051

/-! ## A089675.P5412654819012881611

`lt[A000010(A033874(n+1)+2), 9]+1`
-/

namespace A089675.P5412654819012881611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A033874 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A089675.P5412654819012881611

/-!
# A089677: Exponential convolution of A000670(n), with A000670(0)=0, with the sequence of all ones alternating in sign.

The programs for A089677, there is no canonical definition to state claims against.
-/

/-! ## A089677.P9762400109504133406

`(A000670(n)-(-1)^n)/2`
-/

namespace A089677.P9762400109504133406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n - (-1) ^ n : ℚ) / 2

end

end A089677.P9762400109504133406

/-! ## A089677.P17908200966886214327

`A052841(n)-(-1)^n`
-/

namespace A089677.P17908200966886214327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052841 n - (-1) ^ n

end

end A089677.P17908200966886214327

/-! ## A089677.P6046853743236321639

`A032109(n)-char[2*n]`
-/

namespace A089677.P6046853743236321639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089677.P6046853743236321639

/-! ## A089677.P3311743077196476041

`A172109(n)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A089677.P3311743077196476041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A172109 n - a (n - 1)

end

end A089677.P3311743077196476041

/-! ## A089677.P1096615283075501941

`A005649(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A089677.P1096615283075501941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005649 (n - 1) - a (n - 1)

end

end A089677.P1096615283075501941

/-! ## A089677.P6774376533573578136

`ceil(A000629(n)/4-(-1)^n/2)`
-/

namespace A089677.P6774376533573578136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000629 n : ℚ) / 4 - ((-1) ^ n : ℚ) / 2⌉

end

end A089677.P6774376533573578136

/-! ## A089677.P3490200434100796347

`A000670(n)-A052841(n)`
-/

namespace A089677.P3490200434100796347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A052841 n

end

end A089677.P3490200434100796347

/-! ## A089677.P2782815124466937242

`A000035(n)+A032109(n)-1`
-/

namespace A089677.P2782815124466937242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A032109 n - 1)

end

end A089677.P2782815124466937242

/-! ## A089677.P1796304648662325286

`A000034(n)+A032109(n)-2`
-/

namespace A089677.P1796304648662325286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A032109 n - 2)

end

end A089677.P1796304648662325286

/-! ## A089677.P15073404920625106930

`A032109(n)+n-A109613(n)`
-/

namespace A089677.P15073404920625106930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n + (n : ℤ) - A109613 n

end

end A089677.P15073404920625106930

/-!
# A089679: Let g[n_]=Floor[(Prime[n]-n)/(n-PrimePi[n])]. Then a(n) = (g[n]+g[n+1])-g[n*(n+1)]+1.

The programs for A089679, there is no canonical definition to state claims against.
-/

/-! ## A089679.P12450468920687211169

`and(A023396(A000011(n)), A092474(n+1))`
-/

namespace A089679.P12450468920687211169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023396 (A000011 n).toNat) (A092474 (n + 1))

end

end A089679.P12450468920687211169

/-! ## A089679.P7766467440865337643

`A275885(n+1)-A244413(A328078(n))`
-/

namespace A089679.P7766467440865337643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275885 (n + 1) - A244413 (A328078 n).toNat

end

end A089679.P7766467440865337643

/-! ## A089679.P17163544844037289179

`A275885(n+1)-A275926(A275916(2*(n+2)))`
-/

namespace A089679.P17163544844037289179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275885 (n + 1) - A275926 (A275916 (2 * (n + 2))).toNat

end

end A089679.P17163544844037289179

/-! ## A089679.P13258659344368317259

`A293838(A293834(n+1))-A083927(A173284(n))`
-/

namespace A089679.P13258659344368317259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293838 (A293834 (n + 1)).toNat - A083927 (A173284 n).toNat

end

end A089679.P13258659344368317259

/-!
# A089681: Numbers n such that 3n^2 - 1 is prime.

The programs for A089681, there is no canonical definition to state claims against.
-/

/-! ## A089681.P8975578177800612845

`ceil(sqrt(A089682(n+1)/3))`
-/

namespace A089681.P8975578177800612845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A089682 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A089681.P8975578177800612845

/-! ## A089681.P9673072330699755671

`(2-C(2, n+2))*A143831(A028310(n))`
-/

namespace A089681.P9673072330699755671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 (n + 2) : ℤ)) * A143831 (A028310 n).toNat

end

end A089681.P9673072330699755671

/-! ## A089681.P7213524497037949207

`A014963(A001316(n))*A143831(A028310(n))`
-/

namespace A089681.P7213524497037949207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A143831 (A028310 n).toNat

end

end A089681.P7213524497037949207

/-! ## A089681.P17495597943427300416

`A020639(A008458(n))*A143831(A028310(n))`
-/

namespace A089681.P17495597943427300416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A143831 (A028310 n).toNat

end

end A089681.P17495597943427300416

/-! ## A089681.P6164353116311392082

`A020639(A008574(n))*A143831(A028310(n))`
-/

namespace A089681.P6164353116311392082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A143831 (A028310 n).toNat

end

end A089681.P6164353116311392082

/-! ## A089681.P16642685356181422141

`A020639(A298024(n))*A143831(A028310(n))`
-/

namespace A089681.P16642685356181422141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A298024 n).toNat * A143831 (A028310 n).toNat

end

end A089681.P16642685356181422141

/-! ## A089681.P10502429405588063623

`record[A000034(n)*A143831(A065033(n))]`
-/

namespace A089681.P10502429405588063623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A143831 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089681.P10502429405588063623

/-! ## A089681.P15513756588202536681

`record[A040001(n)*A143831(A065033(n))]`
-/

namespace A089681.P15513756588202536681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A143831 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089681.P15513756588202536681

/-! ## A089681.P9685598361930946861

`A040001(2*n)*A143831(A065033(2*n))`
-/

namespace A089681.P9685598361930946861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A143831 (A065033 (2 * n)).toNat

end

end A089681.P9685598361930946861

/-! ## A089681.P14228040611024006955

`ceil(sqrt(p?[A080663(n+1)]/3))`
-/

namespace A089681.P14228040611024006955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3 : ℝ)⌉

end

end A089681.P14228040611024006955

/-!
# A089682: Primes of the form 3*m^2 - 1.

The programs for A089682, there is no canonical definition to state claims against.
-/

/-! ## A089682.P11620761025311030129

`A080663(A089681(n+1))`
-/

namespace A089682.P11620761025311030129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080663 (A089681 (n + 1)).toNat

end

end A089682.P11620761025311030129

/-! ## A089682.P12121440237704707644

`∪[A007352(n+1), A143830(n+1)]`
-/

namespace A089682.P12121440237704707644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089682.P12121440237704707644

/-! ## A089682.P7032176167034615468

`A143830(A028310(n))%A095662(n)`
-/

namespace A089682.P7032176167034615468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143830 (A028310 n).toNat) (A095662 n)

end

end A089682.P7032176167034615468

/-! ## A089682.P9761635018614192333

`A100536(A089681(n+1))+A054977(n+1)`
-/

namespace A089682.P9761635018614192333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100536 (A089681 (n + 1)).toNat + A054977 (n + 1)

end

end A089682.P9761635018614192333

/-! ## A089682.P17365146787217795712

`A100536(A089681(n+1))-A134824(n+2)`
-/

namespace A089682.P17365146787217795712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100536 (A089681 (n + 1)).toNat - A134824 (n + 2)

end

end A089682.P17365146787217795712

/-! ## A089682.P15593093610410259443

`A100536(A089681(n+1))+A000035(2*n+1)`
-/

namespace A089682.P15593093610410259443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100536 (A089681 (n + 1)).toNat + A000035 (2 * n + 1)

end

end A089682.P15593093610410259443

/-! ## A089682.P2486715645412988301

`A100536(A089681(n+1))+A000108(C(2, n+2))`
-/

namespace A089682.P2486715645412988301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100536 (A089681 (n + 1)).toNat + A000108 (Nat.choose 2 (n + 2))

end

end A089682.P2486715645412988301

/-! ## A089682.P17540646899263068791

`A100536(A089681(n+1))+Δ[n²]/A005408(n)`
-/

namespace A089682.P17540646899263068791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100536 (A089681 (n + 1)).toNat : ℚ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A005408 n : ℚ)

end

end A089682.P17540646899263068791

/-! ## A089682.P5173252735788415665

`A187950(A003623(n+1))+A100536(A089681(n+1))`
-/

namespace A089682.P5173252735788415665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A003623 (n + 1)).toNat + A100536 (A089681 (n + 1)).toNat

end

end A089682.P5173252735788415665

/-! ## A089682.P5606766536564454619

`A331952(2*A089681(n+1))`
-/

namespace A089682.P5606766536564454619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (2 * A089681 (n + 1)).toNat

end

end A089682.P5606766536564454619

/-! ## A089682.P17657489896012049944

`A331952(A089681(n+1)+A089681(n+1))`
-/

namespace A089682.P17657489896012049944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (A089681 (n + 1) + A089681 (n + 1)).toNat

end

end A089682.P17657489896012049944

/-! ## A089682.P15121700245945452569

`A100536(A089681(n+1))+A001222(A142051(n+1))`
-/

namespace A089682.P15121700245945452569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100536 (A089681 (n + 1)).toNat + A001222 (A142051 (n + 1)).toNat

end

end A089682.P15121700245945452569

/-! ## A089682.P9630592016746152495

`A100536(A089681(n+1))+A014577(24*n)`
-/

namespace A089682.P9630592016746152495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100536 (A089681 (n + 1)).toNat + A014577 (24 * n)

end

end A089682.P9630592016746152495

/-! ## A089682.P17988639730444724707

`A131670(A008607(n))+A100536(A089681(n+1))`
-/

namespace A089682.P17988639730444724707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131670 (A008607 n).toNat + A100536 (A089681 (n + 1)).toNat

end

end A089682.P17988639730444724707

/-! ## A089682.P15492343254663230154

`∩[A243009(n+1), A032765(n)]`
-/

namespace A089682.P15492343254663230154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089682.P15492343254663230154

/-! ## A089682.P17962661262358777663

`∩[A243009(n+1), A331952(n)]`
-/

namespace A089682.P17962661262358777663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089682.P17962661262358777663

/-! ## A089682.P7502779119604269304

`∩[A080663(n+1), A243009(n+1)]`
-/

namespace A089682.P7502779119604269304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089682.P7502779119604269304

/-! ## A089682.P4530833736005064063

`∩[A243009(n+1), A056220(n)+n²]`
-/

namespace A089682.P4530833736005064063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089682.P4530833736005064063

/-! ## A089682.P14002071008011954750

`p?[3*n²-1]`
-/

namespace A089682.P14002071008011954750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089682.P14002071008011954750

/-! ## A089682.P13741274283196537384

`or(2, p?[n*3*n-1])`
-/

namespace A089682.P13741274283196537384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A089682.P13741274283196537384

/-!
# A089683: a(n) = 3^(4*n).

The programs for A089683, the canonical program `A089683.P15359965128311871597` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089683 has offset 1).

The definition of A089683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(4*(n+1))` (program `A089683.P15359965128311871597`, by `A089683.P15359965128311871597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089683.P4594669185168342287

`81^(n+1)`
-/

namespace A089683.P4594669185168342287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81 ^ (n + 1)

end

end A089683.P4594669185168342287

namespace A089683

/-- `81^(n+1)` -/
def P4594669185168342287.Spec : Prop :=
  ∀ n, (P4594669185168342287.a n : ℤ) = A089683 (n + 1)

end A089683

/-! ## A089683.P15359965128311871597

`3^(4*(n+1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089683

/-- `3^(4*(n+1))` -/
def P15359965128311871597.Spec : Prop :=
  ∀ n, (P15359965128311871597.a n : ℤ) = A089683 (n + 1)

theorem P15359965128311871597.correct : P15359965128311871597.Spec := by
  intro n
  simp only [A089683, Nat.add_sub_cancel]

end A089683

/-!
# A089684: Numbers k such that 2*phi(k) > k.

The programs for A089684, the canonical program `A089684.P17861152038474701417` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089684 has offset 1).

The definition of A089684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089684.P708870037656405020

`eq[and(1, n), A318877(n+1)]+1`
-/

namespace A089684.P708870037656405020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089684.P708870037656405020

namespace A089684

/-- `eq[and(1, n), A318877(n+1)]+1` -/
def P708870037656405020.Spec : Prop :=
  ∀ n, (P708870037656405020.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P5055157105572615110

`record[(n+1)%(2*A000010(n+1))]`
-/

namespace A089684.P5055157105572615110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (2 * A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089684.P5055157105572615110

namespace A089684

/-- `record[(n+1)%(2*A000010(n+1))]` -/
def P5055157105572615110.Spec : Prop :=
  ∀ n, P5055157105572615110.a n = A089684 (n + 1)

end A089684

/-! ## A089684.P17861152038474701417

`eq[n%2/6, A323170(n+1)]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089684

/-- `eq[n%2/6, A323170(n+1)]+1` -/
def P17861152038474701417.Spec : Prop :=
  ∀ n, (P17861152038474701417.a n : ℤ) = A089684 (n + 1)

theorem P17861152038474701417.correct : P17861152038474701417.Spec := by
  intro n
  simp only [A089684, Nat.add_sub_cancel]

end A089684

/-! ## A089684.P16143826704175591196

`record[(2*n+1)*floor(A000010(2*n+1)/(n+1))]`
-/

namespace A089684.P16143826704175591196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ⌊(A000010 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089684.P16143826704175591196

namespace A089684

/-- `record[(2*n+1)*floor(A000010(2*n+1)/(n+1))]` -/
def P16143826704175591196.Spec : Prop :=
  ∀ n, P16143826704175591196.a n = A089684 (n + 1)

end A089684

/-! ## A089684.P18049509092552785300

`lt[A014682(n), A000010(n+1)]+1`
-/

namespace A089684.P18049509092552785300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A089684.P18049509092552785300

namespace A089684

/-- `lt[A014682(n), A000010(n+1)]+1` -/
def P18049509092552785300.Spec : Prop :=
  ∀ n, (P18049509092552785300.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P13002102482091445900

`record[A000265(n+2)%A062570(n+2)]`
-/

namespace A089684.P13002102482091445900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 2)) (A062570 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089684.P13002102482091445900

namespace A089684

/-- `record[A000265(n+2)%A062570(n+2)]` -/
def P13002102482091445900.Spec : Prop :=
  ∀ n, P13002102482091445900.a n = A089684 (n + 1)

end A089684

/-! ## A089684.P1520809819045415954

`eq[A000005(n+1), A318874(n+1)]+1`
-/

namespace A089684.P1520809819045415954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089684.P1520809819045415954

namespace A089684

/-- `eq[A000005(n+1), A318874(n+1)]+1` -/
def P1520809819045415954.Spec : Prop :=
  ∀ n, (P1520809819045415954.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P3806656237194192939

`eq[1, A062356(n+1)]+1`
-/

namespace A089684.P3806656237194192939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089684.P3806656237194192939

namespace A089684

/-- `eq[1, A062356(n+1)]+1` -/
def P3806656237194192939.Spec : Prop :=
  ∀ n, (P3806656237194192939.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P13676473804225343545

`lt[2*A051953(n+1), n+1]+1`
-/

namespace A089684.P13676473804225343545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051953 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A089684.P13676473804225343545

namespace A089684

/-- `lt[2*A051953(n+1), n+1]+1` -/
def P13676473804225343545.Spec : Prop :=
  ∀ n, (P13676473804225343545.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P15753191443457745379

`A141310(eq[1, A062356(n+1)])`
-/

namespace A089684.P15753191443457745379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089684.P15753191443457745379

namespace A089684

/-- `A141310(eq[1, A062356(n+1)])` -/
def P15753191443457745379.Spec : Prop :=
  ∀ n, P15753191443457745379.a n = A089684 (n + 1)

end A089684

/-! ## A089684.P164134182512763070

`lt[A006370(n), A039649(n+1)]+1`
-/

namespace A089684.P164134182512763070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A089684.P164134182512763070

namespace A089684

/-- `lt[A006370(n), A039649(n+1)]+1` -/
def P164134182512763070.Spec : Prop :=
  ∀ n, (P164134182512763070.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P12516888377469441514

`lt[n-1, A064680(A109606(n+1))]+1`
-/

namespace A089684.P12516888377469441514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A109606 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A089684.P12516888377469441514

namespace A089684

/-- `lt[n-1, A064680(A109606(n+1))]+1` -/
def P12516888377469441514.Spec : Prop :=
  ∀ n, (P12516888377469441514.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P12828247455593925503

`lt[A051953(n+1), A109606(n+1)+1]+1`
-/

namespace A089684.P12828247455593925503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A089684.P12828247455593925503

namespace A089684

/-- `lt[A051953(n+1), A109606(n+1)+1]+1` -/
def P12828247455593925503.Spec : Prop :=
  ∀ n, (P12828247455593925503.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P7260901782753903691

`lt[A026741(n+2), A000010(n+1)+1]+1`
-/

namespace A089684.P7260901782753903691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A089684.P7260901782753903691

namespace A089684

/-- `lt[A026741(n+2), A000010(n+1)+1]+1` -/
def P7260901782753903691.Spec : Prop :=
  ∀ n, (P7260901782753903691.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P1179127623528402221

`lt[A028242(n), A000010(A028310(n))]`
-/

namespace A089684.P1179127623528402221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089684.P1179127623528402221

namespace A089684

/-- `lt[A028242(n), A000010(A028310(n))]` -/
def P1179127623528402221.Spec : Prop :=
  ∀ n, (P1179127623528402221.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P193180672744436550

`lt[A051953(A028310(n)), A246277(n+1)]`
-/

namespace A089684.P193180672744436550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089684.P193180672744436550

namespace A089684

/-- `lt[A051953(A028310(n)), A246277(n+1)]` -/
def P193180672744436550.Spec : Prop :=
  ∀ n, (P193180672744436550.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P1802186250604115141

`lt[A051953(n+1), A000203(n+1)-A051612(n+1)]+1`
-/

namespace A089684.P1802186250604115141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A051612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A089684.P1802186250604115141

namespace A089684

/-- `lt[A051953(n+1), A000203(n+1)-A051612(n+1)]+1` -/
def P1802186250604115141.Spec : Prop :=
  ∀ n, (P1802186250604115141.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P7469789122471222169

`lt[A002265(A005408(n+1)), A109606(n+1)+1]+1`
-/

namespace A089684.P7469789122471222169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005408 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A089684.P7469789122471222169

namespace A089684

/-- `lt[A002265(A005408(n+1)), A109606(n+1)+1]+1` -/
def P7469789122471222169.Spec : Prop :=
  ∀ n, (P7469789122471222169.a n : ℤ) = A089684 (n + 1)

end A089684

/-! ## A089684.P12735293688993917761

`lt[A286865(A286852(n)), A286872(n+2)]`
-/

namespace A089684.P12735293688993917761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286865 (A286852 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286872 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089684.P12735293688993917761

namespace A089684

/-- `lt[A286865(A286852(n)), A286872(n+2)]` -/
def P12735293688993917761.Spec : Prop :=
  ∀ n, (P12735293688993917761.a n : ℤ) = A089684 (n + 1)

end A089684

/-!
# A089685: a={1,3,7,9} p[n]=Prime[n]*10+a[[1+Mod[n,4]]] a(m) = if p[n] is prime, then p[n].

The programs for A089685, there is no canonical definition to state claims against.
-/

/-! ## A089685.P12024987529319817929

`A093514(or(A049691(n+3), A287020(n+1)))`
-/

namespace A089685.P12024987529319817929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093514 (Int.lor (A049691 (n + 3)) (A287020 (n + 1))).toNat

end

end A089685.P12024987529319817929

/-! ## A089685.P5950709883025923625

`A093514(or(A049691(n+3), A306548(n+2)))`
-/

namespace A089685.P5950709883025923625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093514 (Int.lor (A049691 (n + 3)) (A306548 (n + 2))).toNat

end

end A089685.P5950709883025923625

/-! ## A089685.P7291504885403227608

`A093514(or(A049691(n+3), A219924(2*(n+2))))`
-/

namespace A089685.P7291504885403227608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093514 (Int.lor (A049691 (n + 3)) (A219924 (2 * (n + 2)))).toNat

end

end A089685.P7291504885403227608

/-!
# A089688: Table T(n,k), n>=0 and k>=1, read by antidiagonals; the k-th row is defined by : partitions of k*n into powers of k (with T(0,k) = 1).

The programs for A089688, there is no canonical definition to state claims against.
-/

/-! ## A089688.P6643135122591416174

`A292477(A056943(n))`
-/

namespace A089688.P6643135122591416174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (A056943 n).toNat

end

end A089688.P6643135122591416174

/-! ## A089688.P10504730473339545253

`A292477(n-2*A002262(n))`
-/

namespace A089688.P10504730473339545253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 ((n : ℤ) - 2 * A002262 n).toNat

end

end A089688.P10504730473339545253

/-! ## A089688.P10128010121292736012

`A292477(n²%A007401(n+1))`
-/

namespace A089688.P10128010121292736012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (Int.tmod (n ^ 2 : ℤ) (A007401 (n + 1))).toNat

end

end A089688.P10128010121292736012

/-! ## A089688.P11875857416943639925

`A292477(1-A158405(n+1)+n)`
-/

namespace A089688.P11875857416943639925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (1 - A158405 (n + 1) + (n : ℤ)).toNat

end

end A089688.P11875857416943639925

/-! ## A089688.P14053144993282137457

`A292477(A061579(n)-A003056(n))`
-/

namespace A089688.P14053144993282137457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (A061579 n - A003056 n).toNat

end

end A089688.P14053144993282137457

/-! ## A089688.P13705604600111013758

`A292477(n-A002262(n)-A002262(n))`
-/

namespace A089688.P13705604600111013758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 ((n : ℤ) - A002262 n - A002262 n).toNat

end

end A089688.P13705604600111013758

/-! ## A089688.P12390645415021114471

`A292477(A038722(n+1)-A002024(n+1))`
-/

namespace A089688.P12390645415021114471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (A038722 (n + 1) - A002024 (n + 1)).toNat

end

end A089688.P12390645415021114471

/-!
# A089689: A nonsense sequence.

The programs for A089689, there is no canonical definition to state claims against.
-/

/-! ## A089689.P5853240604461679960

`A195602(A083785(n+2))`
-/

namespace A089689.P5853240604461679960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195602 (A083785 (n + 2)).toNat

end

end A089689.P5853240604461679960

/-!
# A089690: a={1,3,7,9} a1={1,3,7,9,0} b[n]=Flatten[Table[10*Sum[10^m*a1[[1+Mod[n,5]]],{m,0,n}]+a,{n,0,digits}]]; a[m]=if b[n] is prime then b[n].

The programs for A089690, there is no canonical definition to state claims against.
-/

/-! ## A089690.P7077911763419211856

`p?[∑[A035400(A342094(n+2))]]`
-/

namespace A089690.P7077911763419211856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035400 (A342094 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089690.P7077911763419211856

/-! ## A089690.P17406562986767452935

`record[p?[A219792(A084080(n))]]`
-/

namespace A089690.P17406562986767452935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219792 (A084080 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089690.P17406562986767452935

/-! ## A089690.P3636744488698284699

`filter[A309739(n+1), A268240(#)]`
-/

namespace A089690.P3636744488698284699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268240 (f1 j).toNat = 1) n)

end

end A089690.P3636744488698284699

/-!
# A089691: a={1,3,7,9} a1={1,3,7,9,0} b[n]=Flatten[Table[10*Sum[10^m*a1[[1+Mod[m,5]]],{m,0,n}]+a,{n,0,digits}]]; a(m) = if b[n] is prime then b[n].

The programs for A089691, there is no canonical definition to state claims against.
-/

/-! ## A089691.P17181078544680386206

`A327348(∑[A144440(n+1)])`
-/

namespace A089691.P17181078544680386206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327348 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089691.P17181078544680386206

/-! ## A089691.P10375044559409421351

`A327348(∑[A166979(n+1)])`
-/

namespace A089691.P10375044559409421351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327348 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089691.P10375044559409421351

/-!
# A089692: a(n) = phi(2n)/2^omega(n).

The programs for A089692, the canonical program `A089692.P4290977152710679352` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089692 has offset 1).

The definition of A089692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089692.P4290977152710679352

`A062570(n+1)/A034444(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A089692

/-- `A062570(n+1)/A034444(n+1)` -/
def P4290977152710679352.Spec : Prop :=
  ∀ n, P4290977152710679352.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P8667366027376522189

`A000010(n+1)/2^A005087(n+1)`
-/

namespace A089692.P8667366027376522189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (2 : ℚ) ^ (A005087 (n + 1) : ℤ)

end

end A089692.P8667366027376522189

namespace A089692

/-- `A000010(n+1)/2^A005087(n+1)` -/
def P8667366027376522189.Spec : Prop :=
  ∀ n, P8667366027376522189.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P4043332726752561392

`A000010(2*(n+1))/2^A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089692.P4043332726752561392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) : ℚ) / (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A089692.P4043332726752561392

namespace A089692

/-- `A000010(2*(n+1))/2^A001221(n+1)` -/
def P4043332726752561392.Spec : Prop :=
  ∀ n, P4043332726752561392.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P12726726170522075137

`A070306(n+1)/gcd(2, n)`
-/

namespace A089692.P12726726170522075137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070306 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A089692.P12726726170522075137

namespace A089692

/-- `A070306(n+1)/gcd(2, n)` -/
def P12726726170522075137.Spec : Prop :=
  ∀ n, P12726726170522075137.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P8660285967632135405

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A317528((n+1)/and(n+1, -(n+1)))`
-/

namespace A089692.P8660285967632135405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A317528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

end

end A089692.P8660285967632135405

namespace A089692

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A317528((n+1)/and(n+1, -(n+1)))` -/
def P8660285967632135405.Spec : Prop :=
  ∀ n, P8660285967632135405.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P12162431885465526278

`A055034(n+1)/A007875(n+1)`
-/

namespace A089692.P12162431885465526278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055034 (n + 1) : ℚ) / (A007875 (n + 1) : ℚ)

end

end A089692.P12162431885465526278

namespace A089692

/-- `A055034(n+1)/A007875(n+1)` -/
def P12162431885465526278.Spec : Prop :=
  ∀ n, P12162431885465526278.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P15839892410225342803

`A000010(n+1)/A068068(n+1)`
-/

namespace A089692.P15839892410225342803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A068068 (n + 1) : ℚ)

end

end A089692.P15839892410225342803

namespace A089692

/-- `A000010(n+1)/A068068(n+1)` -/
def P15839892410225342803.Spec : Prop :=
  ∀ n, P15839892410225342803.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P17321744059462307406

`A090780(n+1)/A204455(n+1)`
-/

namespace A089692.P17321744059462307406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090780 (n + 1) : ℚ) / (A204455 (n + 1) : ℚ)

end

end A089692.P17321744059462307406

namespace A089692

/-- `A090780(n+1)/A204455(n+1)` -/
def P17321744059462307406.Spec : Prop :=
  ∀ n, P17321744059462307406.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P11641914696303889686

`gcd(A000010(n+1), A090780(n+1))`
-/

namespace A089692.P11641914696303889686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A090780 (n + 1))

end

end A089692.P11641914696303889686

namespace A089692

/-- `gcd(A000010(n+1), A090780(n+1))` -/
def P11641914696303889686.Spec : Prop :=
  ∀ n, (P11641914696303889686.a n : ℤ) = A089692 (n + 1)

end A089692

/-! ## A089692.P7209013039795675221

`gcd(A070306(n+1), A248003(n+1))`
-/

namespace A089692.P7209013039795675221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070306 (n + 1)) (A248003 (n + 1))

end

end A089692.P7209013039795675221

namespace A089692

/-- `gcd(A070306(n+1), A248003(n+1))` -/
def P7209013039795675221.Spec : Prop :=
  ∀ n, (P7209013039795675221.a n : ℤ) = A089692 (n + 1)

end A089692

/-! ## A089692.P1463888131789418385

`A000010(2*(n+1))/A034444(n+1)`
-/

namespace A089692.P1463888131789418385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A089692.P1463888131789418385

namespace A089692

/-- `A000010(2*(n+1))/A034444(n+1)` -/
def P1463888131789418385.Spec : Prop :=
  ∀ n, P1463888131789418385.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P5550153963187185246

`2*A000010(n+1)/A100008(n+1)`
-/

namespace A089692.P5550153963187185246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000010 (n + 1) : ℚ) / (A100008 (n + 1) : ℚ))

end

end A089692.P5550153963187185246

namespace A089692

/-- `2*A000010(n+1)/A100008(n+1)` -/
def P5550153963187185246.Spec : Prop :=
  ∀ n, P5550153963187185246.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P5260057562064768967

`A000010(n+1)/A060594(∏{p}[n+1, #])`
-/

namespace A089692.P5260057562064768967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A060594 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A089692.P5260057562064768967

namespace A089692

/-- `A000010(n+1)/A060594(∏{p}[n+1, #])` -/
def P5260057562064768967.Spec : Prop :=
  ∀ n, P5260057562064768967.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P1571756796882496687

`A000010(2*(n+1))/A000005(∏{p}[n+1, #])`
-/

namespace A089692.P1571756796882496687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) : ℚ) / (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A089692.P1571756796882496687

namespace A089692

/-- `A000010(2*(n+1))/A000005(∏{p}[n+1, #])` -/
def P1571756796882496687.Spec : Prop :=
  ∀ n, P1571756796882496687.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P14226978550245013331

`A000010(2*(n+1))/∑{d}[n+1, A008683(#)²]`
-/

namespace A089692.P14226978550245013331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), A008683 d ^ 2 : ℤ) : ℚ)

end

end A089692.P14226978550245013331

namespace A089692

/-- `A000010(2*(n+1))/∑{d}[n+1, A008683(#)²]` -/
def P14226978550245013331.Spec : Prop :=
  ∀ n, P14226978550245013331.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P43915836000814846

`A000010(n+1)/A060594(A007947(n+1))`
-/

namespace A089692.P43915836000814846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A060594 (A007947 (n + 1)).toNat : ℚ)

end

end A089692.P43915836000814846

namespace A089692

/-- `A000010(n+1)/A060594(A007947(n+1))` -/
def P43915836000814846.Spec : Prop :=
  ∀ n, P43915836000814846.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P16233878957470277598

`A000010(n+1)/A000010(A100008(n+1))`
-/

namespace A089692.P16233878957470277598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (A100008 (n + 1)).toNat : ℚ)

end

end A089692.P16233878957470277598

namespace A089692

/-- `A000010(n+1)/A000010(A100008(n+1))` -/
def P16233878957470277598.Spec : Prop :=
  ∀ n, P16233878957470277598.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P16553500105576596932

`A055034(n+1)/A055034(A034444(n+1))`
-/

namespace A089692.P16553500105576596932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055034 (n + 1) : ℚ) / (A055034 (A034444 (n + 1)).toNat : ℚ)

end

end A089692.P16553500105576596932

namespace A089692

/-- `A055034(n+1)/A055034(A034444(n+1))` -/
def P16553500105576596932.Spec : Prop :=
  ∀ n, P16553500105576596932.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P5978638322701088353

`A000010(n+1)/A000005(A204455(n+1))`
-/

namespace A089692.P5978638322701088353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000005 (A204455 (n + 1)).toNat : ℚ)

end

end A089692.P5978638322701088353

namespace A089692

/-- `A000010(n+1)/A000005(A204455(n+1))` -/
def P5978638322701088353.Spec : Prop :=
  ∀ n, P5978638322701088353.a n = (A089692 (n + 1) : ℚ)

end A089692

/-! ## A089692.P365444659009922457

`A200905(n+1)/A200905(A100008(n+1))`
-/

namespace A089692.P365444659009922457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200905 (n + 1) : ℚ) / (A200905 (A100008 (n + 1)).toNat : ℚ)

end

end A089692.P365444659009922457

namespace A089692

/-- `A200905(n+1)/A200905(A100008(n+1))` -/
def P365444659009922457.Spec : Prop :=
  ∀ n, P365444659009922457.a n = (A089692 (n + 1) : ℚ)

end A089692

/-!
# A089693: Numbers k such that phi(k) = 2^bigomega(k).

The programs for A089693, the canonical program `A089693.P3308658423887286800` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089693 has offset 1).

The definition of A089693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089693.P3308658423887286800

`2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=20, a(4)=30`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089693

/-- `2*a(n-2)` -/
def P3308658423887286800.Spec : Prop :=
  ∀ n, (P3308658423887286800.a n : ℤ) = A089693 (n + 1)

theorem P3308658423887286800.correct : P3308658423887286800.Spec := by
  intro n
  simp only [A089693, Nat.add_sub_cancel]

end A089693

/-! ## A089693.P942339568944059534

`∩[A003401(n+1), A066887(n+1)]`
-/

namespace A089693.P942339568944059534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089693.P942339568944059534

namespace A089693

/-- `∩[A003401(n+1), A066887(n+1)]` -/
def P942339568944059534.Spec : Prop :=
  ∀ n, (P942339568944059534.a n : ℤ) = A089693 (n + 1)

end A089693

/-! ## A089693.P18021432955125675812

`filter[A066887(n+1), A336477(#)]`
-/

namespace A089693.P18021432955125675812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A089693.P18021432955125675812

namespace A089693

/-- `filter[A066887(n+1), A336477(#)]` -/
def P18021432955125675812.Spec : Prop :=
  ∀ n, P18021432955125675812.a n = A089693 (n + 1)

end A089693

/-! ## A089693.P10538818309733140741

`eq[log2(A000010(n+1)), A001222(n+1)]+1`
-/

namespace A089693.P10538818309733140741
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000010 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A089693.P10538818309733140741

namespace A089693

/-- `eq[log2(A000010(n+1)), A001222(n+1)]+1` -/
def P10538818309733140741.Spec : Prop :=
  ∀ n, (P10538818309733140741.a n : ℤ) = A089693 (n + 1)

end A089693

/-! ## A089693.P9265116157908641817

`record[A195817(A029744(A052938(n)))]`
-/

namespace A089693.P9265116157908641817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 (A029744 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089693.P9265116157908641817

namespace A089693

/-- `record[A195817(A029744(A052938(n)))]` -/
def P9265116157908641817.Spec : Prop :=
  ∀ n, P9265116157908641817.a n = A089693 (n + 1)

end A089693

/-!
# A089696: Numbers k such that the numbers obtained by placing as many '*' signs as possible anywhere between the digits and then adding 1 yields a prime in every case: let abc.. be the digits of k, then abc+1, a*bc+1, ab*c+1, a*b*c+1, ... must all be primes.

The programs for A089696, there is no canonical definition to state claims against.
-/

/-! ## A089696.P11583346289806542089

`∩[A081988(n+1), A089395(n)]`
-/

namespace A089696.P11583346289806542089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089696.P11583346289806542089

/-! ## A089696.P9581635056628324088

`∩[A089699(n+1), A089395(n)]`
-/

namespace A089696.P9581635056628324088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089696.P9581635056628324088

/-! ## A089696.P8962194190851942716

`A089395(lt[A000010(2*n+3), A008685(n+1)])`
-/

namespace A089696.P8962194190851942716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A089696.P8962194190851942716

/-! ## A089696.P12318190365593840821

`A089395(lt[A089352(n+1), A089368(n+5)])`
-/

namespace A089696.P12318190365593840821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089368 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A089696.P12318190365593840821

/-!
# A089697: Smallest n-digit number k such that k+1 as well as 1 + the product of digits of k are squares greater than 1.

The programs for A089697, there is no canonical definition to state claims against.
-/

/-! ## A089697.P14875223454997386189

`A331793(n)+A061579(A331793(n))`
-/

namespace A089697.P14875223454997386189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331793 n + A061579 (A331793 n).toNat

end

end A089697.P14875223454997386189

/-!
# A089699: Numbers n with property that n + 1 as well as the (product of digits of n) + 1 are primes.

The programs for A089699, the canonical program `A089699.P4171371799159275731` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089699 has offset 1).

The definition of A089699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089699.P4171371799159275731

`p?[A081988(n+1)+1]-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089699

/-- `p?[A081988(n+1)+1]-1` -/
def P4171371799159275731.Spec : Prop :=
  ∀ n, P4171371799159275731.a n = A089699 (n + 1)

theorem P4171371799159275731.correct : P4171371799159275731.Spec := by
  intro n
  simp only [A089699, Nat.add_sub_cancel]

end A089699

/-! ## A089699.P9462877336527913348

`∩[A006093(n+1), A081988(n+1)]`
-/

namespace A089699.P9462877336527913348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089699.P9462877336527913348

namespace A089699

/-- `∩[A006093(n+1), A081988(n+1)]` -/
def P9462877336527913348.Spec : Prop :=
  ∀ n, (P9462877336527913348.a n : ℤ) = A089699 (n + 1)

end A089699

/-! ## A089699.P641154527083925955

`∩[A068499(n+1), A081988(n+1)]`
-/

namespace A089699.P641154527083925955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089699.P641154527083925955

namespace A089699

/-- `∩[A068499(n+1), A081988(n+1)]` -/
def P641154527083925955.Spec : Prop :=
  ∀ n, (P641154527083925955.a n : ℤ) = A089699 (n + 1)

end A089699

/-! ## A089699.P8803344160066252627

`∩[A000040(n+1)-1, A081988(n+1)]`
-/

namespace A089699.P8803344160066252627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089699.P8803344160066252627

namespace A089699

/-- `∩[A000040(n+1)-1, A081988(n+1)]` -/
def P8803344160066252627.Spec : Prop :=
  ∀ n, (P8803344160066252627.a n : ℤ) = A089699 (n + 1)

end A089699

/-! ## A089699.P13071367463055172450

`∩[A038618(n+1)-1, A081988(n+1)]`
-/

namespace A089699.P13071367463055172450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089699.P13071367463055172450

namespace A089699

/-- `∩[A038618(n+1)-1, A081988(n+1)]` -/
def P13071367463055172450.Spec : Prop :=
  ∀ n, (P13071367463055172450.a n : ℤ) = A089699 (n + 1)

end A089699

/-! ## A089699.P8626227068429837403

`∩[A081988(n+1), A182986(n+1)-1]`
-/

namespace A089699.P8626227068429837403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089699.P8626227068429837403

namespace A089699

/-- `∩[A081988(n+1), A182986(n+1)-1]` -/
def P8626227068429837403.Spec : Prop :=
  ∀ n, (P8626227068429837403.a n : ℤ) = A089699 (n + 1)

end A089699

/-! ## A089699.P8778732464002903506

`p?[(n+1)*A001222(∏{digits}[n, #]+1)]-1`
-/

namespace A089699.P8778732464002903506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A089699.P8778732464002903506

namespace A089699

/-- `p?[(n+1)*A001222(∏{digits}[n, #]+1)]-1` -/
def P8778732464002903506.Spec : Prop :=
  ∀ n, P8778732464002903506.a n = A089699 (n + 1)

end A089699

/-! ## A089699.P8838189115189171701

`eq[A001065(n+1), A013632(A007954(n))]`
-/

namespace A089699.P8838189115189171701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089699.P8838189115189171701

namespace A089699

/-- `eq[A001065(n+1), A013632(A007954(n))]` -/
def P8838189115189171701.Spec : Prop :=
  ∀ n, (P8838189115189171701.a n : ℤ) = A089699 (n + 1)

end A089699

/-! ## A089699.P14969112790942354310

`eq[A003415(n+1), A013632(A007954(n))]`
-/

namespace A089699.P14969112790942354310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089699.P14969112790942354310

namespace A089699

/-- `eq[A003415(n+1), A013632(A007954(n))]` -/
def P14969112790942354310.Spec : Prop :=
  ∀ n, (P14969112790942354310.a n : ℤ) = A089699 (n + 1)

end A089699

/-! ## A089699.P16853619062753665527

`eq[A010051(n+1), A013632(A007954(n))]`
-/

namespace A089699.P16853619062753665527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089699.P16853619062753665527

namespace A089699

/-- `eq[A010051(n+1), A013632(A007954(n))]` -/
def P16853619062753665527.Spec : Prop :=
  ∀ n, (P16853619062753665527.a n : ℤ) = A089699 (n + 1)

end A089699

/-! ## A089699.P891798818194592888

`eq[A013632(A007954(n)), A095112(n+1)]`
-/

namespace A089699.P891798818194592888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089699.P891798818194592888

namespace A089699

/-- `eq[A013632(A007954(n)), A095112(n+1)]` -/
def P891798818194592888.Spec : Prop :=
  ∀ n, (P891798818194592888.a n : ℤ) = A089699 (n + 1)

end A089699

/-! ## A089699.P9927867797293469275

`eq[A013632(A007954(n)), A318827(n+1)]`
-/

namespace A089699.P9927867797293469275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089699.P9927867797293469275

namespace A089699

/-- `eq[A013632(A007954(n)), A318827(n+1)]` -/
def P9927867797293469275.Spec : Prop :=
  ∀ n, (P9927867797293469275.a n : ℤ) = A089699 (n + 1)

end A089699

/-! ## A089699.P9972322732401922788

`eq[2*A056897(A007954(n)), A056897(n)]`
-/

namespace A089699.P9972322732401922788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056897 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089699.P9972322732401922788

namespace A089699

/-- `eq[2*A056897(A007954(n)), A056897(n)]` -/
def P9972322732401922788.Spec : Prop :=
  ∀ n, (P9972322732401922788.a n : ℤ) = A089699 (n + 1)

end A089699

